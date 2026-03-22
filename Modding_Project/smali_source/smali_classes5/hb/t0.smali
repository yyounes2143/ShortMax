.class public Lhb/t0;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    const-string v14, "e9702f1e92e97fce49cdf81a5fa730a4e913554d09b3fe41e1d8a7fba00a8459"

    .line 2
    .line 3
    const-string v15, "24fbae40bcd50b759b26e3ba0f46aa25e932fa7da05f226d75ec507bcf53bce5"

    .line 4
    .line 5
    const-string v0, "e2f856b9f9a4fd4cb2795aeaf83268e4bff189aaec05d691ffde76e075b82648"

    .line 6
    .line 7
    const-string v1, "173cf86fe9894a0f70dadd09d4fd88c380836099d4939f8c3754361bdc16a32b"

    .line 8
    .line 9
    const-string v2, "b368b110e3b565fe97c91f786e11bc48754cc8e4e6f21d8a94a68ac6ad67aaaf"

    .line 10
    .line 11
    const-string v3, "db48223fd9e143f7e133c57f5d08a4e38549ce3ebd921fe3b4003c26e5e35bed"

    .line 12
    .line 13
    const-string v4, "4bdecdf772491e35c4e8b48f88aee22bae1311984f2e1da4dfad0b78ee7f5163"

    .line 14
    .line 15
    const-string v5, "3081a0adab3018d57165e6dd24074bdbac640f6dbe21a9e24d3474a87ebf38b8"

    .line 16
    .line 17
    const-string v6, "db53fcdc9ab71e9bdd4eab257fe1aba7989ad2b24fbe3a85dfef72ea1dd6bae2"

    .line 18
    .line 19
    const-string v7, "d80f18e8081b624cc64985f87f70118f1702985d2e10dbc985ee7be334fd3c7d"

    .line 20
    .line 21
    const-string v8, "5fed96c85bd58c58aadbd465c172a4c9a794d8eb2f86cbc7bcee6caf4c7a2c5f"

    .line 22
    .line 23
    const-string v9, "07ff9b7aeeff969173c45b285fe0fecdbaae244576ff7a2796a36f1c0c11adb4"

    .line 24
    .line 25
    const-string v10, "92974c6802419e4d18b5ec536cbfa167b8e8eff09ec4c8510a5b95750b1e0c82"

    .line 26
    .line 27
    const-string v11, "403f14ad2f0e5eb3c4f3a0bcd5c1592cc4492662ad53191c92905255d4990656"

    .line 28
    .line 29
    const-string v12, "4230baa077b401374d0fc012375047e79ea0790d58d095ef18d97d95470c738d"

    .line 30
    .line 31
    const-string v13, "f8d927750a0952ffb5bd87dfb83d781ae65f7bed043a7886d1d3cdcfc94bb77a"

    .line 32
    .line 33
    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lhb/t0;->a:[Ljava/lang/String;

    .line 38
    .line 39
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "hmsSdk"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "url is null"

    .line 10
    .line 11
    invoke-static {v1, v0}, Lhb/f1;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :try_start_0
    invoke-static {p0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 23
    .line 24
    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const-string v3, "http:"

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    new-instance v2, Ljava/net/URI;

    .line 38
    .line 39
    invoke-direct {v2, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :catch_0
    move-exception p0

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    :goto_0
    const-string p0, "url don\'t starts with https"

    .line 50
    .line 51
    invoke-static {v1, p0}, Lhb/f1;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    return-object v0

    .line 55
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v3, "getHostByURI error : "

    .line 61
    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-static {v1, p0}, Lhb/f1;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-object v0
.end method

.method private static b(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    if-gtz p1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const-string v0, "\\."

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    array-length v0, p0

    .line 17
    if-ge v0, p1, :cond_1

    .line 18
    .line 19
    const-string p0, ""

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 25
    .line 26
    .line 27
    array-length v1, p0

    .line 28
    sub-int/2addr v1, p1

    .line 29
    aget-object v1, p0, v1

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    :goto_0
    if-ge v1, p1, :cond_2

    .line 36
    .line 37
    const-string v2, "."

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    .line 41
    .line 42
    array-length v2, p0

    .line 43
    sub-int/2addr v2, p1

    .line 44
    add-int/2addr v2, v1

    .line 45
    aget-object v2, p0, v2

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    .line 49
    .line 50
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0

    .line 58
    :cond_3
    :goto_1
    const-string p1, "hmsSdk"

    .line 59
    .line 60
    const-string v0, "url is null"

    .line 61
    .line 62
    invoke-static {p1, v0}, Lhb/f1;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3

    .line 1
    invoke-static {p0}, Lhb/t0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, "hmsSdk"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v0, :cond_5

    .line 13
    .line 14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_4

    .line 21
    :cond_0
    invoke-static {p0, p2}, Lhb/t0;->b(Ljava/lang/String;I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    const-string p0, "get urlLastNStr is null"

    .line 32
    .line 33
    :goto_0
    invoke-static {v1, p0}, Lhb/f1;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return v2

    .line 37
    :cond_1
    invoke-static {p0}, Lkb/b;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    const/4 p0, 0x1

    .line 48
    return p0

    .line 49
    :cond_2
    invoke-static {p2}, Lkb/b;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_4

    .line 58
    .line 59
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    sub-int/2addr p1, p2

    .line 68
    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    const-string p1, "."

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-nez p1, :cond_3

    .line 79
    .line 80
    return v2

    .line 81
    :cond_3
    const-string p1, "^[A-Za-z0-9.-]+$"

    .line 82
    .line 83
    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    return p0

    .line 88
    :catch_0
    move-exception p0

    .line 89
    goto :goto_1

    .line 90
    :catch_1
    move-exception p0

    .line 91
    goto :goto_3

    .line 92
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string p2, "Exception : "

    .line 98
    .line 99
    :goto_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    goto :goto_0

    .line 114
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    const-string p2, "IndexOutOfBoundsException"

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_4
    return v2

    .line 123
    :cond_5
    :goto_4
    const-string p0, "url or whitelistHash is null"

    .line 124
    .line 125
    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 7

    .line 1
    sget-object v0, Lhb/u0;->a:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    sget-object v0, Lhb/t0;->a:[Ljava/lang/String;

    .line 12
    .line 13
    array-length v2, v0

    .line 14
    const/4 v3, 0x0

    .line 15
    move v4, v3

    .line 16
    :goto_0
    if-ge v4, v2, :cond_2

    .line 17
    .line 18
    aget-object v5, v0, v4

    .line 19
    .line 20
    const/4 v6, 0x2

    .line 21
    invoke-static {p0, v5, v6}, Lhb/t0;->c(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-eqz v5, :cond_1

    .line 26
    .line 27
    return v1

    .line 28
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    return v3
.end method
