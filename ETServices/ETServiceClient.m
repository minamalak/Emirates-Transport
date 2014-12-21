


#import <Foundation/Foundation.h>
#import "ETServiceClient.h"
#import "WebServiceResponse.h"
#import "WebServiceRequest.h"
#import "WebService.h"

#import "ETGetDepartments.h"
#import "ETGetDepartmentsResponse.h"
#import "ETRetrieveServiceCenters.h"
#import "ETRetrieveServiceCentersResponse.h"
#import "ETGetServicesPerCenter.h"
#import "ETGetServicesPerCenterResponse.h"
#import "ETGetServiceCenterDetailsById.h"
#import "ETGetServiceCenterDetailsByIdResponse.h"
#import "ETGetServiceCentersByDepartmentId.h"
#import "ETGetServiceCentersByDepartmentIdResponse.h"
#import "ETGetOptionsSetValues.h"
#import "ETGetOptionsSetValuesResponse.h"
#import "ETRetrieveFilteredDropdownValues.h"
#import "ETRetrieveFilteredDropdownValuesResponse.h"
#import "ETGetlookupItems.h"
#import "ETGetlookupItemsResponse.h"
#import "ETSubmitComplaint.h"
#import "ETSubmitComplaintResponse.h"
#import "ETSubmitSuggestion.h"
#import "ETSubmitSuggestionResponse.h"
#import "ETSubmitAppreciation.h"
#import "ETSubmitAppreciationResponse.h"
#import "ETRetrieveCasesById.h"
#import "ETRetrieveCasesByIdResponse.h"
#import "ETRetrieveCasesByNumber.h"
#import "ETRetrieveCasesByNumberResponse.h"
#import "ETRetrieveCasesByUser.h"
#import "ETRetrieveCasesByUserResponse.h"

#define serviceURL @"http://10.18.3.8:8080/LinkDev.ET.Services.MobileIntegration/MobileIntegration.svc/json/"


@implementation ETServiceClient

