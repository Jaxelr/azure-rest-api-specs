import "@azure-tools/typespec-azure-core";
import "@azure-tools/typespec-azure-resource-manager";
import "@typespec/openapi";
import "@typespec/rest";
import "./models.tsp";

using TypeSpec.Rest;
using Azure.ResourceManager;
using TypeSpec.Http;
using TypeSpec.OpenAPI;

namespace Microsoft.Compute;
/**
 * Specifies information about the dedicated host group that the dedicated hosts should be assigned to. Currently, a dedicated host can only be added to a dedicated host group at creation time. An existing dedicated host cannot be added to another dedicated host group.
 */
model DedicatedHostGroup
  is Azure.ResourceManager.TrackedResource<DedicatedHostGroupProperties> {
  ...ResourceNameParameter<
    Resource = DedicatedHostGroup,
    KeyName = "hostGroupName",
    SegmentName = "hostGroups",
    NamePattern = ""
  >;
  ...Azure.ResourceManager.AvailabilityZonesProperty;
}

@armResourceOperations
interface DedicatedHostGroups {
  /**
   * Retrieves information about a dedicated host group.
   */
  get is ComputeResourceRead<
    DedicatedHostGroup,
    Parameters = {
      /**
       * The expand expression to apply on the operation. 'InstanceView' will retrieve the list of instance views of the dedicated hosts under the dedicated host group. 'UserData' is not supported for dedicated host group.
       */
      @query("$expand")
      $expand?: InstanceViewTypes;
    }
  >;

  /**
   * Create or update a dedicated host group. For details of Dedicated Host and Dedicated Host Groups please see [Dedicated Host Documentation] (https://go.microsoft.com/fwlink/?linkid=2082596)
   */
  createOrUpdate is ComputeResourceCreateOrReplaceSync<DedicatedHostGroup>;

  /**
   * Update an dedicated host group.
   */
  @patch(#{ implicitOptionality: false })
  update is ComputeCustomPatchSync<
    DedicatedHostGroup,
    DedicatedHostGroupUpdate
  >;

  /**
   * Delete a dedicated host group.
   */
  #suppress "@azure-tools/typespec-azure-core/no-response-body" "For backward compatibility"
  delete is ComputeResourceDeleteSync<DedicatedHostGroup>;

  /**
   * Lists all of the dedicated host groups in the specified resource group. Use the nextLink property in the response to get the next page of dedicated host groups.
   */
  listByResourceGroup is ComputeResourceListByParent<
    DedicatedHostGroup,
    Response = DedicatedHostGroupListResult
  >;

  /**
   * Lists all of the dedicated host groups in the subscription. Use the nextLink property in the response to get the next page of dedicated host groups.
   */
  listBySubscription is ComputeListBySubscription<
    DedicatedHostGroup,
    Response = DedicatedHostGroupListResult
  >;
}

@@doc(DedicatedHostGroup.name, "The name of the dedicated host group.");
@@doc(DedicatedHostGroup.properties, "Dedicated Host Group Properties.");
@@doc(DedicatedHostGroups.createOrUpdate::parameters.resource,
  "Parameters supplied to the Create Dedicated Host Group."
);
@@doc(DedicatedHostGroups.update::parameters.properties,
  "Parameters supplied to the Update Dedicated Host Group operation."
);
