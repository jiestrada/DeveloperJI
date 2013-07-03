function Resaltar_On(GridView) {
    if (GridView != null) {
        GridView.originalBgColor = GridView.style.backgroundColor;
        GridView.style.originalFontColor = GridView.style.color;
        GridView.style.backgroundColor = "#0866C6";
        
    }
}

function Resaltar_Off(GridView) {
    if (GridView != null) {
        GridView.style.backgroundColor = GridView.originalBgColor;
        GridView.style.color = GridView.style.originalFontColor;
    }
}