- (void)webServiceCallback:(WebServiceResponse *)response {
	id<ETServiceClientCaller> caller = (id<ETServiceClientCaller>)response.caller;
	switch (response.call) {
		case ETMethodCallGetDepartments:
			{
				ETGetDepartmentsResponse *output = nil;
				if(!response.error) {
					NSError *jsonParsingError = nil;
					NSDictionary *deserializedData = [NSJSONSerialization JSONObjectWithData:response.content options:0 error:&jsonParsingError];
					//NSDictionary *deserializedData = [response.content objectFromJSONData];
					output = [[ETGetDepartmentsResponse alloc] initWithData:deserializedData];
				}
				if(caller && [caller respondsToSelector:@selector(GetDepartmentsCallback:error:)]) {
					[caller GetDepartmentsCallback:output error:response.error];
				}
				break;
			}
		case ETMethodCallRetrieveServiceCenters:
			{
				ETRetrieveServiceCentersResponse *output = nil;
				if(!response.error) {
					NSError *jsonParsingError = nil;
					NSDictionary *deserializedData = [NSJSONSerialization JSONObjectWithData:response.content options:0 error:&jsonParsingError];
					//NSDictionary *deserializedData = [response.content objectFromJSONData];
					output = [[ETRetrieveServiceCentersResponse alloc] initWithData:deserializedData];
				}
				if(caller && [caller respondsToSelector:@selector(RetrieveServiceCentersCallback:error:)]) {
					[caller RetrieveServiceCentersCallback:output error:response.error];
				}
				break;
			}
		case ETMethodCallGetServicesPerCenter:
			{
				ETGetServicesPerCenterResponse *output = nil;
				if(!response.error) {
					NSError *jsonParsingError = nil;
					NSDictionary *deserializedData = [NSJSONSerialization JSONObjectWithData:response.content options:0 error:&jsonParsingError];
					//NSDictionary *deserializedData = [response.content objectFromJSONData];
					output = [[ETGetServicesPerCenterResponse alloc] initWithData:deserializedData];
				}
				if(caller && [caller respondsToSelector:@selector(GetServicesPerCenterCallback:error:)]) {
					[caller GetServicesPerCenterCallback:output error:response.error];
				}
				break;
			}
		case ETMethodCallGetServiceCenterDetailsById:
			{
				ETGetServiceCenterDetailsByIdResponse *output = nil;
				if(!response.error) {
					NSError *jsonParsingError = nil;
					NSDictionary *deserializedData = [NSJSONSerialization JSONObjectWithData:response.content options:0 error:&jsonParsingError];
					//NSDictionary *deserializedData = [response.content objectFromJSONData];
					output = [[ETGetServiceCenterDetailsByIdResponse alloc] initWithData:deserializedData];
				}
				if(caller && [caller respondsToSelector:@selector(GetServiceCenterDetailsByIdCallback:error:)]) {
					[caller GetServiceCenterDetailsByIdCallback:output error:response.error];
				}
				break;
			}
		case ETMethodCallGetServiceCentersByDepartmentId:
			{
				ETGetServiceCentersByDepartmentIdResponse *output = nil;
				if(!response.error) {
					NSError *jsonParsingError = nil;
					NSDictionary *deserializedData = [NSJSONSerialization JSONObjectWithData:response.content options:0 error:&jsonParsingError];
					//NSDictionary *deserializedData = [response.content objectFromJSONData];
					output = [[ETGetServiceCentersByDepartmentIdResponse alloc] initWithData:deserializedData];
				}
				if(caller && [caller respondsToSelector:@selector(GetServiceCentersByDepartmentIdCallback:error:)]) {
					[caller GetServiceCentersByDepartmentIdCallback:output error:response.error];
				}
				break;
			}
		case ETMethodCallGetOptionsSetValues:
			{
				ETGetOptionsSetValuesResponse *output = nil;
				if(!response.error) {
					NSError *jsonParsingError = nil;
					NSDictionary *deserializedData = [NSJSONSerialization JSONObjectWithData:response.content options:0 error:&jsonParsingError];
					//NSDictionary *deserializedData = [response.content objectFromJSONData];
					output = [[ETGetOptionsSetValuesResponse alloc] initWithData:deserializedData];
				}
				if(caller && [caller respondsToSelector:@selector(GetOptionsSetValuesCallback:error:)]) {
					[caller GetOptionsSetValuesCallback:output error:response.error];
				}
				break;
			}
		case ETMethodCallRetrieveFilteredDropdownValues:
			{
				ETRetrieveFilteredDropdownValuesResponse *output = nil;
				if(!response.error) {
					NSError *jsonParsingError = nil;
					NSDictionary *deserializedData = [NSJSONSerialization JSONObjectWithData:response.content options:0 error:&jsonParsingError];
					//NSDictionary *deserializedData = [response.content objectFromJSONData];
					output = [[ETRetrieveFilteredDropdownValuesResponse alloc] initWithData:deserializedData];
				}
				if(caller && [caller respondsToSelector:@selector(RetrieveFilteredDropdownValuesCallback:error:)]) {
					[caller RetrieveFilteredDropdownValuesCallback:output error:response.error];
				}
				break;
			}
		case ETMethodCallGetlookupItems:
			{
				ETGetlookupItemsResponse *output = nil;
				if(!response.error) {
					NSError *jsonParsingError = nil;
					NSDictionary *deserializedData = [NSJSONSerialization JSONObjectWithData:response.content options:0 error:&jsonParsingError];
					//NSDictionary *deserializedData = [response.content objectFromJSONData];
					output = [[ETGetlookupItemsResponse alloc] initWithData:deserializedData];
				}
				if(caller && [caller respondsToSelector:@selector(GetlookupItemsCallback:error:)]) {
					[caller GetlookupItemsCallback:output error:response.error];
				}
				break;
			}
		case ETMethodCallSubmitComplaint:
			{
				ETSubmitComplaintResponse *output = nil;
				if(!response.error) {
					NSError *jsonParsingError = nil;
					NSDictionary *deserializedData = [NSJSONSerialization JSONObjectWithData:response.content options:0 error:&jsonParsingError];
					//NSDictionary *deserializedData = [response.content objectFromJSONData];
					output = [[ETSubmitComplaintResponse alloc] initWithData:deserializedData];
				}
				if(caller && [caller respondsToSelector:@selector(SubmitComplaintCallback:error:)]) {
					[caller SubmitComplaintCallback:output error:response.error];
				}
				break;
			}
		case ETMethodCallSubmitSuggestion:
			{
				ETSubmitSuggestionResponse *output = nil;
				if(!response.error) {
					NSError *jsonParsingError = nil;
					NSDictionary *deserializedData = [NSJSONSerialization JSONObjectWithData:response.content options:0 error:&jsonParsingError];
					//NSDictionary *deserializedData = [response.content objectFromJSONData];
					output = [[ETSubmitSuggestionResponse alloc] initWithData:deserializedData];
				}
				if(caller && [caller respondsToSelector:@selector(SubmitSuggestionCallback:error:)]) {
					[caller SubmitSuggestionCallback:output error:response.error];
				}
				break;
			}
		case ETMethodCallSubmitAppreciation:
			{
				ETSubmitAppreciationResponse *output = nil;
				if(!response.error) {
					NSError *jsonParsingError = nil;
					NSDictionary *deserializedData = [NSJSONSerialization JSONObjectWithData:response.content options:0 error:&jsonParsingError];
					//NSDictionary *deserializedData = [response.content objectFromJSONData];
					output = [[ETSubmitAppreciationResponse alloc] initWithData:deserializedData];
				}
				if(caller && [caller respondsToSelector:@selector(SubmitAppreciationCallback:error:)]) {
					[caller SubmitAppreciationCallback:output error:response.error];
				}
				break;
			}
		case ETMethodCallRetrieveCasesById:
			{
				ETRetrieveCasesByIdResponse *output = nil;
				if(!response.error) {
					NSError *jsonParsingError = nil;
					NSDictionary *deserializedData = [NSJSONSerialization JSONObjectWithData:response.content options:0 error:&jsonParsingError];
					//NSDictionary *deserializedData = [response.content objectFromJSONData];
					output = [[ETRetrieveCasesByIdResponse alloc] initWithData:deserializedData];
				}
				if(caller && [caller respondsToSelector:@selector(RetrieveCasesByIdCallback:error:)]) {
					[caller RetrieveCasesByIdCallback:output error:response.error];
				}
				break;
			}
		case ETMethodCallRetrieveCasesByNumber:
			{
				ETRetrieveCasesByNumberResponse *output = nil;
				if(!response.error) {
					NSError *jsonParsingError = nil;
					NSDictionary *deserializedData = [NSJSONSerialization JSONObjectWithData:response.content options:0 error:&jsonParsingError];
					//NSDictionary *deserializedData = [response.content objectFromJSONData];
					output = [[ETRetrieveCasesByNumberResponse alloc] initWithData:deserializedData];
				}
				if(caller && [caller respondsToSelector:@selector(RetrieveCasesByNumberCallback:error:)]) {
					[caller RetrieveCasesByNumberCallback:output error:response.error];
				}
				break;
			}
		case ETMethodCallRetrieveCasesByUser:
			{
				ETRetrieveCasesByUserResponse *output = nil;
				if(!response.error) {
					NSError *jsonParsingError = nil;
					NSDictionary *deserializedData = [NSJSONSerialization JSONObjectWithData:response.content options:0 error:&jsonParsingError];
					//NSDictionary *deserializedData = [response.content objectFromJSONData];
					output = [[ETRetrieveCasesByUserResponse alloc] initWithData:deserializedData];
				}
				if(caller && [caller respondsToSelector:@selector(RetrieveCasesByUserCallback:error:)]) {
					[caller RetrieveCasesByUserCallback:output error:response.error];
				}
				break;
			}
	}
}

