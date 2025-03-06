describe Fastlane::Actions::ExpoAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The expo plugin is working!")

      Fastlane::Actions::ExpoAction.run(nil)
    end
  end
end
