require "spec_helper"

describe Oktakit::Client::Policies do
  POLICIES_POLICY_ID = "00pijwtasdfz4JsuA1d7"

  describe "#list_policies" do
    it "returns array of policies" do
      VCR.use_cassette("list_policies") do
        resp, = client.list_policies(query: { type: "IDP_DISCOVERY" })
        expect(resp).to(be_a(Array))
      end
    end
  end

  describe "#add_policy" do
    it "returns the created add_policy." do
      VCR.use_cassette("add_policy") do
        resp, = client.add_policy(
          description: nil,
          name: "Created",
          priority: "1",
          status: "ACTIVE",
          system: false,
          type: "ACCESS_POLICY",
          conditions: nil,
          _embedded: {
            resourceType: "string",
          }
        )
        expect(resp.id).not_to(be_nil)
      end
    end
  end

  describe "#get_policy" do
    it "returns the fetched policy." do
      VCR.use_cassette("get_policy") do
        resp, = client.get_policy(POLICIES_POLICY_ID)
        expect(resp.id).not_to(be_nil)
        expect(resp.id).to(be == POLICIES_POLICY_ID)
      end
    end
  end

  describe "#update_policy" do
    it "returns the updated policy." do
      VCR.use_cassette("update_policy") do
        resp, = client.update_policy(
          POLICIES_POLICY_ID,
          name: "Updated",
          priority: "1",
          status: "ACTIVE",
          system: false,
          type: "ACCESS_POLICY",
          conditions: nil,
        )
        expect(resp.id).not_to(be_nil)
      end
    end
  end

  describe "#delete_policy" do
    it "returns 204" do
      VCR.use_cassette("delete_policy") do
        resp, status = client.delete_policy(POLICIES_POLICY_ID)
        expect(resp).to(be_nil)
        expect(status).to(be == 204)
      end
    end
  end
end