- (ETGetDepartmentsResponse *)GetDepartmentsIsPost:(BOOL)isPost input: (ETGetDepartments *)input error:(NSError **)error {
	WebServiceRequest *request = [[WebServiceRequest alloc] init];
	if (isPost) {
		request.url = [[NSString alloc] initWithFormat:@"%@GetDepartments", serviceURL];
		//request.body = [[input JSONDictionary] JSONData];
		NSError *writeError = nil; 
		request.body = [NSJSONSerialization dataWithJSONObject:[input JSONDictionary] options:NSJSONWritingPrettyPrinted error:&writeError];
    }
    else {
        request.url = [[NSString alloc] initWithFormat:@"%@GetDepartments%@", serviceURL, [input requestGETParams]];
    }
	
	WebService *service = [[WebService alloc] initWithRequest:request];
	NSURLResponse *response = nil;
	NSData *data = [service dataContentIsPost:isPost response:&response error:error];
	//NSDictionary *deserializedData = [data objectFromJSONData];
	NSError *jsonParsingError = nil;
	NSDictionary *deserializedData = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonParsingError];
	ETGetDepartmentsResponse *output = [[ETGetDepartmentsResponse alloc] initWithData:deserializedData];
	return output;
}
- (void)GetDepartmentsAsyncIsPost:(BOOL)isPost input: (ETGetDepartments *)input caller:(id<ETServiceClientCaller>)caller {
	WebServiceRequest *request = [[WebServiceRequest alloc] init];
	request.caller = caller;
	request.call = ETMethodCallGetDepartments;
	if (isPost) {
		request.url = [[NSString alloc] initWithFormat:@"%@GetDepartments", serviceURL];
		//request.body = [[input JSONDictionary] JSONData];
		NSError *writeError = nil; 
		request.body = [NSJSONSerialization dataWithJSONObject:[input JSONDictionary] options:NSJSONWritingPrettyPrinted error:&writeError];
    }
    else {
        request.url = [[NSString alloc] initWithFormat:@"%@GetDepartments%@", serviceURL, [input requestGETParams]];
    }

	WebService *service = [[WebService alloc] initWithRequest:request caller:self];
	[service dataWithContentAsyncIsPost:isPost];
}

- (ETRetrieveServiceCentersResponse *)RetrieveServiceCentersIsPost:(BOOL)isPost input: (ETRetrieveServiceCenters *)input error:(NSError **)error {
	WebServiceRequest *request = [[WebServiceRequest alloc] init];
	if (isPost) {
		request.url = [[NSString alloc] initWithFormat:@"%@RetrieveServiceCenters", serviceURL];
		//request.body = [[input JSONDictionary] JSONData];
		NSError *writeError = nil; 
		request.body = [NSJSONSerialization dataWithJSONObject:[input JSONDictionary] options:NSJSONWritingPrettyPrinted error:&writeError];
    }
    else {
        request.url = [[NSString alloc] initWithFormat:@"%@RetrieveServiceCenters%@", serviceURL, [input requestGETParams]];
    }
	
	WebService *service = [[WebService alloc] initWithRequest:request];
	NSURLResponse *response = nil;
	NSData *data = [service dataContentIsPost:isPost response:&response error:error];
	//NSDictionary *deserializedData = [data objectFromJSONData];
	NSError *jsonParsingError = nil;
	NSDictionary *deserializedData = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonParsingError];
	ETRetrieveServiceCentersResponse *output = [[ETRetrieveServiceCentersResponse alloc] initWithData:deserializedData];
	return output;
}
- (void)RetrieveServiceCentersAsyncIsPost:(BOOL)isPost input: (ETRetrieveServiceCenters *)input caller:(id<ETServiceClientCaller>)caller {
	WebServiceRequest *request = [[WebServiceRequest alloc] init];
	request.caller = caller;
	request.call = ETMethodCallRetrieveServiceCenters;
	if (isPost) {
		request.url = [[NSString alloc] initWithFormat:@"%@RetrieveServiceCenters", serviceURL];
		//request.body = [[input JSONDictionary] JSONData];
		NSError *writeError = nil; 
		request.body = [NSJSONSerialization dataWithJSONObject:[input JSONDictionary] options:NSJSONWritingPrettyPrinted error:&writeError];
    }
    else {
        request.url = [[NSString alloc] initWithFormat:@"%@RetrieveServiceCenters%@", serviceURL, [input requestGETParams]];
    }

	WebService *service = [[WebService alloc] initWithRequest:request caller:self];
	[service dataWithContentAsyncIsPost:isPost];
}

