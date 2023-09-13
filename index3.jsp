<html>
    <head>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    </head>
    <body>
        <h2>Adding Two Numbers via JQuery AJAX</h2>
            <input type="number" id="n1">
            <input type="number" id="n2">
            <button onclick="addNumbers()"> Add </button>
        <div id="result">The result will be displayed here without page reload</div>
    </body>
</html>

<script>
function addNumbers()
    {
        var data = 'n1=' + $('#n1').val() +'&n2=' + $('#n2').val();
        $.ajax({
            url: "add.do", 
            data: data, 
            type: "post",
            success: function (data) {
                $('#result').html(data);
            }
        });
    }
</script>
