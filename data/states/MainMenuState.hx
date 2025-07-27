
function onSelectItem(event) {
    if (event.name == "freeplay") {
        event.cancelled = true;
        persistentUpdate = false;
        var subState = new ModSubState("FreeplaySubState");
        subState.closeCallback = ()->{
            selectedSomethin = false;
            for (i in menuItems) {
                i.visible = true;
                i.alpha = 1;
            }
        }
        openSubState(subState);
        
    }
}