- (ETGetServicesPerCenterResponse *)GetServicesPerCenterIsPost:(BOOL)isPost input: (ETGetServicesPerCenter *)input error:(NSError **)error {
	WebServiceRequest *request = [[WebServiceRequest alloc] init];
	if (isPost) {
		request.url = [[NSString alloc] initWithFormat:@"%@GetServicesPerCenter", serviceURL];
		//request.body = [[input JSONDictionary] JSONData];
		NSError *writeError = nil; 
		request.body = [NSJSONSerialization dataWithJSONObject:[input JSONDictionary] options:NSJSONWritingPrettyPrinted error:&writeError];
    }
    else {
        request.url = [[NSString alloc] initWithFormat:@"%@GetServicesPerCenter%@", serviceURL, [input requestGETParams]];
    }
	
	WebService *service = [[WebService alloc] initWithRequest:request];
	NSURLResponse *response = nil;
	NSData *data = [service dataContentIsPost:isPost response:&response error:error];
	//NSDictionary *deserializedData = [data objectFromJSONData];
	NSError *jsonParsingError = nil;
	NSDictionary *deserializedData = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonParsingError];
	ETGetServicesPerCenterResponse *output = [[ETGetServicesPerCenterResponse alloc] initWithData:deserializedData];
	return output;
}
- (void)GetServicesPerCenterAsyncIsPost:(BOOL)isPost input: (ETGetServicesPerCenter *)input caller:(id<ETServiceClientCaller>)caller {
	WebServiceRequest *request = [[WebServiceRequest alloc] init];
	request.caller = caller;
	request.call = ETMethodCallGetServicesPerCenter;
	if (isPost) {
		request.url = [[NSString alloc] initWithFormat:@"%@GetServicesPerCenter", serviceURL];
		//request.body = [[input JSONDictionary] JSONData];
		NSError *writeError = nil; 
		request.body = [NSJSONSerialization dataWithJSONObject:[input JSONDictionary] options:NSJSONWritingPrettyPrinted error:&writeError];
    }
    else {
        request.url = [[NSString alloc] initWithFormat:@"%@GetServicesPerCenter%@", serviceURL, [input requestGETParams]];
    }

	WebService *service = [[WebService alloc] initWithRequest:request caller:self];
	[service dataWithContentAsyncIsPost:isPost];
}

- (ETGetServiceCenterDetailsByIdResponse *)GetServiceCenterDetailsByIdIsPost:(BOOL)isPost input: (ETGetServiceCenterDetailsById *)input error:(NSError **)error {
	WebServiceRequest *request = [[WebServiceRequest alloc] init];
	if (isPost) {
		request.url = [[NSString alloc] initWithFormat:@"%@GetServiceCenterDetailsById", serviceURL];
		//request.body = [[input JSONDictionary] JSONData];
		NSError *writeError = nil; 
		request.body = [NSJSONSerialization dataWithJSONObject:[input JSONDictionary] options:NSJSONWritingPrettyPrinted error:&writeError];
    }
    else {
        request.url = [[NSString alloc] initWithFormat:@"%@GetServiceCenterDetailsById%@", serviceURL, [input requestGETParams]];
    }
	
	WebService *service = [[WebService alloc] initWithRequest:request];
	NSURLResponse *response = nil;
	NSData *data = [service dataContentIsPost:isPost response:&response error:error];
	//NSDictionary *deserializedData = [data objectFromJSONData];
	NSError *jsonParsingError = nil;
	NSDictionary *deserializedData = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonParsingError];
	ETGetServiceCenterDetailsByIdResponse *output = [[ETGetServiceCenterDetailsByIdResponse alloc] initWithData:deserializedData];
	return output;
}
- (void)GetServiceCenterDetailsByIdAsyncIsPost:(BOOL)isPost input: (ETGetServiceCenterDetailsById *)input caller:(id<ETServiceClientCaller>)caller {
	WebServiceRequest *request = [[WebServiceRequest alloc] init];
	request.caller = caller;
	request.call = ETMethodCallGetServiceCenterDetailsById;
	if (isPost) {
		request.url = [[NSString alloc] initWithFormat:@"%@GetServiceCenterDetailsById", serviceURL];
		//request.body = [[input JSONDictionary] JSONData];
		NSError *writeError = nil; 
		request.body = [NSJSONSerialization dataWithJSONObject:[input JSONDictionary] options:NSJSONWritingPrettyPrinted error:&writeError];
    }
    else {
        request.url = [[NSString alloc] initWithFormat:@"%@GetServiceCenterDetailsById%@", serviceURL, [input requestGETParams]];
    }

	WebService *service = [[WebService alloc] initWithRequest:request caller:self];
	[service dataWithContentAsyncIsPost:isPost];
}

