module Blocks
  class PartialRenderer < AbstractRenderer
    def render(partial, options={}, &block)
      overrides_and_provided_content = capture_block(builder, &block) if block_given?

      locals = Blocks.global_options.merge(init_options).merge(options)
      locals[locals.delete(:builder_variable) || :builder] = builder
      locals[:options] = locals
      view.render(layout: partial, locals: locals) do |*args|
        if overrides_and_provided_content
          overrides_and_provided_content.to_str.gsub(/PLACEHOLDER_FOR_([\w]+)/) do |s|
            builder.render $1, *args
          end.html_safe
        end
      end
    end
  end
end