require "spec_helper"

describe Oktakit::Client::PolicyRules do
  POLICIES_POLICY_ID = "00pijwtasdfz4JsuA1d7"
  POLICIES_POLICY_RULE_ID = "0prlm2qutASDFisG01d7"

  describe "#list_policy_rules" do
    it "returns array of rules" do
      VCR.use_cassette("list_policy_rules") do
        resp, = client.list_policy_rules(POLICIES_POLICY_ID)
        expect(resp).to(be_a(Array))
      end
    end
  end

  describe "#add_policy_rule" do
    it "returns the created policy rule" do
      VCR.use_cassette("add_policy_rule") do
        resp, = client.add_policy_rule(POLICIES_POLICY_ID, {
          name: "Test API routing rule",
          priority: 1,
          status: "ACTIVE",
          conditions: {
            network: {
              connection: "ANYWHERE",
            },
            userIdentifier: {
              patterns: [
                {
                  matchType: "SUFFIX",
                  value: "example.com",
                },
              ],
              type: "IDENTIFIER",
            },
            app: {
              include: [
                {
                  type: "APP",
                  id: "0oaiticqweogdjWS21d7",
                },
              ],
            }
          },
          actions: {
            idp: {
              providers: [
                {
                  type: "SAML2",
                  id: "0oalcyu12qB0shVqa1d7",
                },
              ],
              idpSelectionType: "SPECIFIC",
            },
          },
          system: false,
          type: "IDP_DISCOVERY",
        })
        expect(resp).not_to(be_nil)
      end
    end
  end

  describe "#get_policy_rule" do
     it "returns the fetched policy rule" do
       VCR.use_cassette("get_policy_rule") do
         resp, = client.get_policy_rule(POLICIES_POLICY_ID, POLICIES_POLICY_ID)
         expect(resp).not_to(be_nil)
       end
     end
   end

  describe "#update_policy_rule" do
    it "returns the created rule" do
      VCR.use_cassette("update_policy_rule") do
        resp, = client.update_policy_rule(POLICIES_POLICY_ID, POLICIES_POLICY_RULE_ID, {
          name: "Test API routing rule",
          priority: 1,
          status: "ACTIVE",
          conditions: {
            network: {
              connection: "ANYWHERE",
            },
            userIdentifier: {
              patterns: [
                {
                  matchType: "SUFFIX",
                  value: "example.com",
                },
                {
                  matchType: "SUFFIX",
                  value: "example2.com",
                },
              ],
              type: "IDENTIFIER",
            },
            app: {
              include: [
                {
                  type: "APP",
                  id: "0oaiticqweogdjWS21d7",
                },
              ],
            }
          },
          actions: {
            idp: {
              providers: [
                {
                  type: "SAML2",
                  id: "0oalcyu12qB0shVqa1d7",
                },
              ],
              idpSelectionType: "SPECIFIC",
            },
          },
          system: false,
          type: "IDP_DISCOVERY",
        })
        expect(resp).not_to(be_nil)
      end
    end
  end

  describe "#delete_policy_rule" do
    it "returns 204" do
      VCR.use_cassette("delete_policy_rule") do
        resp, status = client.delete_policy_rule(POLICIES_POLICY_ID, POLICIES_POLICY_RULE_ID)
        expect(resp).to(be_nil)
        expect(status).to(be == 204)
      end
    end
  end
end