- (ETGetServiceCentersByDepartmentIdResponse *)GetServiceCentersByDepartmentIdIsPost:(BOOL)isPost input: (ETGetServiceCentersByDepartmentId *)input error:(NSError **)error {
	WebServiceRequest *request = [[WebServiceRequest alloc] init];
	if (isPost) {
		request.url = [[NSString alloc] initWithFormat:@"%@GetServiceCentersByDepartmentId", serviceURL];
		//request.body = [[input JSONDictionary] JSONData];
		NSError *writeError = nil; 
		request.body = [NSJSONSerialization dataWithJSONObject:[input JSONDictionary] options:NSJSONWritingPrettyPrinted error:&writeError];
    }
    else {
        request.url = [[NSString alloc] initWithFormat:@"%@GetServiceCentersByDepartmentId%@", serviceURL, [input requestGETParams]];
    }
	
	WebService *service = [[WebService alloc] initWithRequest:request];
	NSURLResponse *response = nil;
	NSData *data = [service dataContentIsPost:isPost response:&response error:error];
	//NSDictionary *deserializedData = [data objectFromJSONData];
	NSError *jsonParsingError = nil;
	NSDictionary *deserializedData = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonParsingError];
	ETGetServiceCentersByDepartmentIdResponse *output = [[ETGetServiceCentersByDepartmentIdResponse alloc] initWithData:deserializedData];
	return output;
}
- (void)GetServiceCentersByDepartmentIdAsyncIsPost:(BOOL)isPost input: (ETGetServiceCentersByDepartmentId *)input caller:(id<ETServiceClientCaller>)caller {
	WebServiceRequest *request = [[WebServiceRequest alloc] init];
	request.caller = caller;
	request.call = ETMethodCallGetServiceCentersByDepartmentId;
	if (isPost) {
		request.url = [[NSString alloc] initWithFormat:@"%@GetServiceCentersByDepartmentId", serviceURL];
		//request.body = [[input JSONDictionary] JSONData];
		NSError *writeError = nil; 
		request.body = [NSJSONSerialization dataWithJSONObject:[input JSONDictionary] options:NSJSONWritingPrettyPrinted error:&writeError];
    }
    else {
        request.url = [[NSString alloc] initWithFormat:@"%@GetServiceCentersByDepartmentId%@", serviceURL, [input requestGETParams]];
    }

	WebService *service = [[WebService alloc] initWithRequest:request caller:self];
	[service dataWithContentAsyncIsPost:isPost];
}

- (ETGetOptionsSetValuesResponse *)GetOptionsSetValuesIsPost:(BOOL)isPost input: (ETGetOptionsSetValues *)input error:(NSError **)error {
	WebServiceRequest *request = [[WebServiceRequest alloc] init];
	if (isPost) {
		request.url = [[NSString alloc] initWithFormat:@"%@GetOptionsSetValues", serviceURL];
		//request.body = [[input JSONDictionary] JSONData];
		NSError *writeError = nil; 
		request.body = [NSJSONSerialization dataWithJSONObject:[input JSONDictionary] options:NSJSONWritingPrettyPrinted error:&writeError];
    }
    else {
        request.url = [[NSString alloc] initWithFormat:@"%@GetOptionsSetValues%@", serviceURL, [input requestGETParams]];
    }
	
	WebService *service = [[WebService alloc] initWithRequest:request];
	NSURLResponse *response = nil;
	NSData *data = [service dataContentIsPost:isPost response:&response error:error];
	//NSDictionary *deserializedData = [data objectFromJSONData];
	NSError *jsonParsingError = nil;
	NSDictionary *deserializedData = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonParsingError];
	ETGetOptionsSetValuesResponse *output = [[ETGetOptionsSetValuesResponse alloc] initWithData:deserializedData];
	return output;
}
- (void)GetOptionsSetValuesAsyncIsPost:(BOOL)isPost input: (ETGetOptionsSetValues *)input caller:(id<ETServiceClientCaller>)caller {
	WebServiceRequest *request = [[WebServiceRequest alloc] init];
	request.caller = caller;
	request.call = ETMethodCallGetOptionsSetValues;
	if (isPost) {
		request.url = [[NSString alloc] initWithFormat:@"%@GetOptionsSetValues", serviceURL];
		//request.body = [[input JSONDictionary] JSONData];
		NSError *writeError = nil; 
		request.body = [NSJSONSerialization dataWithJSONObject:[input JSONDictionary] options:NSJSONWritingPrettyPrinted error:&writeError];
    }
    else {
        request.url = [[NSString alloc] initWithFormat:@"%@GetOptionsSetValues%@", serviceURL, [input requestGETParams]];
    }

	WebService *service = [[WebService alloc] initWithRequest:request caller:self];
	[service dataWithContentAsyncIsPost:isPost];
}

- (ETRetrieveFilteredDropdownValuesResponse *)RetrieveFilteredDropdownValuesIsPost:(BOOL)isPost input: (ETRetrieveFilteredDropdownValues *)input error:(NSError **)error {
	WebServiceRequest *request = [[WebServiceRequest alloc] init];
	if (isPost) {
		request.url = [[NSString alloc] initWithFormat:@"%@RetrieveFilteredDropdownValues", serviceURL];
		//request.body = [[input JSONDictionary] JSONData];
		NSError *writeError = nil; 
		request.body = [NSJSONSerialization dataWithJSONObject:[input JSONDictionary] options:NSJSONWritingPrettyPrinted error:&writeError];
    }
    else {
        request.url = [[NSString alloc] initWithFormat:@"%@RetrieveFilteredDropdownValues%@", serviceURL, [input requestGETParams]];
    }
	
	WebService *service = [[WebService alloc] initWithRequest:request];
	NSURLResponse *response = nil;
	NSData *data = [service dataContentIsPost:isPost response:&response error:error];
	//NSDictionary *deserializedData = [data objectFromJSONData];
	NSError *jsonParsingError = nil;
	NSDictionary *deserializedData = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonParsingError];
	ETRetrieveFilteredDropdownValuesResponse *output = [[ETRetrieveFilteredDropdownValuesResponse alloc] initWithData:deserializedData];
	return output;
}
- (void)RetrieveFilteredDropdownValuesAsyncIsPost:(BOOL)isPost input: (ETRetrieveFilteredDropdownValues *)input caller:(id<ETServiceClientCaller>)caller {
	WebServiceRequest *request = [[WebServiceRequest alloc] init];
	request.caller = caller;
	request.call = ETMethodCallRetrieveFilteredDropdownValues;
	if (isPost) {
		request.url = [[NSString alloc] initWithFormat:@"%@RetrieveFilteredDropdownValues", serviceURL];
		//request.body = [[input JSONDictionary] JSONData];
		NSError *writeError = nil; 
		request.body = [NSJSONSerialization dataWithJSONObject:[input JSONDictionary] options:NSJSONWritingPrettyPrinted error:&writeError];
    }
    else {
        request.url = [[NSString alloc] initWithFormat:@"%@RetrieveFilteredDropdownValues%@", serviceURL, [input requestGETParams]];
    }

	WebService *service = [[WebService alloc] initWithRequest:request caller:self];
	[service dataWithContentAsyncIsPost:isPost];
}

