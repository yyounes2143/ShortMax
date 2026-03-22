.class public Leb/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    new-instance v0, Ljava/net/URL;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    instance-of v0, p0, Ljavax/net/ssl/HttpsURLConnection;

    .line 19
    .line 20
    const-string v2, "URLConnectionHelper"

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    .line 25
    .line 26
    :try_start_0
    invoke-static {p1}, Lfb/a;->b(Landroid/content/Context;)Ljavax/net/ssl/SSLSocketFactory;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lfb/a;->a()Ljavax/net/ssl/HostnameVerifier;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    const-string v0, "init https ssl socket failed."

    .line 42
    .line 43
    invoke-static {v2, v0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    const/16 v0, 0x2710

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 52
    .line 53
    .line 54
    const/4 v0, 0x1

    .line 55
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 56
    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 60
    .line 61
    .line 62
    const-string v0, "NetworkKit-grs"

    .line 63
    .line 64
    invoke-static {p1, v0, p2}, Ldb/a;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    new-instance p2, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v0, "request to grs server with a User-Agent header is: "

    .line 74
    .line 75
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-static {v2, p2}, Lcom/huawei/hms/framework/common/Logger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    const-string p2, "User-Agent"

    .line 89
    .line 90
    invoke-virtual {p0, p2, p1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return-object p0

    .line 94
    :cond_1
    const-string p0, "urlConnection is not an instance of HttpsURLConnection"

    .line 95
    .line 96
    invoke-static {v2, p0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    return-object v1
.end method

.method public static b(Ljavax/net/ssl/HttpsURLConnection;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "URLConnectionHelper"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string p0, "sendHttpBody: The Body Data is Null"

    .line 6
    .line 7
    :goto_0
    invoke-static {v0, p0}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    if-nez p0, :cond_1

    .line 12
    .line 13
    const-string p0, "sendHttpBody: HttpsURLConnection is Null"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 17
    .line 18
    .line 19
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    :try_start_1
    const-string v0, "UTF-8"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    .line 31
    .line 32
    invoke-static {p0}, Lcom/huawei/hms/framework/common/IoUtils;->closeSecure(Ljava/io/OutputStream;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_1

    .line 38
    :catchall_1
    move-exception p1

    .line 39
    const/4 p0, 0x0

    .line 40
    :goto_1
    invoke-static {p0}, Lcom/huawei/hms/framework/common/IoUtils;->closeSecure(Ljava/io/OutputStream;)V

    .line 41
    .line 42
    .line 43
    throw p1
.end method
