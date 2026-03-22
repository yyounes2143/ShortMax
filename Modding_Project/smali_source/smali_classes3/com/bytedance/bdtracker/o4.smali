.class public Lcom/bytedance/bdtracker/o4;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:[C


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [C

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/bytedance/bdtracker/o4;->a:[C

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static a([B)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    :try_start_0
    array-length v1, p0

    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v1, "MD5"

    .line 9
    .line 10
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Lcom/bytedance/bdtracker/o4;->b([B)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    return-object p0

    .line 26
    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static b([B)Ljava/lang/String;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const-string v1, "DigestUtils"

    .line 9
    .line 10
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-array v0, v0, [Ljava/lang/Object;

    .line 15
    .line 16
    const-string v2, "bytes is null"

    .line 17
    .line 18
    invoke-interface {p0, v1, v2, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return-object p0

    .line 23
    :cond_0
    array-length v1, p0

    .line 24
    array-length v2, p0

    .line 25
    if-gt v1, v2, :cond_2

    .line 26
    .line 27
    mul-int/lit8 v2, v1, 0x2

    .line 28
    .line 29
    new-array v3, v2, [C

    .line 30
    .line 31
    move v4, v0

    .line 32
    move v5, v4

    .line 33
    :goto_0
    if-ge v4, v1, :cond_1

    .line 34
    .line 35
    aget-byte v6, p0, v4

    .line 36
    .line 37
    and-int/lit16 v7, v6, 0xff

    .line 38
    .line 39
    add-int/lit8 v8, v5, 0x1

    .line 40
    .line 41
    sget-object v9, Lcom/bytedance/bdtracker/o4;->a:[C

    .line 42
    .line 43
    shr-int/lit8 v7, v7, 0x4

    .line 44
    .line 45
    aget-char v7, v9, v7

    .line 46
    .line 47
    aput-char v7, v3, v5

    .line 48
    .line 49
    add-int/lit8 v5, v5, 0x2

    .line 50
    .line 51
    and-int/lit8 v6, v6, 0xf

    .line 52
    .line 53
    aget-char v6, v9, v6

    .line 54
    .line 55
    aput-char v6, v3, v8

    .line 56
    .line 57
    add-int/lit8 v4, v4, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    new-instance p0, Ljava/lang/String;

    .line 61
    .line 62
    invoke-direct {p0, v3, v0, v2}, Ljava/lang/String;-><init>([CII)V

    .line 63
    .line 64
    .line 65
    return-object p0

    .line 66
    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 67
    .line 68
    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 69
    .line 70
    .line 71
    throw p0
.end method