- (ETGetlookupItemsResponse *)GetlookupItemsIsPost:(BOOL)isPost input: (ETGetlookupItems *)input error:(NSError **)error {
	WebServiceRequest *request = [[WebServiceRequest alloc] init];
	if (isPost) {
		request.url = [[NSString alloc] initWithFormat:@"%@GetlookupItems", serviceURL];
		//request.body = [[input JSONDictionary] JSONData];
		NSError *writeError = nil; 
		request.body = [NSJSONSerialization dataWithJSONObject:[input JSONDictionary] options:NSJSONWritingPrettyPrinted error:&writeError];
    }
    else {
        request.url = [[NSString alloc] initWithFormat:@"%@GetlookupItems%@", serviceURL, [input requestGETParams]];
    }
	
	WebService *service = [[WebService alloc] initWithRequest:request];
	NSURLResponse *response = nil;
	NSData *data = [service dataContentIsPost:isPost response:&response error:error];
	//NSDictionary *deserializedData = [data objectFromJSONData];
	NSError *jsonParsingError = nil;
	NSDictionary *deserializedData = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonParsingError];
	ETGetlookupItemsResponse *output = [[ETGetlookupItemsResponse alloc] initWithData:deserializedData];
	return output;
}
- (void)GetlookupItemsAsyncIsPost:(BOOL)isPost input: (ETGetlookupItems *)input caller:(id<ETServiceClientCaller>)caller {
	WebServiceRequest *request = [[WebServiceRequest alloc] init];
	request.caller = caller;
	request.call = ETMethodCallGetlookupItems;
	if (isPost) {
		request.url = [[NSString alloc] initWithFormat:@"%@GetlookupItems", serviceURL];
		//request.body = [[input JSONDictionary] JSONData];
		NSError *writeError = nil; 
		request.body = [NSJSONSerialization dataWithJSONObject:[input JSONDictionary] options:NSJSONWritingPrettyPrinted error:&writeError];
    }
    else {
        request.url = [[NSString alloc] initWithFormat:@"%@GetlookupItems%@", serviceURL, [input requestGETParams]];
    }

	WebService *service = [[WebService alloc] initWithRequest:request caller:self];
	[service dataWithContentAsyncIsPost:isPost];
}

- (ETSubmitComplaintResponse *)SubmitComplaintIsPost:(BOOL)isPost input: (ETSubmitComplaint *)input error:(NSError **)error {
	WebServiceRequest *request = [[WebServiceRequest alloc] init];
	if (isPost) {
		request.url = [[NSString alloc] initWithFormat:@"%@SubmitComplaint", serviceURL];
		//request.body = [[input JSONDictionary] JSONData];
		NSError *writeError = nil; 
		request.body = [NSJSONSerialization dataWithJSONObject:[input JSONDictionary] options:NSJSONWritingPrettyPrinted error:&writeError];
    }
    else {
        request.url = [[NSString alloc] initWithFormat:@"%@SubmitComplaint%@", serviceURL, [input requestGETParams]];
    }
	
	WebService *service = [[WebService alloc] initWithRequest:request];
	NSURLResponse *response = nil;
	NSData *data = [service dataContentIsPost:isPost response:&response error:error];
	//NSDictionary *deserializedData = [data objectFromJSONData];
	NSError *jsonParsingError = nil;
	NSDictionary *deserializedData = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonParsingError];
	ETSubmitComplaintResponse *output = [[ETSubmitComplaintResponse alloc] initWithData:deserializedData];
	return output;
}
- (void)SubmitComplaintAsyncIsPost:(BOOL)isPost input: (ETSubmitComplaint *)input caller:(id<ETServiceClientCaller>)caller {
	WebServiceRequest *request = [[WebServiceRequest alloc] init];
	request.caller = caller;
	request.call = ETMethodCallSubmitComplaint;
	if (isPost) {
		request.url = [[NSString alloc] initWithFormat:@"%@SubmitComplaint", serviceURL];
		//request.body = [[input JSONDictionary] JSONData];
		NSError *writeError = nil; 
		request.body = [NSJSONSerialization dataWithJSONObject:[input JSONDictionary] options:NSJSONWritingPrettyPrinted error:&writeError];
    }
    else {
        request.url = [[NSString alloc] initWithFormat:@"%@SubmitComplaint%@", serviceURL, [input requestGETParams]];
    }

	WebService *service = [[WebService alloc] initWithRequest:request caller:self];
	[service dataWithContentAsyncIsPost:isPost];
}

