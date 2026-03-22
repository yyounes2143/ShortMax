.class public Lnb/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "SecureX509SingleInstance"

.field private static volatile b:Lnb/e;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Landroid/content/Context;)Lnb/e;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    if-eqz p0, :cond_3

    .line 6
    .line 7
    invoke-static {p0}, Lpb/b;->b(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    sget-object v2, Lnb/d;->b:Lnb/e;

    .line 11
    .line 12
    if-nez v2, :cond_2

    .line 13
    .line 14
    const-class v2, Lnb/d;

    .line 15
    .line 16
    monitor-enter v2

    .line 17
    :try_start_0
    sget-object v3, Lnb/d;->b:Lnb/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    if-nez v3, :cond_1

    .line 20
    .line 21
    :try_start_1
    invoke-static {p0}, Lpb/a;->n(Landroid/content/Context;)Ljava/io/InputStream;

    .line 22
    .line 23
    .line 24
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_2

    .line 28
    :catch_0
    :try_start_2
    sget-object v3, Lnb/d;->a:Ljava/lang/String;

    .line 29
    .line 30
    const-string v4, "get files bks error"

    .line 31
    .line 32
    invoke-static {v3, v4}, Lpb/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    :goto_0
    if-nez v3, :cond_0

    .line 37
    .line 38
    sget-object v3, Lnb/d;->a:Ljava/lang/String;

    .line 39
    .line 40
    const-string v4, "get assets bks"

    .line 41
    .line 42
    invoke-static {v3, v4}, Lpb/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const-string v3, "hmsrootcas.bks"

    .line 50
    .line 51
    invoke-virtual {p0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    sget-object p0, Lnb/d;->a:Ljava/lang/String;

    .line 57
    .line 58
    const-string v4, "get files bks"

    .line 59
    .line 60
    invoke-static {p0, v4}, Lpb/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :goto_1
    new-instance p0, Lnb/e;

    .line 64
    .line 65
    const-string v4, ""

    .line 66
    .line 67
    invoke-direct {p0, v3, v4}, Lnb/e;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    sput-object p0, Lnb/d;->b:Lnb/e;

    .line 71
    .line 72
    :cond_1
    monitor-exit v2

    .line 73
    goto :goto_3

    .line 74
    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    throw p0

    .line 76
    :cond_2
    :goto_3
    sget-object p0, Lnb/d;->a:Ljava/lang/String;

    .line 77
    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v3, "SecureX509TrustManager getInstance: cost : "

    .line 84
    .line 85
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 89
    .line 90
    .line 91
    move-result-wide v3

    .line 92
    sub-long/2addr v3, v0

    .line 93
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v0, " ms"

    .line 97
    .line 98
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-static {p0, v0}, Lpb/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    sget-object p0, Lnb/d;->b:Lnb/e;

    .line 109
    .line 110
    return-object p0

    .line 111
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    .line 112
    .line 113
    const-string v0, "context is null"

    .line 114
    .line 115
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p0
.end method
