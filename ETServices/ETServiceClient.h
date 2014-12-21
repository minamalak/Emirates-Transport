
#import <Foundation/Foundation.h>
#import "WebService.h"


@class ETGetDepartments;
@class ETGetDepartmentsResponse;
@class ETRetrieveServiceCenters;
@class ETRetrieveServiceCentersResponse;
@class ETGetServicesPerCenter;
@class ETGetServicesPerCenterResponse;
@class ETGetServiceCenterDetailsById;
@class ETGetServiceCenterDetailsByIdResponse;
@class ETGetServiceCentersByDepartmentId;
@class ETGetServiceCentersByDepartmentIdResponse;
@class ETGetOptionsSetValues;
@class ETGetOptionsSetValuesResponse;
@class ETRetrieveFilteredDropdownValues;
@class ETRetrieveFilteredDropdownValuesResponse;
@class ETGetlookupItems;
@class ETGetlookupItemsResponse;
@class ETSubmitComplaint;
@class ETSubmitComplaintResponse;
@class ETSubmitSuggestion;
@class ETSubmitSuggestionResponse;
@class ETSubmitAppreciation;
@class ETSubmitAppreciationResponse;
@class ETRetrieveCasesById;
@class ETRetrieveCasesByIdResponse;
@class ETRetrieveCasesByNumber;
@class ETRetrieveCasesByNumberResponse;
@class ETRetrieveCasesByUser;
@class ETRetrieveCasesByUserResponse;

@protocol ETServiceClientCaller <NSObject>

@optional
- (void)GetDepartmentsCallback:(ETGetDepartmentsResponse *)response error:(NSError *)error;
- (void)RetrieveServiceCentersCallback:(ETRetrieveServiceCentersResponse *)response error:(NSError *)error;
- (void)GetServicesPerCenterCallback:(ETGetServicesPerCenterResponse *)response error:(NSError *)error;
- (void)GetServiceCenterDetailsByIdCallback:(ETGetServiceCenterDetailsByIdResponse *)response error:(NSError *)error;
- (void)GetServiceCentersByDepartmentIdCallback:(ETGetServiceCentersByDepartmentIdResponse *)response error:(NSError *)error;
- (void)GetOptionsSetValuesCallback:(ETGetOptionsSetValuesResponse *)response error:(NSError *)error;
- (void)RetrieveFilteredDropdownValuesCallback:(ETRetrieveFilteredDropdownValuesResponse *)response error:(NSError *)error;
- (void)GetlookupItemsCallback:(ETGetlookupItemsResponse *)response error:(NSError *)error;
- (void)SubmitComplaintCallback:(ETSubmitComplaintResponse *)response error:(NSError *)error;
- (void)SubmitSuggestionCallback:(ETSubmitSuggestionResponse *)response error:(NSError *)error;
- (void)SubmitAppreciationCallback:(ETSubmitAppreciationResponse *)response error:(NSError *)error;
- (void)RetrieveCasesByIdCallback:(ETRetrieveCasesByIdResponse *)response error:(NSError *)error;
- (void)RetrieveCasesByNumberCallback:(ETRetrieveCasesByNumberResponse *)response error:(NSError *)error;
- (void)RetrieveCasesByUserCallback:(ETRetrieveCasesByUserResponse *)response error:(NSError *)error;
@end

typedef enum ETMethodCall {
	ETMethodCallGetDepartments = 1,
	ETMethodCallRetrieveServiceCenters = 2,
	ETMethodCallGetServicesPerCenter = 3,
	ETMethodCallGetServiceCenterDetailsById = 4,
	ETMethodCallGetServiceCentersByDepartmentId = 5,
	ETMethodCallGetOptionsSetValues = 6,
	ETMethodCallRetrieveFilteredDropdownValues = 7,
	ETMethodCallGetlookupItems = 8,
	ETMethodCallSubmitComplaint = 9,
	ETMethodCallSubmitSuggestion = 10,
	ETMethodCallSubmitAppreciation = 11,
	ETMethodCallRetrieveCasesById = 12,
	ETMethodCallRetrieveCasesByNumber = 13,
	ETMethodCallRetrieveCasesByUser = 14,
} ETMethodCall;

@interface ETServiceClient : NSObject<WebServiceCaller> {
	
}

