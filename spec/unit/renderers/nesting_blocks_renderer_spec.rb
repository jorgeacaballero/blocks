require 'spec_helper'

describe Blocks::NestingBlocksRenderer do
  # let(:builder) { Blocks::Builder.new(instance_double("ActionView::Base")) }
  # let(:renderer) { Blocks::Renderer.new(builder) }
  # let(:block_name) { :some_block_name }
  # let(:runtime_context) { double(block_name: block_name).as_null_object }
  # subject do
  #   Blocks::NestingBlocksRenderer.new(renderer)
  # end
  #
  # context '#render' do
  #   it "should not do anything if the block is not defined" do
  #     expect(subject.block_renderer).not_to receive :render
  #     subject.render Blocks::HookDefinition::BEFORE_ALL, runtime_context
  #   end
  #
  #   it "should not do anything if there are no corresponding hooks for the block defined" do
  #     builder.after_all(block_name, with: :some_other_block)
  #     expect(subject.block_renderer).not_to receive :render
  #     subject.render Blocks::HookDefinition::BEFORE_ALL, runtime_context
  #   end
  #
  #   it "should use the block_renderer to render a hook for the block" do
  #     hook_definition = builder.after_all(block_name, with: :some_other_block)
  #     extended_context = double
  #     expect(runtime_context).to receive(:extend_to_block_definition).with(hook_definition).and_return extended_context
  #     expect(subject.block_renderer).to receive(:render).with extended_context
  #     subject.render Blocks::HookDefinition::AFTER_ALL, runtime_context
  #   end
  #
  #   it "should use the block_renderer to render a hook for the block" do
  #     hook_definition = builder.after_all(block_name, with: :some_other_block)
  #     extended_context = double
  #     expect(runtime_context).to receive(:extend_to_block_definition).with(hook_definition).and_return extended_context
  #     expect(subject.block_renderer).to receive(:render).with extended_context
  #     subject.render Blocks::HookDefinition::AFTER_ALL, runtime_context
  #   end
  #
  #   AROUND_HOOKS = Blocks::HookDefinition::HOOKS.select {|hook| hook.to_s.include?("around") || hook.to_s.include?("surround") }
  #
  #   AROUND_HOOKS.each do |hook|
  #     it "should render all #{hook} hooks in reverse order" do
  #       output = []
  #       allow(subject.block_renderer).to receive(:render) { |hook_definition| output << hook_definition.standard_options[:with] }
  #       allow(runtime_context).to receive(:extend_to_block_definition) { |hook_definition| hook_definition }
  #       hook_definitions = (1..4).map do |i|
  #         builder.send(hook, block_name, with: "block_#{i}").tap do |d|
  #           expect(runtime_context).to receive(:extend_to_block_definition).with(d)
  #           expect(subject.block_renderer).to receive(:render).with(d)
  #         end
  #       end
  #       subject.render hook, runtime_context
  #
  #       expect(output).to eq ["block_4", "block_3", "block_2", "block_1"]
  #     end
  #   end
  # end
end