if(document.URL.indexOf('/issues') !== -1){
    var rows = document.querySelectorAll('.issue');
    var today = new Date();

    for (var i = rows.length - 1; i >= 0; i--) {
        var due = rows[i].querySelector('.due_date').innerHTML;
        if(due.length > 0){
            var date = due.split('.');
            var d = new Date(date[2], date[1]-1, date[0])
            if(+today > +d){
                rows[i].setAttribute('style', 'background-color: orange;');
            }
        }
    };    
}