- (ETGetDepartmentsResponse *)GetDepartmentsIsPost:(BOOL)isPost input: (ETGetDepartments *)input error:(NSError **)error;
- (void)GetDepartmentsAsyncIsPost:(BOOL)isPost input: (ETGetDepartments *)input caller:(id<ETServiceClientCaller>)caller;
- (ETRetrieveServiceCentersResponse *)RetrieveServiceCentersIsPost:(BOOL)isPost input: (ETRetrieveServiceCenters *)input error:(NSError **)error;
- (void)RetrieveServiceCentersAsyncIsPost:(BOOL)isPost input: (ETRetrieveServiceCenters *)input caller:(id<ETServiceClientCaller>)caller;
- (ETGetServicesPerCenterResponse *)GetServicesPerCenterIsPost:(BOOL)isPost input: (ETGetServicesPerCenter *)input error:(NSError **)error;
- (void)GetServicesPerCenterAsyncIsPost:(BOOL)isPost input: (ETGetServicesPerCenter *)input caller:(id<ETServiceClientCaller>)caller;
- (ETGetServiceCenterDetailsByIdResponse *)GetServiceCenterDetailsByIdIsPost:(BOOL)isPost input: (ETGetServiceCenterDetailsById *)input error:(NSError **)error;
- (void)GetServiceCenterDetailsByIdAsyncIsPost:(BOOL)isPost input: (ETGetServiceCenterDetailsById *)input caller:(id<ETServiceClientCaller>)caller;
- (ETGetServiceCentersByDepartmentIdResponse *)GetServiceCentersByDepartmentIdIsPost:(BOOL)isPost input: (ETGetServiceCentersByDepartmentId *)input error:(NSError **)error;
- (void)GetServiceCentersByDepartmentIdAsyncIsPost:(BOOL)isPost input: (ETGetServiceCentersByDepartmentId *)input caller:(id<ETServiceClientCaller>)caller;
- (ETGetOptionsSetValuesResponse *)GetOptionsSetValuesIsPost:(BOOL)isPost input: (ETGetOptionsSetValues *)input error:(NSError **)error;
- (void)GetOptionsSetValuesAsyncIsPost:(BOOL)isPost input: (ETGetOptionsSetValues *)input caller:(id<ETServiceClientCaller>)caller;
- (ETRetrieveFilteredDropdownValuesResponse *)RetrieveFilteredDropdownValuesIsPost:(BOOL)isPost input: (ETRetrieveFilteredDropdownValues *)input error:(NSError **)error;
- (void)RetrieveFilteredDropdownValuesAsyncIsPost:(BOOL)isPost input: (ETRetrieveFilteredDropdownValues *)input caller:(id<ETServiceClientCaller>)caller;
- (ETGetlookupItemsResponse *)GetlookupItemsIsPost:(BOOL)isPost input: (ETGetlookupItems *)input error:(NSError **)error;
- (void)GetlookupItemsAsyncIsPost:(BOOL)isPost input: (ETGetlookupItems *)input caller:(id<ETServiceClientCaller>)caller;
- (ETSubmitComplaintResponse *)SubmitComplaintIsPost:(BOOL)isPost input: (ETSubmitComplaint *)input error:(NSError **)error;
- (void)SubmitComplaintAsyncIsPost:(BOOL)isPost input: (ETSubmitComplaint *)input caller:(id<ETServiceClientCaller>)caller;
- (ETSubmitSuggestionResponse *)SubmitSuggestionIsPost:(BOOL)isPost input: (ETSubmitSuggestion *)input error:(NSError **)error;
- (void)SubmitSuggestionAsyncIsPost:(BOOL)isPost input: (ETSubmitSuggestion *)input caller:(id<ETServiceClientCaller>)caller;
- (ETSubmitAppreciationResponse *)SubmitAppreciationIsPost:(BOOL)isPost input: (ETSubmitAppreciation *)input error:(NSError **)error;
- (void)SubmitAppreciationAsyncIsPost:(BOOL)isPost input: (ETSubmitAppreciation *)input caller:(id<ETServiceClientCaller>)caller;
- (ETRetrieveCasesByIdResponse *)RetrieveCasesByIdIsPost:(BOOL)isPost input: (ETRetrieveCasesById *)input error:(NSError **)error;
- (void)RetrieveCasesByIdAsyncIsPost:(BOOL)isPost input: (ETRetrieveCasesById *)input caller:(id<ETServiceClientCaller>)caller;
- (ETRetrieveCasesByNumberResponse *)RetrieveCasesByNumberIsPost:(BOOL)isPost input: (ETRetrieveCasesByNumber *)input error:(NSError **)error;
- (void)RetrieveCasesByNumberAsyncIsPost:(BOOL)isPost input: (ETRetrieveCasesByNumber *)input caller:(id<ETServiceClientCaller>)caller;
- (ETRetrieveCasesByUserResponse *)RetrieveCasesByUserIsPost:(BOOL)isPost input: (ETRetrieveCasesByUser *)input error:(NSError **)error;
- (void)RetrieveCasesByUserAsyncIsPost:(BOOL)isPost input: (ETRetrieveCasesByUser *)input caller:(id<ETServiceClientCaller>)caller;

@end