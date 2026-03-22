.class public Ldb/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/lang/String; = "c"


# direct methods
.method public static a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Ldb/c;->a:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "Io getConfigContent, fileName: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/huawei/hms/framework/common/Logger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const-string v1, ""

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    return-object v1

    .line 32
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 35
    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    :try_start_0
    new-instance v3, Ljava/io/File;

    .line 39
    .line 40
    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 44
    .line 45
    .line 46
    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    :goto_0
    invoke-static {v0}, Lcom/huawei/hms/framework/common/IoUtils;->closeSecure(Ljava/io/OutputStream;)V

    .line 50
    .line 51
    .line 52
    invoke-static {v2}, Lcom/huawei/hms/framework/common/IoUtils;->closeSecure(Ljava/io/InputStream;)V

    .line 53
    .line 54
    .line 55
    return-object v1

    .line 56
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const/16 p1, 0x2000

    .line 65
    .line 66
    new-array p1, p1, [B

    .line 67
    .line 68
    :goto_1
    invoke-virtual {v2, p1}, Ljava/io/InputStream;->read([B)I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    const/4 v4, -0x1

    .line 73
    if-eq v3, v4, :cond_2

    .line 74
    .line 75
    const/4 v4, 0x0

    .line 76
    invoke-virtual {v0, p1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto :goto_2

    .line 82
    :cond_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 83
    .line 84
    .line 85
    const-string p1, "UTF-8"

    .line 86
    .line 87
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    invoke-static {v0}, Lcom/huawei/hms/framework/common/IoUtils;->closeSecure(Ljava/io/OutputStream;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v2}, Lcom/huawei/hms/framework/common/IoUtils;->closeSecure(Ljava/io/InputStream;)V

    .line 95
    .line 96
    .line 97
    return-object p0

    .line 98
    :catch_0
    :try_start_2
    sget-object p1, Ldb/c;->a:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    .line 100
    const-string v3, "local config file is not exist.filename is {%s}"

    .line 101
    .line 102
    :try_start_3
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-static {p1, v3, p0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :goto_2
    invoke-static {v0}, Lcom/huawei/hms/framework/common/IoUtils;->closeSecure(Ljava/io/OutputStream;)V

    .line 111
    .line 112
    .line 113
    invoke-static {v2}, Lcom/huawei/hms/framework/common/IoUtils;->closeSecure(Ljava/io/InputStream;)V

    .line 114
    .line 115
    .line 116
    throw p0
.end method
