using TravelService as service from '../../srv/travel-service';

annotate service.Travel with @(
    UI.SelectionFields : [
        to_Agency_AgencyID,
        to_Customer_CustomerID,
        TravelStatus_code,
    ],

    UI.LineItem : [
        {
            $Type: 'UI.DataField',
            Value: TravelID,
        },
        {
            $Type: 'UI.DataField',
            Value: TravelStatus_code,
            Criticality: TravelStatus.criticality,
        },
        {
            $Type: 'UI.DataField',
            Value: BeginDate,
        },
        {
            $Type: 'UI.DataField',
            Value: to_Agency_AgencyID,
        },
        {
            $Type: 'UI.DataField',
            Value: to_Customer_CustomerID,
        },
        {
            $Type: 'UI.DataField',
            Value: TotalPrice,
        },
        {
            $Type: 'UI.DataFieldForAction',
            Label: '{i18n>AcceptTravel}',
            Action: 'TravelService.acceptTravel',
        },
        {
            $Type : 'UI.DataFieldForAction',
            Label : '{i18n>RejectTravel}',
            Action: 'TravelService.rejectTravel',
        }
    ],
    // Object Page
    UI.HeaderInfo : {
        TypeName : '{i18n>Travel}',
        TypeNamePlural : '{i18n>Travels}',
        Title : {
            $Type : 'UI.DataField',
            Value : Description,
        },
        Description : {
            $Type : 'UI.DataField',
            Value : TravelID,
        },
    },
);

