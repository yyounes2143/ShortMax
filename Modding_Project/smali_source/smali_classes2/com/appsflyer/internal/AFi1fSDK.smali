.class public Lcom/appsflyer/internal/AFi1fSDK;
.super Ljava/lang/Object;


# static fields
.field private static final $$a:[B = null

.field private static final $$b:I = 0x0

.field private static $10:I = 0x0

.field private static $11:I = 0x1

.field private static $12:I = 0x0

.field private static $13:I = 0x1

.field private static afDebugLog:J

.field private static afErrorLog:J

.field private static afInfoLog:J

.field private static afRDLog:I

.field private static afVerboseLog:[B

.field private static afWarnLog:I

.field private static d:Ljava/lang/Object;

.field private static e:[B

.field private static force:I

.field private static i:[B

.field public static final registerClient:Ljava/util/Map;

.field private static unregisterClient:Ljava/lang/Object;

.field private static v:I

.field public static final w:Ljava/util/Map;


# direct methods
.method private static $$c(IIS)Ljava/lang/String;
    .locals 6

    .line 1
    sget v0, Lcom/appsflyer/internal/AFi1fSDK;->$12:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x23

    .line 4
    .line 5
    rem-int/lit16 v1, v0, 0x80

    .line 6
    .line 7
    sput v1, Lcom/appsflyer/internal/AFi1fSDK;->$13:I

    .line 8
    .line 9
    rem-int/lit8 v0, v0, 0x2

    .line 10
    .line 11
    const/4 v1, -0x1

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    mul-int/lit8 p0, p0, 0x57

    .line 15
    .line 16
    sget-object v0, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    .line 17
    .line 18
    add-int/lit8 p1, p1, 0x6

    .line 19
    .line 20
    add-int/lit8 p2, p2, 0x3d

    .line 21
    .line 22
    new-array v2, p0, [B

    .line 23
    .line 24
    add-int/lit8 p0, p0, 0x29

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    rsub-int/lit8 v0, p0, 0x31

    .line 30
    .line 31
    sget-object v2, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    .line 32
    .line 33
    add-int/lit8 p1, p1, 0x21

    .line 34
    .line 35
    add-int/lit8 p2, p2, 0x4

    .line 36
    .line 37
    new-array v0, v0, [B

    .line 38
    .line 39
    rsub-int/lit8 p0, p0, 0x30

    .line 40
    .line 41
    move-object v4, v2

    .line 42
    if-nez v2, :cond_1

    .line 43
    .line 44
    move-object v2, v0

    .line 45
    move-object v0, v4

    .line 46
    :goto_0
    move p1, p0

    .line 47
    move-object v3, v2

    .line 48
    move v2, v1

    .line 49
    move-object v1, v0

    .line 50
    move v0, p2

    .line 51
    goto :goto_2

    .line 52
    :cond_1
    move-object v2, v0

    .line 53
    move-object v0, v4

    .line 54
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 55
    .line 56
    int-to-byte v3, p1

    .line 57
    aput-byte v3, v2, v1

    .line 58
    .line 59
    if-ne v1, p0, :cond_4

    .line 60
    .line 61
    new-instance p0, Ljava/lang/String;

    .line 62
    .line 63
    const/4 p1, 0x0

    .line 64
    invoke-direct {p0, v2, p1}, Ljava/lang/String;-><init>([BI)V

    .line 65
    .line 66
    .line 67
    sget p1, Lcom/appsflyer/internal/AFi1fSDK;->$13:I

    .line 68
    .line 69
    add-int/lit8 p1, p1, 0x73

    .line 70
    .line 71
    rem-int/lit16 p2, p1, 0x80

    .line 72
    .line 73
    sput p2, Lcom/appsflyer/internal/AFi1fSDK;->$12:I

    .line 74
    .line 75
    rem-int/lit8 p1, p1, 0x2

    .line 76
    .line 77
    if-nez p1, :cond_3

    .line 78
    .line 79
    return-object p0

    .line 80
    :cond_3
    const/4 p0, 0x0

    .line 81
    throw p0

    .line 82
    :cond_4
    add-int/lit8 p2, p2, 0x1

    .line 83
    .line 84
    aget-byte v3, v0, p2

    .line 85
    .line 86
    move v4, p1

    .line 87
    move p1, p0

    .line 88
    move p0, v4

    .line 89
    move-object v5, v0

    .line 90
    move v0, p2

    .line 91
    move p2, v3

    .line 92
    move-object v3, v2

    .line 93
    move v2, v1

    .line 94
    move-object v1, v5

    .line 95
    :goto_2
    neg-int p2, p2

    .line 96
    add-int/2addr p0, p2

    .line 97
    move p2, v0

    .line 98
    move-object v0, v1

    .line 99
    move v1, v2

    .line 100
    move-object v2, v3

    .line 101
    move v4, p1

    .line 102
    move p1, p0

    .line 103
    move p0, v4

    .line 104
    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 63

    const/16 v7, 0x10

    const-class v9, Ljava/lang/Class;

    const/16 v14, 0x1b

    const/16 v15, 0x110

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-class v12, [B

    invoke-static {}, Lcom/appsflyer/internal/AFi1fSDK;->init$0()V

    const/16 v19, 0x1a

    .line 1
    :try_start_0
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    filled-new-array/range {v19 .. v19}, [Ljava/lang/Object;

    move-result-object v13

    sget-object v19, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    const/16 v21, 0x1c4

    aget-byte v1, v19, v21

    int-to-byte v1, v1

    aget-byte v8, v19, v15

    int-to-byte v8, v8

    aget-byte v2, v19, v7

    int-to-short v2, v2

    invoke-static {v1, v8, v2}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/16 v2, 0x196

    aget-byte v8, v19, v2

    int-to-byte v8, v8

    const/16 v24, 0xcd

    aget-byte v2, v19, v24

    int-to-byte v2, v2

    const/16 v24, 0x26

    aget-byte v7, v19, v24

    int-to-short v7, v7

    invoke-static {v8, v2, v7}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v7}, [Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    long-to-int v7, v7

    not-int v8, v7

    const v13, 0x3fc6c761

    or-int/2addr v8, v13

    not-int v8, v8

    const v24, 0x290014

    or-int v8, v8, v24

    mul-int/lit8 v8, v8, 0x62

    const v24, 0x2c45cf96

    add-int v24, v24, v8

    not-int v8, v7

    const v25, 0x28ebc135

    xor-int v26, v25, v8

    and-int v8, v25, v8

    or-int v8, v26, v8

    not-int v8, v8

    or-int/2addr v8, v13

    const v13, -0x28ebc136

    xor-int v25, v13, v7

    and-int/2addr v13, v7

    or-int v13, v25, v13

    not-int v13, v13

    xor-int v25, v8, v13

    and-int/2addr v8, v13

    or-int v8, v25, v8

    mul-int/lit8 v8, v8, -0x31

    or-int v13, v24, v8

    shl-int/2addr v13, v11

    xor-int v8, v24, v8

    sub-int/2addr v13, v8

    const v8, 0x3fc6c761

    xor-int v24, v8, v7

    and-int/2addr v7, v8

    or-int v7, v24, v7

    not-int v7, v7

    const v8, 0x28c2c121

    xor-int v24, v7, v8

    and-int/2addr v7, v8

    or-int v7, v24, v7

    mul-int/lit8 v7, v7, 0x31

    neg-int v7, v7

    neg-int v7, v7

    not-int v7, v7

    sub-int/2addr v13, v7

    sub-int/2addr v13, v11

    const v7, -0x6963b83c

    not-int v8, v1

    or-int/2addr v7, v8

    not-int v8, v7

    const v24, -0x40a98d77

    xor-int v25, v24, v8

    and-int v8, v24, v8

    or-int v8, v25, v8

    mul-int/lit16 v3, v8, 0x207

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v4, v4

    const v5, 0x26649

    mul-int/2addr v8, v5

    mul-int/lit16 v5, v13, -0x12d

    add-int/2addr v8, v5

    not-int v5, v3

    not-int v6, v4

    xor-int v28, v5, v6

    and-int/2addr v6, v5

    or-int v6, v28, v6

    xor-int v28, v6, v13

    and-int/2addr v6, v13

    or-int v6, v28, v6

    not-int v6, v6

    or-int v28, v3, v13

    or-int v2, v28, v4

    not-int v2, v2

    xor-int v28, v6, v2

    and-int/2addr v2, v6

    or-int v2, v28, v2

    mul-int/lit16 v2, v2, -0x12e

    neg-int v2, v2

    neg-int v2, v2

    not-int v2, v2

    sub-int/2addr v8, v2

    sub-int/2addr v8, v11

    xor-int v2, v5, v13

    and-int/2addr v5, v13

    or-int/2addr v2, v5

    xor-int v5, v2, v4

    and-int/2addr v2, v4

    or-int/2addr v2, v5

    not-int v2, v2

    mul-int/lit16 v2, v2, -0x25c

    neg-int v2, v2

    neg-int v2, v2

    and-int v5, v8, v2

    or-int/2addr v2, v8

    add-int/2addr v5, v2

    not-int v2, v13

    xor-int v6, v2, v3

    and-int/2addr v2, v3

    or-int/2addr v2, v6

    not-int v2, v2

    or-int v3, v13, v4

    not-int v3, v3

    xor-int v4, v2, v3

    and-int/2addr v2, v3

    or-int/2addr v2, v4

    mul-int/lit16 v2, v2, 0x12e

    xor-int v3, v5, v2

    and-int/2addr v2, v5

    shl-int/2addr v2, v11

    add-int/2addr v3, v2

    xor-int v2, v7, v24

    and-int v4, v7, v24

    or-int/2addr v2, v4

    not-int v2, v2

    const v4, -0x880545

    xor-int v5, v4, v1

    and-int/2addr v4, v1

    or-int/2addr v4, v5

    not-int v4, v4

    xor-int v5, v2, v4

    and-int/2addr v2, v4

    or-int/2addr v2, v5

    mul-int/lit16 v4, v2, -0x207

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    long-to-int v5, v5

    const v6, -0x14e83

    mul-int/2addr v2, v6

    mul-int/lit16 v6, v3, -0xa3

    not-int v6, v6

    sub-int/2addr v2, v6

    sub-int/2addr v2, v11

    not-int v6, v5

    xor-int v7, v6, v3

    and-int/2addr v6, v3

    or-int/2addr v6, v7

    not-int v6, v6

    xor-int v7, v4, v6

    and-int/2addr v6, v4

    or-int/2addr v6, v7

    mul-int/lit16 v6, v6, -0x148

    or-int v7, v2, v6

    shl-int/2addr v7, v11

    xor-int/2addr v2, v6

    sub-int/2addr v7, v2

    xor-int v2, v4, v5

    and-int v6, v4, v5

    or-int/2addr v2, v6

    mul-int/lit16 v2, v2, 0xa4

    add-int/2addr v7, v2

    not-int v2, v4

    not-int v6, v3

    xor-int v8, v2, v6

    and-int/2addr v2, v6

    or-int/2addr v2, v8

    not-int v2, v2

    xor-int v8, v6, v5

    and-int/2addr v6, v5

    or-int/2addr v6, v8

    not-int v6, v6

    xor-int v8, v2, v6

    and-int/2addr v2, v6

    or-int/2addr v2, v8

    not-int v5, v5

    xor-int v6, v5, v4

    and-int/2addr v4, v5

    or-int/2addr v4, v6

    xor-int v5, v4, v3

    and-int/2addr v3, v4

    or-int/2addr v3, v5

    not-int v3, v3

    xor-int v4, v2, v3

    and-int/2addr v2, v3

    or-int/2addr v2, v4

    mul-int/lit16 v2, v2, 0xa4

    not-int v2, v2

    sub-int/2addr v7, v2

    sub-int/2addr v7, v11

    xor-int v2, v24, v1

    and-int v1, v24, v1

    or-int/2addr v1, v2

    not-int v1, v1

    const v2, 0x6963b83b

    xor-int v3, v2, v1

    and-int/2addr v1, v2

    or-int/2addr v1, v3

    mul-int/lit16 v1, v1, 0x207

    add-int/2addr v7, v1

    if-nez v7, :cond_0

    return-void

    :cond_0
    const-wide v1, -0x1a2db5c47cac7b16L    # -3.03578070973379E182

    sput-wide v1, Lcom/appsflyer/internal/AFi1fSDK;->afErrorLog:J

    const v1, -0x7cac7b16

    sput v1, Lcom/appsflyer/internal/AFi1fSDK;->afWarnLog:I

    const/4 v1, 0x3

    sput v1, Lcom/appsflyer/internal/AFi1fSDK;->afRDLog:I

    const/16 v2, 0x8

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    sput-object v2, Lcom/appsflyer/internal/AFi1fSDK;->afVerboseLog:[B

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/appsflyer/internal/AFi1fSDK;->registerClient:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/appsflyer/internal/AFi1fSDK;->w:Ljava/util/Map;

    :try_start_1
    aget-byte v2, v19, v14

    int-to-byte v2, v2

    const/16 v3, 0x52

    aget-byte v4, v19, v3

    int-to-byte v4, v4

    const/16 v5, 0x120

    aget-byte v5, v19, v5

    int-to-short v5, v5

    invoke-static {v2, v4, v5}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/appsflyer/internal/AFi1fSDK;->d:Ljava/lang/Object;

    const/16 v5, 0xf0

    if-nez v4, :cond_1

    aget-byte v4, v19, v5

    int-to-byte v4, v4

    aget-byte v6, v19, v3

    int-to-byte v6, v6

    const/16 v7, 0x456

    aget-byte v7, v19, v7

    int-to-short v7, v7

    invoke-static {v4, v6, v7}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_86

    :cond_1
    const/4 v4, 0x0

    :goto_0
    const/16 v6, 0x120

    const/16 v7, 0x3b9

    const/16 v8, 0x28

    const/16 v13, 0x1ab

    .line 2
    :try_start_2
    aget-byte v6, v19, v6

    int-to-byte v6, v6

    aget-byte v5, v19, v15

    int-to-byte v5, v5

    aget-byte v1, v19, v8

    int-to-short v1, v1

    invoke-static {v6, v5, v1}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/16 v5, 0x235

    aget-byte v5, v19, v5

    int-to-byte v5, v5

    aget-byte v6, v19, v3

    int-to-byte v6, v6

    const/16 v8, 0x5c

    int-to-short v8, v8

    invoke-static {v5, v6, v8}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v1, :cond_2

    goto :goto_1

    :catch_1
    const/4 v1, 0x0

    :cond_2
    :try_start_3
    sget-object v5, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    aget-byte v6, v5, v21

    int-to-byte v6, v6

    aget-byte v8, v5, v15

    int-to-byte v8, v8

    xor-int/lit8 v29, v8, 0x2d

    and-int/lit8 v30, v8, 0x2d

    or-int v15, v29, v30

    int-to-short v15, v15

    invoke-static {v6, v8, v15}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aget-byte v8, v5, v7

    int-to-byte v8, v8

    aget-byte v5, v5, v13

    int-to-byte v5, v5

    const/16 v15, 0x82

    int-to-short v15, v15

    invoke-static {v8, v5, v15}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v5

    new-array v8, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :goto_1
    const/16 v5, 0x2f1

    if-eqz v1, :cond_3

    .line 3
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    sget-object v8, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    aget-byte v15, v8, v5

    int-to-byte v15, v15

    aget-byte v8, v8, v13

    int-to-byte v8, v8

    const/16 v7, 0x96

    int-to-short v7, v7

    invoke-static {v15, v8, v7}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    :cond_3
    const/4 v6, 0x0

    :goto_2
    if-eqz v1, :cond_4

    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    const/16 v15, 0xab

    aget-byte v10, v8, v15

    int-to-byte v10, v10

    aget-byte v8, v8, v13

    int-to-byte v8, v8

    const/16 v15, 0xa0

    int-to-short v15, v15

    invoke-static {v10, v8, v15}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v1, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    :cond_4
    const/4 v7, 0x0

    :goto_3
    if-eqz v1, :cond_5

    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    sget-object v10, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    aget-byte v15, v10, v5

    int-to-byte v15, v15

    aget-byte v10, v10, v13

    int-to-byte v10, v10

    const/16 v3, 0xae

    int-to-short v3, v3

    invoke-static {v15, v10, v3}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x0

    invoke-virtual {v8, v3, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v1, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_4

    :catch_5
    :cond_5
    const/4 v1, 0x0

    :goto_4
    const-class v3, Ljava/lang/String;

    const/16 v8, 0x5b

    if-eqz v6, :cond_6

    move-object v4, v6

    goto :goto_5

    :cond_6
    if-nez v4, :cond_7

    const/4 v4, 0x0

    goto :goto_5

    :cond_7
    :try_start_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    aget-byte v15, v10, v5

    int-to-byte v15, v15

    const/16 v27, 0x165

    aget-byte v11, v10, v27

    int-to-byte v11, v11

    const/16 v14, 0xb8

    int-to-short v14, v14

    invoke-static {v15, v11, v14}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :try_start_8
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    aget-byte v6, v10, v8

    int-to-byte v6, v6

    const/16 v10, 0x49

    int-to-byte v11, v10

    const/16 v10, 0xc2

    int-to-short v14, v10

    invoke-static {v6, v11, v14}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_79

    :goto_5
    if-eqz v1, :cond_8

    goto :goto_6

    :cond_8
    :try_start_9
    sget-object v1, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    const/16 v6, 0x37a

    aget-byte v10, v1, v6

    int-to-byte v6, v10

    const/16 v10, 0x49

    int-to-byte v11, v10

    xor-int/lit16 v10, v11, 0x84

    and-int/lit16 v14, v11, 0x84

    or-int/2addr v10, v14

    int-to-short v10, v10

    invoke-static {v6, v11, v10}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v6
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :try_start_a
    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v10, 0xb0

    aget-byte v10, v1, v10

    int-to-byte v10, v10

    const/16 v14, 0xda

    int-to-short v14, v14

    invoke-static {v10, v11, v14}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    aget-byte v14, v1, v5

    int-to-byte v14, v14

    aget-byte v15, v1, v13

    int-to-byte v15, v15

    const/16 v13, 0xe9

    int-to-short v13, v13

    invoke-static {v14, v15, v13}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v13

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    const/4 v13, 0x0

    invoke-virtual {v10, v13, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_78

    sget v10, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    const/16 v13, 0x1b

    or-int/lit8 v14, v10, 0x1b

    const/4 v15, 0x1

    shl-int/2addr v14, v15

    xor-int/2addr v10, v13

    sub-int/2addr v14, v10

    rem-int/lit16 v14, v14, 0x80

    sput v14, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    :try_start_b
    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    aget-byte v1, v1, v8

    int-to-byte v1, v1

    const/16 v10, 0xc2

    int-to-short v13, v10

    invoke-static {v1, v11, v13}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_77

    :goto_6
    if-nez v7, :cond_a

    if-eqz v4, :cond_a

    :try_start_c
    sget-object v6, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    const/16 v7, 0x2ce

    aget-byte v7, v6, v7

    int-to-byte v7, v7

    const/16 v10, 0x52

    aget-byte v11, v6, v10

    int-to-byte v10, v11

    xor-int/lit16 v11, v10, 0xb1

    and-int/lit16 v13, v10, 0xb1

    or-int/2addr v11, v13

    int-to-short v11, v11

    invoke-static {v7, v10, v11}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v7
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    const/4 v10, 0x2

    :try_start_d
    new-array v11, v10, [Ljava/lang/Object;

    const/4 v10, 0x1

    aput-object v7, v11, v10

    const/4 v7, 0x0

    aput-object v4, v11, v7

    aget-byte v7, v6, v8

    int-to-byte v7, v7

    const/16 v10, 0x49

    int-to-byte v13, v10

    const/16 v10, 0xc2

    int-to-short v14, v10

    invoke-static {v7, v13, v14}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aget-byte v6, v6, v8

    int-to-byte v6, v6

    invoke-static {v6, v13, v14}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    filled-new-array {v6, v3}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_e
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_9

    throw v2

    :cond_9
    throw v1

    :cond_a
    :goto_7
    sget-object v6, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    aget-byte v10, v6, v8

    int-to-byte v10, v10

    const/16 v11, 0x49

    int-to-byte v11, v11

    const/16 v13, 0xc2

    int-to-short v13, v13

    invoke-static {v10, v11, v13}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const/4 v14, 0x7

    invoke-static {v10, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Object;

    const/4 v14, 0x0

    const/4 v15, 0x0

    aput-object v14, v10, v15

    const/4 v14, 0x1

    aput-object v7, v10, v14

    const/4 v14, 0x2

    aput-object v4, v10, v14

    const/4 v14, 0x3

    aput-object v1, v10, v14

    const/4 v14, 0x4

    aput-object v7, v10, v14

    const/4 v7, 0x5

    aput-object v4, v10, v7

    const/4 v4, 0x6

    aput-object v1, v10, v4

    const/4 v1, 0x7

    new-array v4, v1, [Z

    fill-array-data v4, :array_1

    new-array v7, v1, [Z

    fill-array-data v7, :array_2

    new-array v15, v1, [Z

    const/4 v1, 0x0

    aput-boolean v1, v15, v1

    const/16 v25, 0x1

    aput-boolean v1, v15, v25

    const/16 v22, 0x2

    aput-boolean v25, v15, v22

    const/16 v26, 0x3

    aput-boolean v25, v15, v26

    aput-boolean v1, v15, v14

    const/4 v1, 0x5

    aput-boolean v25, v15, v1

    const/4 v1, 0x6

    aput-boolean v25, v15, v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    const/16 v16, 0x3c2

    :try_start_f
    aget-byte v5, v6, v16

    int-to-byte v5, v5

    const/16 v26, 0x110

    aget-byte v8, v6, v26

    int-to-byte v8, v8

    xor-int/lit16 v14, v8, 0xbc

    and-int/lit16 v1, v8, 0xbc

    or-int/2addr v1, v14

    int-to-short v1, v1

    invoke-static {v5, v8, v1}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/16 v5, 0x325

    aget-byte v5, v6, v5

    int-to-byte v5, v5

    const/16 v8, 0xc1

    aget-byte v6, v6, v8

    int-to-byte v6, v6

    const/16 v8, 0x113

    int-to-short v8, v8

    invoke-static {v5, v6, v8}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1
    :try_end_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f .. :try_end_f} :catch_6
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    const/16 v5, 0x22

    if-lt v1, v5, :cond_b

    const/4 v5, 0x1

    goto :goto_8

    :cond_b
    const/4 v5, 0x0

    :goto_8
    const/16 v6, 0x1d

    if-ne v1, v6, :cond_c

    goto :goto_9

    :cond_c
    const/16 v6, 0x1a

    if-lt v1, v6, :cond_d

    const/4 v6, 0x0

    const/16 v30, 0x1

    goto :goto_a

    :cond_d
    :goto_9
    const/4 v6, 0x0

    const/16 v30, 0x0

    :goto_a
    :try_start_10
    aput-boolean v30, v15, v6
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10 .. :try_end_10} :catch_7
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    const/16 v6, 0x15

    if-lt v1, v6, :cond_e

    sget v8, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    add-int/lit8 v8, v8, 0x7b

    rem-int/lit16 v8, v8, 0x80

    sput v8, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    const/4 v8, 0x1

    const/16 v32, 0x1

    goto :goto_b

    :cond_e
    const/4 v8, 0x1

    const/16 v32, 0x0

    :goto_b
    :try_start_11
    aput-boolean v32, v15, v8

    if-lt v1, v6, :cond_f

    const/4 v1, 0x1

    :goto_c
    const/4 v6, 0x4

    goto :goto_d

    :cond_f
    const/4 v1, 0x0

    goto :goto_c

    :goto_d
    aput-boolean v1, v15, v6
    :try_end_11
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_11} :catch_7
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    goto :goto_e

    :catch_6
    const/4 v5, 0x0

    :catch_7
    :goto_e
    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_f
    if-nez v6, :cond_5b

    const/16 v8, 0x9

    if-ge v1, v8, :cond_5b

    :try_start_12
    aget-boolean v8, v15, v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    if-eqz v8, :cond_5a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    :try_start_13
    aget-boolean v14, v4, v1

    aget-object v8, v10, v1

    aget-boolean v35, v7, v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_75

    move-object/from16 v36, v2

    const/4 v2, 0x1

    if-eq v14, v2, :cond_10

    move-object/from16 v37, v4

    move/from16 v38, v6

    move-object/from16 v39, v7

    goto :goto_10

    :cond_10
    if-eqz v8, :cond_54

    .line 4
    :try_start_14
    sget-object v2, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_70

    move-object/from16 v37, v4

    const/16 v33, 0x5b

    :try_start_15
    aget-byte v4, v2, v33

    int-to-byte v4, v4

    invoke-static {v4, v11, v13}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6f

    move/from16 v38, v6

    const/16 v30, 0x0

    :try_start_16
    aget-byte v6, v2, v30
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6e

    int-to-byte v6, v6

    const/16 v31, 0x52

    :try_start_17
    aget-byte v2, v2, v31
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6d

    int-to-byte v2, v2

    move-object/from16 v39, v7

    const/16 v7, 0x119

    int-to-short v7, v7

    :try_start_18
    invoke-static {v6, v2, v7}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v8, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6c

    if-eqz v2, :cond_52

    :goto_10
    if-eqz v14, :cond_25

    :try_start_19
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_10

    .line 5
    sget v6, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    or-int/lit8 v7, v6, 0x25

    const/16 v32, 0x1

    shl-int/lit8 v7, v7, 0x1

    xor-int/lit8 v6, v6, 0x25

    sub-int/2addr v7, v6

    rem-int/lit16 v7, v7, 0x80

    sput v7, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    .line 6
    :try_start_1a
    sget-object v6, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    const/16 v7, 0xb0

    aget-byte v7, v6, v7

    int-to-byte v7, v7

    const/16 v2, 0xda

    int-to-short v2, v2

    invoke-static {v7, v11, v2}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v7, 0x141

    aget-byte v7, v6, v7

    int-to-byte v7, v7

    const/16 v31, 0x52

    aget-byte v6, v6, v31
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_f

    int-to-byte v6, v6

    move-object/from16 v40, v10

    const/16 v10, 0x136

    int-to-short v10, v10

    :try_start_1b
    invoke-static {v7, v6, v10}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v7, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_e

    const-wide/32 v41, -0x52c407dc

    xor-long v6, v6, v41

    :try_start_1c
    invoke-virtual {v4, v6, v7}, Ljava/util/Random;->setSeed(J)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_d

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_11
    if-nez v2, :cond_23

    .line 7
    sget v41, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    and-int/lit8 v42, v41, 0x6f

    or-int/lit8 v41, v41, 0x6f

    move-object/from16 v43, v2

    add-int v2, v42, v41

    move-object/from16 v41, v15

    rem-int/lit16 v15, v2, 0x80

    sput v15, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    const/4 v15, 0x2

    rem-int/2addr v2, v15

    if-nez v2, :cond_11

    const/16 v2, 0x4b

    const/4 v15, 0x0

    :try_start_1d
    div-int/2addr v2, v15
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    if-nez v6, :cond_12

    goto :goto_12

    :catchall_1
    move-exception v0

    move/from16 v48, v1

    move-object v10, v3

    move/from16 v51, v5

    move v5, v11

    move-object/from16 v60, v12

    move/from16 v59, v13

    const/16 v3, 0x15

    const/16 v4, 0x20f

    const/16 v11, 0x52

    const/16 v18, 0x5

    move-object v1, v0

    move-object v13, v9

    const/16 v9, 0x196

    goto/16 :goto_81

    :cond_11
    if-nez v6, :cond_12

    :goto_12
    const/4 v2, 0x6

    goto :goto_13

    :cond_12
    if-nez v7, :cond_13

    const/4 v2, 0x5

    goto :goto_13

    :cond_13
    if-nez v10, :cond_14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v2, 0x4

    goto :goto_13

    :cond_14
    const/4 v2, 0x3

    .line 8
    :goto_13
    :try_start_1e
    new-instance v15, Ljava/lang/StringBuilder;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_c

    move-object/from16 v42, v9

    move-object/from16 v44, v10

    :try_start_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_b

    long-to-int v9, v9

    mul-int/lit16 v10, v2, 0x198

    const/16 v45, -0x32d

    xor-int v46, v45, v10

    and-int v10, v45, v10

    const/16 v32, 0x1

    shl-int/lit8 v10, v10, 0x1

    add-int v46, v46, v10

    not-int v10, v2

    xor-int/lit8 v45, v10, 0x1

    and-int/lit8 v47, v10, 0x1

    move/from16 v48, v1

    or-int v1, v45, v47

    not-int v1, v1

    xor-int/lit8 v45, v9, 0x1

    and-int/lit8 v47, v9, 0x1

    move/from16 v49, v5

    or-int v5, v45, v47

    not-int v5, v5

    xor-int v45, v1, v5

    and-int/2addr v1, v5

    or-int v1, v45, v1

    mul-int/lit16 v1, v1, -0x32e

    and-int v45, v46, v1

    or-int v1, v46, v1

    add-int v45, v45, v1

    not-int v1, v9

    xor-int v46, v10, v1

    and-int/2addr v1, v10

    or-int v1, v46, v1

    not-int v1, v1

    const/4 v10, -0x2

    xor-int v46, v10, v2

    and-int v47, v10, v2

    or-int v10, v46, v47

    move/from16 v46, v14

    not-int v14, v10

    xor-int v47, v1, v14

    and-int/2addr v1, v14

    or-int v1, v47, v1

    xor-int v14, v1, v5

    and-int/2addr v1, v5

    or-int/2addr v1, v14

    mul-int/lit16 v1, v1, 0x197

    add-int v45, v45, v1

    not-int v1, v10

    const/4 v5, -0x2

    xor-int v10, v5, v9

    and-int v14, v5, v9

    or-int v5, v10, v14

    not-int v5, v5

    or-int/2addr v1, v5

    xor-int v5, v2, v9

    and-int/2addr v9, v2

    or-int/2addr v5, v9

    not-int v5, v5

    xor-int v9, v1, v5

    and-int/2addr v1, v5

    or-int/2addr v1, v9

    mul-int/lit16 v1, v1, 0x197

    neg-int v1, v1

    neg-int v1, v1

    not-int v1, v1

    sub-int v45, v45, v1

    const/4 v1, 0x1

    add-int/lit8 v5, v45, -0x1

    :try_start_20
    invoke-direct {v15, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x2e

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v2, :cond_17

    if-eqz v35, :cond_16

    const/16 v5, 0x1a

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-virtual {v4}, Ljava/util/Random;->nextBoolean()Z

    move-result v9

    if-eqz v9, :cond_15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_2

    long-to-int v9, v9

    mul-int/lit16 v10, v5, 0x173

    add-int/lit16 v10, v10, 0x5e33

    not-int v14, v9

    const/16 v45, -0x42

    xor-int v47, v45, v14

    and-int v50, v45, v14

    move/from16 v51, v2

    or-int v2, v47, v50

    not-int v2, v2

    move-object/from16 v47, v12

    not-int v12, v5

    xor-int v50, v12, v9

    and-int/2addr v12, v9

    or-int v12, v50, v12

    not-int v12, v12

    xor-int v50, v2, v12

    and-int/2addr v2, v12

    or-int v2, v50, v2

    mul-int/lit16 v2, v2, -0x172

    neg-int v2, v2

    neg-int v2, v2

    xor-int v12, v10, v2

    and-int/2addr v2, v10

    const/4 v10, 0x1

    shl-int/2addr v2, v10

    add-int/2addr v12, v2

    not-int v2, v5

    xor-int v10, v2, v14

    and-int/2addr v2, v14

    or-int/2addr v2, v10

    not-int v2, v2

    xor-int v10, v45, v9

    and-int v9, v45, v9

    or-int/2addr v9, v10

    not-int v9, v9

    xor-int v10, v2, v9

    and-int/2addr v2, v9

    or-int/2addr v2, v10

    xor-int/lit8 v9, v5, 0x41

    and-int/lit8 v5, v5, 0x41

    or-int/2addr v5, v9

    not-int v9, v5

    or-int/2addr v2, v9

    mul-int/lit16 v2, v2, -0x172

    neg-int v2, v2

    neg-int v2, v2

    and-int v9, v12, v2

    or-int/2addr v2, v12

    add-int/2addr v9, v2

    not-int v2, v5

    mul-int/lit16 v2, v2, 0x172

    neg-int v2, v2

    neg-int v2, v2

    and-int v5, v9, v2

    or-int/2addr v2, v9

    :goto_15
    add-int/2addr v5, v2

    goto :goto_18

    :catchall_2
    move-exception v0

    :goto_16
    move-object/from16 v47, v12

    :goto_17
    move-object v1, v0

    move-object v10, v3

    move v5, v11

    move/from16 v59, v13

    move-object/from16 v13, v42

    move-object/from16 v60, v47

    move/from16 v51, v49

    const/16 v3, 0x15

    const/16 v4, 0x20f

    const/16 v9, 0x196

    const/16 v11, 0x52

    const/16 v18, 0x5

    goto/16 :goto_81

    :cond_15
    move/from16 v51, v2

    move-object/from16 v47, v12

    neg-int v2, v5

    neg-int v2, v2

    and-int/lit8 v5, v2, 0x60

    or-int/lit8 v2, v2, 0x60

    goto :goto_15

    :goto_18
    int-to-char v2, v5

    :try_start_21
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_19

    :catchall_3
    move-exception v0

    goto :goto_17

    :cond_16
    move/from16 v51, v2

    move-object/from16 v47, v12

    const/16 v2, 0xc

    invoke-virtual {v4, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    long-to-int v5, v9

    mul-int/lit8 v9, v2, 0x2e

    const v10, 0x5c000

    add-int/2addr v9, v10

    not-int v10, v5

    const/16 v12, -0x2001

    xor-int v14, v12, v10

    and-int/2addr v10, v12

    or-int/2addr v10, v14

    not-int v10, v10

    xor-int v14, v2, v10

    and-int/2addr v10, v2

    or-int/2addr v10, v14

    mul-int/lit8 v10, v10, -0x5a

    neg-int v10, v10

    neg-int v10, v10

    and-int v14, v9, v10

    or-int/2addr v9, v10

    add-int/2addr v14, v9

    or-int v9, v12, v5

    not-int v9, v9

    xor-int/lit16 v10, v2, 0x2000

    and-int/lit16 v12, v2, 0x2000

    or-int/2addr v10, v12

    not-int v10, v10

    xor-int v12, v9, v10

    and-int/2addr v9, v10

    or-int/2addr v9, v12

    mul-int/lit8 v9, v9, -0x2d

    add-int/2addr v14, v9

    not-int v9, v2

    xor-int v10, v9, v5

    and-int/2addr v9, v5

    or-int/2addr v9, v10

    not-int v9, v9

    const/16 v10, -0x2001

    xor-int v12, v10, v9

    and-int/2addr v9, v10

    or-int/2addr v9, v12

    not-int v5, v5

    xor-int v10, v5, v2

    and-int/2addr v2, v5

    or-int/2addr v2, v10

    not-int v2, v2

    or-int/2addr v2, v9

    mul-int/lit8 v2, v2, 0x2d

    neg-int v2, v2

    neg-int v2, v2

    or-int v5, v14, v2

    const/4 v9, 0x1

    shl-int/2addr v5, v9

    xor-int/2addr v2, v14

    sub-int/2addr v5, v2

    int-to-char v2, v5

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_19
    and-int/lit8 v2, v1, -0x47

    or-int/lit8 v1, v1, -0x47

    add-int/2addr v2, v1

    and-int/lit8 v1, v2, 0x48

    or-int/lit8 v2, v2, 0x48

    add-int/2addr v1, v2

    move-object/from16 v12, v47

    move/from16 v2, v51

    goto/16 :goto_14

    :cond_17
    move-object/from16 v47, v12

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_3

    if-nez v6, :cond_19

    const/4 v2, 0x2

    :try_start_22
    new-array v5, v2, [Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object v1, v5, v2

    const/4 v1, 0x0

    aput-object v8, v5, v1

    sget-object v1, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    const/16 v2, 0x5b

    aget-byte v6, v1, v2

    int-to-byte v6, v6

    invoke-static {v6, v11, v13}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aget-byte v1, v1, v2

    int-to-byte v1, v1

    invoke-static {v1, v11, v13}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    filled-new-array {v1, v3}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_4

    move-object v6, v1

    :goto_1a
    move-object/from16 v2, v43

    :goto_1b
    move-object/from16 v10, v44

    goto/16 :goto_1c

    :catchall_4
    move-exception v0

    move-object v1, v0

    :try_start_23
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_18

    throw v2

    :cond_18
    throw v1
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_3

    :cond_19
    if-nez v7, :cond_1b

    const/4 v2, 0x2

    :try_start_24
    new-array v5, v2, [Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object v1, v5, v2

    const/4 v1, 0x0

    aput-object v8, v5, v1

    sget-object v1, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    const/16 v2, 0x5b

    aget-byte v7, v1, v2

    int-to-byte v7, v7

    invoke-static {v7, v11, v13}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aget-byte v1, v1, v2

    int-to-byte v1, v1

    invoke-static {v1, v11, v13}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    filled-new-array {v1, v3}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_5

    move-object v7, v1

    goto :goto_1a

    :catchall_5
    move-exception v0

    move-object v1, v0

    :try_start_25
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1a

    throw v2

    :cond_1a
    throw v1
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_3

    :cond_1b
    if-nez v44, :cond_1e

    .line 9
    sget v2, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    xor-int/lit8 v5, v2, 0xb

    and-int/lit8 v9, v2, 0xb

    const/4 v10, 0x1

    shl-int/2addr v9, v10

    add-int/2addr v5, v9

    rem-int/lit16 v9, v5, 0x80

    sput v9, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    const/4 v9, 0x2

    rem-int/2addr v5, v9

    if-nez v5, :cond_1d

    add-int/lit8 v2, v2, 0x55

    rem-int/lit16 v2, v2, 0x80

    sput v2, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    .line 10
    :try_start_26
    new-array v2, v9, [Ljava/lang/Object;

    const/4 v5, 0x1

    aput-object v1, v2, v5

    const/4 v1, 0x0

    aput-object v8, v2, v1

    sget-object v1, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    const/16 v5, 0x5b

    aget-byte v9, v1, v5

    int-to-byte v9, v9

    invoke-static {v9, v11, v13}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    aget-byte v1, v1, v5

    int-to-byte v1, v1

    invoke-static {v1, v11, v13}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    filled-new-array {v1, v3}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_6

    move-object v10, v1

    move-object/from16 v2, v43

    goto/16 :goto_1c

    :catchall_6
    move-exception v0

    move-object v1, v0

    :try_start_27
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1c

    throw v2

    :cond_1c
    throw v1

    :cond_1d
    const/4 v1, 0x0

    .line 11
    throw v1
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_3

    :cond_1e
    const/4 v2, 0x2

    .line 12
    :try_start_28
    new-array v5, v2, [Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object v1, v5, v2

    const/4 v1, 0x0

    aput-object v8, v5, v1

    sget-object v1, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    const/16 v2, 0x5b

    aget-byte v9, v1, v2

    int-to-byte v9, v9

    invoke-static {v9, v11, v13}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    aget-byte v10, v1, v2

    int-to-byte v2, v10

    invoke-static {v2, v11, v13}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_a

    :try_start_29
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v9, 0x3c2

    aget-byte v10, v1, v9

    int-to-byte v9, v10

    const/16 v10, 0x146

    int-to-short v10, v10

    invoke-static {v9, v11, v10}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const/16 v12, 0x5b

    aget-byte v14, v1, v12

    int-to-byte v12, v14

    invoke-static {v12, v11, v13}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_8

    const/16 v9, 0x3c2

    :try_start_2a
    aget-byte v12, v1, v9

    int-to-byte v9, v12

    invoke-static {v9, v11, v10}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const/16 v10, 0x15

    aget-byte v12, v1, v10

    neg-int v10, v12

    int-to-byte v10, v10

    const/16 v12, 0x52

    aget-byte v1, v1, v12

    int-to-byte v1, v1

    const/16 v12, 0x15d

    int-to-short v14, v12

    invoke-static {v10, v1, v14}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x0

    invoke-virtual {v9, v1, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v5, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_7

    goto/16 :goto_1b

    :goto_1c
    move-object/from16 v15, v41

    move-object/from16 v9, v42

    move/from16 v14, v46

    move-object/from16 v12, v47

    move/from16 v1, v48

    move/from16 v5, v49

    goto/16 :goto_11

    :catchall_7
    move-exception v0

    move-object v1, v0

    :try_start_2b
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_1f

    throw v4

    :catch_8
    move-exception v0

    move-object v1, v0

    goto :goto_1d

    :cond_1f
    throw v1

    :catchall_8
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_20

    throw v4

    :cond_20
    throw v1
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_8
    .catchall {:try_start_2b .. :try_end_2b} :catchall_3

    :goto_1d
    :try_start_2c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    const/16 v6, 0x15

    aget-byte v7, v5, v6

    neg-int v6, v7

    int-to-byte v6, v6

    const/16 v7, 0xf0

    aget-byte v8, v5, v7

    int-to-byte v7, v8

    const/16 v8, 0x161

    int-to-short v8, v8

    invoke-static {v6, v7, v8}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20f

    aget-byte v6, v5, v2

    int-to-byte v2, v6

    const/16 v6, 0xf

    aget-byte v6, v5, v6

    int-to-byte v6, v6

    const/16 v7, 0x124

    int-to-short v7, v7

    invoke-static {v2, v6, v7}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_3

    const/4 v4, 0x2

    :try_start_2d
    new-array v6, v4, [Ljava/lang/Object;

    const/4 v7, 0x1

    aput-object v1, v6, v7

    const/4 v1, 0x0

    aput-object v2, v6, v1

    const/16 v1, 0x1fa

    aget-byte v2, v5, v1

    int-to-byte v1, v2

    shl-int/lit8 v2, v11, 0x2

    int-to-short v2, v2

    invoke-static {v1, v11, v2}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Throwable;

    filled-new-array {v3, v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    throw v1
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_9

    :catchall_9
    move-exception v0

    move-object v1, v0

    :try_start_2e
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_21

    throw v2

    :cond_21
    throw v1

    :catchall_a
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_22

    throw v2

    :cond_22
    throw v1

    :catchall_b
    move-exception v0

    move/from16 v48, v1

    move/from16 v49, v5

    goto/16 :goto_16

    :catchall_c
    move-exception v0

    move/from16 v48, v1

    move/from16 v49, v5

    move-object/from16 v42, v9

    goto/16 :goto_16

    :cond_23
    move/from16 v48, v1

    move-object/from16 v43, v2

    move/from16 v49, v5

    move-object/from16 v42, v9

    move-object/from16 v44, v10

    move-object/from16 v47, v12

    move/from16 v46, v14

    move-object/from16 v41, v15

    move-object v5, v6

    goto :goto_21

    :catchall_d
    move-exception v0

    move/from16 v48, v1

    move/from16 v49, v5

    move-object/from16 v42, v9

    :goto_1e
    move-object/from16 v47, v12

    move-object/from16 v41, v15

    goto/16 :goto_17

    :catchall_e
    move-exception v0

    move/from16 v48, v1

    move/from16 v49, v5

    move-object/from16 v42, v9

    :goto_1f
    move-object/from16 v47, v12

    move-object/from16 v41, v15

    move-object v1, v0

    goto :goto_20

    :catchall_f
    move-exception v0

    move/from16 v48, v1

    move/from16 v49, v5

    move-object/from16 v42, v9

    move-object/from16 v40, v10

    goto :goto_1f

    :goto_20
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_24

    throw v2

    :cond_24
    throw v1
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_3

    :catchall_10
    move-exception v0

    move/from16 v48, v1

    move/from16 v49, v5

    move-object/from16 v42, v9

    move-object/from16 v40, v10

    goto :goto_1e

    :cond_25
    move/from16 v48, v1

    move/from16 v49, v5

    move-object/from16 v42, v9

    move-object/from16 v40, v10

    move-object/from16 v47, v12

    move/from16 v46, v14

    move-object/from16 v41, v15

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    :goto_21
    :try_start_2f
    sget-object v1, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    const/16 v2, 0x21

    aget-byte v2, v1, v2

    int-to-byte v2, v2

    const/16 v4, 0x165

    aget-byte v6, v1, v4

    int-to-byte v6, v6

    int-to-short v8, v4

    invoke-static {v2, v6, v8}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v2

    const-class v4, Lcom/appsflyer/internal/AFi1fSDK;
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_6b

    .line 13
    sget v6, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    add-int/lit8 v6, v6, 0x2f

    rem-int/lit16 v6, v6, 0x80

    sput v6, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    .line 14
    :try_start_30
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v8, 0x2f1

    aget-byte v9, v1, v8

    int-to-byte v8, v9

    const/16 v9, 0x1ab

    aget-byte v10, v1, v9

    int-to-byte v9, v10

    const/16 v10, 0x195

    int-to-short v10, v10

    invoke-static {v8, v9, v10}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v9
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_6a

    move-object/from16 v10, v42

    :try_start_31
    invoke-virtual {v10, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_69

    const/16 v6, 0x5b

    :try_start_32
    aget-byte v8, v1, v6

    int-to-byte v6, v8

    const/16 v8, 0x19f

    int-to-short v8, v8

    invoke-static {v6, v11, v8}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v8, 0x325

    aget-byte v8, v1, v8

    int-to-byte v8, v8

    const/16 v9, 0x1ab

    aget-byte v12, v1, v9

    int-to-byte v9, v12

    const/16 v12, 0x1aa

    int-to-short v12, v12

    invoke-static {v8, v9, v12}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v4, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_68

    :try_start_33
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x20f

    aget-byte v9, v1, v8

    int-to-byte v8, v9

    const/16 v9, 0x21

    aget-byte v9, v1, v9

    int-to-byte v9, v9

    const/16 v12, 0x1b0

    xor-int/lit16 v14, v9, 0x1b0

    and-int/lit16 v15, v9, 0x1b0

    or-int v12, v14, v15

    int-to-short v12, v12

    invoke-static {v8, v9, v12}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_66

    const/4 v8, 0x5

    :try_start_34
    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_67

    :try_start_35
    new-instance v6, Ljava/util/zip/ZipFile;

    invoke-direct {v6, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_66

    const/16 v4, 0x19d9

    :try_start_36
    new-array v4, v4, [B

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_5f

    :try_start_37
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const/16 v8, 0x11b

    aget-byte v8, v1, v8

    int-to-byte v8, v8

    const/16 v9, 0x1b0

    int-to-short v12, v9

    invoke-static {v8, v11, v12}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/16 v9, 0x1fa

    aget-byte v12, v1, v9

    int-to-byte v9, v12

    const/16 v12, 0x1ca

    int-to-short v12, v12

    invoke-static {v9, v11, v12}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_64

    :try_start_38
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    aget-byte v8, v1, v21

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    int-to-byte v8, v8

    const/16 v9, 0x1dc

    int-to-short v9, v9

    invoke-static {v8, v11, v9}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/16 v14, 0x1fa

    aget-byte v15, v1, v14

    int-to-byte v14, v15

    invoke-static {v14, v11, v12}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_63

    :try_start_39
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v8

    aget-byte v12, v1, v21

    const/4 v14, 0x1

    sub-int/2addr v12, v14

    int-to-byte v12, v12

    invoke-static {v12, v11, v9}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    const/4 v14, 0x0

    aget-byte v15, v1, v14

    const/4 v14, -0x1

    xor-int/2addr v15, v14

    const/4 v14, -0x2

    rsub-int/lit8 v15, v15, -0x2

    int-to-byte v14, v15

    const/16 v15, 0x51

    int-to-byte v15, v15

    move-object/from16 v35, v4

    sget v4, Lcom/appsflyer/internal/AFi1fSDK;->$$b:I

    move-object/from16 v42, v5

    xor-int/lit16 v5, v4, 0x182

    and-int/lit16 v4, v4, 0x182

    or-int/2addr v4, v5

    int-to-short v4, v4

    invoke-static {v14, v15, v4}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v4

    filled-new-array/range {v47 .. v47}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_62

    :try_start_3a
    aget-byte v4, v1, v21

    const/4 v5, -0x1

    xor-int/2addr v4, v5

    const/4 v5, -0x2

    rsub-int/lit8 v8, v4, -0x2

    int-to-byte v4, v8

    invoke-static {v4, v11, v9}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0x15

    aget-byte v8, v1, v5
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_60

    neg-int v5, v8

    int-to-byte v5, v5

    const/16 v8, 0x52

    :try_start_3b
    aget-byte v1, v1, v8
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_61

    int-to-byte v1, v1

    const/16 v8, 0x15d

    int-to-short v9, v8

    :try_start_3c
    invoke-static {v5, v1, v9}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_60

    const/16 v1, 0x11

    const/16 v2, 0x19b2

    move-object/from16 v4, v35

    move-object/from16 v8, v36

    const/4 v5, 0x0

    :goto_22
    const/4 v9, 0x1

    int-to-long v14, v9

    .line 15
    :try_start_3d
    array-length v9, v4
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_5f

    const/4 v12, 0x0

    :goto_23
    if-ge v12, v9, :cond_26

    move/from16 v35, v2

    :try_start_3e
    aget-byte v2, v4, v12
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_11

    move-object/from16 v50, v5

    move-object/from16 v45, v6

    int-to-long v5, v2

    const/4 v2, 0x6

    shl-long v51, v14, v2

    add-long v5, v5, v51

    const/16 v2, 0x10

    shl-long v51, v14, v2

    add-long v5, v5, v51

    sub-long v14, v5, v14

    const/4 v2, 0x1

    add-int/2addr v12, v2

    move/from16 v2, v35

    move-object/from16 v6, v45

    move-object/from16 v5, v50

    goto :goto_23

    :catchall_11
    move-exception v0

    move-object/from16 v45, v6

    const/4 v2, 0x1

    move-object v1, v0

    move v5, v11

    move/from16 v59, v13

    move-object/from16 v60, v47

    move/from16 v51, v49

    const/16 v9, 0x196

    const/16 v11, 0x52

    const/16 v18, 0x5

    move-object v13, v10

    :goto_24
    move-object v10, v3

    goto/16 :goto_73

    :cond_26
    move/from16 v35, v2

    move-object/from16 v50, v5

    move-object/from16 v45, v6

    const/4 v2, 0x1

    xor-int/lit16 v5, v1, 0x189

    and-int/lit16 v6, v1, 0x189

    shl-int/2addr v6, v2

    add-int/2addr v5, v6

    or-int/lit16 v6, v1, 0xd97

    shl-int/2addr v6, v2

    xor-int/lit16 v2, v1, 0xd97

    sub-int/2addr v6, v2

    .line 16
    :try_start_3f
    aget-byte v2, v4, v6

    add-int/lit8 v2, v2, 0x54

    int-to-byte v2, v2

    aput-byte v2, v4, v5

    array-length v2, v4
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_5e

    neg-int v5, v1

    and-int v6, v2, v5

    or-int/2addr v2, v5

    add-int/2addr v6, v2

    const/4 v2, 0x3

    :try_start_40
    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x2

    aput-object v2, v5, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x1

    aput-object v2, v5, v6

    const/4 v2, 0x0

    aput-object v4, v5, v2

    sget-object v2, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    const/16 v4, 0xc9

    aget-byte v4, v2, v4

    int-to-byte v4, v4

    sget v6, Lcom/appsflyer/internal/AFi1fSDK;->$$b:I

    xor-int/lit16 v9, v6, 0x18a

    and-int/lit16 v12, v6, 0x18a

    or-int/2addr v9, v12

    int-to-short v9, v9

    invoke-static {v4, v11, v9}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_5d

    move-object/from16 v12, v47

    move-object/from16 v47, v7

    :try_start_41
    filled-new-array {v12, v9, v9}, [Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_5c

    :try_start_42
    sget-object v5, Lcom/appsflyer/internal/AFi1fSDK;->d:Ljava/lang/Object;
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_5b

    if-nez v5, :cond_28

    .line 17
    sget v5, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    xor-int/lit8 v7, v5, 0x79

    and-int/lit8 v5, v5, 0x79

    const/16 v32, 0x1

    shl-int/lit8 v5, v5, 0x1

    add-int/2addr v7, v5

    rem-int/lit16 v7, v7, 0x80

    sput v7, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    .line 18
    :try_start_43
    sput-wide v14, Lcom/appsflyer/internal/AFi1fSDK;->afInfoLog:J

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v5

    const/16 v7, 0x10

    shr-int/2addr v5, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    long-to-int v7, v14

    mul-int/lit16 v14, v5, 0xc1

    const v15, -0x45e666d8

    add-int/2addr v14, v15

    not-int v15, v7

    move/from16 v57, v1

    not-int v1, v5

    const v51, -0x67d2c4d8

    xor-int v52, v1, v51

    and-int v53, v1, v51

    move-object/from16 v58, v8

    or-int v8, v52, v53

    not-int v8, v8

    xor-int v52, v15, v8

    and-int/2addr v8, v15

    or-int v8, v52, v8

    mul-int/lit16 v8, v8, -0xc0

    and-int v52, v14, v8

    or-int/2addr v8, v14

    add-int v52, v52, v8

    const v8, 0x67d2c4d7

    xor-int v14, v1, v8

    and-int/2addr v8, v1

    or-int/2addr v8, v14

    not-int v8, v8

    not-int v14, v7

    const v53, 0x67d2c4d7

    or-int v14, v53, v14

    not-int v14, v14

    xor-int v54, v8, v14

    and-int/2addr v8, v14

    or-int v8, v54, v8

    mul-int/lit16 v8, v8, -0x180

    xor-int v14, v52, v8

    and-int v8, v52, v8

    const/16 v32, 0x1

    shl-int/lit8 v8, v8, 0x1

    add-int/2addr v14, v8

    or-int v1, v1, v53

    xor-int v8, v1, v7

    and-int/2addr v1, v7

    or-int/2addr v1, v8

    not-int v1, v1

    const v8, 0x67d2c4d7

    xor-int v52, v8, v15

    and-int/2addr v8, v15

    or-int v8, v52, v8

    xor-int v15, v8, v5

    and-int/2addr v8, v5

    or-int/2addr v8, v15

    not-int v8, v8

    xor-int v15, v1, v8

    and-int/2addr v1, v8

    or-int/2addr v1, v15

    or-int v5, v5, v51

    xor-int v8, v5, v7

    and-int/2addr v5, v7

    or-int/2addr v5, v8

    not-int v5, v5

    xor-int v7, v1, v5

    and-int/2addr v1, v5

    or-int/2addr v1, v7

    mul-int/lit16 v1, v1, 0xc0

    add-int/2addr v14, v1

    sget-wide v7, Lcom/appsflyer/internal/AFi1fSDK;->afInfoLog:J

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v51

    const/16 v1, 0x30

    shr-long v51, v51, v1

    const-wide v53, 0x1a49a0b07cedf175L    # 4.825053628218327E-182

    add-long v51, v51, v53

    xor-long v7, v7, v51

    long-to-int v1, v7

    sget-wide v7, Lcom/appsflyer/internal/AFi1fSDK;->afInfoLog:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v51

    const/16 v5, 0x30

    shr-long v51, v51, v5

    const-wide v53, 0x1a49a0b07cedf172L    # 4.825053628218325E-182

    sub-long v53, v53, v51

    xor-long v7, v7, v53

    long-to-int v5, v7

    new-array v5, v5, [I

    sget-wide v7, Lcom/appsflyer/internal/AFi1fSDK;->afInfoLog:J

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v51

    const/16 v15, 0x20

    shr-long v51, v51, v15

    const-wide v53, 0x1a49a0b07cedf170L    # 4.825053628218324E-182

    add-long v51, v51, v53

    xor-long v7, v7, v51

    long-to-int v7, v7

    sget-wide v51, Lcom/appsflyer/internal/AFi1fSDK;->afErrorLog:J

    const-string v8, ""

    invoke-static {v8}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v8
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_16

    neg-int v8, v8

    neg-int v8, v8

    not-int v8, v8

    rsub-int/lit8 v8, v8, 0x1f

    int-to-byte v8, v8

    move-object/from16 v60, v12

    move/from16 v59, v13

    ushr-long v12, v51, v8

    long-to-int v8, v12

    xor-int/2addr v8, v14

    :try_start_44
    aput v8, v5, v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v7

    const-wide/16 v12, 0x0

    cmp-long v7, v7, v12

    sget-wide v12, Lcom/appsflyer/internal/AFi1fSDK;->afErrorLog:J

    long-to-int v8, v12

    not-int v12, v14

    and-int/2addr v12, v8

    not-int v8, v8

    and-int/2addr v8, v14

    or-int/2addr v8, v12

    aput v8, v5, v7

    sget v7, Lcom/appsflyer/internal/AFi1fSDK;->afWarnLog:I

    sget-object v8, Lcom/appsflyer/internal/AFi1fSDK;->afVerboseLog:[B

    sget v12, Lcom/appsflyer/internal/AFi1fSDK;->afRDLog:I
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_15

    const/4 v13, 0x6

    :try_start_45
    new-array v14, v13, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_13

    const/16 v18, 0x5

    :try_start_46
    aput-object v12, v14, v18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v12, 0x4

    aput-object v1, v14, v12

    const/4 v1, 0x3

    aput-object v8, v14, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v7, 0x2

    aput-object v1, v14, v7

    const/4 v1, 0x1

    aput-object v5, v14, v1

    const/4 v1, 0x0

    aput-object v4, v14, v1

    const/16 v1, 0x25b

    aget-byte v1, v2, v1

    int-to-byte v1, v1

    const/16 v4, 0x52

    aget-byte v5, v2, v4

    int-to-byte v4, v5

    const/16 v5, 0x215

    int-to-short v5, v5

    invoke-static {v1, v4, v5}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/16 v4, 0x1fa

    aget-byte v5, v2, v4

    int-to-byte v4, v5

    const/16 v5, 0x1ca

    int-to-short v5, v5

    invoke-static {v4, v11, v5}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v51

    const-class v52, [I

    const-class v54, [B

    move-object/from16 v53, v9

    move-object/from16 v55, v9

    move-object/from16 v56, v9

    filled-new-array/range {v51 .. v56}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_12

    const/16 v4, 0x1fa

    const/4 v12, 0x3

    const/4 v14, 0x4

    goto/16 :goto_2a

    :catchall_12
    move-exception v0

    :goto_25
    move-object v1, v0

    goto :goto_26

    :catchall_13
    move-exception v0

    const/16 v18, 0x5

    goto :goto_25

    :goto_26
    :try_start_47
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_27

    throw v2

    :catchall_14
    move-exception v0

    :goto_27
    move-object v1, v0

    move-object v13, v10

    move v5, v11

    move-object/from16 v6, v45

    move/from16 v51, v49

    :goto_28
    const/16 v9, 0x196

    const/16 v11, 0x52

    goto/16 :goto_24

    :cond_27
    throw v1
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_14

    :catchall_15
    move-exception v0

    :goto_29
    const/4 v13, 0x6

    const/16 v18, 0x5

    goto :goto_27

    :catchall_16
    move-exception v0

    move-object/from16 v60, v12

    move/from16 v59, v13

    goto :goto_29

    :cond_28
    move/from16 v57, v1

    move-object/from16 v58, v8

    move-object/from16 v60, v12

    move/from16 v59, v13

    const/4 v13, 0x6

    const/16 v18, 0x5

    :try_start_48
    sput-wide v14, Lcom/appsflyer/internal/AFi1fSDK;->afDebugLog:J

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v1

    shr-int/lit8 v1, v1, 0x8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    long-to-int v7, v7

    mul-int/lit16 v8, v1, -0x177

    const v12, -0x2441387

    xor-int v14, v8, v12

    and-int/2addr v8, v12

    const/4 v12, 0x1

    shl-int/2addr v8, v12

    add-int/2addr v14, v8

    not-int v8, v1

    const v12, -0x33e38272    # -4.1023032E7f

    xor-int v15, v8, v12

    and-int/2addr v8, v12

    or-int/2addr v8, v15

    not-int v8, v8

    xor-int v12, v7, v8

    and-int/2addr v8, v7

    or-int/2addr v8, v12

    const v12, 0x33e38271

    xor-int v15, v1, v12

    and-int v20, v1, v12

    or-int v15, v15, v20

    not-int v15, v15

    xor-int v20, v8, v15

    and-int/2addr v8, v15

    or-int v8, v20, v8

    mul-int/lit16 v8, v8, 0x178

    or-int v20, v14, v8

    const/16 v32, 0x1

    shl-int/lit8 v20, v20, 0x1

    xor-int/2addr v8, v14

    sub-int v20, v20, v8

    not-int v8, v7

    xor-int v14, v8, v1

    and-int/2addr v8, v1

    or-int/2addr v8, v14

    not-int v8, v8

    xor-int v14, v8, v15

    and-int/2addr v8, v15

    or-int/2addr v8, v14

    mul-int/lit16 v8, v8, -0x178

    xor-int v14, v20, v8

    and-int v8, v20, v8

    const/4 v15, 0x1

    shl-int/2addr v8, v15

    add-int/2addr v14, v8

    not-int v1, v1

    or-int/2addr v1, v7

    not-int v1, v1

    or-int/2addr v1, v12

    mul-int/lit16 v1, v1, 0x178

    neg-int v1, v1

    neg-int v1, v1

    and-int v7, v14, v1

    or-int/2addr v1, v14

    add-int/2addr v7, v1

    sget-wide v14, Lcom/appsflyer/internal/AFi1fSDK;->afDebugLog:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v51

    const/16 v1, 0x30

    shr-long v51, v51, v1

    const-wide v53, -0xeba398a42212562L    # -4.4310783455820986E237

    sub-long v53, v53, v51

    xor-long v14, v14, v53

    long-to-int v1, v14

    const-string v8, ""

    const/16 v12, 0x30

    invoke-static {v8, v12}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v8
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_57

    const/4 v12, 0x3

    rsub-int/lit8 v8, v8, 0x3

    const/4 v14, 0x4

    :try_start_49
    new-array v15, v14, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    aput-object v8, v15, v12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v8, 0x2

    aput-object v1, v15, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v7, 0x1

    aput-object v1, v15, v7

    const/4 v1, 0x0

    aput-object v4, v15, v1

    const/16 v1, 0x1b

    aget-byte v4, v2, v1
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_59

    int-to-byte v1, v4

    const/16 v4, 0x52

    :try_start_4a
    aget-byte v7, v2, v4
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_5a

    int-to-byte v4, v7

    const/16 v7, 0x233

    int-to-short v7, v7

    :try_start_4b
    invoke-static {v1, v4, v7}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/appsflyer/internal/AFi1fSDK;->unregisterClient:Ljava/lang/Object;

    check-cast v4, Ljava/lang/ClassLoader;

    const/4 v7, 0x1

    invoke-static {v1, v7, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    const/16 v4, 0xab

    aget-byte v7, v2, v4

    int-to-byte v4, v7

    const/16 v7, 0x141

    aget-byte v7, v2, v7

    int-to-byte v7, v7

    const/16 v8, 0x253

    int-to-short v8, v8

    invoke-static {v4, v7, v8}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x1fa

    aget-byte v8, v2, v7

    int-to-byte v7, v8

    const/16 v8, 0x1ca

    int-to-short v8, v8

    invoke-static {v7, v11, v8}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    filled-new-array {v7, v9, v9, v8}, [Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v5, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_59

    const/16 v4, 0x1fa

    :goto_2a
    :try_start_4c
    aget-byte v5, v2, v4

    int-to-byte v4, v5

    const/16 v5, 0x1ca

    int-to-short v5, v5

    invoke-static {v4, v11, v5}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_57

    const/16 v7, 0x196

    :try_start_4d
    aget-byte v8, v2, v7
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_58

    int-to-byte v7, v8

    const/16 v8, 0x467

    :try_start_4e
    aget-byte v8, v2, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-int v12, v12

    mul-int/lit16 v13, v8, -0x1cf

    const/16 v20, -0x1d1

    or-int v26, v20, v13

    const/16 v32, 0x1

    shl-int/lit8 v26, v26, 0x1

    xor-int v13, v20, v13

    sub-int v26, v26, v13

    not-int v8, v8

    not-int v13, v12

    xor-int v20, v8, v13

    and-int v51, v8, v13

    or-int v14, v20, v51

    not-int v14, v14

    const/16 v17, -0x1

    xor-int/lit8 v20, v13, -0x1

    or-int v13, v20, v13

    not-int v13, v13

    xor-int v20, v14, v13

    and-int/2addr v13, v14

    or-int v13, v20, v13

    mul-int/lit16 v13, v13, 0x1d0

    add-int v26, v26, v13

    xor-int v13, v12, v8

    and-int/2addr v12, v8

    or-int/2addr v12, v13

    mul-int/lit16 v12, v12, -0x1d0

    neg-int v12, v12

    neg-int v12, v12

    and-int v13, v26, v12

    or-int v12, v26, v12

    add-int/2addr v13, v12

    const/4 v12, -0x1

    xor-int/lit8 v14, v8, -0x1

    or-int/2addr v8, v14

    not-int v8, v8

    mul-int/lit16 v8, v8, 0x1d0

    and-int v12, v13, v8

    or-int/2addr v8, v13

    add-int/2addr v12, v8

    int-to-byte v8, v12

    const/16 v12, 0x261

    int-to-short v12, v12

    invoke-static {v7, v8, v12}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {v8}, [Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/16 v7, 0x10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_57

    if-eqz v46, :cond_38

    :try_start_4f
    sget-object v4, Lcom/appsflyer/internal/AFi1fSDK;->d:Ljava/lang/Object;
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_31

    if-nez v4, :cond_29

    move-object/from16 v8, v42

    goto :goto_2b

    :cond_29
    move-object/from16 v8, v47

    :goto_2b
    if-nez v4, :cond_2b

    .line 19
    sget v4, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    xor-int/lit8 v12, v4, 0x2d

    and-int/lit8 v4, v4, 0x2d

    const/4 v13, 0x1

    shl-int/2addr v4, v13

    add-int/2addr v12, v4

    rem-int/lit16 v4, v12, 0x80

    sput v4, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    const/4 v4, 0x2

    rem-int/2addr v12, v4

    if-eqz v12, :cond_2a

    const/16 v4, 0x3d

    const/4 v12, 0x0

    :try_start_50
    div-int/2addr v4, v12
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_14

    :cond_2a
    move-object/from16 v12, v44

    :goto_2c
    const/16 v4, 0x1fa

    goto :goto_2d

    :cond_2b
    move-object/from16 v12, v43

    goto :goto_2c

    .line 20
    :goto_2d
    :try_start_51
    aget-byte v13, v2, v4

    int-to-byte v4, v13

    invoke-static {v4, v11, v5}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v13, 0x196

    aget-byte v14, v2, v13

    int-to-byte v13, v14

    const/16 v14, 0x51

    int-to-byte v14, v14

    const/16 v7, 0x264

    int-to-short v7, v7

    invoke-static {v13, v14, v7}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v7
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_31

    move-object/from16 v13, v60

    :try_start_52
    filled-new-array {v13, v9, v9}, [Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v4, v7, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/16 v7, 0x3c2

    aget-byte v14, v2, v7

    int-to-byte v7, v14

    const/16 v14, 0x146

    int-to-short v14, v14

    invoke-static {v7, v11, v14}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_30

    const/16 v14, 0x5b

    :try_start_53
    aget-byte v15, v2, v14
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_53} :catch_b
    .catchall {:try_start_53 .. :try_end_53} :catchall_2c

    int-to-byte v14, v15

    move/from16 v15, v59

    :try_start_54
    invoke-static {v14, v11, v15}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v14

    move/from16 v26, v5

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_54} :catch_a
    .catchall {:try_start_54 .. :try_end_54} :catchall_2b

    move/from16 v14, v49

    move-object/from16 v49, v10

    const/4 v10, 0x1

    if-eq v14, v10, :cond_2c

    move-object/from16 v53, v12

    move/from16 v51, v14

    move/from16 v59, v15

    goto :goto_2e

    :cond_2c
    move/from16 v51, v14

    const/16 v10, 0x5b

    :try_start_55
    aget-byte v14, v2, v10

    int-to-byte v10, v14

    invoke-static {v10, v11, v15}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_2a

    move-object/from16 v53, v12

    const/16 v14, 0x2f1

    :try_start_56
    aget-byte v12, v2, v14

    int-to-byte v12, v12

    const/16 v14, 0x467

    aget-byte v14, v2, v14
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_29

    const/16 v17, -0x1

    xor-int/lit8 v14, v14, -0x1

    const/16 v34, -0x2

    rsub-int/lit8 v14, v14, -0x2

    int-to-byte v14, v14

    move/from16 v59, v15

    const/16 v15, 0x267

    int-to-short v15, v15

    :try_start_57
    invoke-static {v12, v14, v15}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    invoke-virtual {v10, v12, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-virtual {v10, v8, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_28

    .line 21
    :goto_2e
    sget v10, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    and-int/lit8 v12, v10, 0x79

    or-int/lit8 v10, v10, 0x79

    add-int/2addr v12, v10

    rem-int/lit16 v12, v12, 0x80

    sput v12, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    const/16 v10, 0x400

    .line 22
    :try_start_58
    new-array v12, v10, [B

    const/16 v14, 0x15

    aget-byte v2, v2, v14

    neg-int v2, v2

    int-to-byte v2, v2

    const/16 v14, 0x56

    int-to-byte v14, v14

    or-int/lit16 v6, v6, 0x205

    int-to-short v6, v6

    invoke-static {v2, v14, v6}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v13, v9, v9}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v7, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_27

    move/from16 v6, v35

    :goto_2f
    if-lez v6, :cond_2d

    const/4 v9, 0x0

    :try_start_59
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v10, v6}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v12, v14, v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v4, v1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_2d

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v12, v10, v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v2, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_59
    .catchall {:try_start_59 .. :try_end_59} :catchall_17

    neg-int v9, v14

    not-int v9, v9

    sub-int/2addr v6, v9

    const/4 v9, 0x1

    sub-int/2addr v6, v9

    const/16 v10, 0x400

    goto :goto_2f

    :catchall_17
    move-exception v0

    move-object v1, v0

    move-object/from16 v60, v13

    move-object/from16 v10, v49

    move-object/from16 v9, v53

    move/from16 v5, v59

    const/16 v7, 0xab

    goto/16 :goto_43

    :cond_2d
    :try_start_5a
    sget-object v1, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    const/16 v2, 0x15

    aget-byte v4, v1, v2

    neg-int v2, v4

    int-to-byte v2, v2

    const/16 v4, 0x1ab

    aget-byte v6, v1, v4

    int-to-byte v4, v6

    sget v6, Lcom/appsflyer/internal/AFi1fSDK;->$$b:I

    xor-int/lit16 v9, v6, 0x209

    and-int/lit16 v6, v6, 0x209

    or-int/2addr v6, v9

    int-to-short v6, v6

    invoke-static {v2, v4, v6}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v6, v4, [Ljava/lang/Class;

    invoke-virtual {v7, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aget-byte v4, v1, v21

    int-to-byte v4, v4

    or-int/lit16 v6, v11, 0x234

    int-to-short v6, v6

    invoke-static {v4, v11, v6}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v6, 0x196

    aget-byte v9, v1, v6

    int-to-byte v6, v9

    const/16 v9, 0x467

    aget-byte v9, v1, v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14
    :try_end_5a
    .catchall {:try_start_5a .. :try_end_5a} :catchall_27

    long-to-int v10, v14

    mul-int/lit16 v12, v9, -0x1bd

    neg-int v12, v12

    neg-int v12, v12

    const/16 v14, 0x1bd

    or-int v15, v14, v12

    const/16 v32, 0x1

    shl-int/lit8 v15, v15, 0x1

    xor-int/2addr v12, v14

    sub-int/2addr v15, v12

    not-int v12, v9

    not-int v14, v12

    move-object/from16 v60, v13

    not-int v13, v10

    xor-int v35, v12, v13

    and-int/2addr v13, v12

    or-int v13, v35, v13

    not-int v13, v13

    or-int/2addr v13, v14

    mul-int/lit16 v13, v13, 0x1be

    neg-int v13, v13

    neg-int v13, v13

    and-int v14, v15, v13

    or-int/2addr v13, v15

    add-int/2addr v14, v13

    not-int v9, v9

    const/4 v13, -0x1

    xor-int v15, v13, v10

    or-int/2addr v10, v15

    not-int v10, v10

    xor-int v13, v9, v10

    and-int/2addr v9, v10

    or-int/2addr v9, v13

    mul-int/lit16 v9, v9, 0x1be

    or-int v10, v14, v9

    const/4 v13, 0x1

    shl-int/2addr v10, v13

    xor-int/2addr v9, v14

    sub-int/2addr v10, v9

    not-int v9, v12

    mul-int/lit16 v9, v9, 0x1be

    and-int v12, v10, v9

    or-int/2addr v9, v10

    add-int/2addr v12, v9

    int-to-byte v9, v12

    const/16 v10, 0x292

    int-to-short v10, v10

    :try_start_5b
    invoke-static {v6, v9, v10}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Class;

    invoke-virtual {v4, v6, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v4, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x15

    aget-byte v4, v1, v2

    neg-int v2, v4

    int-to-byte v2, v2

    const/16 v4, 0x52

    aget-byte v6, v1, v4

    int-to-byte v4, v6

    const/16 v6, 0x15d

    int-to-short v9, v6

    invoke-static {v2, v4, v9}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v6, v4, [Ljava/lang/Class;

    invoke-virtual {v7, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x3b9

    aget-byte v4, v1, v2

    int-to-byte v2, v4

    const/16 v4, 0x28

    aget-byte v5, v1, v4

    int-to-byte v4, v5

    const/16 v5, 0x295

    int-to-short v5, v5

    invoke-static {v2, v4, v5}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v4, 0x325

    aget-byte v4, v1, v4

    int-to-byte v4, v4

    const/16 v5, 0x46c

    aget-byte v5, v1, v5

    int-to-byte v5, v5

    const/16 v6, 0x2a9

    int-to-short v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3, v3, v5}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_26

    const/16 v4, 0x5b

    :try_start_5c
    aget-byte v5, v1, v4
    :try_end_5c
    .catchall {:try_start_5c .. :try_end_5c} :catchall_25

    int-to-byte v4, v5

    move/from16 v5, v59

    :try_start_5d
    invoke-static {v4, v11, v5}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4
    :try_end_5d
    .catchall {:try_start_5d .. :try_end_5d} :catchall_23

    const/16 v6, 0xab

    :try_start_5e
    aget-byte v7, v1, v6
    :try_end_5e
    .catchall {:try_start_5e .. :try_end_5e} :catchall_24

    int-to-byte v6, v7

    const/16 v7, 0x1ab

    :try_start_5f
    aget-byte v9, v1, v7

    int-to-byte v7, v9

    const/16 v9, 0x2af

    int-to-short v9, v9

    invoke-static {v6, v7, v9}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v8, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_5f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_23

    const/16 v6, 0x5b

    :try_start_60
    aget-byte v7, v1, v6

    int-to-byte v6, v7

    invoke-static {v6, v11, v5}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6
    :try_end_60
    .catchall {:try_start_60 .. :try_end_60} :catchall_21

    const/16 v7, 0xab

    :try_start_61
    aget-byte v10, v1, v7

    int-to-byte v10, v10

    const/16 v12, 0x1ab

    aget-byte v13, v1, v12

    int-to-byte v12, v13

    invoke-static {v10, v12, v9}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6
    :try_end_61
    .catchall {:try_start_61 .. :try_end_61} :catchall_20

    move-object/from16 v9, v53

    :try_start_62
    invoke-virtual {v6, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_62
    .catchall {:try_start_62 .. :try_end_62} :catchall_1f

    const/4 v12, 0x0

    :try_start_63
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v4, v6, v13}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v10, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_63
    .catchall {:try_start_63 .. :try_end_63} :catchall_1e

    const/16 v4, 0x5b

    :try_start_64
    aget-byte v6, v1, v4

    int-to-byte v4, v6

    invoke-static {v4, v11, v5}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v6, 0x89

    aget-byte v6, v1, v6

    int-to-byte v6, v6

    const/16 v10, 0x28

    aget-byte v12, v1, v10

    int-to-byte v10, v12

    const/16 v12, 0x2bd

    int-to-short v12, v12

    invoke-static {v6, v10, v12}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x0

    invoke-virtual {v4, v6, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_64
    .catchall {:try_start_64 .. :try_end_64} :catchall_1d

    .line 23
    sget v4, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    and-int/lit8 v6, v4, 0x45

    or-int/lit8 v4, v4, 0x45

    add-int/2addr v6, v4

    rem-int/lit16 v6, v6, 0x80

    sput v6, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    const/16 v4, 0x5b

    .line 24
    :try_start_65
    aget-byte v6, v1, v4

    int-to-byte v4, v6

    invoke-static {v4, v11, v5}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v6, 0x89

    aget-byte v6, v1, v6

    int-to-byte v6, v6

    const/16 v8, 0x28

    aget-byte v10, v1, v8

    int-to-byte v8, v10

    invoke-static {v6, v8, v12}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v9, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_65
    .catchall {:try_start_65 .. :try_end_65} :catchall_1c

    .line 25
    sget v4, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    add-int/lit8 v4, v4, 0x13

    rem-int/lit16 v4, v4, 0x80

    sput v4, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    .line 26
    :try_start_66
    sget-object v4, Lcom/appsflyer/internal/AFi1fSDK;->unregisterClient:Ljava/lang/Object;

    if-nez v4, :cond_2f

    const-class v4, Lcom/appsflyer/internal/AFi1fSDK;
    :try_end_66
    .catchall {:try_start_66 .. :try_end_66} :catchall_1b

    const/16 v6, 0x37a

    :try_start_67
    aget-byte v8, v1, v6

    int-to-byte v6, v8

    const/16 v8, 0x1ab

    aget-byte v1, v1, v8

    int-to-byte v1, v1

    const/16 v8, 0x2c2

    int-to-short v8, v8

    invoke-static {v6, v1, v8}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v1
    :try_end_67
    .catchall {:try_start_67 .. :try_end_67} :catchall_1a

    move-object/from16 v10, v49

    const/4 v6, 0x0

    :try_start_68
    invoke-virtual {v10, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_68
    .catchall {:try_start_68 .. :try_end_68} :catchall_19

    :try_start_69
    sput-object v1, Lcom/appsflyer/internal/AFi1fSDK;->unregisterClient:Ljava/lang/Object;

    goto :goto_34

    :catchall_18
    move-exception v0

    :goto_30
    move-object v1, v0

    move/from16 v59, v5

    :goto_31
    move-object v13, v10

    move v5, v11

    move-object/from16 v6, v45

    goto/16 :goto_28

    :catchall_19
    move-exception v0

    :goto_32
    move-object v1, v0

    goto :goto_33

    :catchall_1a
    move-exception v0

    move-object/from16 v10, v49

    goto :goto_32

    :goto_33
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_2e

    throw v2

    :cond_2e
    throw v1

    :catchall_1b
    move-exception v0

    move-object/from16 v10, v49

    goto :goto_30

    :cond_2f
    move-object/from16 v10, v49

    :goto_34
    move-object/from16 v25, v3

    move/from16 v59, v5

    move-object v13, v10

    move v5, v11

    const/16 v9, 0x3c2

    goto/16 :goto_4b

    :catchall_1c
    move-exception v0

    move-object/from16 v10, v49

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_30

    throw v2

    :cond_30
    throw v1

    :catchall_1d
    move-exception v0

    move-object/from16 v10, v49

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_31

    throw v2

    :cond_31
    throw v1
    :try_end_69
    .catchall {:try_start_69 .. :try_end_69} :catchall_18

    :catchall_1e
    move-exception v0

    move-object/from16 v10, v49

    :goto_35
    move-object v1, v0

    goto/16 :goto_43

    :catchall_1f
    move-exception v0

    move-object/from16 v10, v49

    :goto_36
    move-object v1, v0

    goto :goto_37

    :catchall_20
    move-exception v0

    move-object/from16 v10, v49

    move-object/from16 v9, v53

    goto :goto_36

    :catchall_21
    move-exception v0

    move-object/from16 v10, v49

    move-object/from16 v9, v53

    const/16 v7, 0xab

    goto :goto_36

    :goto_37
    :try_start_6a
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_32

    throw v2

    :catchall_22
    move-exception v0

    goto :goto_35

    :cond_32
    throw v1

    :catchall_23
    move-exception v0

    move-object/from16 v10, v49

    move-object/from16 v9, v53

    :goto_38
    const/16 v7, 0xab

    :goto_39
    move-object v1, v0

    goto :goto_3a

    :catchall_24
    move-exception v0

    move v7, v6

    move-object/from16 v10, v49

    move-object/from16 v9, v53

    goto :goto_39

    :catchall_25
    move-exception v0

    move-object/from16 v10, v49

    move-object/from16 v9, v53

    move/from16 v5, v59

    goto :goto_38

    :goto_3a
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_33

    throw v2

    :cond_33
    throw v1
    :try_end_6a
    .catchall {:try_start_6a .. :try_end_6a} :catchall_22

    :catchall_26
    move-exception v0

    :goto_3b
    move-object/from16 v10, v49

    move-object/from16 v9, v53

    :goto_3c
    move/from16 v5, v59

    :goto_3d
    const/16 v7, 0xab

    goto :goto_35

    :catchall_27
    move-exception v0

    move-object/from16 v60, v13

    goto :goto_3b

    :catchall_28
    move-exception v0

    move-object/from16 v60, v13

    move-object/from16 v10, v49

    move-object/from16 v9, v53

    move/from16 v5, v59

    :goto_3e
    const/16 v7, 0xab

    move-object v1, v0

    goto :goto_3f

    :catchall_29
    move-exception v0

    move-object/from16 v60, v13

    move v5, v15

    move-object/from16 v10, v49

    move-object/from16 v9, v53

    goto :goto_3e

    :catchall_2a
    move-exception v0

    move-object v9, v12

    move-object/from16 v60, v13

    move v5, v15

    move-object/from16 v10, v49

    goto :goto_3e

    :goto_3f
    :try_start_6b
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_34

    throw v2

    :catch_9
    move-exception v0

    :goto_40
    move-object v1, v0

    goto :goto_42

    :cond_34
    throw v1
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6b} :catch_9
    .catchall {:try_start_6b .. :try_end_6b} :catchall_22

    :catchall_2b
    move-exception v0

    move-object v9, v12

    move-object/from16 v60, v13

    move v5, v15

    move/from16 v51, v49

    goto :goto_3d

    :catch_a
    move-exception v0

    move-object v9, v12

    move-object/from16 v60, v13

    move v5, v15

    move/from16 v51, v49

    :goto_41
    const/16 v7, 0xab

    goto :goto_40

    :catchall_2c
    move-exception v0

    move-object v9, v12

    move-object/from16 v60, v13

    move/from16 v51, v49

    goto :goto_3c

    :catch_b
    move-exception v0

    move-object v9, v12

    move-object/from16 v60, v13

    move/from16 v51, v49

    move/from16 v5, v59

    goto :goto_41

    :goto_42
    :try_start_6c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    const/16 v6, 0x15

    aget-byte v12, v4, v6

    neg-int v6, v12

    int-to-byte v6, v6

    const/16 v12, 0xf0

    aget-byte v13, v4, v12

    int-to-byte v12, v13

    sget v13, Lcom/appsflyer/internal/AFi1fSDK;->$$b:I

    or-int/lit16 v13, v13, 0x201

    int-to-short v13, v13

    invoke-static {v6, v12, v13}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v6, 0x20f

    aget-byte v12, v4, v6

    int-to-byte v6, v12

    const/16 v12, 0xf

    aget-byte v12, v4, v12

    int-to-byte v12, v12

    const/16 v13, 0x124

    int-to-short v13, v13

    invoke-static {v6, v12, v13}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_6c
    .catchall {:try_start_6c .. :try_end_6c} :catchall_22

    const/4 v6, 0x2

    :try_start_6d
    new-array v12, v6, [Ljava/lang/Object;

    const/4 v13, 0x1

    aput-object v1, v12, v13

    const/4 v1, 0x0

    aput-object v2, v12, v1

    const/16 v1, 0x1fa

    aget-byte v2, v4, v1

    int-to-byte v1, v2

    shl-int/lit8 v2, v11, 0x2

    int-to-short v2, v2

    invoke-static {v1, v11, v2}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Throwable;

    filled-new-array {v3, v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    throw v1
    :try_end_6d
    .catchall {:try_start_6d .. :try_end_6d} :catchall_2d

    :catchall_2d
    move-exception v0

    move-object v1, v0

    :try_start_6e
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_35

    throw v2

    :cond_35
    throw v1
    :try_end_6e
    .catchall {:try_start_6e .. :try_end_6e} :catchall_22

    :goto_43
    :try_start_6f
    sget-object v2, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    const/16 v4, 0x5b

    aget-byte v6, v2, v4

    int-to-byte v4, v6

    invoke-static {v4, v11, v5}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v6, 0x89

    aget-byte v6, v2, v6

    int-to-byte v6, v6

    const/16 v12, 0x28

    aget-byte v13, v2, v12

    int-to-byte v12, v13

    const/16 v13, 0x2bd

    int-to-short v13, v13

    invoke-static {v6, v12, v13}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x0

    invoke-virtual {v4, v6, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v8, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_6f
    .catchall {:try_start_6f .. :try_end_6f} :catchall_2f

    const/16 v4, 0x5b

    :try_start_70
    aget-byte v6, v2, v4

    int-to-byte v4, v6

    invoke-static {v4, v11, v5}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v6, 0x89

    aget-byte v6, v2, v6

    int-to-byte v6, v6

    const/16 v8, 0x28

    aget-byte v2, v2, v8

    int-to-byte v2, v2

    invoke-static {v6, v2, v13}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v9, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_70
    .catchall {:try_start_70 .. :try_end_70} :catchall_2e

    :try_start_71
    throw v1

    :catchall_2e
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_36

    throw v2

    :cond_36
    throw v1

    :catchall_2f
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_37

    throw v2

    :cond_37
    throw v1
    :try_end_71
    .catchall {:try_start_71 .. :try_end_71} :catchall_18

    :catchall_30
    move-exception v0

    move-object/from16 v60, v13

    :goto_44
    move/from16 v51, v49

    move/from16 v5, v59

    const/16 v7, 0xab

    move-object v1, v0

    goto/16 :goto_31

    :catchall_31
    move-exception v0

    goto :goto_44

    :cond_38
    move/from16 v26, v5

    move/from16 v51, v49

    move/from16 v5, v59

    const/16 v7, 0xab

    const/16 v4, 0xc9

    .line 27
    :try_start_72
    aget-byte v4, v2, v4

    int-to-byte v4, v4

    xor-int/lit16 v8, v11, 0x286

    and-int/lit16 v12, v11, 0x286

    or-int/2addr v8, v12

    int-to-short v8, v8

    invoke-static {v4, v11, v8}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v8, 0x1fa

    aget-byte v12, v2, v8

    int-to-byte v8, v12

    move/from16 v12, v26

    invoke-static {v8, v11, v12}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v13

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0x5b

    aget-byte v14, v2, v13

    int-to-byte v14, v14

    const/16 v15, 0x1ab

    aget-byte v7, v2, v15

    int-to-byte v7, v7

    const/16 v15, 0x2ea

    int-to-short v15, v15

    invoke-static {v14, v7, v15}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v7

    const/4 v14, 0x0

    new-array v15, v14, [Ljava/lang/Class;

    invoke-virtual {v4, v7, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v7, v14, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aget-byte v7, v2, v21

    int-to-byte v7, v7

    xor-int/lit16 v14, v6, 0x285

    and-int/lit16 v15, v6, 0x285

    or-int/2addr v14, v15

    int-to-short v14, v14

    invoke-static {v7, v11, v14}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/16 v14, 0x325

    aget-byte v14, v2, v14

    int-to-byte v14, v14

    const/16 v15, 0x1ab

    aget-byte v13, v2, v15

    int-to-byte v13, v13

    const/16 v15, 0x30a

    int-to-short v15, v15

    invoke-static {v14, v13, v15}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    new-array v15, v14, [Ljava/lang/Class;

    invoke-virtual {v7, v13, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7
    :try_end_72
    .catchall {:try_start_72 .. :try_end_72} :catchall_54

    const/16 v13, 0x196

    :try_start_73
    aget-byte v14, v2, v13
    :try_end_73
    .catchall {:try_start_73 .. :try_end_73} :catchall_56

    int-to-byte v13, v14

    const/16 v14, 0x51

    int-to-byte v14, v14

    const/16 v15, 0x264

    int-to-short v15, v15

    :try_start_74
    invoke-static {v13, v14, v15}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v13

    filled-new-array/range {v60 .. v60}, [Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v8, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8
    :try_end_74
    .catchall {:try_start_74 .. :try_end_74} :catchall_54

    :try_start_75
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v13, 0x11b

    aget-byte v13, v2, v13

    int-to-byte v13, v13

    const/16 v14, 0x1b0

    int-to-short v15, v14

    invoke-static {v13, v11, v15}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    const/16 v14, 0x1fa

    aget-byte v15, v2, v14

    int-to-byte v14, v15

    invoke-static {v14, v11, v12}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_75
    .catchall {:try_start_75 .. :try_end_75} :catchall_55

    :try_start_76
    const-class v13, Lcom/appsflyer/internal/AFi1fSDK;
    :try_end_76
    .catchall {:try_start_76 .. :try_end_76} :catchall_54

    .line 28
    sget v14, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    xor-int/lit8 v15, v14, 0x3d

    and-int/lit8 v14, v14, 0x3d

    const/16 v26, 0x1

    shl-int/lit8 v14, v14, 0x1

    add-int/2addr v15, v14

    rem-int/lit16 v15, v15, 0x80

    sput v15, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    const/16 v14, 0x37a

    .line 29
    :try_start_77
    aget-byte v15, v2, v14
    :try_end_77
    .catchall {:try_start_77 .. :try_end_77} :catchall_53

    int-to-byte v14, v15

    move/from16 v59, v5

    const/16 v15, 0x1ab

    :try_start_78
    aget-byte v5, v2, v15

    int-to-byte v5, v5

    const/16 v15, 0x2c2

    int-to-short v15, v15

    invoke-static {v14, v5, v15}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v5

    const/4 v14, 0x0

    invoke-virtual {v10, v5, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v13, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_78
    .catchall {:try_start_78 .. :try_end_78} :catchall_52

    const/16 v13, 0x26

    :try_start_79
    aget-byte v13, v2, v13

    int-to-byte v13, v13

    const/16 v14, 0x310

    int-to-short v14, v14

    invoke-static {v13, v11, v14}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    const/4 v14, 0x0

    new-array v15, v14, [Ljava/lang/Class;

    invoke-virtual {v13, v15}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v15

    move/from16 v26, v12

    new-array v12, v14, [Ljava/lang/Object;

    invoke-virtual {v15, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    const/16 v14, 0x15

    aget-byte v15, v2, v14

    neg-int v14, v15

    int-to-byte v14, v14

    const/16 v15, 0x56

    int-to-byte v15, v15

    or-int/lit16 v6, v6, 0x205

    int-to-short v6, v6

    invoke-static {v14, v15, v6}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v6
    :try_end_79
    .catchall {:try_start_79 .. :try_end_79} :catchall_51

    move-object/from16 v14, v60

    :try_start_7a
    filled-new-array {v14, v9, v9}, [Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v13, v6, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6
    :try_end_7a
    .catchall {:try_start_7a .. :try_end_7a} :catchall_50

    move-object/from16 v25, v3

    const/16 v9, 0x2f1

    :try_start_7b
    aget-byte v3, v2, v9

    int-to-byte v3, v3

    const/16 v35, 0x467

    aget-byte v9, v2, v35
    :try_end_7b
    .catchall {:try_start_7b .. :try_end_7b} :catchall_4f

    int-to-byte v9, v9

    move-object/from16 v35, v10

    const/16 v10, 0x32c

    int-to-short v10, v10

    :try_start_7c
    invoke-static {v3, v9, v10}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Class;

    invoke-virtual {v13, v3, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/16 v9, 0x141

    aget-byte v9, v2, v9

    int-to-byte v9, v9

    const/16 v10, 0x336

    int-to-short v10, v10

    invoke-static {v9, v11, v10}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const/16 v10, 0x15

    aget-byte v13, v2, v10
    :try_end_7c
    .catchall {:try_start_7c .. :try_end_7c} :catchall_4d

    neg-int v10, v13

    int-to-byte v10, v10

    const/16 v13, 0x52

    :try_start_7d
    aget-byte v2, v2, v13
    :try_end_7d
    .catchall {:try_start_7d .. :try_end_7d} :catchall_4e

    int-to-byte v2, v2

    move-object/from16 v53, v5

    const/16 v13, 0x15d

    int-to-short v5, v13

    :try_start_7e
    invoke-static {v10, v2, v5}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    new-array v10, v5, [Ljava/lang/Class;

    invoke-virtual {v9, v2, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/16 v5, 0x400

    new-array v5, v5, [B

    const/4 v9, 0x0

    :goto_45
    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v1, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v13
    :try_end_7e
    .catchall {:try_start_7e .. :try_end_7e} :catchall_4d

    if-lez v13, :cond_3a

    .line 30
    sget v54, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    move-object/from16 v55, v8

    add-int/lit8 v8, v54, 0x1f

    rem-int/lit16 v8, v8, 0x80

    sput v8, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    move-object/from16 v60, v14

    move v8, v15

    int-to-long v14, v9

    move/from16 v54, v8

    move/from16 v56, v11

    const/4 v8, 0x0

    .line 31
    :try_start_7f
    new-array v11, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v4, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v61
    :try_end_7f
    .catchall {:try_start_7f .. :try_end_7f} :catchall_32

    cmp-long v8, v14, v61

    if-gez v8, :cond_39

    .line 32
    sget v8, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    add-int/lit8 v8, v8, 0x37

    rem-int/lit16 v8, v8, 0x80

    sput v8, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    const/4 v8, 0x0

    .line 33
    :try_start_80
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v5, v11, v10}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v12, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_80
    .catchall {:try_start_80 .. :try_end_80} :catchall_32

    neg-int v8, v13

    neg-int v8, v8

    or-int v10, v9, v8

    const/4 v11, 0x1

    shl-int/2addr v10, v11

    xor-int/2addr v8, v9

    sub-int v9, v10, v8

    move/from16 v15, v54

    move-object/from16 v8, v55

    move/from16 v11, v56

    move-object/from16 v14, v60

    goto :goto_45

    :catchall_32
    move-exception v0

    move-object v1, v0

    move-object/from16 v10, v25

    move-object/from16 v13, v35

    move-object/from16 v6, v45

    move/from16 v5, v56

    :goto_46
    const/16 v9, 0x196

    const/16 v11, 0x52

    goto/16 :goto_73

    :cond_39
    :goto_47
    const/4 v4, 0x0

    goto :goto_48

    :cond_3a
    move/from16 v56, v11

    move-object/from16 v60, v14

    move/from16 v54, v15

    goto :goto_47

    :goto_48
    :try_start_81
    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v12, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B
    :try_end_81
    .catchall {:try_start_81 .. :try_end_81} :catchall_4c

    :try_start_82
    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v12, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_82} :catch_c
    .catchall {:try_start_82 .. :try_end_82} :catchall_32

    :catch_c
    :try_start_83
    sget-object v1, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    const/16 v2, 0x23

    aget-byte v2, v1, v2

    int-to-byte v2, v2

    const/16 v4, 0x28

    aget-byte v5, v1, v4

    int-to-byte v4, v5

    const/16 v5, 0x346

    int-to-short v5, v5

    invoke-static {v2, v4, v5}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v4, 0x1fa

    aget-byte v5, v1, v4
    :try_end_83
    .catchall {:try_start_83 .. :try_end_83} :catchall_4c

    int-to-byte v4, v5

    move/from16 v5, v56

    xor-int/lit16 v6, v5, 0x320

    and-int/lit16 v7, v5, 0x320

    or-int/2addr v6, v7

    int-to-short v6, v6

    :try_start_84
    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v7, 0x3b9

    aget-byte v8, v1, v7

    int-to-byte v7, v8

    xor-int/lit16 v8, v5, 0x332

    and-int/lit16 v9, v5, 0x332

    or-int/2addr v8, v9

    int-to-short v8, v8

    invoke-static {v7, v5, v8}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    filled-new-array {v4, v7}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2
    :try_end_84
    .catchall {:try_start_84 .. :try_end_84} :catchall_48

    :try_start_85
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x1fa

    aget-byte v7, v1, v4

    int-to-byte v4, v7

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4
    :try_end_85
    .catchall {:try_start_85 .. :try_end_85} :catchall_4a

    const/16 v6, 0x196

    :try_start_86
    aget-byte v7, v1, v6
    :try_end_86
    .catchall {:try_start_86 .. :try_end_86} :catchall_4b

    int-to-byte v6, v7

    const/16 v7, 0x38f

    int-to-short v7, v7

    move/from16 v8, v54

    :try_start_87
    invoke-static {v6, v8, v7}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v6

    filled-new-array/range {v60 .. v60}, [Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_87
    .catchall {:try_start_87 .. :try_end_87} :catchall_4a

    move-object/from16 v4, v53

    :try_start_88
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_88
    .catchall {:try_start_88 .. :try_end_88} :catchall_48

    const/16 v3, 0xd

    :try_start_89
    aget-byte v3, v1, v3

    int-to-byte v3, v3

    const/16 v6, 0x28

    aget-byte v7, v1, v6

    int-to-byte v6, v7

    const/16 v7, 0x392

    int-to-short v7, v7

    invoke-static {v3, v6, v7}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v6, 0x0

    aget-byte v7, v1, v6

    int-to-byte v6, v7

    const/16 v7, 0x45d

    aget-byte v7, v1, v7

    int-to-byte v7, v7

    const/16 v8, 0x3b1

    int-to-short v8, v8

    invoke-static {v6, v7, v8}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const/16 v9, 0x3c2

    aget-byte v8, v1, v9

    int-to-byte v8, v8

    const/16 v10, 0x4d

    int-to-byte v10, v10

    const/16 v11, 0x3b8

    int-to-short v11, v11

    invoke-static {v8, v10, v11}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/16 v11, 0x145

    aget-byte v11, v1, v11

    int-to-byte v11, v11

    or-int/lit16 v12, v10, 0x382

    int-to-short v12, v12

    invoke-static {v11, v10, v12}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v8, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-instance v11, Ljava/util/ArrayList;

    check-cast v10, Ljava/util/List;

    invoke-direct {v11, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_89} :catch_12
    .catchall {:try_start_89 .. :try_end_89} :catchall_48

    const/16 v12, 0xb0

    :try_start_8a
    aget-byte v12, v1, v12

    int-to-byte v12, v12

    const/16 v13, 0x1ab

    aget-byte v1, v1, v13

    int-to-byte v1, v1

    or-int/lit16 v13, v1, 0x3a1

    int-to-short v13, v13

    invoke-static {v12, v1, v13}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v1
    :try_end_8a
    .catchall {:try_start_8a .. :try_end_8a} :catchall_47

    move-object/from16 v13, v35

    const/4 v12, 0x0

    :try_start_8b
    invoke-virtual {v13, v1, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v10, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;
    :try_end_8b
    .catchall {:try_start_8b .. :try_end_8b} :catchall_46

    :try_start_8c
    invoke-static {v6}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v10

    invoke-static {v1, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_8c} :catch_10
    .catchall {:try_start_8c .. :try_end_8c} :catchall_45

    const/4 v12, 0x0

    :goto_49
    if-ge v12, v10, :cond_3b

    :try_start_8d
    invoke-static {v6, v12}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v1, v12, v14}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_8d} :catch_d
    .catchall {:try_start_8d .. :try_end_8d} :catchall_33

    const/4 v14, 0x1

    add-int/2addr v12, v14

    goto :goto_49

    :catchall_33
    move-exception v0

    move-object v1, v0

    move-object/from16 v10, v25

    :goto_4a
    move-object/from16 v6, v45

    goto/16 :goto_46

    :catch_d
    move-exception v0

    move-object v1, v0

    move-object/from16 v10, v25

    move-object/from16 v6, v45

    const/16 v9, 0x196

    const/16 v11, 0x52

    goto/16 :goto_60

    :cond_3b
    :try_start_8e
    invoke-virtual {v8, v3, v11}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7, v3, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_8e} :catch_10
    .catchall {:try_start_8e .. :try_end_8e} :catchall_45

    :try_start_8f
    sget-object v1, Lcom/appsflyer/internal/AFi1fSDK;->unregisterClient:Ljava/lang/Object;
    :try_end_8f
    .catchall {:try_start_8f .. :try_end_8f} :catchall_45

    if-nez v1, :cond_3c

    :try_start_90
    sput-object v2, Lcom/appsflyer/internal/AFi1fSDK;->unregisterClient:Ljava/lang/Object;
    :try_end_90
    .catchall {:try_start_90 .. :try_end_90} :catchall_33

    :cond_3c
    :goto_4b
    if-eqz v46, :cond_3f

    .line 34
    sget v1, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    xor-int/lit8 v3, v1, 0x37

    and-int/lit8 v1, v1, 0x37

    const/4 v4, 0x1

    shl-int/2addr v1, v4

    add-int/2addr v3, v1

    rem-int/lit16 v3, v3, 0x80

    sput v3, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    .line 35
    :try_start_91
    sget-object v1, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    const/16 v3, 0x3b9

    aget-byte v4, v1, v3
    :try_end_91
    .catchall {:try_start_91 .. :try_end_91} :catchall_39

    int-to-byte v3, v4

    const/16 v6, 0x28

    :try_start_92
    aget-byte v4, v1, v6

    int-to-byte v4, v4

    const/16 v7, 0x295

    int-to-short v7, v7

    invoke-static {v3, v4, v7}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    aget-byte v7, v1, v4

    const/4 v4, 0x1

    sub-int/2addr v7, v4

    int-to-byte v4, v7

    const/16 v7, 0x46c

    aget-byte v7, v1, v7

    int-to-byte v7, v7

    sget v8, Lcom/appsflyer/internal/AFi1fSDK;->$$b:I

    xor-int/lit16 v10, v8, 0x38a

    and-int/lit16 v8, v8, 0x38a

    or-int/2addr v8, v10

    int-to-short v8, v8

    invoke-static {v4, v7, v8}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x3b9

    aget-byte v8, v1, v7

    int-to-byte v7, v8

    or-int/lit16 v8, v5, 0x332

    int-to-short v8, v8

    invoke-static {v7, v5, v8}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7
    :try_end_92
    .catchall {:try_start_92 .. :try_end_92} :catchall_38

    move-object/from16 v10, v25

    :try_start_93
    filled-new-array {v10, v7}, [Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const-class v7, Lcom/appsflyer/internal/AFi1fSDK;
    :try_end_93
    .catchall {:try_start_93 .. :try_end_93} :catchall_37

    const/16 v11, 0x37a

    :try_start_94
    aget-byte v8, v1, v11
    :try_end_94
    .catchall {:try_start_94 .. :try_end_94} :catchall_36

    int-to-byte v8, v8

    const/16 v12, 0x1ab

    :try_start_95
    aget-byte v14, v1, v12

    int-to-byte v14, v14

    const/16 v15, 0x2c2

    int-to-short v15, v15

    invoke-static {v8, v14, v15}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v8

    const/4 v14, 0x0

    invoke-virtual {v13, v8, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v7, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_95
    .catchall {:try_start_95 .. :try_end_95} :catchall_35

    move-object/from16 v8, v58

    :try_start_96
    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_96
    .catchall {:try_start_96 .. :try_end_96} :catchall_34

    if-eqz v4, :cond_3d

    .line 36
    sget v7, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    and-int/lit8 v8, v7, 0x75

    or-int/lit8 v7, v7, 0x75

    add-int/2addr v8, v7

    rem-int/lit16 v8, v8, 0x80

    sput v8, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    const/16 v7, 0x15

    .line 37
    :try_start_97
    aget-byte v8, v1, v7

    neg-int v7, v8

    int-to-byte v7, v7

    const/16 v8, 0x52

    aget-byte v1, v1, v8

    int-to-byte v1, v1

    const/16 v8, 0x15d

    int-to-short v14, v8

    invoke-static {v7, v1, v14}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Class;

    invoke-virtual {v3, v1, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4d

    :catchall_34
    move-exception v0

    :goto_4c
    move-object v1, v0

    goto/16 :goto_4a

    :cond_3d
    :goto_4d
    move-object v1, v4

    const/16 v3, 0x3b9

    const/16 v7, 0x110

    goto/16 :goto_51

    :catchall_35
    move-exception v0

    :goto_4e
    move-object v1, v0

    goto :goto_4f

    :catchall_36
    move-exception v0

    const/16 v12, 0x1ab

    goto :goto_4e

    :goto_4f
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_3e

    throw v2

    :cond_3e
    throw v1
    :try_end_97
    .catchall {:try_start_97 .. :try_end_97} :catchall_34

    :catchall_37
    move-exception v0

    :goto_50
    const/16 v11, 0x37a

    const/16 v12, 0x1ab

    goto :goto_4c

    :catchall_38
    move-exception v0

    move-object/from16 v10, v25

    goto :goto_50

    :catchall_39
    move-exception v0

    move-object/from16 v10, v25

    const/16 v6, 0x28

    goto :goto_50

    :cond_3f
    move-object/from16 v10, v25

    move-object/from16 v8, v58

    const/16 v6, 0x28

    const/16 v11, 0x37a

    const/16 v12, 0x1ab

    :try_start_98
    sget-object v1, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    const/16 v3, 0x3b9

    aget-byte v4, v1, v3

    int-to-byte v4, v4

    xor-int/lit16 v7, v5, 0x332

    and-int/lit16 v14, v5, 0x332

    or-int/2addr v7, v14

    int-to-short v7, v7

    invoke-static {v4, v5, v7}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v7, 0x0

    aget-byte v14, v1, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-int v6, v6

    mul-int/lit16 v7, v14, -0x10f

    const/16 v15, -0x111

    and-int v16, v15, v7

    or-int/2addr v7, v15

    add-int v16, v16, v7

    not-int v7, v14

    not-int v15, v6

    xor-int v23, v7, v15

    and-int/2addr v7, v15

    or-int v7, v23, v7

    not-int v7, v7

    const/4 v15, -0x1

    xor-int v23, v15, v14

    or-int v15, v23, v14

    xor-int v23, v15, v6

    and-int/2addr v15, v6

    or-int v15, v23, v15

    not-int v15, v15

    xor-int v23, v7, v15

    and-int/2addr v7, v15

    or-int v7, v23, v7

    mul-int/lit16 v7, v7, -0x110

    add-int v16, v16, v7

    not-int v7, v14

    not-int v15, v6

    xor-int v23, v7, v15

    and-int/2addr v7, v15

    or-int v7, v23, v7

    mul-int/lit16 v7, v7, -0x110

    or-int v15, v16, v7

    const/16 v23, 0x1

    shl-int/lit8 v15, v15, 0x1

    xor-int v7, v16, v7

    sub-int/2addr v15, v7

    const/4 v7, -0x1

    xor-int v16, v7, v6

    or-int v6, v16, v6

    not-int v6, v6

    xor-int v7, v14, v6

    and-int/2addr v6, v14

    or-int/2addr v6, v7

    const/16 v7, 0x110

    mul-int/2addr v6, v7

    and-int v14, v15, v6

    or-int/2addr v6, v15

    add-int/2addr v14, v6

    int-to-byte v6, v14

    const/16 v14, 0x46c

    aget-byte v1, v1, v14

    int-to-byte v1, v1

    sget v14, Lcom/appsflyer/internal/AFi1fSDK;->$$b:I

    or-int/lit16 v14, v14, 0x38a

    int-to-short v14, v14

    invoke-static {v6, v1, v14}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v10}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_98
    .catchall {:try_start_98 .. :try_end_98} :catchall_42

    const/4 v4, 0x1

    :try_start_99
    invoke-virtual {v1, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_99
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_99 .. :try_end_99} :catch_e
    .catchall {:try_start_99 .. :try_end_99} :catchall_34

    goto :goto_51

    :catch_e
    move-exception v0

    move-object v1, v0

    :try_start_9a
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/Exception;

    throw v1
    :try_end_9a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9a .. :try_end_9a} :catch_f
    .catchall {:try_start_9a .. :try_end_9a} :catchall_34

    :catch_f
    const/4 v1, 0x0

    :goto_51
    if-eqz v1, :cond_44

    .line 38
    sget v4, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    or-int/lit8 v6, v4, 0x45

    const/4 v8, 0x1

    shl-int/2addr v6, v8

    xor-int/lit8 v4, v4, 0x45

    sub-int/2addr v6, v4

    rem-int/lit16 v6, v6, 0x80

    sput v6, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    .line 39
    :try_start_9b
    check-cast v1, Ljava/lang/Class;

    sget-object v4, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    const/16 v6, 0x1b

    aget-byte v8, v4, v6
    :try_end_9b
    .catchall {:try_start_9b .. :try_end_9b} :catchall_42

    int-to-byte v8, v8

    const/16 v14, 0x52

    :try_start_9c
    aget-byte v15, v4, v14
    :try_end_9c
    .catchall {:try_start_9c .. :try_end_9c} :catchall_43

    int-to-byte v14, v15

    const/16 v15, 0x402

    int-to-short v15, v15

    :try_start_9d
    invoke-static {v8, v14, v15}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v8

    const-class v14, Ljava/lang/Object;

    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v14, v15}, [Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    xor-int/lit8 v16, v46, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    filled-new-array {v2, v15}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/appsflyer/internal/AFi1fSDK;->d:Ljava/lang/Object;

    const/16 v2, 0xda9

    new-array v2, v2, [B

    const/16 v14, 0x21

    aget-byte v14, v4, v14

    int-to-byte v14, v14

    const/16 v15, 0x165

    aget-byte v3, v4, v15

    int-to-byte v3, v3

    const/16 v6, 0x422

    int-to-short v6, v6

    invoke-static {v14, v3, v6}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3
    :try_end_9d
    .catchall {:try_start_9d .. :try_end_9d} :catchall_42

    move-object/from16 v6, v45

    :try_start_9e
    invoke-virtual {v6, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_9e
    .catchall {:try_start_9e .. :try_end_9e} :catchall_41

    :try_start_9f
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v14, 0x11b

    aget-byte v14, v4, v14

    int-to-byte v14, v14

    const/16 v7, 0x1b0

    int-to-short v9, v7

    invoke-static {v14, v5, v9}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const/16 v14, 0x1fa

    aget-byte v7, v4, v14

    int-to-byte v7, v7

    move/from16 v14, v26

    invoke-static {v7, v5, v14}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_9f
    .catchall {:try_start_9f .. :try_end_9f} :catchall_40

    :try_start_a0
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    aget-byte v7, v4, v21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    long-to-int v9, v11

    mul-int/lit16 v11, v7, 0x209

    not-int v11, v11

    rsub-int v11, v11, 0x206

    not-int v12, v7

    not-int v15, v9

    xor-int v25, v12, v15

    and-int/2addr v12, v15

    or-int v12, v25, v12

    not-int v12, v12

    xor-int v25, v7, v9

    and-int v26, v7, v9

    move-object/from16 v35, v1

    or-int v1, v25, v26

    not-int v1, v1

    xor-int v25, v12, v1

    and-int/2addr v1, v12

    or-int v1, v25, v1

    mul-int/lit16 v1, v1, 0x208

    neg-int v1, v1

    neg-int v1, v1

    or-int v12, v11, v1

    const/16 v25, 0x1

    shl-int/lit8 v12, v12, 0x1

    xor-int/2addr v1, v11

    sub-int/2addr v12, v1

    not-int v1, v7

    not-int v7, v9

    xor-int v11, v1, v7

    and-int/2addr v7, v1

    or-int/2addr v7, v11

    not-int v7, v7

    mul-int/lit16 v7, v7, -0x410

    or-int v11, v12, v7

    const/16 v25, 0x1

    shl-int/lit8 v11, v11, 0x1

    xor-int/2addr v7, v12

    sub-int/2addr v11, v7

    not-int v7, v15

    const/4 v12, -0x1

    xor-int/lit8 v15, v1, -0x1

    or-int/2addr v1, v15

    not-int v1, v1

    xor-int v15, v7, v1

    and-int/2addr v1, v7

    or-int/2addr v1, v15

    xor-int v7, v12, v9

    or-int/2addr v7, v9

    not-int v7, v7

    xor-int v9, v1, v7

    and-int/2addr v1, v7

    or-int/2addr v1, v9

    mul-int/lit16 v1, v1, 0x208

    or-int v7, v11, v1

    const/4 v9, 0x1

    shl-int/2addr v7, v9

    xor-int/2addr v1, v11

    sub-int/2addr v7, v1

    int-to-byte v1, v7

    const/16 v7, 0x1dc

    int-to-short v7, v7

    invoke-static {v1, v5, v7}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/16 v9, 0x1fa

    aget-byte v11, v4, v9

    int-to-byte v9, v11

    invoke-static {v9, v5, v14}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_a0
    .catchall {:try_start_a0 .. :try_end_a0} :catchall_3f

    :try_start_a1
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v3

    aget-byte v9, v4, v21

    const/4 v11, 0x1

    sub-int/2addr v9, v11

    int-to-byte v9, v9

    invoke-static {v9, v5, v7}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const/4 v11, 0x0

    aget-byte v12, v4, v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    long-to-int v11, v14

    mul-int/lit16 v14, v12, 0x1a5

    neg-int v14, v14

    neg-int v14, v14

    const/16 v15, 0x1a3

    and-int v25, v15, v14

    or-int/2addr v14, v15

    add-int v25, v25, v14

    xor-int v14, v12, v11

    and-int v15, v12, v11

    or-int/2addr v14, v15

    not-int v14, v14

    mul-int/lit16 v14, v14, 0x1a4

    add-int v25, v25, v14

    mul-int/lit16 v14, v12, -0x1a4

    not-int v14, v14

    sub-int v25, v25, v14

    const/4 v14, 0x1

    add-int/lit8 v25, v25, -0x1

    not-int v14, v12

    not-int v14, v14

    not-int v11, v11

    xor-int v15, v11, v12

    and-int/2addr v11, v12

    or-int/2addr v11, v15

    not-int v11, v11

    or-int/2addr v11, v14

    mul-int/lit16 v11, v11, 0x1a4

    neg-int v11, v11

    neg-int v11, v11

    not-int v11, v11

    sub-int v25, v25, v11

    const/4 v11, 0x1

    add-int/lit8 v12, v25, -0x1

    int-to-byte v11, v12

    const/16 v12, 0x51

    int-to-byte v12, v12

    sget v14, Lcom/appsflyer/internal/AFi1fSDK;->$$b:I

    xor-int/lit16 v15, v14, 0x182

    and-int/lit16 v14, v14, 0x182

    or-int/2addr v14, v15

    int-to-short v14, v14

    invoke-static {v11, v12, v14}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v11

    filled-new-array/range {v60 .. v60}, [Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v9, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a1
    .catchall {:try_start_a1 .. :try_end_a1} :catchall_3e

    .line 40
    sget v3, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    add-int/lit8 v3, v3, 0x35

    rem-int/lit16 v3, v3, 0x80

    sput v3, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    .line 41
    :try_start_a2
    aget-byte v3, v4, v21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11
    :try_end_a2
    .catchall {:try_start_a2 .. :try_end_a2} :catchall_3d

    long-to-int v9, v11

    mul-int/lit16 v11, v3, 0x197

    neg-int v11, v11

    neg-int v11, v11

    const/16 v12, 0x195

    and-int v14, v12, v11

    or-int/2addr v11, v12

    add-int/2addr v14, v11

    not-int v11, v3

    xor-int v12, v11, v9

    and-int/2addr v11, v9

    or-int/2addr v11, v12

    not-int v11, v11

    not-int v12, v9

    const/4 v15, -0x1

    xor-int/lit8 v25, v12, -0x1

    or-int v15, v25, v12

    xor-int v25, v15, v3

    and-int/2addr v15, v3

    or-int v15, v25, v15

    not-int v15, v15

    or-int/2addr v11, v15

    mul-int/lit16 v11, v11, -0x196

    add-int/2addr v14, v11

    not-int v11, v3

    xor-int v15, v11, v12

    and-int/2addr v11, v12

    or-int/2addr v11, v15

    const/4 v15, -0x1

    xor-int/lit8 v25, v11, -0x1

    or-int v11, v25, v11

    not-int v11, v11

    mul-int/lit16 v11, v11, -0x196

    neg-int v11, v11

    neg-int v11, v11

    or-int v15, v14, v11

    const/16 v25, 0x1

    shl-int/lit8 v15, v15, 0x1

    xor-int/2addr v11, v14

    sub-int/2addr v15, v11

    not-int v9, v9

    or-int/2addr v3, v12

    not-int v3, v3

    or-int/2addr v3, v9

    const/16 v9, 0x196

    mul-int/2addr v3, v9

    or-int v11, v15, v3

    shl-int/lit8 v11, v11, 0x1

    xor-int/2addr v3, v15

    sub-int/2addr v11, v3

    int-to-byte v3, v11

    :try_start_a3
    invoke-static {v3, v5, v7}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/16 v7, 0x15

    aget-byte v11, v4, v7
    :try_end_a3
    .catchall {:try_start_a3 .. :try_end_a3} :catchall_3c

    neg-int v7, v11

    int-to-byte v7, v7

    const/16 v11, 0x52

    :try_start_a4
    aget-byte v4, v4, v11

    int-to-byte v4, v4

    const/16 v12, 0x15d

    int-to-short v14, v12

    invoke-static {v7, v4, v14}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a4
    .catchall {:try_start_a4 .. :try_end_a4} :catchall_3b

    :try_start_a5
    invoke-static/range {v57 .. v57}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v3, 0xd86

    move-object v4, v2

    move v2, v3

    move v11, v5

    move-object v3, v10

    move-object v10, v13

    move-object/from16 v5, v35

    move-object/from16 v7, v47

    move/from16 v49, v51

    move/from16 v13, v59

    move-object/from16 v47, v60

    goto/16 :goto_22

    :catchall_3a
    move-exception v0

    :goto_52
    move-object v1, v0

    goto/16 :goto_73

    :catchall_3b
    move-exception v0

    :goto_53
    move-object v1, v0

    goto :goto_55

    :catchall_3c
    move-exception v0

    :goto_54
    const/16 v11, 0x52

    goto :goto_53

    :catchall_3d
    move-exception v0

    const/16 v9, 0x196

    goto :goto_54

    :goto_55
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_40

    throw v2

    :cond_40
    throw v1

    :catchall_3e
    move-exception v0

    const/16 v9, 0x196

    const/16 v11, 0x52

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_41

    throw v2

    :cond_41
    throw v1

    :catchall_3f
    move-exception v0

    const/16 v9, 0x196

    const/16 v11, 0x52

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_42

    throw v2

    :cond_42
    throw v1

    :catchall_40
    move-exception v0

    const/16 v9, 0x196

    const/16 v11, 0x52

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_43

    throw v2

    :cond_43
    throw v1

    :catchall_41
    move-exception v0

    :goto_56
    const/16 v9, 0x196

    const/16 v11, 0x52

    goto :goto_52

    :catchall_42
    move-exception v0

    :goto_57
    move-object/from16 v6, v45

    goto :goto_56

    :catchall_43
    move-exception v0

    move v11, v14

    :goto_58
    move-object/from16 v6, v45

    const/16 v9, 0x196

    goto :goto_52

    :cond_44
    move-object/from16 v6, v45

    const/16 v9, 0x196

    const/16 v11, 0x52

    const-class v1, Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v3}, [Ljava/lang/Class;

    move-result-object v1

    move-object/from16 v3, v50

    invoke-virtual {v3, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    xor-int/lit8 v4, v46, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/appsflyer/internal/AFi1fSDK;->d:Ljava/lang/Object;
    :try_end_a5
    .catchall {:try_start_a5 .. :try_end_a5} :catchall_3a

    :try_start_a6
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a6
    .catchall {:try_start_a6 .. :try_end_a6} :catchall_44

    .line 42
    sget v1, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    add-int/lit8 v1, v1, 0x61

    rem-int/lit16 v1, v1, 0x80

    sput v1, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    move/from16 v6, v48

    const/4 v1, 0x0

    const/4 v2, 0x7

    const/16 v3, 0x15

    const/16 v4, 0x20f

    const/4 v7, 0x0

    const/16 v8, 0xf0

    const/4 v12, -0x1

    const/4 v14, 0x2

    const/4 v15, 0x1

    const/16 v38, 0x1

    goto/16 :goto_85

    :catchall_44
    move-exception v0

    :goto_59
    move-object v1, v0

    const/16 v3, 0x15

    const/16 v4, 0x20f

    goto/16 :goto_81

    :catchall_45
    move-exception v0

    :goto_5a
    move-object/from16 v10, v25

    goto :goto_57

    :catch_10
    move-exception v0

    move-object/from16 v10, v25

    :goto_5b
    move-object/from16 v6, v45

    const/16 v9, 0x196

    const/16 v11, 0x52

    :goto_5c
    move-object v1, v0

    goto :goto_60

    :catchall_46
    move-exception v0

    move-object/from16 v10, v25

    :goto_5d
    move-object/from16 v6, v45

    const/16 v9, 0x196

    const/16 v11, 0x52

    move-object v1, v0

    goto :goto_5e

    :catchall_47
    move-exception v0

    move-object/from16 v10, v25

    move-object/from16 v13, v35

    goto :goto_5d

    .line 43
    :goto_5e
    :try_start_a7
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_45

    throw v2

    :catch_11
    move-exception v0

    goto :goto_5c

    :cond_45
    throw v1
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_a7} :catch_11
    .catchall {:try_start_a7 .. :try_end_a7} :catchall_3a

    :catchall_48
    move-exception v0

    :goto_5f
    move-object/from16 v10, v25

    move-object/from16 v13, v35

    goto/16 :goto_57

    :catch_12
    move-exception v0

    move-object/from16 v10, v25

    move-object/from16 v13, v35

    goto :goto_5b

    :goto_60
    :try_start_a8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    const/16 v7, 0x15

    aget-byte v8, v3, v7

    neg-int v7, v8

    int-to-byte v7, v7

    const/16 v8, 0xf0

    aget-byte v12, v3, v8

    int-to-byte v8, v12

    xor-int/lit16 v12, v8, 0x3d2

    and-int/lit16 v14, v8, 0x3d2

    or-int/2addr v12, v14

    int-to-short v12, v12

    invoke-static {v7, v8, v12}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20f

    aget-byte v7, v3, v4

    int-to-byte v4, v7

    const/16 v7, 0xf

    aget-byte v7, v3, v7

    int-to-byte v7, v7

    const/16 v8, 0x124

    int-to-short v8, v8

    invoke-static {v4, v7, v8}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_a8
    .catchall {:try_start_a8 .. :try_end_a8} :catchall_3a

    const/4 v4, 0x2

    :try_start_a9
    new-array v7, v4, [Ljava/lang/Object;

    const/4 v8, 0x1

    aput-object v1, v7, v8

    const/4 v1, 0x0

    aput-object v2, v7, v1

    const/16 v1, 0x1fa

    aget-byte v2, v3, v1

    int-to-byte v1, v2

    shl-int/lit8 v2, v5, 0x2

    int-to-short v2, v2

    invoke-static {v1, v5, v2}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Throwable;

    filled-new-array {v10, v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    throw v1
    :try_end_a9
    .catchall {:try_start_a9 .. :try_end_a9} :catchall_49

    :catchall_49
    move-exception v0

    move-object v1, v0

    :try_start_aa
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_46

    throw v2

    :cond_46
    throw v1

    :catchall_4a
    move-exception v0

    move-object/from16 v10, v25

    move-object/from16 v13, v35

    move-object/from16 v6, v45

    const/16 v9, 0x196

    :goto_61
    const/16 v11, 0x52

    move-object v1, v0

    goto :goto_62

    :catchall_4b
    move-exception v0

    move v9, v6

    move-object/from16 v10, v25

    move-object/from16 v13, v35

    move-object/from16 v6, v45

    goto :goto_61

    :goto_62
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_47

    throw v2

    :cond_47
    throw v1

    :catchall_4c
    move-exception v0

    move-object/from16 v10, v25

    move-object/from16 v13, v35

    move-object/from16 v6, v45

    move/from16 v5, v56

    goto/16 :goto_56

    :catchall_4d
    move-exception v0

    move v5, v11

    move-object/from16 v60, v14

    goto/16 :goto_5f

    :catchall_4e
    move-exception v0

    move v5, v11

    move v11, v13

    move-object/from16 v60, v14

    move-object/from16 v10, v25

    move-object/from16 v13, v35

    goto/16 :goto_58

    :catchall_4f
    move-exception v0

    move-object v13, v10

    move v5, v11

    move-object/from16 v60, v14

    goto/16 :goto_5a

    :catchall_50
    move-exception v0

    move-object v13, v10

    move v5, v11

    move-object/from16 v60, v14

    :goto_63
    move-object/from16 v6, v45

    :goto_64
    const/16 v9, 0x196

    :goto_65
    const/16 v11, 0x52

    :goto_66
    move-object v10, v3

    goto/16 :goto_52

    :catchall_51
    move-exception v0

    :goto_67
    move-object v13, v10

    move v5, v11

    goto :goto_63

    :catchall_52
    move-exception v0

    :goto_68
    move-object v13, v10

    move v5, v11

    move-object/from16 v6, v45

    const/16 v9, 0x196

    const/16 v11, 0x52

    move-object v10, v3

    move-object v1, v0

    goto :goto_69

    :catchall_53
    move-exception v0

    move/from16 v59, v5

    goto :goto_68

    :goto_69
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_48

    throw v2

    :cond_48
    throw v1

    :catchall_54
    move-exception v0

    move/from16 v59, v5

    goto :goto_67

    :catchall_55
    move-exception v0

    move/from16 v59, v5

    move-object v13, v10

    move v5, v11

    move-object/from16 v6, v45

    const/16 v9, 0x196

    const/16 v11, 0x52

    move-object v10, v3

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_49

    throw v2

    :cond_49
    throw v1

    :catchall_56
    move-exception v0

    move/from16 v59, v5

    move v5, v11

    move v9, v13

    move-object/from16 v6, v45

    const/16 v11, 0x52

    :goto_6a
    move-object v13, v10

    goto :goto_66

    :catchall_57
    move-exception v0

    move-object v13, v10

    move v5, v11

    move-object/from16 v6, v45

    move/from16 v51, v49

    goto :goto_64

    :catchall_58
    move-exception v0

    move v9, v7

    move-object v13, v10

    move v5, v11

    move-object/from16 v6, v45

    move/from16 v51, v49

    goto :goto_65

    :catchall_59
    move-exception v0

    move-object v13, v10

    move v5, v11

    move-object/from16 v6, v45

    move/from16 v51, v49

    const/16 v9, 0x196

    const/16 v11, 0x52

    move-object v10, v3

    :goto_6b
    move-object v1, v0

    goto :goto_6c

    :catchall_5a
    move-exception v0

    move-object v13, v10

    move v5, v11

    move-object/from16 v6, v45

    move/from16 v51, v49

    const/16 v9, 0x196

    move-object v10, v3

    move v11, v4

    goto :goto_6b

    .line 44
    :goto_6c
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_4a

    throw v2

    :cond_4a
    throw v1

    :catchall_5b
    move-exception v0

    move v5, v11

    move-object/from16 v60, v12

    move/from16 v59, v13

    move-object/from16 v6, v45

    :goto_6d
    move/from16 v51, v49

    const/16 v9, 0x196

    const/16 v11, 0x52

    const/16 v18, 0x5

    goto :goto_6a

    :catchall_5c
    move-exception v0

    move v5, v11

    move-object/from16 v60, v12

    move/from16 v59, v13

    move-object/from16 v6, v45

    :goto_6e
    move/from16 v51, v49

    const/16 v9, 0x196

    const/16 v11, 0x52

    const/16 v18, 0x5

    move-object v13, v10

    move-object v10, v3

    move-object v1, v0

    goto :goto_6f

    :catchall_5d
    move-exception v0

    move v5, v11

    move/from16 v59, v13

    move-object/from16 v6, v45

    move-object/from16 v60, v47

    goto :goto_6e

    :goto_6f
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_4b

    throw v2

    :cond_4b
    throw v1

    :catchall_5e
    move-exception v0

    move v5, v11

    move/from16 v59, v13

    move-object/from16 v6, v45

    :goto_70
    move-object/from16 v60, v47

    goto :goto_6d

    :catchall_5f
    move-exception v0

    move v5, v11

    move/from16 v59, v13

    goto :goto_70

    :catchall_60
    move-exception v0

    move v5, v11

    move/from16 v59, v13

    move-object/from16 v60, v47

    move/from16 v51, v49

    const/16 v9, 0x196

    const/16 v11, 0x52

    const/16 v18, 0x5

    :goto_71
    move-object v13, v10

    move-object v10, v3

    move-object v1, v0

    goto :goto_72

    :catchall_61
    move-exception v0

    move v5, v11

    move/from16 v59, v13

    move-object/from16 v60, v47

    move/from16 v51, v49

    const/16 v9, 0x196

    const/16 v18, 0x5

    move v11, v8

    goto :goto_71

    :goto_72
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_4c

    throw v2

    :cond_4c
    throw v1

    :catchall_62
    move-exception v0

    move v5, v11

    move/from16 v59, v13

    move-object/from16 v60, v47

    move/from16 v51, v49

    const/16 v9, 0x196

    const/16 v11, 0x52

    const/16 v18, 0x5

    move-object v13, v10

    move-object v10, v3

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_4d

    throw v2

    :cond_4d
    throw v1

    :catchall_63
    move-exception v0

    move v5, v11

    move/from16 v59, v13

    move-object/from16 v60, v47

    move/from16 v51, v49

    const/16 v9, 0x196

    const/16 v11, 0x52

    const/16 v18, 0x5

    move-object v13, v10

    move-object v10, v3

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_4e

    throw v2

    :cond_4e
    throw v1

    :catchall_64
    move-exception v0

    move v5, v11

    move/from16 v59, v13

    move-object/from16 v60, v47

    move/from16 v51, v49

    const/16 v9, 0x196

    const/16 v11, 0x52

    const/16 v18, 0x5

    move-object v13, v10

    move-object v10, v3

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_4f

    throw v2

    :cond_4f
    throw v1
    :try_end_aa
    .catchall {:try_start_aa .. :try_end_aa} :catchall_3a

    :goto_73
    :try_start_ab
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_ab
    .catchall {:try_start_ab .. :try_end_ab} :catchall_65

    goto :goto_74

    :catchall_65
    move-exception v0

    move-object v2, v0

    :try_start_ac
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_74
    throw v1

    :catchall_66
    move-exception v0

    move v5, v11

    move/from16 v59, v13

    move-object/from16 v60, v47

    move/from16 v51, v49

    const/16 v9, 0x196

    const/16 v11, 0x52

    const/16 v18, 0x5

    :goto_75
    move-object v13, v10

    move-object v10, v3

    goto/16 :goto_59

    :catchall_67
    move-exception v0

    move/from16 v18, v8

    move v5, v11

    move/from16 v59, v13

    move-object/from16 v60, v47

    move/from16 v51, v49

    const/16 v9, 0x196

    const/16 v11, 0x52

    goto :goto_75

    :catchall_68
    move-exception v0

    move v5, v11

    move/from16 v59, v13

    move-object/from16 v60, v47

    move/from16 v51, v49

    const/16 v9, 0x196

    const/16 v11, 0x52

    const/16 v18, 0x5

    move-object v13, v10

    move-object v10, v3

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_50

    throw v2

    :cond_50
    throw v1

    :catchall_69
    move-exception v0

    move v5, v11

    move/from16 v59, v13

    move-object/from16 v60, v47

    move/from16 v51, v49

    const/16 v9, 0x196

    const/16 v11, 0x52

    const/16 v18, 0x5

    move-object v13, v10

    move-object v10, v3

    :goto_76
    move-object v1, v0

    goto :goto_77

    :catchall_6a
    move-exception v0

    move-object v10, v3

    move v5, v11

    move/from16 v59, v13

    move-object/from16 v13, v42

    move-object/from16 v60, v47

    move/from16 v51, v49

    const/16 v9, 0x196

    const/16 v11, 0x52

    const/16 v18, 0x5

    goto :goto_76

    :goto_77
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_51

    throw v2

    :cond_51
    throw v1

    :catchall_6b
    move-exception v0

    move-object v10, v3

    move v5, v11

    move/from16 v59, v13

    move-object/from16 v13, v42

    move-object/from16 v60, v47

    move/from16 v51, v49

    const/16 v9, 0x196

    const/16 v11, 0x52

    const/16 v18, 0x5

    goto/16 :goto_59

    :cond_52
    move/from16 v48, v1

    move/from16 v51, v5

    :goto_78
    move-object/from16 v40, v10

    move v5, v11

    move-object/from16 v60, v12

    move/from16 v59, v13

    move-object/from16 v41, v15

    const/16 v11, 0x52

    const/16 v18, 0x5

    move-object v10, v3

    move-object v13, v9

    const/16 v9, 0x196

    goto/16 :goto_7e

    :catchall_6c
    move-exception v0

    move/from16 v48, v1

    move/from16 v51, v5

    :goto_79
    move-object/from16 v40, v10

    move v5, v11

    move-object/from16 v60, v12

    move/from16 v59, v13

    move-object/from16 v41, v15

    const/16 v11, 0x52

    :goto_7a
    const/16 v18, 0x5

    move-object v10, v3

    move-object v13, v9

    const/16 v9, 0x196

    move-object v1, v0

    goto :goto_7d

    :catchall_6d
    move-exception v0

    move/from16 v48, v1

    move/from16 v51, v5

    move-object/from16 v39, v7

    move-object/from16 v40, v10

    move v5, v11

    move-object/from16 v60, v12

    move/from16 v59, v13

    move-object/from16 v41, v15

    move/from16 v11, v31

    goto :goto_7a

    :catchall_6e
    move-exception v0

    move/from16 v48, v1

    move/from16 v51, v5

    :goto_7b
    move-object/from16 v39, v7

    goto :goto_79

    :catchall_6f
    move-exception v0

    move/from16 v48, v1

    :goto_7c
    move/from16 v51, v5

    move/from16 v38, v6

    goto :goto_7b

    :catchall_70
    move-exception v0

    move/from16 v48, v1

    move-object/from16 v37, v4

    goto :goto_7c

    :goto_7d
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_53

    throw v2

    :cond_53
    throw v1
    :try_end_ac
    .catchall {:try_start_ac .. :try_end_ac} :catchall_44

    :cond_54
    move/from16 v48, v1

    move-object/from16 v37, v4

    move/from16 v51, v5

    move/from16 v38, v6

    move-object/from16 v39, v7

    goto :goto_78

    :goto_7e
    :try_start_ad
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B
    :try_end_ad
    .catchall {:try_start_ad .. :try_end_ad} :catchall_74

    const/16 v3, 0x15

    :try_start_ae
    aget-byte v4, v2, v3

    neg-int v4, v4

    int-to-byte v4, v4

    const/16 v6, 0xf0

    aget-byte v7, v2, v6

    int-to-byte v6, v7

    const/16 v7, 0x120

    int-to-short v7, v7

    invoke-static {v4, v6, v7}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_ae
    .catchall {:try_start_ae .. :try_end_ae} :catchall_73

    const/16 v4, 0x20f

    :try_start_af
    aget-byte v6, v2, v4

    int-to-byte v6, v6

    const/16 v7, 0xf

    aget-byte v7, v2, v7

    int-to-byte v7, v7

    const/16 v8, 0x124

    int-to-short v8, v8

    invoke-static {v6, v7, v8}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_af
    .catchall {:try_start_af .. :try_end_af} :catchall_72

    :try_start_b0
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v6, 0x1fa

    aget-byte v2, v2, v6

    int-to-byte v2, v2

    const/4 v6, 0x2

    shl-int/lit8 v7, v5, 0x2

    int-to-short v6, v7

    invoke-static {v2, v5, v6}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    filled-new-array {v10}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    throw v1
    :try_end_b0
    .catchall {:try_start_b0 .. :try_end_b0} :catchall_71

    :catchall_71
    move-exception v0

    move-object v1, v0

    :try_start_b1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_55

    throw v2

    :catchall_72
    move-exception v0

    :goto_7f
    move-object v1, v0

    goto :goto_81

    :cond_55
    throw v1
    :try_end_b1
    .catchall {:try_start_b1 .. :try_end_b1} :catchall_72

    :catchall_73
    move-exception v0

    :goto_80
    const/16 v4, 0x20f

    goto :goto_7f

    :catchall_74
    move-exception v0

    const/16 v3, 0x15

    goto :goto_80

    :catchall_75
    move-exception v0

    move/from16 v48, v1

    move-object/from16 v36, v2

    move-object/from16 v37, v4

    move/from16 v51, v5

    move/from16 v38, v6

    move-object/from16 v39, v7

    move-object/from16 v40, v10

    move v5, v11

    move-object/from16 v60, v12

    move/from16 v59, v13

    move-object/from16 v41, v15

    const/16 v4, 0x20f

    const/16 v11, 0x52

    const/16 v18, 0x5

    move-object v10, v3

    move-object v13, v9

    const/16 v3, 0x15

    const/16 v9, 0x196

    goto :goto_7f

    .line 45
    :goto_81
    :try_start_b2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_b2} :catch_0

    long-to-int v2, v6

    move/from16 v6, v48

    mul-int/lit16 v7, v6, -0x2a3

    const/16 v8, 0x2a5

    or-int v12, v8, v7

    const/4 v14, 0x1

    shl-int/2addr v12, v14

    xor-int/2addr v7, v8

    sub-int/2addr v12, v7

    xor-int/lit8 v7, v2, 0x1

    and-int/lit8 v8, v2, 0x1

    or-int/2addr v7, v8

    not-int v8, v6

    xor-int v15, v7, v8

    and-int/2addr v7, v8

    or-int/2addr v7, v15

    mul-int/lit16 v7, v7, -0x2a4

    add-int/2addr v12, v7

    xor-int/lit8 v7, v8, 0x1

    and-int/2addr v8, v14

    or-int/2addr v7, v8

    not-int v7, v7

    not-int v8, v2

    xor-int/lit8 v15, v8, 0x1

    and-int/2addr v8, v14

    or-int/2addr v8, v15

    not-int v8, v8

    or-int/2addr v7, v8

    mul-int/lit16 v7, v7, 0x2a4

    or-int v8, v12, v7

    shl-int/2addr v8, v14

    xor-int/2addr v7, v12

    sub-int/2addr v8, v7

    not-int v7, v6

    const/4 v12, -0x2

    xor-int v14, v12, v7

    and-int/2addr v12, v7

    or-int/2addr v12, v14

    not-int v12, v12

    not-int v14, v2

    xor-int v15, v7, v14

    and-int/2addr v7, v14

    or-int/2addr v7, v15

    not-int v7, v7

    xor-int v14, v12, v7

    and-int/2addr v7, v12

    or-int/2addr v7, v14

    const/4 v12, 0x1

    xor-int/lit8 v14, v6, 0x1

    and-int/lit8 v15, v6, 0x1

    or-int v12, v14, v15

    xor-int v14, v12, v2

    and-int/2addr v2, v12

    or-int/2addr v2, v14

    not-int v2, v2

    xor-int v12, v7, v2

    and-int/2addr v2, v7

    or-int/2addr v2, v12

    mul-int/lit16 v2, v2, 0x2a4

    xor-int v7, v8, v2

    and-int/2addr v2, v8

    const/4 v8, 0x1

    shl-int/2addr v2, v8

    add-int/2addr v7, v2

    const/4 v2, 0x7

    :goto_82
    if-ge v7, v2, :cond_57

    sget v12, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    or-int/lit8 v14, v12, 0x1f

    shl-int/2addr v14, v8

    xor-int/lit8 v12, v12, 0x1f

    sub-int/2addr v14, v12

    rem-int/lit16 v14, v14, 0x80

    sput v14, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    :try_start_b3
    aget-boolean v12, v41, v7

    xor-int/2addr v12, v8

    if-eq v12, v8, :cond_56

    move/from16 v32, v8

    goto :goto_83

    :cond_56
    or-int/lit8 v12, v7, 0x2b

    shl-int/2addr v12, v8

    xor-int/lit8 v7, v7, 0x2b

    sub-int/2addr v12, v7

    xor-int/lit8 v7, v12, -0x2a

    and-int/lit8 v12, v12, -0x2a

    shl-int/2addr v12, v8

    add-int/2addr v7, v12

    goto :goto_82

    :cond_57
    const/16 v32, 0x0

    :goto_83
    xor-int/lit8 v7, v32, 0x1

    if-eq v7, v8, :cond_58

    const/4 v7, 0x0

    sput-object v7, Lcom/appsflyer/internal/AFi1fSDK;->d:Ljava/lang/Object;

    sput-object v7, Lcom/appsflyer/internal/AFi1fSDK;->unregisterClient:Ljava/lang/Object;
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_b3} :catch_0

    const/4 v1, 0x0

    const/16 v8, 0xf0

    const/4 v12, -0x1

    const/4 v14, 0x2

    goto/16 :goto_84

    :cond_58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    :try_start_b4
    sget-object v2, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    aget-byte v3, v2, v21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-int v4, v6

    mul-int/lit16 v6, v3, -0x29b

    const/16 v7, 0x537

    add-int/2addr v7, v6

    not-int v6, v3

    const/4 v8, -0x1

    xor-int v9, v8, v4

    or-int v8, v9, v4

    not-int v8, v8

    xor-int v9, v6, v8

    and-int/2addr v6, v8

    or-int/2addr v6, v9

    mul-int/lit16 v6, v6, -0x29c

    xor-int v8, v7, v6

    and-int/2addr v6, v7

    const/4 v7, 0x1

    shl-int/2addr v6, v7

    add-int/2addr v8, v6

    not-int v3, v3

    xor-int v6, v3, v4

    and-int/2addr v3, v4

    or-int/2addr v3, v6

    not-int v3, v3

    const/4 v12, -0x1

    xor-int v4, v12, v3

    or-int/2addr v3, v4

    mul-int/lit16 v3, v3, 0x538

    not-int v3, v3

    sub-int/2addr v8, v3

    add-int/lit16 v8, v8, -0x29d

    int-to-byte v3, v8

    const/16 v8, 0xf0

    aget-byte v4, v2, v8

    int-to-byte v4, v4

    const/16 v6, 0x452

    int-to-short v6, v6

    invoke-static {v3, v4, v6}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v3
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_b4} :catch_0

    const/4 v14, 0x2

    :try_start_b5
    new-array v4, v14, [Ljava/lang/Object;

    const/4 v6, 0x1

    aput-object v1, v4, v6

    const/4 v1, 0x0

    aput-object v3, v4, v1

    const/16 v1, 0x1fa

    aget-byte v1, v2, v1

    int-to-byte v1, v1

    shl-int/lit8 v2, v5, 0x2

    int-to-short v2, v2

    invoke-static {v1, v5, v2}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Throwable;

    filled-new-array {v10, v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    throw v1
    :try_end_b5
    .catchall {:try_start_b5 .. :try_end_b5} :catchall_76

    :catchall_76
    move-exception v0

    move-object v1, v0

    :try_start_b6
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_59

    throw v2

    :cond_59
    throw v1
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_b6} :catch_0

    :cond_5a
    move-object/from16 v36, v2

    move-object/from16 v37, v4

    move/from16 v51, v5

    move/from16 v38, v6

    move-object/from16 v39, v7

    move-object/from16 v40, v10

    move v5, v11

    move-object/from16 v60, v12

    move/from16 v59, v13

    move-object/from16 v41, v15

    const/4 v2, 0x7

    const/16 v4, 0x20f

    const/4 v7, 0x0

    const/16 v8, 0xf0

    const/16 v11, 0x52

    const/4 v12, -0x1

    const/4 v14, 0x2

    const/16 v18, 0x5

    move v6, v1

    move-object v10, v3

    move-object v13, v9

    const/4 v1, 0x0

    const/16 v3, 0x15

    const/16 v9, 0x196

    :goto_84
    const/4 v15, 0x1

    :goto_85
    add-int/2addr v6, v15

    move v11, v5

    move v1, v6

    move-object v3, v10

    move-object v9, v13

    move-object/from16 v2, v36

    move-object/from16 v4, v37

    move/from16 v6, v38

    move-object/from16 v7, v39

    move-object/from16 v10, v40

    move-object/from16 v15, v41

    move/from16 v5, v51

    move/from16 v13, v59

    move-object/from16 v12, v60

    goto/16 :goto_f

    :cond_5b
    sget v1, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    add-int/lit8 v1, v1, 0x7d

    rem-int/lit16 v1, v1, 0x80

    sput v1, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    return-void

    :catchall_77
    move-exception v0

    move-object v1, v0

    :try_start_b7
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_5c

    throw v2

    :cond_5c
    throw v1

    :catchall_78
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_5d

    throw v2

    :cond_5d
    throw v1

    :catchall_79
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_5e

    throw v2

    :cond_5e
    throw v1
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_b7} :catch_0

    :goto_86
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catchall_7a
    move-exception v0

    move-object v1, v0

    .line 46
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_5f

    throw v2

    :cond_5f
    throw v1

    :array_0
    .array-data 1
        0x26t
        0x60t
        0x6at
        -0x76t
        0x54t
        -0x58t
        -0x1at
        -0x77t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
    .end array-data
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

.method public static getCurrencyIso4217Code(I)I
    .locals 6

    .line 1
    sget v0, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    add-int/lit8 v1, v0, 0x61

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    sget-object v1, Lcom/appsflyer/internal/AFi1fSDK;->d:Ljava/lang/Object;

    const/16 v2, 0xb

    div-int/lit8 v2, v2, 0x0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/appsflyer/internal/AFi1fSDK;->d:Ljava/lang/Object;

    :goto_0
    xor-int/lit8 v2, v0, 0x55

    and-int/lit8 v0, v0, 0x55

    const/4 v3, 0x1

    shl-int/2addr v0, v3

    add-int/2addr v2, v0

    rem-int/lit16 v2, v2, 0x80

    sput v2, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    const/16 v2, 0x1b

    aget-byte v2, v0, v2

    int-to-byte v2, v2

    const/16 v4, 0x52

    aget-byte v4, v0, v4

    int-to-byte v4, v4

    const/16 v5, 0x233

    int-to-short v5, v5

    invoke-static {v2, v4, v5}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/appsflyer/internal/AFi1fSDK;->unregisterClient:Ljava/lang/Object;

    check-cast v4, Ljava/lang/ClassLoader;

    invoke-static {v2, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    const/16 v3, 0x2ce

    aget-byte v3, v0, v3

    int-to-byte v3, v3

    const/16 v4, 0x1ab

    aget-byte v0, v0, v4

    int-to-byte v0, v0

    const/16 v4, 0x48f

    int-to-short v4, v4

    invoke-static {v3, v0, v4}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget v0, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    throw v0

    :cond_1
    throw p0
.end method

.method public static getCurrencyIso4217Code(Ljava/lang/Object;)I
    .locals 5

    .line 2
    sget v0, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    and-int/lit8 v1, v0, 0x3f

    or-int/lit8 v0, v0, 0x3f

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    sget-object v1, Lcom/appsflyer/internal/AFi1fSDK;->d:Ljava/lang/Object;

    const/16 v2, 0x2e

    div-int/lit8 v2, v2, 0x0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/appsflyer/internal/AFi1fSDK;->d:Ljava/lang/Object;

    :goto_0
    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    :try_start_0
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    const/16 v2, 0x1b

    aget-byte v2, v0, v2

    int-to-byte v2, v2

    const/16 v3, 0x52

    aget-byte v3, v0, v3

    int-to-byte v3, v3

    const/16 v4, 0x233

    int-to-short v4, v4

    invoke-static {v2, v3, v4}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/appsflyer/internal/AFi1fSDK;->unregisterClient:Ljava/lang/Object;

    check-cast v3, Ljava/lang/ClassLoader;

    const/4 v4, 0x1

    invoke-static {v2, v4, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    const/16 v3, 0x1c4

    aget-byte v3, v0, v3

    int-to-byte v3, v3

    const/16 v4, 0x1ab

    aget-byte v0, v0, v4

    int-to-byte v0, v0

    sget v4, Lcom/appsflyer/internal/AFi1fSDK;->$$b:I

    or-int/lit16 v4, v4, 0x40a

    int-to-short v4, v4

    invoke-static {v3, v0, v4}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v0

    const-class v3, Ljava/lang/Object;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget v0, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    throw v0

    :cond_1
    throw p0
.end method

.method public static getMediationNetwork(CII)Ljava/lang/Object;
    .locals 4

    .line 1
    sget v0, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    .line 2
    .line 3
    sget-object v1, Lcom/appsflyer/internal/AFi1fSDK;->d:Ljava/lang/Object;

    .line 4
    .line 5
    and-int/lit8 v2, v0, 0x69

    .line 6
    .line 7
    or-int/lit8 v0, v0, 0x69

    .line 8
    .line 9
    add-int/2addr v2, v0

    .line 10
    rem-int/lit16 v2, v2, 0x80

    .line 11
    .line 12
    sput v2, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    .line 13
    .line 14
    and-int/lit8 v0, v2, 0x4f

    .line 15
    .line 16
    or-int/lit8 v2, v2, 0x4f

    .line 17
    .line 18
    add-int/2addr v0, v2

    .line 19
    rem-int/lit16 v0, v0, 0x80

    .line 20
    .line 21
    sput v0, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    .line 22
    .line 23
    const/4 v0, 0x3

    .line 24
    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    .line 25
    .line 26
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    const/4 v2, 0x2

    .line 31
    aput-object p2, v0, v2

    .line 32
    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const/4 p2, 0x1

    .line 38
    aput-object p1, v0, p2

    .line 39
    .line 40
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const/4 p1, 0x0

    .line 45
    aput-object p0, v0, p1

    .line 46
    .line 47
    sget-object p0, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    .line 48
    .line 49
    const/16 p1, 0x1b

    .line 50
    .line 51
    aget-byte p1, p0, p1

    .line 52
    .line 53
    int-to-byte p1, p1

    .line 54
    const/16 v2, 0x52

    .line 55
    .line 56
    aget-byte v2, p0, v2

    .line 57
    .line 58
    int-to-byte v2, v2

    .line 59
    const/16 v3, 0x233

    .line 60
    .line 61
    int-to-short v3, v3

    .line 62
    invoke-static {p1, v2, v3}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    sget-object v2, Lcom/appsflyer/internal/AFi1fSDK;->unregisterClient:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v2, Ljava/lang/ClassLoader;

    .line 69
    .line 70
    invoke-static {p1, p2, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const/16 p2, 0x1fa

    .line 75
    .line 76
    aget-byte p2, p0, p2

    .line 77
    .line 78
    int-to-byte p2, p2

    .line 79
    const/16 v2, 0x1ab

    .line 80
    .line 81
    aget-byte p0, p0, v2

    .line 82
    .line 83
    int-to-byte p0, p0

    .line 84
    const/16 v2, 0x468

    .line 85
    .line 86
    int-to-short v2, v2

    .line 87
    invoke-static {p2, p0, v2}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    sget-object p2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 92
    .line 93
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 94
    .line 95
    filled-new-array {p2, v2, v2}, [Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-virtual {p1, p0, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    return-object p0

    .line 108
    :catchall_0
    move-exception p0

    .line 109
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    if-eqz p1, :cond_0

    .line 114
    .line 115
    throw p1

    .line 116
    :cond_0
    throw p0
.end method

.method private static getRevenue(II)V
    .locals 0

    .line 1
    sget p0, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    .line 2
    .line 3
    add-int/lit8 p0, p0, 0x31

    .line 4
    .line 5
    rem-int/lit16 p1, p0, 0x80

    .line 6
    .line 7
    sput p1, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    .line 8
    .line 9
    rem-int/lit8 p0, p0, 0x2

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    throw p0
.end method

.method static init$0()V
    .locals 5

    .line 1
    sget v0, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0xb

    .line 4
    .line 5
    or-int/lit8 v0, v0, 0xb

    .line 6
    .line 7
    add-int/2addr v1, v0

    .line 8
    rem-int/lit16 v0, v1, 0x80

    .line 9
    .line 10
    sput v0, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    .line 11
    .line 12
    rem-int/lit8 v1, v1, 0x2

    .line 13
    .line 14
    const-string v0, "ISO-8859-1"

    .line 15
    .line 16
    const-string v2, ")\u009f5\u00bb\u00f3\n\u00f2\u0003\u0006\u00056\u00c7\u00f5\u0011\u00f1\u0008\u00ff\u0006\u00f0E\u00eb\u00d4\u0003\u00fd\u00fd\u00f6\u00f7\u0010\u00f4\u0002>\u00ce\u00f1\u0000\u00fd\r\u00fa\u00f3\u0014\u00f3C\u00c6\u00fb\u00fa\u000f\u00f3\u0004\r\u00f5=\u00ee\u00fb\u00dd8\u00cf\u000f\u000f\u00f9\u00f8\u0000\u00f4\u0002?\u00cd\u00f1\u0000\u00fd\r\u00fa\u00f3\u0014\u00f3\u00f3\n\u00f2\u0003\u0006\u00056\u00cd\u00f1\u0000B\u00ed\u00de\u00ef\u000b\u00f3\r\u00f5\u00fb%\u00ec\u00f6\r\u0004\u00fd\u00ee\u0003\u0000\r\u00f7\u00fa3\u00d1\u0000\u0004\u0003\u0006\u0002\u00ed\u000b\u00fa\u0001\u00f3\n\u00f2\u0003\u0006\u00056\u00cd\u00f1\u0000B\u00ed\u00d1\u0000)\u00db\u00fd\r\u0001\u00f5\u00f9\u0002\u00f1+\u00db\u0005\u00f5\u000b\u0008\u00f5+\u00d1\u0000\u0004\u0003\u0006\u0002\u00ed\u000b\u00fa\u0001\u0002\u00f1.\u00dd\u00fd\u0007\u00f2/\u00db\u00f7\u0002\u00f11\u00d4\u000b\u00ff\"\u00e2\u00fe\u00fb\u0003!\u00db\u00f7\u0002\u00f11\u00e2\u00fe\u00fb\u0003!\u00db\u00f7\u00cb\u0003\u00ed\u00132\u00cb\u0003\u00ed\u00132\t\u00eb\u00153\u00c5\u00faA\u00e8\u00dd\u00fd\u0007\t\u00eb\u00153\u00c5\u00faA\u00ba\u0007\u00fd\u000c\u00fb\u00f7\t\u00eb\u00153\u00c2\u000b\u00f3\u00079\u00db\u00da\u0006\u00ff\u000f\u00f8\u0002\u00f1$\u00de\u0003\u00ff\u000b\u00f3\u00fe\u00fb\u00f4\u000b\u00ff\u0006\u00fc\u0002\u00fe\u00fb\u0003\u00f3\n\u00f2\u0003\u0006\u00056\u00bf\u00fcE\u00ec\u00cd\u000c\u00fd\u0008@\u00ce\u0011\u00f3\u00ff\n\u00fa\u0001\u000f\u00f9\u00ec\u0016\u00fb\u00fa\u0002\u00f3\u0017\u00e5\t\u00f5\u000f\u0015\u00fa\u0016\u00f8\t\u00eb\u00153\u00c5\u00faA\u00e5\u00fa\n\u00cd\u0015\u00fe\u00f5\u00fc\u000b\u00fa\u0001\u00ee\u0003\u0000\r\u00f7\u00fa \u00eb\u00fc\u0008\u0018\u00e4\u00fd\u0000\u0003\u00f6\t\u00eb\u00153\u00c5\u00faA\u00e8\u00dd\u00fd\u0007\u0016\u00da\u0001\u0004\u00fb\u0001!\u00df\u0002\r\u0004\u00f4\u00f7\u00fd\u00fc\u000e\u0015\u00fd\u0013\u00f8\u00ce\u00ee\u0000\u000e\u00f1\u0001D\u00cc\u00f4\u0002>\u00ce\u00f1\u0000\u00fd\r\u00fa\u00f3\u0014\u00f3C\u00c6\u00fb\u00fa\u000f\u00f3\u0004\r\u00f5=\u00fd\u00fa\u0004\u0000\u00ff\u0003\u0002\u00f9\u00d6+\u00d01\u00d4\u00fb-\u0002\u00d46\u0002\u00f1\"\u00ed\u00f2\u0004\u00fa\u0003\u000f\u00fe\t\u00eb\u00153\u00c0\t\u00f1F\u00d9\u0003\u0006\u0002\u00f1$\u00ef\u00ed\u000c\t\u00eb\u00153\u00c5\u00faA\u00ec\u00cd\u000f\u0000\u0001\u00f3\r\u0001\u001b\u00db\u00fe\u00fb\u0001!\u00df\u0002\r\u0004\u00f4\t\u00eb\u00153\u00c5\u00faA\u00e5\u00db\u00fe\u00fb\u0001!\u00df\u0002\r\u0004\u00f4\t\u00eb\u00153\u00c5\u00faA\u00ea\u00e3\u00ed\u0013\u0018\u00db\u00fe\u00fb\u0001!\u00df\u0002\r\u0004\u00f4\r\u0004\u00fd\u001e\u00d1\t\u0000\u00f3\t\u00eb\u00153\u00c5\u00faA\u00ec\u00c9\u0005\u000f$\u00cf\u0000\u0011\u00e80\u00db\u00fe\u00fb\u0001!\u00df\u0002\r\u0004\u00f4\u00f4\u0002?\u00cd\u00f1\u0000\u00fd\r\u00fa\u00f3\u0014\u00f3D\u00c5\u00fb\u00fa\u000f\u00f3\u0004\r\u00f5>\u00ed\u00fb\u00db:\u00bf\u001f\u000f\u00f9\u00f4\u0002?\u00cd\u00f1\u0000\u00fd\r\u00fa\u00f3\u0014\u00f3D\u00c5\u00fb\u00fa\u000f\u00f3\u0004\r\u00f5>\u00ed\u00fb\u00dd8\u00cf\u000f\u000f\u00f9\u00f8\u0000\u00fb\u0005\u00dd\u0012\u00ed\u00ef\u0011\u00f7\u00f9\u0010!\u00e3\u00ed\u0013\u0008\u0002\u00f9\r\u0004\u00fd\u000e\u00f1\"\u00ed\u0004\u00fd\u0015\u00e1\u0002\u00f3\u0015\u00fc\u0014\u00f8\u0005\t\u00f5\u000f\u0002\u00f1.\u0002\t\u00eb\u00153\u00c5\u00faA\u00e8\u00dd\u00fd\u0007!\u00df\u00f2\u0010\u00f1\t\u00f9\u00fc\u0005\u00fd\u00fa\u000b\u000b\u0003\u00f5\u00f6\r\u00fe=\u00bb\u00fa\u0006\u00ff\u000f\u00f8?\u00ea\u00df\u00ed2\u00dd\u00fd\u0007\u00fd\u000e\u00fd \u00df\u00ed\u0002\u00f13\u00df\u00ef\u0004\u0003\u00f7\u0001\u000f\u0015\u00ef\u00ed\u000c\u00ff\u00f9\u0007\u00f1\u000f\u0002\u00f11\u00d7\u000b\u00ee\u0000\'\u00dd\u000e\u00fd\u00ff\u00f3\t\u00eb\u00153\u00b9\u0001\u000b\u00fd>\u00b4\u0011\u00f9B\u00d4\u00f1\u00f9\'\u00db\u00fe\u00fb\u0001!\u00df\u0002\r\u0004\u00f4\u0002\u00f1&\u00e9\u00ed\u0004/\u00d7\u00fa\u0002\u00f9\t\u00eb\u00153\u00b9\u0001\u000b\u00fd>\u00b4\u0011\u00f9B\u00d4\u00f1\u00f9+\u00d7\u00fa\u0002\u00f9\u0002\u00f1!\u00ea\u00ef\u0015\t\u00eb\u00153\u00c5\u00faA\u00ec\u00c9\u0005\u000f$\u00cf\u0000\u0011\u00e8*\u00da\u0001\u0004\u00fb\u0001!\u00df\u0002\r\u0004\u00f4\u0005-\u00c9\u0005\u000f$\u00cf\u0000\u0011\u00e8\t\u00eb\u00153\u00c5\u00faA\u00eb\u00d7\u00fd\u00fc\u000e\u0004\u00ff\u00f6\u0007\u0003\u00f5\u00f6\r\u00fe=\u00bb\u00fa\u0006\u00ff\u000f\u00f8?\u00e5\u00db!\u00e8\u00f8\u00fe\u00fd\u00f95\u00df\u00ed5\u00d7\u000b\u00ee\u0000\'\u00dd\u000e\u00fd\u00ff\u00f3\t\u00eb\u00153\u00c0\u0005\u00faA\u00ec\u00c9\u0005\u000f#\u00cd\u000f\u0000\u0001\u00f3\t\u00eb\u00153\u00c2\u000b\u00f3\u00079\u00eb\u00d7\u000b\u00ee\u0000\'\u00dd\u000e\u00fd\u00ff\u00f3\u0005\u0011\u00f1\u0003\u00f5\u00f6\r\u00fe=\u00bb\u00fa\u0006\u00ff\u000f\u00f8?\u00ec\u00e1\u00ee\u000e!\u00df\u00ed5\u00d7\u000b\u00ee\u0000\'\u00dd\u000e\u00fd\u00ff\u00f3\u000f\u00ed\u000c\u001c\u00e3\u00f6\u00ff\r\u00ed\u000b\u00f3\u0011\u0019\u00e3\u0007\u00f0\u0011\u00ef\u00f95\u00db\u00f7\r\u0002\u00ef\u0005\u00fd\t\u0004\u00f2\r\u00ed\u000b\u00f3\u0011\u0019\u00e3\u0007\u00f0\u0011\u00ef\u00f9)\u00ef\u00ed\u000c#\u00d9\u0007\u00f8\u0008\u00f7\u00fa\u0001\u0002\u00f11\u00d4\u0002\u00fd\u0001\u0001\t\u00f7\u00fa \u00db\t\u000b\u0015\u00f8\u0018\u00f8\u00fd\u000e\u00fd!\u00d7\u000b\u00ee\u0000\u00f4\u0002>\u00ce\u00f1\u0000\u00fd\r\u00fa\u00f3\u0014\u00f3C\u00c6\u00fb\u00fa\u000f\u00f3\u0004\r\u00f5=\u00ee\u00fb\u00dd8\u00cb\u0013\u000f\u00f9\'\u00ad\u00ce\u00ee\u0000\u000e\u00f1\u0001D\u00cc\u00f4\u0002>\u00ce\u00f1\u0000\u00fd\r\u00fa\u00f3\u0014\u00f3C\u00c6\u00fb\u00fa\u000f\u00f3\u0004\r\u00f5=\u00cb3\u00cf\u0000/\u00fa\u0005\u00d2\u0001)\u00ff\u0008\u00fe\u00fb\u00d24\u00ce7\u0015\u00f9\u0017\u00f8\u00ba\u00ffO\u00ba\u0005\u00f5\u0000\n\u0001\u00fe\u00f8\u00f8S\u00b4\u0007\u00ff\u00f2K\u0002\u00f1\'\u00e8\u0001\u00fb\u0008\u00ed\u000b\u00fa\u0001 \u00e9\u00f1\u00fd\u0008\u00fd\u0007\u0002\u00f11\u00ce\u0003\u0000\r\u00f7\u000b\u00ea0\u00d6\u0004;\u0002\u0001\u00fa\u00f4\u00d4\u000b\u00ff\u0002\u00f1\"\u00ed\u00ef\u0011\u00f7\u00f9\u0010"

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    const/16 v4, 0x49d

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    new-array v1, v4, [B

    .line 24
    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    .line 31
    .line 32
    sput-object v1, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    .line 33
    .line 34
    const/16 v0, 0x45

    .line 35
    .line 36
    :goto_0
    sput v0, Lcom/appsflyer/internal/AFi1fSDK;->$$b:I

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    new-array v1, v4, [B

    .line 40
    .line 41
    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    .line 47
    .line 48
    sput-object v1, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    .line 49
    .line 50
    const/16 v0, 0x70

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :goto_1
    return-void
.end method