- (ETSubmitSuggestionResponse *)SubmitSuggestionIsPost:(BOOL)isPost input: (ETSubmitSuggestion *)input error:(NSError **)error {
	WebServiceRequest *request = [[WebServiceRequest alloc] init];
	if (isPost) {
		request.url = [[NSString alloc] initWithFormat:@"%@SubmitSuggestion", serviceURL];
		//request.body = [[input JSONDictionary] JSONData];
		NSError *writeError = nil; 
		request.body = [NSJSONSerialization dataWithJSONObject:[input JSONDictionary] options:NSJSONWritingPrettyPrinted error:&writeError];
    }
    else {
        request.url = [[NSString alloc] initWithFormat:@"%@SubmitSuggestion%@", serviceURL, [input requestGETParams]];
    }
	
	WebService *service = [[WebService alloc] initWithRequest:request];
	NSURLResponse *response = nil;
	NSData *data = [service dataContentIsPost:isPost response:&response error:error];
	//NSDictionary *deserializedData = [data objectFromJSONData];
	NSError *jsonParsingError = nil;
	NSDictionary *deserializedData = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonParsingError];
	ETSubmitSuggestionResponse *output = [[ETSubmitSuggestionResponse alloc] initWithData:deserializedData];
	return output;
}
- (void)SubmitSuggestionAsyncIsPost:(BOOL)isPost input: (ETSubmitSuggestion *)input caller:(id<ETServiceClientCaller>)caller {
	WebServiceRequest *request = [[WebServiceRequest alloc] init];
	request.caller = caller;
	request.call = ETMethodCallSubmitSuggestion;
	if (isPost) {
		request.url = [[NSString alloc] initWithFormat:@"%@SubmitSuggestion", serviceURL];
		//request.body = [[input JSONDictionary] JSONData];
		NSError *writeError = nil; 
		request.body = [NSJSONSerialization dataWithJSONObject:[input JSONDictionary] options:NSJSONWritingPrettyPrinted error:&writeError];
    }
    else {
        request.url = [[NSString alloc] initWithFormat:@"%@SubmitSuggestion%@", serviceURL, [input requestGETParams]];
    }

	WebService *service = [[WebService alloc] initWithRequest:request caller:self];
	[service dataWithContentAsyncIsPost:isPost];
}

- (ETSubmitAppreciationResponse *)SubmitAppreciationIsPost:(BOOL)isPost input: (ETSubmitAppreciation *)input error:(NSError **)error {
	WebServiceRequest *request = [[WebServiceRequest alloc] init];
	if (isPost) {
		request.url = [[NSString alloc] initWithFormat:@"%@SubmitAppreciation", serviceURL];
		//request.body = [[input JSONDictionary] JSONData];
		NSError *writeError = nil; 
		request.body = [NSJSONSerialization dataWithJSONObject:[input JSONDictionary] options:NSJSONWritingPrettyPrinted error:&writeError];
    }
    else {
        request.url = [[NSString alloc] initWithFormat:@"%@SubmitAppreciation%@", serviceURL, [input requestGETParams]];
    }
	
	WebService *service = [[WebService alloc] initWithRequest:request];
	NSURLResponse *response = nil;
	NSData *data = [service dataContentIsPost:isPost response:&response error:error];
	//NSDictionary *deserializedData = [data objectFromJSONData];
	NSError *jsonParsingError = nil;
	NSDictionary *deserializedData = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonParsingError];
	ETSubmitAppreciationResponse *output = [[ETSubmitAppreciationResponse alloc] initWithData:deserializedData];
	return output;
}
- (void)SubmitAppreciationAsyncIsPost:(BOOL)isPost input: (ETSubmitAppreciation *)input caller:(id<ETServiceClientCaller>)caller {
	WebServiceRequest *request = [[WebServiceRequest alloc] init];
	request.caller = caller;
	request.call = ETMethodCallSubmitAppreciation;
	if (isPost) {
		request.url = [[NSString alloc] initWithFormat:@"%@SubmitAppreciation", serviceURL];
		//request.body = [[input JSONDictionary] JSONData];
		NSError *writeError = nil; 
		request.body = [NSJSONSerialization dataWithJSONObject:[input JSONDictionary] options:NSJSONWritingPrettyPrinted error:&writeError];
    }
    else {
        request.url = [[NSString alloc] initWithFormat:@"%@SubmitAppreciation%@", serviceURL, [input requestGETParams]];
    }

	WebService *service = [[WebService alloc] initWithRequest:request caller:self];
	[service dataWithContentAsyncIsPost:isPost];
}

- (ETRetrieveCasesByIdResponse *)RetrieveCasesByIdIsPost:(BOOL)isPost input: (ETRetrieveCasesById *)input error:(NSError **)error {
	WebServiceRequest *request = [[WebServiceRequest alloc] init];
	if (isPost) {
		request.url = [[NSString alloc] initWithFormat:@"%@RetrieveCasesById", serviceURL];
		//request.body = [[input JSONDictionary] JSONData];
		NSError *writeError = nil; 
		request.body = [NSJSONSerialization dataWithJSONObject:[input JSONDictionary] options:NSJSONWritingPrettyPrinted error:&writeError];
    }
    else {
        request.url = [[NSString alloc] initWithFormat:@"%@RetrieveCasesById%@", serviceURL, [input requestGETParams]];
    }
	
	WebService *service = [[WebService alloc] initWithRequest:request];
	NSURLResponse *response = nil;
	NSData *data = [service dataContentIsPost:isPost response:&response error:error];
	//NSDictionary *deserializedData = [data objectFromJSONData];
	NSError *jsonParsingError = nil;
	NSDictionary *deserializedData = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonParsingError];
	ETRetrieveCasesByIdResponse *output = [[ETRetrieveCasesByIdResponse alloc] initWithData:deserializedData];
	return output;
}
- (void)RetrieveCasesByIdAsyncIsPost:(BOOL)isPost input: (ETRetrieveCasesById *)input caller:(id<ETServiceClientCaller>)caller {
	WebServiceRequest *request = [[WebServiceRequest alloc] init];
	request.caller = caller;
	request.call = ETMethodCallRetrieveCasesById;
	if (isPost) {
		request.url = [[NSString alloc] initWithFormat:@"%@RetrieveCasesById", serviceURL];
		//request.body = [[input JSONDictionary] JSONData];
		NSError *writeError = nil; 
		request.body = [NSJSONSerialization dataWithJSONObject:[input JSONDictionary] options:NSJSONWritingPrettyPrinted error:&writeError];
    }
    else {
        request.url = [[NSString alloc] initWithFormat:@"%@RetrieveCasesById%@", serviceURL, [input requestGETParams]];
    }

	WebService *service = [[WebService alloc] initWithRequest:request caller:self];
	[service dataWithContentAsyncIsPost:isPost];
}

