({
    helperMethod: function (comp, method, callback) {
        let action = comp.get(method);

        action.setCallback(this, function (response) {
            let state = response.getState();

            if (state === "SUCCESS") {
                callback.call(this, response.getReturnValue());

            } else if (state === "ERROR") {
                let errors = response.getError();
                console.error(errors);
            }
        });
        $A.enqueueAction(action);
    }
})