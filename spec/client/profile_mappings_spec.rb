require "spec_helper"

describe Oktakit::Client::ProfileMappings do
  PROFILE_MAPPING_ID = "aprofilemappingid"
  PROFILE_MAPPING_SOURCE_ID = "aprofilesourceid"

  describe "#list_profile_mappings" do
    it "returns array of profile_mappings" do
      VCR.use_cassette("list_profile_mappings") do
        resp, = client.list_profile_mappings(query: { sourceId: PROFILE_MAPPING_SOURCE_ID })
        expect(resp).to(be_a(Array))
      end
    end
  end

  describe "#get_profile_mapping" do
    it "returns the fetched profile_mapping." do
      VCR.use_cassette("get_profile_mapping") do
        resp, = client.get_profile_mapping(PROFILE_MAPPING_ID)
        expect(resp.id).not_to(be_nil)
        expect(resp.id).to(be == PROFILE_MAPPING_ID)
      end
    end
  end

  describe "#update_profile_mapping" do
    it "returns the updated profile_mapping." do
      VCR.use_cassette("update_profile_mapping") do
        resp, = client.update_profile_mapping(
          PROFILE_MAPPING_ID,
          "properties": { "email": {
            "expression": "appuser.subjectNameId",
            "pushStatus": "DONT_PUSH",
          } }
        )
        expect(resp.id).not_to(be_nil)
      end
    end
  end
end
