<!DOCTYPE html>
<html lang="en">
<head>
    <title>Form Send WA</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/ddist/css/boostrap.min.css">
    <link rel="stylesheet" href="css/xy.css">
    <style>
        
    </style>
</head>
<body>
    <section>
        <div class="container">
            <br><br>
            <h3>Form Send WA</h3>
            <br><br>

            <div class="row">
                <div class="col-6">
                    <form action="send.php" method="post" target="_blank">
                        <div class="form-group">
                            <label for="name">Nama</label>
                            <input type="name" class="form-control" name="name" placeholder="Nama">
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" class="form-control" name="email" placeholder="name@example.com">
                        </div>
                        <div class="form-group">
                            <label for="message">Pesan</label>
                            <textarea class="form-control" name="message" rows="3"></textarea>
                        </div>
                        <input type="hidden" name="noWA" value="+6285244542679">

                        <button type="submit" name="submit" class="btn btn-primary">Kirim</button>
                    </form>
                </div>
            </div>
        </div>
    </section>
    
</body>
</html>