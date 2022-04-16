({
    init: function (cmp, event, helper) {
        try {
            helper.helperMethod(cmp, "c.infoForMap", function (response) {
                let mapMarkers = [];
                for (let i = 0; i < response.length; i++) {
                    let dealer = response[i];

                    let markers = {
                        location: {
                            Latitude: dealer.Latitude__c,
                            Longitude: dealer.Longitude__c
                        },
                        icon: "standard:account",
                        title: dealer.Name,
                        description: (
                            '<p> Phone: ' + dealer.Service_Department_Phone__c + '</p>' +
                            '<p> Working Hours: ' + dealer.Working_Hours__c + '</p>' +
                            '<p> Address: ' + dealer.Address__c + '</p>'
                        ),
                        icon: 'standard:location'
                    }
                    mapMarkers.push(markers);
                }

                cmp.set('v.mapMarkers', mapMarkers);

                cmp.set('v.center', {
                    location: {
                        City: 'Minsk'
                    }
                });

                cmp.set('v.zoomLevel', 11);
                cmp.set('v.markersTitle', 'Service centers LADA');


            });
        } catch (exception) {
            System.debug(LoggingLevel.ERROR, "Exception" + exception.getMessage());
        }
    }

});