- (ETRetrieveCasesByNumberResponse *)RetrieveCasesByNumberIsPost:(BOOL)isPost input: (ETRetrieveCasesByNumber *)input error:(NSError **)error {
	WebServiceRequest *request = [[WebServiceRequest alloc] init];
	if (isPost) {
		request.url = [[NSString alloc] initWithFormat:@"%@RetrieveCasesByNumber", serviceURL];
		//request.body = [[input JSONDictionary] JSONData];
		NSError *writeError = nil; 
		request.body = [NSJSONSerialization dataWithJSONObject:[input JSONDictionary] options:NSJSONWritingPrettyPrinted error:&writeError];
    }
    else {
        request.url = [[NSString alloc] initWithFormat:@"%@RetrieveCasesByNumber%@", serviceURL, [input requestGETParams]];
    }
	
	WebService *service = [[WebService alloc] initWithRequest:request];
	NSURLResponse *response = nil;
	NSData *data = [service dataContentIsPost:isPost response:&response error:error];
	//NSDictionary *deserializedData = [data objectFromJSONData];
	NSError *jsonParsingError = nil;
	NSDictionary *deserializedData = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonParsingError];
	ETRetrieveCasesByNumberResponse *output = [[ETRetrieveCasesByNumberResponse alloc] initWithData:deserializedData];
	return output;
}
- (void)RetrieveCasesByNumberAsyncIsPost:(BOOL)isPost input: (ETRetrieveCasesByNumber *)input caller:(id<ETServiceClientCaller>)caller {
	WebServiceRequest *request = [[WebServiceRequest alloc] init];
	request.caller = caller;
	request.call = ETMethodCallRetrieveCasesByNumber;
	if (isPost) {
		request.url = [[NSString alloc] initWithFormat:@"%@RetrieveCasesByNumber", serviceURL];
		//request.body = [[input JSONDictionary] JSONData];
		NSError *writeError = nil; 
		request.body = [NSJSONSerialization dataWithJSONObject:[input JSONDictionary] options:NSJSONWritingPrettyPrinted error:&writeError];
    }
    else {
        request.url = [[NSString alloc] initWithFormat:@"%@RetrieveCasesByNumber%@", serviceURL, [input requestGETParams]];
    }

	WebService *service = [[WebService alloc] initWithRequest:request caller:self];
	[service dataWithContentAsyncIsPost:isPost];
}

- (ETRetrieveCasesByUserResponse *)RetrieveCasesByUserIsPost:(BOOL)isPost input: (ETRetrieveCasesByUser *)input error:(NSError **)error {
	WebServiceRequest *request = [[WebServiceRequest alloc] init];
	if (isPost) {
		request.url = [[NSString alloc] initWithFormat:@"%@RetrieveCasesByUser", serviceURL];
		//request.body = [[input JSONDictionary] JSONData];
		NSError *writeError = nil; 
		request.body = [NSJSONSerialization dataWithJSONObject:[input JSONDictionary] options:NSJSONWritingPrettyPrinted error:&writeError];
    }
    else {
        request.url = [[NSString alloc] initWithFormat:@"%@RetrieveCasesByUser%@", serviceURL, [input requestGETParams]];
    }
	
	WebService *service = [[WebService alloc] initWithRequest:request];
	NSURLResponse *response = nil;
	NSData *data = [service dataContentIsPost:isPost response:&response error:error];
	//NSDictionary *deserializedData = [data objectFromJSONData];
	NSError *jsonParsingError = nil;
	NSDictionary *deserializedData = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonParsingError];
	ETRetrieveCasesByUserResponse *output = [[ETRetrieveCasesByUserResponse alloc] initWithData:deserializedData];
	return output;
}
- (void)RetrieveCasesByUserAsyncIsPost:(BOOL)isPost input: (ETRetrieveCasesByUser *)input caller:(id<ETServiceClientCaller>)caller {
	WebServiceRequest *request = [[WebServiceRequest alloc] init];
	request.caller = caller;
	request.call = ETMethodCallRetrieveCasesByUser;
	if (isPost) {
		request.url = [[NSString alloc] initWithFormat:@"%@RetrieveCasesByUser", serviceURL];
		//request.body = [[input JSONDictionary] JSONData];
		NSError *writeError = nil; 
		request.body = [NSJSONSerialization dataWithJSONObject:[input JSONDictionary] options:NSJSONWritingPrettyPrinted error:&writeError];
    }
    else {
        request.url = [[NSString alloc] initWithFormat:@"%@RetrieveCasesByUser%@", serviceURL, [input requestGETParams]];
    }

	WebService *service = [[WebService alloc] initWithRequest:request caller:self];
	[service dataWithContentAsyncIsPost:isPost];
}

@end

