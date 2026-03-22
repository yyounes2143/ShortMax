.class public final Lcom/appsflyer/internal/AFd1wSDK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/AFd1xSDK;


# static fields
.field private static $10:I = 0x0

.field private static $11:I = 0x1

.field private static AFKeystoreWrapper:I = 0x1

.field private static copy:C = '\u2875'

.field private static copydefault:I = 0x0

.field private static equals:C = '\u0313'

.field private static hashCode:C = '\u1f14'

.field private static toString:C = '\ube21'


# instance fields
.field private AFAdRevenueData:Lcom/appsflyer/internal/AFd1zSDK;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final areAllFieldsValid:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private component1:Lcom/appsflyer/internal/AFd1xSDK$AFa1vSDK;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final component2:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final component3:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final component4:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final getCurrencyIso4217Code:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final getMediationNetwork:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final getMonetizationNetwork:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final getRevenue:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/appsflyer/internal/AFd1zSDK;)V
    .locals 1
    .param p1    # Lcom/appsflyer/internal/AFd1zSDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/appsflyer/internal/AFd1wSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFd1zSDK;

    .line 10
    .line 11
    new-instance p1, Lcom/appsflyer/internal/AFd1wSDK$4;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/appsflyer/internal/AFd1wSDK$4;-><init>(Lcom/appsflyer/internal/AFd1wSDK;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/appsflyer/internal/AFd1wSDK;->getRevenue:Lms/i;

    .line 21
    .line 22
    new-instance p1, Lcom/appsflyer/internal/AFd1wSDK$3;

    .line 23
    .line 24
    invoke-direct {p1, p0}, Lcom/appsflyer/internal/AFd1wSDK$3;-><init>(Lcom/appsflyer/internal/AFd1wSDK;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork:Lms/i;

    .line 32
    .line 33
    new-instance p1, Lcom/appsflyer/internal/AFd1wSDK$2;

    .line 34
    .line 35
    invoke-direct {p1, p0}, Lcom/appsflyer/internal/AFd1wSDK$2;-><init>(Lcom/appsflyer/internal/AFd1wSDK;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/appsflyer/internal/AFd1wSDK;->getMonetizationNetwork:Lms/i;

    .line 43
    .line 44
    new-instance p1, Lcom/appsflyer/internal/AFd1wSDK$6;

    .line 45
    .line 46
    invoke-direct {p1, p0}, Lcom/appsflyer/internal/AFd1wSDK$6;-><init>(Lcom/appsflyer/internal/AFd1wSDK;)V

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput-object p1, p0, Lcom/appsflyer/internal/AFd1wSDK;->getCurrencyIso4217Code:Lms/i;

    .line 54
    .line 55
    new-instance p1, Lcom/appsflyer/internal/AFd1wSDK$5;

    .line 56
    .line 57
    invoke-direct {p1, p0}, Lcom/appsflyer/internal/AFd1wSDK$5;-><init>(Lcom/appsflyer/internal/AFd1wSDK;)V

    .line 58
    .line 59
    .line 60
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iput-object p1, p0, Lcom/appsflyer/internal/AFd1wSDK;->component2:Lms/i;

    .line 65
    .line 66
    const-string p1, "6.17.5"

    .line 67
    .line 68
    iput-object p1, p0, Lcom/appsflyer/internal/AFd1wSDK;->component4:Ljava/lang/String;

    .line 69
    .line 70
    new-instance p1, Lcom/appsflyer/internal/AFd1wSDK$1;

    .line 71
    .line 72
    invoke-direct {p1, p0}, Lcom/appsflyer/internal/AFd1wSDK$1;-><init>(Lcom/appsflyer/internal/AFd1wSDK;)V

    .line 73
    .line 74
    .line 75
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iput-object p1, p0, Lcom/appsflyer/internal/AFd1wSDK;->component3:Lms/i;

    .line 80
    .line 81
    new-instance p1, Lcom/appsflyer/internal/AFd1wSDK$7;

    .line 82
    .line 83
    invoke-direct {p1, p0}, Lcom/appsflyer/internal/AFd1wSDK$7;-><init>(Lcom/appsflyer/internal/AFd1wSDK;)V

    .line 84
    .line 85
    .line 86
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iput-object p1, p0, Lcom/appsflyer/internal/AFd1wSDK;->areAllFieldsValid:Lms/i;

    .line 91
    .line 92
    return-void
.end method

.method private static synthetic AFAdRevenueData([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    aget-object p0, p0, v0

    check-cast p0, Lcom/appsflyer/internal/AFd1wSDK;

    .line 1
    sget v0, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1wSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFf1kSDK;

    move-result-object p0

    .line 2
    iget-object p0, p0, Lcom/appsflyer/internal/AFf1kSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFf1hSDK;

    .line 3
    iget-object p0, p0, Lcom/appsflyer/internal/AFf1hSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFi1vSDK;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 4
    iget-object p0, p0, Lcom/appsflyer/internal/AFi1vSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFi1zSDK;

    if-eqz p0, :cond_1

    .line 5
    sget v1, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x6d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 6
    iget-object p0, p0, Lcom/appsflyer/internal/AFi1zSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFh1aSDK;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/appsflyer/internal/AFi1zSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFh1aSDK;

    .line 7
    throw v0

    :cond_1
    return-object v0
.end method

.method private final AFAdRevenueData(Lcom/appsflyer/internal/AFh1aSDK;)Z
    .locals 10

    .line 13
    sget v0, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 15
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    const v4, 0x70b8fec8

    const v5, -0x70b8fec6

    invoke-static {v2, v4, v5, v3}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appsflyer/internal/AFc1qSDK;

    const-string v3, "af_send_exc_to_server_window"

    const-wide/16 v4, -0x1

    invoke-interface {v2, v3, v4, v5}, Lcom/appsflyer/internal/AFc1qSDK;->getMonetizationNetwork(Ljava/lang/String;J)J

    move-result-wide v2

    .line 16
    iget-wide v6, p1, Lcom/appsflyer/internal/AFh1aSDK;->getMonetizationNetwork:J

    .line 17
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v8

    cmp-long v6, v6, v8

    const/4 v7, 0x0

    if-gez v6, :cond_0

    return v7

    :cond_0
    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    sget v4, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    add-int/lit8 v4, v4, 0x7b

    rem-int/lit16 v4, v4, 0x80

    sput v4, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    goto :goto_0

    .line 18
    :cond_1
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFd1wSDK;->getMonetizationNetwork(Lcom/appsflyer/internal/AFh1aSDK;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v7
.end method

.method public static synthetic a(Lcom/appsflyer/internal/AFd1wSDK;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/appsflyer/internal/AFd1wSDK;->getRevenue(Lcom/appsflyer/internal/AFd1wSDK;)V

    return-void
.end method

.method private static a(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 17

    if-eqz p0, :cond_0

    .line 2
    sget v0, Lcom/appsflyer/internal/AFd1wSDK;->$10:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1wSDK;->$11:I

    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    :goto_0
    check-cast v0, [C

    .line 4
    new-instance v1, Lcom/appsflyer/internal/AFk1qSDK;

    invoke-direct {v1}, Lcom/appsflyer/internal/AFk1qSDK;-><init>()V

    .line 5
    array-length v2, v0

    new-array v2, v2, [C

    const/4 v3, 0x0

    .line 6
    iput v3, v1, Lcom/appsflyer/internal/AFk1qSDK;->getRevenue:I

    const/4 v4, 0x2

    .line 7
    new-array v5, v4, [C

    .line 8
    :goto_1
    iget v6, v1, Lcom/appsflyer/internal/AFk1qSDK;->getRevenue:I

    array-length v7, v0

    if-ge v6, v7, :cond_2

    .line 9
    aget-char v7, v0, v6

    aput-char v7, v5, v3

    add-int/lit8 v6, v6, 0x1

    .line 10
    aget-char v6, v0, v6

    const/4 v7, 0x1

    aput-char v6, v5, v7

    const v6, 0xe370

    move v8, v3

    :goto_2
    const/16 v9, 0x10

    if-ge v8, v9, :cond_1

    .line 11
    aget-char v9, v5, v7

    aget-char v10, v5, v3

    add-int v11, v10, v6

    shl-int/lit8 v12, v10, 0x4

    sget-char v13, Lcom/appsflyer/internal/AFd1wSDK;->toString:C

    int-to-long v13, v13

    const-wide v15, -0x10a3f40b27dab58cL    # -2.65765482159287E228

    xor-long/2addr v13, v15

    long-to-int v13, v13

    int-to-char v13, v13

    add-int/2addr v12, v13

    xor-int/2addr v11, v12

    ushr-int/lit8 v12, v10, 0x5

    sget-char v13, Lcom/appsflyer/internal/AFd1wSDK;->copy:C

    int-to-long v13, v13

    xor-long/2addr v13, v15

    long-to-int v13, v13

    int-to-char v13, v13

    add-int/2addr v12, v13

    xor-int/2addr v11, v12

    sub-int/2addr v9, v11

    int-to-char v9, v9

    aput-char v9, v5, v7

    add-int v11, v9, v6

    shl-int/lit8 v12, v9, 0x4

    .line 12
    sget-char v13, Lcom/appsflyer/internal/AFd1wSDK;->equals:C

    int-to-long v13, v13

    xor-long/2addr v13, v15

    long-to-int v13, v13

    int-to-char v13, v13

    add-int/2addr v12, v13

    xor-int/2addr v11, v12

    ushr-int/lit8 v9, v9, 0x5

    sget-char v12, Lcom/appsflyer/internal/AFd1wSDK;->hashCode:C

    int-to-long v12, v12

    xor-long/2addr v12, v15

    long-to-int v12, v12

    int-to-char v12, v12

    add-int/2addr v9, v12

    xor-int/2addr v9, v11

    sub-int/2addr v10, v9

    int-to-char v9, v10

    aput-char v9, v5, v3

    const v9, 0x9e37

    sub-int/2addr v6, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 13
    :cond_1
    iget v6, v1, Lcom/appsflyer/internal/AFk1qSDK;->getRevenue:I

    aget-char v8, v5, v3

    aput-char v8, v2, v6

    add-int/lit8 v8, v6, 0x1

    .line 14
    aget-char v7, v5, v7

    aput-char v7, v2, v8

    add-int/2addr v6, v4

    .line 15
    iput v6, v1, Lcom/appsflyer/internal/AFk1qSDK;->getRevenue:I

    goto :goto_1

    .line 16
    :cond_2
    new-instance v0, Ljava/lang/String;

    move/from16 v1, p1

    invoke-direct {v0, v2, v3, v1}, Ljava/lang/String;-><init>([CII)V

    sget v1, Lcom/appsflyer/internal/AFd1wSDK;->$10:I

    add-int/lit8 v1, v1, 0x61

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1wSDK;->$11:I

    rem-int/2addr v1, v4

    if-nez v1, :cond_3

    const/4 v1, 0x2

    div-int/2addr v1, v3

    aput-object v0, p2, v3

    return-void

    :cond_3
    aput-object v0, p2, v3

    return-void
.end method

.method private final areAllFieldsValid()Ljava/util/concurrent/ExecutorService;
    .locals 2

    .line 1
    sget v0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x35

    .line 4
    .line 5
    rem-int/lit16 v0, v0, 0x80

    .line 6
    .line 7
    sput v0, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    .line 8
    .line 9
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1wSDK;->component2:Lms/i;

    .line 10
    .line 11
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/util/concurrent/ExecutorService;

    .line 16
    .line 17
    sget v1, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x77

    .line 20
    .line 21
    rem-int/lit16 v1, v1, 0x80

    .line 22
    .line 23
    sput v1, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    .line 24
    .line 25
    return-object v0
.end method

.method public static synthetic b(Lcom/appsflyer/internal/AFd1wSDK;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/appsflyer/internal/AFd1wSDK;->getMonetizationNetwork(Lcom/appsflyer/internal/AFd1wSDK;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/appsflyer/internal/AFd1wSDK;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork(Lcom/appsflyer/internal/AFd1wSDK;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final component1()Lcom/appsflyer/internal/AFf1eSDK;
    .locals 2

    .line 1
    sget v0, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x6d

    .line 4
    .line 5
    rem-int/lit16 v0, v0, 0x80

    .line 6
    .line 7
    sput v0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    .line 8
    .line 9
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1wSDK;->getCurrencyIso4217Code:Lms/i;

    .line 10
    .line 11
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/appsflyer/internal/AFf1eSDK;

    .line 16
    .line 17
    sget v1, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x75

    .line 20
    .line 21
    rem-int/lit16 v1, v1, 0x80

    .line 22
    .line 23
    sput v1, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    .line 24
    .line 25
    return-object v0
.end method

.method private final component2()Lcom/appsflyer/internal/AFc1qSDK;
    .locals 4

    .line 1
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const v2, 0x70b8fec8

    .line 10
    .line 11
    .line 12
    const v3, -0x70b8fec6

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v2, v3, v1}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/appsflyer/internal/AFc1qSDK;

    .line 20
    .line 21
    return-object v0
.end method

.method private component3()Lcom/appsflyer/internal/AFd1uSDK;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget v0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x4b

    .line 4
    .line 5
    rem-int/lit16 v0, v0, 0x80

    .line 6
    .line 7
    sput v0, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    .line 8
    .line 9
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1wSDK;->areAllFieldsValid:Lms/i;

    .line 10
    .line 11
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/appsflyer/internal/AFd1uSDK;

    .line 16
    .line 17
    sget v1, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x4d

    .line 20
    .line 21
    rem-int/lit16 v2, v1, 0x80

    .line 22
    .line 23
    sput v2, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    .line 24
    .line 25
    rem-int/lit8 v1, v1, 0x2

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    const/16 v1, 0xf

    .line 30
    .line 31
    div-int/lit8 v1, v1, 0x0

    .line 32
    .line 33
    :cond_0
    return-object v0
.end method

.method private final component4()Lcom/appsflyer/internal/AFh1aSDK;
    .locals 4

    .line 1
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const v2, -0x7daf7aac

    .line 10
    .line 11
    .line 12
    const v3, 0x7daf7ab0

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v2, v3, v1}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/appsflyer/internal/AFh1aSDK;

    .line 20
    .line 21
    return-object v0
.end method

.method private final copy()V
    .locals 10

    .line 1
    sget v0, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0xf

    .line 4
    .line 5
    rem-int/lit16 v1, v0, 0x80

    .line 6
    .line 7
    sput v1, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    .line 8
    .line 9
    rem-int/lit8 v0, v0, 0x2

    .line 10
    .line 11
    const v1, 0x7daf7ab0

    .line 12
    .line 13
    .line 14
    const v2, -0x7daf7aac

    .line 15
    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-static {v0, v2, v1, v3}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/appsflyer/internal/AFh1aSDK;

    .line 32
    .line 33
    const/16 v1, 0x21

    .line 34
    .line 35
    div-int/lit8 v1, v1, 0x0

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    invoke-static {v0, v2, v1, v3}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/appsflyer/internal/AFh1aSDK;

    .line 53
    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    :goto_0
    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork(Lcom/appsflyer/internal/AFh1aSDK;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    sget v1, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    .line 63
    .line 64
    add-int/lit8 v1, v1, 0x79

    .line 65
    .line 66
    rem-int/lit16 v1, v1, 0x80

    .line 67
    .line 68
    sput v1, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    .line 69
    .line 70
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1wSDK;->component1()Lcom/appsflyer/internal/AFf1eSDK;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Lcom/appsflyer/internal/AFf1eSDK;->getMediationNetwork()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    if-eqz v1, :cond_1

    .line 79
    .line 80
    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFd1wSDK;->getRevenue(Lcom/appsflyer/internal/AFh1aSDK;)Ljava/util/Map;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1wSDK;->getRevenue()Lcom/appsflyer/internal/AFc1cSDK;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-interface {v2}, Lcom/appsflyer/internal/AFc1cSDK;->getRevenue()Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-static {v0, v2}, Lcom/appsflyer/internal/AFd1wSDK;->getMonetizationNetwork(Ljava/util/Map;Ljava/util/List;)Ljava/util/Map;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    new-instance v2, Lorg/json/JSONObject;

    .line 97
    .line 98
    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const-string v2, ""

    .line 106
    .line 107
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    filled-new-array {p0, v0, v1}, [Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    const v2, -0x6ead2fa8

    .line 122
    .line 123
    .line 124
    const v3, 0x6ead2fa9

    .line 125
    .line 126
    .line 127
    invoke-static {v0, v2, v3, v1}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    :cond_1
    return-void

    .line 131
    :cond_2
    sget-object v4, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 132
    .line 133
    sget-object v5, Lcom/appsflyer/internal/AFg1cSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFg1cSDK;

    .line 134
    .line 135
    const/4 v8, 0x4

    .line 136
    const/4 v9, 0x0

    .line 137
    const-string v6, "skipping"

    .line 138
    .line 139
    const/4 v7, 0x0

    .line 140
    invoke-static/range {v4 .. v9}, Lcom/appsflyer/internal/AFh1ySDK;->v$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :cond_3
    sget v0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    .line 145
    .line 146
    add-int/lit8 v0, v0, 0x3

    .line 147
    .line 148
    rem-int/lit16 v1, v0, 0x80

    .line 149
    .line 150
    sput v1, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    .line 151
    .line 152
    rem-int/lit8 v0, v0, 0x2

    .line 153
    .line 154
    if-eqz v0, :cond_4

    .line 155
    .line 156
    const/16 v0, 0x12

    .line 157
    .line 158
    div-int/lit8 v0, v0, 0x0

    .line 159
    .line 160
    :cond_4
    return-void
.end method

.method private final declared-synchronized copydefault()V
    .locals 13

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget v0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, 0xd

    .line 5
    .line 6
    rem-int/lit16 v0, v0, 0x80

    .line 7
    .line 8
    sput v0, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    .line 9
    .line 10
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const v2, -0x7daf7aac

    .line 19
    .line 20
    .line 21
    const v3, 0x7daf7ab0

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v2, v3, v1}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/appsflyer/internal/AFh1aSDK;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-wide v0, v0, Lcom/appsflyer/internal/AFh1aSDK;->getMonetizationNetwork:J

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    goto/16 :goto_b

    .line 37
    .line 38
    :cond_0
    const-wide/16 v0, -0x1

    .line 39
    .line 40
    :goto_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 41
    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 43
    .line 44
    .line 45
    move-result-wide v5

    .line 46
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 47
    .line 48
    .line 49
    move-result-wide v4

    .line 50
    cmp-long v0, v0, v4

    .line 51
    .line 52
    const v1, -0x70b8fec6

    .line 53
    .line 54
    .line 55
    const v4, 0x70b8fec8

    .line 56
    .line 57
    .line 58
    if-gez v0, :cond_1

    .line 59
    .line 60
    sget-object v5, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 61
    .line 62
    sget-object v6, Lcom/appsflyer/internal/AFg1cSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFg1cSDK;

    .line 63
    .line 64
    const-string v7, "TTL is already passed"

    .line 65
    .line 66
    const/4 v9, 0x4

    .line 67
    const/4 v10, 0x0

    .line 68
    const/4 v8, 0x0

    .line 69
    invoke-static/range {v5 .. v10}, Lcom/appsflyer/internal/AFh1ySDK;->v$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    invoke-static {v0, v4, v1, v2}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Lcom/appsflyer/internal/AFc1qSDK;

    .line 85
    .line 86
    const-string v1, "af_send_exc_to_server_window"

    .line 87
    .line 88
    invoke-interface {v0, v1}, Lcom/appsflyer/internal/AFc1qSDK;->AFAdRevenueData(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1wSDK;->getRevenue()Lcom/appsflyer/internal/AFc1cSDK;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1cSDK;->getCurrencyIso4217Code()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .line 97
    .line 98
    monitor-exit p0

    .line 99
    return-void

    .line 100
    :cond_1
    :try_start_1
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    invoke-static {v0, v2, v3, v5}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Lcom/appsflyer/internal/AFh1aSDK;

    .line 113
    .line 114
    const/4 v5, 0x0

    .line 115
    if-eqz v0, :cond_10

    .line 116
    .line 117
    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFd1wSDK;->getMonetizationNetwork(Lcom/appsflyer/internal/AFh1aSDK;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    const/4 v6, 0x1

    .line 122
    if-ne v0, v6, :cond_10

    .line 123
    .line 124
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 129
    .line 130
    .line 131
    move-result v7

    .line 132
    invoke-static {v0, v2, v3, v7}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Lcom/appsflyer/internal/AFh1aSDK;

    .line 137
    .line 138
    const/4 v7, -0x1

    .line 139
    const/4 v8, 0x2

    .line 140
    const/4 v9, 0x0

    .line 141
    if-eqz v0, :cond_7

    .line 142
    .line 143
    iget-object v0, v0, Lcom/appsflyer/internal/AFh1aSDK;->getRevenue:Ljava/lang/String;

    .line 144
    .line 145
    if-eqz v0, :cond_7

    .line 146
    .line 147
    const-string v10, ""

    .line 148
    .line 149
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    new-instance v10, Lkotlin/text/Regex;

    .line 153
    .line 154
    const-string v11, "(\\d+).(\\d+).(\\d+).*"

    .line 155
    .line 156
    invoke-direct {v10, v11}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v10, v0}, Lkotlin/text/Regex;->j(Ljava/lang/CharSequence;)Lkotlin/text/MatchResult;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    if-eqz v0, :cond_6

    .line 164
    .line 165
    invoke-interface {v0}, Lkotlin/text/MatchResult;->b()Lkotlin/text/g;

    .line 166
    .line 167
    .line 168
    move-result-object v10

    .line 169
    invoke-interface {v10, v6}, Lkotlin/text/g;->get(I)Lkotlin/text/MatchGroup;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    if-eqz v6, :cond_2

    .line 174
    .line 175
    invoke-virtual {v6}, Lkotlin/text/MatchGroup;->a()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    if-eqz v6, :cond_2

    .line 180
    .line 181
    sget v10, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    .line 182
    .line 183
    add-int/lit8 v10, v10, 0x6d

    .line 184
    .line 185
    rem-int/lit16 v10, v10, 0x80

    .line 186
    .line 187
    sput v10, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    .line 188
    .line 189
    invoke-static {v6}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 190
    .line 191
    .line 192
    move-result-object v6

    .line 193
    if-eqz v6, :cond_2

    .line 194
    .line 195
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 196
    .line 197
    .line 198
    move-result v6

    .line 199
    goto :goto_1

    .line 200
    :cond_2
    move v6, v5

    .line 201
    :goto_1
    const v10, 0xf4240

    .line 202
    .line 203
    .line 204
    mul-int/2addr v6, v10

    .line 205
    invoke-interface {v0}, Lkotlin/text/MatchResult;->b()Lkotlin/text/g;

    .line 206
    .line 207
    .line 208
    move-result-object v10

    .line 209
    invoke-interface {v10, v8}, Lkotlin/text/g;->get(I)Lkotlin/text/MatchGroup;

    .line 210
    .line 211
    .line 212
    move-result-object v10

    .line 213
    if-eqz v10, :cond_4

    .line 214
    .line 215
    invoke-virtual {v10}, Lkotlin/text/MatchGroup;->a()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v10

    .line 219
    if-eqz v10, :cond_4

    .line 220
    .line 221
    invoke-static {v10}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 222
    .line 223
    .line 224
    move-result-object v10

    .line 225
    if-eqz v10, :cond_4

    .line 226
    .line 227
    sget v11, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    .line 228
    .line 229
    add-int/lit8 v11, v11, 0x7b

    .line 230
    .line 231
    rem-int/lit16 v12, v11, 0x80

    .line 232
    .line 233
    sput v12, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    .line 234
    .line 235
    rem-int/2addr v11, v8

    .line 236
    if-eqz v11, :cond_3

    .line 237
    .line 238
    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    .line 239
    .line 240
    .line 241
    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    goto :goto_2

    .line 243
    :cond_3
    :try_start_2
    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 244
    :catchall_1
    move-exception v0

    .line 245
    :try_start_3
    throw v0

    .line 246
    :cond_4
    move v10, v5

    .line 247
    :goto_2
    mul-int/lit16 v10, v10, 0x3e8

    .line 248
    .line 249
    add-int/2addr v6, v10

    .line 250
    invoke-interface {v0}, Lkotlin/text/MatchResult;->b()Lkotlin/text/g;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    const/4 v10, 0x3

    .line 255
    invoke-interface {v0, v10}, Lkotlin/text/g;->get(I)Lkotlin/text/MatchGroup;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    if-eqz v0, :cond_5

    .line 260
    .line 261
    invoke-virtual {v0}, Lkotlin/text/MatchGroup;->a()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    if-eqz v0, :cond_5

    .line 266
    .line 267
    invoke-static {v0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    if-eqz v0, :cond_5

    .line 272
    .line 273
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    goto :goto_3

    .line 278
    :cond_5
    move v0, v5

    .line 279
    :goto_3
    add-int/2addr v6, v0

    .line 280
    goto :goto_4

    .line 281
    :cond_6
    move v6, v7

    .line 282
    :goto_4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    goto :goto_5

    .line 287
    :cond_7
    move-object v0, v9

    .line 288
    :goto_5
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v6

    .line 292
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 293
    .line 294
    .line 295
    move-result v10

    .line 296
    invoke-static {v6, v2, v3, v10}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v6

    .line 300
    check-cast v6, Lcom/appsflyer/internal/AFh1aSDK;

    .line 301
    .line 302
    if-eqz v6, :cond_9

    .line 303
    .line 304
    sget v10, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    .line 305
    .line 306
    add-int/lit8 v10, v10, 0xf

    .line 307
    .line 308
    rem-int/lit16 v11, v10, 0x80

    .line 309
    .line 310
    sput v11, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    .line 311
    .line 312
    rem-int/2addr v10, v8

    .line 313
    if-nez v10, :cond_8

    .line 314
    .line 315
    iget-object v6, v6, Lcom/appsflyer/internal/AFh1aSDK;->getRevenue:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 316
    .line 317
    const/16 v10, 0x1d

    .line 318
    .line 319
    :try_start_4
    div-int/2addr v10, v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 320
    if-eqz v6, :cond_9

    .line 321
    .line 322
    goto :goto_6

    .line 323
    :catchall_2
    move-exception v0

    .line 324
    :try_start_5
    throw v0

    .line 325
    :cond_8
    iget-object v6, v6, Lcom/appsflyer/internal/AFh1aSDK;->getRevenue:Ljava/lang/String;

    .line 326
    .line 327
    if-eqz v6, :cond_9

    .line 328
    .line 329
    :goto_6
    invoke-static {v6}, Lcom/appsflyer/internal/AFd1rSDK;->getMonetizationNetwork(Ljava/lang/String;)Lkotlin/Pair;

    .line 330
    .line 331
    .line 332
    move-result-object v6

    .line 333
    goto :goto_7

    .line 334
    :cond_9
    move-object v6, v9

    .line 335
    :goto_7
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v10

    .line 339
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 340
    .line 341
    .line 342
    move-result v11

    .line 343
    invoke-static {v10, v2, v3, v11}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v10

    .line 347
    check-cast v10, Lcom/appsflyer/internal/AFh1aSDK;

    .line 348
    .line 349
    if-eqz v10, :cond_b

    .line 350
    .line 351
    iget-object v10, v10, Lcom/appsflyer/internal/AFh1aSDK;->getRevenue:Ljava/lang/String;

    .line 352
    .line 353
    if-eqz v10, :cond_b

    .line 354
    .line 355
    sget v11, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    .line 356
    .line 357
    add-int/lit8 v11, v11, 0x63

    .line 358
    .line 359
    rem-int/lit16 v12, v11, 0x80

    .line 360
    .line 361
    sput v12, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    .line 362
    .line 363
    rem-int/2addr v11, v8

    .line 364
    if-nez v11, :cond_a

    .line 365
    .line 366
    invoke-static {v10}, Lcom/appsflyer/internal/AFd1rSDK;->AFAdRevenueData(Ljava/lang/String;)Lkotlin/Pair;

    .line 367
    .line 368
    .line 369
    move-result-object v9

    .line 370
    goto :goto_8

    .line 371
    :cond_a
    invoke-static {v10}, Lcom/appsflyer/internal/AFd1rSDK;->AFAdRevenueData(Ljava/lang/String;)Lkotlin/Pair;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 372
    .line 373
    .line 374
    :try_start_6
    throw v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 375
    :catchall_3
    move-exception v0

    .line 376
    :try_start_7
    throw v0

    .line 377
    :cond_b
    :goto_8
    if-nez v0, :cond_c

    .line 378
    .line 379
    goto :goto_9

    .line 380
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 381
    .line 382
    .line 383
    move-result v0

    .line 384
    if-eq v0, v7, :cond_d

    .line 385
    .line 386
    :goto_9
    if-nez v6, :cond_d

    .line 387
    .line 388
    sget v0, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    .line 389
    .line 390
    add-int/lit8 v0, v0, 0x3b

    .line 391
    .line 392
    rem-int/lit16 v0, v0, 0x80

    .line 393
    .line 394
    sput v0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    .line 395
    .line 396
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1wSDK;->getRevenue()Lcom/appsflyer/internal/AFc1cSDK;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    iget-object v1, p0, Lcom/appsflyer/internal/AFd1wSDK;->component4:Ljava/lang/String;

    .line 401
    .line 402
    filled-new-array {v1}, [Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    invoke-interface {v0, v1}, Lcom/appsflyer/internal/AFc1cSDK;->getMonetizationNetwork([Ljava/lang/String;)Z

    .line 407
    .line 408
    .line 409
    goto :goto_a

    .line 410
    :cond_d
    if-eqz v6, :cond_e

    .line 411
    .line 412
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1wSDK;->getRevenue()Lcom/appsflyer/internal/AFc1cSDK;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    invoke-virtual {v6}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object v1

    .line 420
    check-cast v1, Ljava/lang/Number;

    .line 421
    .line 422
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 423
    .line 424
    .line 425
    move-result v1

    .line 426
    invoke-virtual {v6}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v4

    .line 430
    check-cast v4, Ljava/lang/Number;

    .line 431
    .line 432
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 433
    .line 434
    .line 435
    move-result v4

    .line 436
    invoke-interface {v0, v1, v4}, Lcom/appsflyer/internal/AFc1cSDK;->getCurrencyIso4217Code(II)V

    .line 437
    .line 438
    .line 439
    goto :goto_a

    .line 440
    :cond_e
    if-eqz v9, :cond_f

    .line 441
    .line 442
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1wSDK;->getRevenue()Lcom/appsflyer/internal/AFc1cSDK;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    invoke-virtual {v9}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v1

    .line 450
    check-cast v1, Ljava/lang/Number;

    .line 451
    .line 452
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 453
    .line 454
    .line 455
    move-result v1

    .line 456
    invoke-virtual {v9}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v4

    .line 460
    check-cast v4, Ljava/lang/Number;

    .line 461
    .line 462
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 463
    .line 464
    .line 465
    move-result v4

    .line 466
    invoke-interface {v0, v1, v4}, Lcom/appsflyer/internal/AFc1cSDK;->getCurrencyIso4217Code(II)V

    .line 467
    .line 468
    .line 469
    goto :goto_a

    .line 470
    :cond_f
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 475
    .line 476
    .line 477
    move-result v6

    .line 478
    invoke-static {v0, v4, v1, v6}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    check-cast v0, Lcom/appsflyer/internal/AFc1qSDK;

    .line 483
    .line 484
    const-string v1, "af_send_exc_to_server_window"

    .line 485
    .line 486
    invoke-interface {v0, v1}, Lcom/appsflyer/internal/AFc1qSDK;->AFAdRevenueData(Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1wSDK;->getRevenue()Lcom/appsflyer/internal/AFc1cSDK;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1cSDK;->getCurrencyIso4217Code()Z

    .line 494
    .line 495
    .line 496
    goto :goto_a

    .line 497
    :cond_10
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 502
    .line 503
    .line 504
    move-result v6

    .line 505
    invoke-static {v0, v4, v1, v6}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v0

    .line 509
    check-cast v0, Lcom/appsflyer/internal/AFc1qSDK;

    .line 510
    .line 511
    const-string v1, "af_send_exc_to_server_window"

    .line 512
    .line 513
    invoke-interface {v0, v1}, Lcom/appsflyer/internal/AFc1qSDK;->AFAdRevenueData(Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1wSDK;->getRevenue()Lcom/appsflyer/internal/AFc1cSDK;

    .line 517
    .line 518
    .line 519
    move-result-object v0

    .line 520
    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1cSDK;->getCurrencyIso4217Code()Z

    .line 521
    .line 522
    .line 523
    :goto_a
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1wSDK;->component1:Lcom/appsflyer/internal/AFd1xSDK$AFa1vSDK;

    .line 524
    .line 525
    if-eqz v0, :cond_12

    .line 526
    .line 527
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    move-result-object v1

    .line 531
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 532
    .line 533
    .line 534
    move-result v4

    .line 535
    invoke-static {v1, v2, v3, v4}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 536
    .line 537
    .line 538
    move-result-object v1

    .line 539
    check-cast v1, Lcom/appsflyer/internal/AFh1aSDK;

    .line 540
    .line 541
    if-eqz v1, :cond_11

    .line 542
    .line 543
    invoke-direct {p0, v1}, Lcom/appsflyer/internal/AFd1wSDK;->AFAdRevenueData(Lcom/appsflyer/internal/AFh1aSDK;)Z

    .line 544
    .line 545
    .line 546
    move-result v5

    .line 547
    :cond_11
    invoke-interface {v0, v5}, Lcom/appsflyer/internal/AFd1xSDK$AFa1vSDK;->onConfigurationChanged(Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 548
    .line 549
    .line 550
    monitor-exit p0

    .line 551
    return-void

    .line 552
    :cond_12
    monitor-exit p0

    .line 553
    return-void

    .line 554
    :goto_b
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 555
    throw v0
.end method

.method public static synthetic d(Lcom/appsflyer/internal/AFd1wSDK;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/appsflyer/internal/AFd1wSDK;->getCurrencyIso4217Code(Lcom/appsflyer/internal/AFd1wSDK;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final declared-synchronized equals()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget v0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, 0x77

    .line 5
    .line 6
    rem-int/lit16 v0, v0, 0x80

    .line 7
    .line 8
    sput v0, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    .line 9
    .line 10
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const v2, -0x7daf7aac

    .line 19
    .line 20
    .line 21
    const v3, 0x7daf7ab0

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v2, v3, v1}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/appsflyer/internal/AFh1aSDK;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    iget v1, v0, Lcom/appsflyer/internal/AFh1aSDK;->getMediationNetwork:I

    .line 33
    .line 34
    const/4 v2, -0x1

    .line 35
    const v3, -0x70b8fec6

    .line 36
    .line 37
    .line 38
    const v4, 0x70b8fec8

    .line 39
    .line 40
    .line 41
    if-ne v1, v2, :cond_0

    .line 42
    .line 43
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-static {v1, v4, v3, v2}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Lcom/appsflyer/internal/AFc1qSDK;

    .line 56
    .line 57
    const-string v2, "af_send_exc_to_server_window"

    .line 58
    .line 59
    invoke-interface {v1, v2}, Lcom/appsflyer/internal/AFc1qSDK;->AFAdRevenueData(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    goto :goto_2

    .line 65
    :cond_0
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    invoke-static {v1, v4, v3, v2}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Lcom/appsflyer/internal/AFc1qSDK;

    .line 78
    .line 79
    const-string v2, "af_send_exc_to_server_window"

    .line 80
    .line 81
    const-wide/16 v3, -0x1

    .line 82
    .line 83
    invoke-interface {v1, v2, v3, v4}, Lcom/appsflyer/internal/AFc1qSDK;->getMonetizationNetwork(Ljava/lang/String;J)J

    .line 84
    .line 85
    .line 86
    move-result-wide v1

    .line 87
    cmp-long v1, v1, v3

    .line 88
    .line 89
    if-nez v1, :cond_1

    .line 90
    .line 91
    sget v1, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    .line 92
    .line 93
    add-int/lit8 v1, v1, 0x15

    .line 94
    .line 95
    rem-int/lit16 v1, v1, 0x80

    .line 96
    .line 97
    sput v1, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    .line 98
    .line 99
    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFd1wSDK;->getCurrencyIso4217Code(Lcom/appsflyer/internal/AFh1aSDK;)V

    .line 100
    .line 101
    .line 102
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFd1wSDK;->AFAdRevenueData(Lcom/appsflyer/internal/AFh1aSDK;)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    goto :goto_1

    .line 107
    :cond_2
    const/4 v0, 0x0

    .line 108
    :goto_1
    iget-object v1, p0, Lcom/appsflyer/internal/AFd1wSDK;->component1:Lcom/appsflyer/internal/AFd1xSDK$AFa1vSDK;

    .line 109
    .line 110
    if-eqz v1, :cond_4

    .line 111
    .line 112
    invoke-interface {v1, v0}, Lcom/appsflyer/internal/AFd1xSDK$AFa1vSDK;->onConfigurationChanged(Z)V

    .line 113
    .line 114
    .line 115
    sget v0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    .line 116
    .line 117
    add-int/lit8 v0, v0, 0x6f

    .line 118
    .line 119
    rem-int/lit16 v1, v0, 0x80

    .line 120
    .line 121
    sput v1, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    .line 122
    .line 123
    rem-int/lit8 v0, v0, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .line 125
    if-nez v0, :cond_3

    .line 126
    .line 127
    monitor-exit p0

    .line 128
    return-void

    .line 129
    :cond_3
    const/4 v0, 0x0

    .line 130
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 131
    :catchall_1
    move-exception v0

    .line 132
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    :cond_4
    monitor-exit p0

    .line 134
    return-void

    .line 135
    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 136
    throw v0
.end method

.method public static final synthetic getCurrencyIso4217Code(Lcom/appsflyer/internal/AFd1wSDK;)Lcom/appsflyer/internal/AFd1zSDK;
    .locals 2

    .line 1
    sget v0, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    rem-int/lit8 v0, v0, 0x2

    iget-object p0, p0, Lcom/appsflyer/internal/AFd1wSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFd1zSDK;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private final getCurrencyIso4217Code()Lcom/appsflyer/internal/AFf1kSDK;
    .locals 3

    .line 2
    sget v0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    iget-object v0, p0, Lcom/appsflyer/internal/AFd1wSDK;->getRevenue:Lms/i;

    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFf1kSDK;

    sget v1, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method private static synthetic getCurrencyIso4217Code([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    aget-object v1, p0, v0

    check-cast v1, Lcom/appsflyer/internal/AFd1wSDK;

    const/4 v2, 0x1

    aget-object v2, p0, v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x2

    aget-object p0, p0, v3

    check-cast p0, Ljava/lang/String;

    .line 17
    sget v4, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    add-int/lit8 v4, v4, 0x3d

    rem-int/lit16 v4, v4, 0x80

    sput v4, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    .line 18
    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-static {v2, p0}, Lcom/appsflyer/internal/AFj1dSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 20
    const-string v2, "Authorization"

    invoke-static {v2, p0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/p0;->f(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    .line 21
    invoke-direct {v1}, Lcom/appsflyer/internal/AFd1wSDK;->component3()Lcom/appsflyer/internal/AFd1uSDK;

    move-result-object v1

    const/16 v2, 0x7d0

    .line 22
    invoke-interface {v1, v4, p0, v2}, Lcom/appsflyer/internal/AFd1uSDK;->getMonetizationNetwork([BLjava/util/Map;I)V

    .line 23
    sget p0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    add-int/lit8 p0, p0, 0x45

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    rem-int/2addr p0, v3

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/16 p0, 0x24

    div-int/2addr p0, v0

    :cond_0
    return-object v1
.end method

.method private static final getCurrencyIso4217Code(Lcom/appsflyer/internal/AFd1wSDK;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 4

    const-string v0, ""

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const v2, -0x7daf7aac

    const v3, 0x7daf7ab0

    invoke-static {v0, v2, v3, v1}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFh1aSDK;

    if-eqz v0, :cond_2

    .line 4
    sget v1, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    add-int/lit8 v1, v1, 0x63

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFd1wSDK;->AFAdRevenueData(Lcom/appsflyer/internal/AFh1aSDK;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFd1wSDK;->AFAdRevenueData(Lcom/appsflyer/internal/AFh1aSDK;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 6
    :goto_0
    sget v0, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    .line 7
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1wSDK;->getRevenue()Lcom/appsflyer/internal/AFc1cSDK;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/appsflyer/internal/AFc1cSDK;->AFAdRevenueData(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 8
    :cond_1
    sget p0, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    add-int/lit8 p0, p0, 0x31

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    :cond_2
    :goto_1
    return-void
.end method

.method private final getCurrencyIso4217Code(Lcom/appsflyer/internal/AFh1aSDK;)V
    .locals 6

    .line 9
    sget v0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    .line 10
    iget v0, p1, Lcom/appsflyer/internal/AFh1aSDK;->getCurrencyIso4217Code:I

    .line 11
    iget p1, p1, Lcom/appsflyer/internal/AFh1aSDK;->getMediationNetwork:I

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, p1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 13
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    const v4, 0x70b8fec8

    const v5, -0x70b8fec6

    invoke-static {p1, v4, v5, v3}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/AFc1qSDK;

    .line 14
    const-string v3, "af_send_exc_to_server_window"

    invoke-interface {p1, v3, v1, v2}, Lcom/appsflyer/internal/AFc1qSDK;->AFAdRevenueData(Ljava/lang/String;J)V

    .line 15
    const-string v1, "af_send_exc_min"

    invoke-interface {p1, v1, v0}, Lcom/appsflyer/internal/AFc1qSDK;->getMediationNetwork(Ljava/lang/String;I)V

    .line 16
    sget p1, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    add-int/lit8 p1, p1, 0x11

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private final getMediationNetwork()Lcom/appsflyer/internal/AFc1oSDK;
    .locals 2

    .line 2
    sget v0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    iget-object v0, p0, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork:Lms/i;

    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFc1oSDK;

    sget v1, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x15

    rem-int/lit16 v1, v1, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    return-object v0
.end method

.method private static synthetic getMediationNetwork([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    aget-object v0, p0, v0

    check-cast v0, Lcom/appsflyer/internal/AFd1wSDK;

    const/4 v1, 0x1

    aget-object v1, p0, v1

    check-cast v1, Ljava/lang/Throwable;

    const/4 v2, 0x2

    aget-object p0, p0, v2

    check-cast p0, Ljava/lang/String;

    .line 3
    sget v3, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    add-int/lit8 v3, v3, 0x31

    rem-int/lit16 v3, v3, 0x80

    sput v3, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    .line 4
    const-string v3, ""

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {v0}, Lcom/appsflyer/internal/AFd1wSDK;->areAllFieldsValid()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    new-instance v4, Lcom/appsflyer/internal/t;

    invoke-direct {v4, v0, v1, p0}, Lcom/appsflyer/internal/t;-><init>(Lcom/appsflyer/internal/AFd1wSDK;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 6
    sget p0, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    add-int/lit8 p0, p0, 0x29

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    rem-int/2addr p0, v2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    throw v0
.end method

.method public static synthetic getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;
    .locals 4

    mul-int/lit16 v0, p1, 0xdd

    mul-int/lit16 v1, p2, -0xdb

    add-int/2addr v0, v1

    not-int v1, p1

    not-int v2, p2

    or-int/2addr v1, v2

    not-int v1, v1

    not-int v2, p3

    or-int v3, v2, p1

    or-int/2addr v3, p2

    not-int v3, v3

    or-int/2addr v1, v3

    mul-int/lit16 v1, v1, 0xdc

    add-int/2addr v0, v1

    or-int v1, v2, p2

    not-int v1, v1

    or-int/2addr v1, p1

    mul-int/lit16 v1, v1, -0x1b8

    add-int/2addr v0, v1

    or-int/2addr p1, p2

    or-int/2addr p1, p3

    mul-int/lit16 p1, p1, 0xdc

    add-int/2addr v0, p1

    const/4 p1, 0x1

    if-eq v0, p1, :cond_3

    const/4 p1, 0x2

    if-eq v0, p1, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    .line 1
    invoke-static {p0}, Lcom/appsflyer/internal/AFd1wSDK;->getMonetizationNetwork([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/appsflyer/internal/AFd1wSDK;->AFAdRevenueData([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/appsflyer/internal/AFd1wSDK;->getRevenue([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/appsflyer/internal/AFd1wSDK;->getCurrencyIso4217Code([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static final getMediationNetwork(Lcom/appsflyer/internal/AFd1wSDK;)V
    .locals 1

    .line 7
    sget v0, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    .line 8
    const-string v0, ""

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1wSDK;->copy()V

    .line 10
    sget p0, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    add-int/lit8 p0, p0, 0x2d

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    return-void
.end method

.method private final getMediationNetwork(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 25
    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    const v0, -0x6ead2fa8

    const v1, 0x6ead2fa9

    invoke-static {p1, v0, v1, p2}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    return-void
.end method

.method private final getMediationNetwork(Lcom/appsflyer/internal/AFh1aSDK;)Z
    .locals 13

    .line 11
    sget v0, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    rem-int/lit8 v0, v0, 0x2

    const-string v1, "af_send_exc_to_server_window"

    const-wide/16 v2, -0x1

    const v4, -0x70b8fec6

    const v5, 0x70b8fec8

    const/4 v6, 0x0

    if-nez v0, :cond_0

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 13
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v0, v5, v4, v9}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFc1qSDK;

    invoke-interface {v0, v1, v2, v3}, Lcom/appsflyer/internal/AFc1qSDK;->getMonetizationNetwork(Ljava/lang/String;J)J

    move-result-wide v0

    .line 14
    iget-wide v9, p1, Lcom/appsflyer/internal/AFh1aSDK;->getMonetizationNetwork:J

    .line 15
    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11, v7, v8}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v11

    cmp-long v9, v9, v11

    const/16 v10, 0x9

    div-int/2addr v10, v6

    if-gez v9, :cond_1

    goto :goto_0

    .line 16
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 17
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v0, v5, v4, v9}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFc1qSDK;

    invoke-interface {v0, v1, v2, v3}, Lcom/appsflyer/internal/AFc1qSDK;->getMonetizationNetwork(Ljava/lang/String;J)J

    move-result-wide v0

    .line 18
    iget-wide v9, p1, Lcom/appsflyer/internal/AFh1aSDK;->getMonetizationNetwork:J

    .line 19
    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11, v7, v8}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-gez v9, :cond_1

    :goto_0
    return v6

    :cond_1
    cmp-long v2, v0, v2

    if-eqz v2, :cond_6

    cmp-long v0, v0, v7

    if-gez v0, :cond_2

    goto :goto_2

    .line 20
    :cond_2
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v5, v4, v1}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFc1qSDK;

    const-string v1, "af_send_exc_min"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/appsflyer/internal/AFc1qSDK;->getRevenue(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_5

    .line 21
    sget v1, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x1f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1wSDK;->getRevenue()Lcom/appsflyer/internal/AFc1cSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1cSDK;->getMediationNetwork()I

    move-result v1

    const/16 v2, 0x5f

    div-int/2addr v2, v6

    if-ge v1, v0, :cond_4

    goto :goto_1

    .line 22
    :cond_3
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1wSDK;->getRevenue()Lcom/appsflyer/internal/AFc1cSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1cSDK;->getMediationNetwork()I

    move-result v1

    if-ge v1, v0, :cond_4

    goto :goto_1

    .line 23
    :cond_4
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFd1wSDK;->getMonetizationNetwork(Lcom/appsflyer/internal/AFh1aSDK;)Z

    move-result p1

    return p1

    :cond_5
    :goto_1
    return v6

    .line 24
    :cond_6
    :goto_2
    sget p1, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    add-int/lit8 p1, p1, 0x3f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_7

    return v6

    :cond_7
    const/4 p1, 0x0

    throw p1
.end method

.method private static synthetic getMonetizationNetwork([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    aget-object p0, p0, v0

    check-cast p0, Lcom/appsflyer/internal/AFd1wSDK;

    .line 13
    sget v1, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x4d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 14
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1wSDK;->areAllFieldsValid()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/appsflyer/internal/v;

    invoke-direct {v2, p0}, Lcom/appsflyer/internal/v;-><init>(Lcom/appsflyer/internal/AFd1wSDK;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/16 p0, 0x45

    .line 15
    div-int/2addr p0, v0

    goto :goto_0

    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1wSDK;->areAllFieldsValid()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/appsflyer/internal/v;

    invoke-direct {v1, p0}, Lcom/appsflyer/internal/v;-><init>(Lcom/appsflyer/internal/AFd1wSDK;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getMonetizationNetwork(Ljava/util/Map;Ljava/util/List;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Lcom/appsflyer/internal/AFc1aSDK;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 17
    sget v0, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    const-string v0, "deviceInfo"

    invoke-static {v0, p0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    const-string v0, "excs"

    invoke-static {p1}, Lcom/appsflyer/internal/AFd1qSDK;->getMediationNetwork(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {v0, p1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    filled-new-array {p0, p1}, [Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/p0;->m([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    sget p1, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    add-int/lit8 p1, p1, 0xf

    rem-int/lit16 p1, p1, 0x80

    sput p1, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    return-object p0
.end method

.method private static final getMonetizationNetwork(Lcom/appsflyer/internal/AFd1wSDK;)V
    .locals 2

    .line 1
    sget v0, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    rem-int/lit8 v0, v0, 0x2

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1wSDK;->copydefault()V

    return-void

    .line 4
    :cond_0
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1wSDK;->copydefault()V

    const/4 p0, 0x0

    .line 6
    throw p0
.end method

.method private final getMonetizationNetwork(Lcom/appsflyer/internal/AFh1aSDK;)Z
    .locals 2

    .line 18
    new-instance v0, Lcom/appsflyer/internal/AFd1pSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFd1pSDK;-><init>()V

    iget-object v0, p0, Lcom/appsflyer/internal/AFd1wSDK;->component4:Ljava/lang/String;

    .line 19
    iget-object p1, p1, Lcom/appsflyer/internal/AFh1aSDK;->getRevenue:Ljava/lang/String;

    .line 20
    const-string v1, ""

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/appsflyer/internal/AFd1pSDK;->getCurrencyIso4217Code(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    sget v0, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x4f

    div-int/lit8 v0, v0, 0x0

    :cond_0
    return p1
.end method

.method private static synthetic getRevenue([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    aget-object p0, p0, v0

    check-cast p0, Lcom/appsflyer/internal/AFd1wSDK;

    .line 1
    sget v1, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    add-int/lit8 v1, v1, 0x19

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    rem-int/lit8 v1, v1, 0x2

    iget-object p0, p0, Lcom/appsflyer/internal/AFd1wSDK;->getMonetizationNetwork:Lms/i;

    invoke-interface {p0}, Lms/i;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFc1qSDK;

    if-nez v1, :cond_0

    const/16 v1, 0x3c

    div-int/2addr v1, v0

    :cond_0
    sget v0, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    return-object p0
.end method

.method private final getRevenue(Lcom/appsflyer/internal/AFh1aSDK;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFh1aSDK;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 9
    invoke-static {v0, v0}, Landroid/graphics/PointF;->length(FF)F

    move-result v1

    cmpl-float v0, v1, v0

    add-int/lit8 v0, v0, 0x5

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "\u709c\u686a\uaab4\u9405\u2816\u1c2b"

    invoke-static {v2, v0, v1}, Lcom/appsflyer/internal/AFd1wSDK;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    const/4 v0, 0x0

    aget-object v0, v1, v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v0, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 10
    const-string v0, "model"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    .line 11
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork()Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object v0

    .line 12
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1oSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFc1hSDK;

    .line 13
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1hSDK;->getMonetizationNetwork:Landroid/content/Context;

    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 15
    const-string v1, "app_id"

    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 16
    new-instance v0, Lcom/appsflyer/internal/AFa1uSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFa1uSDK;-><init>()V

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFa1uSDK;->AFAdRevenueData()Ljava/lang/String;

    move-result-object v0

    const-string v1, "p_ex"

    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "api"

    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    .line 18
    const-string v0, "sdk"

    iget-object v1, p0, Lcom/appsflyer/internal/AFd1wSDK;->component4:Ljava/lang/String;

    invoke-static {v0, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    .line 19
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork()Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object v0

    .line 20
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1oSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1qSDK;

    invoke-static {v0}, Lcom/appsflyer/internal/AFb1kSDK;->getCurrencyIso4217Code(Lcom/appsflyer/internal/AFc1qSDK;)Ljava/lang/String;

    move-result-object v0

    .line 21
    const-string/jumbo v1, "uid"

    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    .line 22
    const-string v0, "exc_config"

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFh1aSDK;->AFAdRevenueData()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    filled-new-array/range {v2 .. v9}, [Lkotlin/Pair;

    move-result-object p1

    .line 23
    invoke-static {p1}, Lkotlin/collections/p0;->m([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 24
    sget v0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private static final getRevenue(Lcom/appsflyer/internal/AFd1wSDK;)V
    .locals 2

    .line 3
    sget v0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    rem-int/lit8 v0, v0, 0x2

    const-string v1, ""

    if-nez v0, :cond_0

    .line 4
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1wSDK;->equals()V

    .line 6
    sget p0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    add-int/lit8 p0, p0, 0x63

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    return-void

    :cond_0
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1wSDK;->equals()V

    const/4 p0, 0x0

    .line 8
    throw p0
.end method


# virtual methods
.method public final AFAdRevenueData()V
    .locals 2

    .line 8
    sget v0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 9
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1wSDK;->areAllFieldsValid()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/appsflyer/internal/u;

    invoke-direct {v1, p0}, Lcom/appsflyer/internal/u;-><init>(Lcom/appsflyer/internal/AFd1wSDK;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/16 v0, 0x52

    .line 10
    div-int/lit8 v0, v0, 0x0

    goto :goto_0

    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1wSDK;->areAllFieldsValid()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/appsflyer/internal/u;

    invoke-direct {v1, p0}, Lcom/appsflyer/internal/u;-><init>(Lcom/appsflyer/internal/AFd1wSDK;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 12
    :goto_0
    sget v0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    return-void
.end method

.method public final getMonetizationNetwork()V
    .locals 4

    .line 21
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x1afa5755

    const v3, -0x1afa5755

    invoke-static {v0, v2, v3, v1}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    return-void
.end method

.method public final getMonetizationNetwork(Lcom/appsflyer/internal/AFd1xSDK$AFa1vSDK;)V
    .locals 2
    .param p1    # Lcom/appsflyer/internal/AFd1xSDK$AFa1vSDK;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 7
    sget v0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 8
    iput-object p1, p0, Lcom/appsflyer/internal/AFd1wSDK;->component1:Lcom/appsflyer/internal/AFd1xSDK$AFa1vSDK;

    .line 9
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1wSDK;->areAllFieldsValid()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/appsflyer/internal/s;

    invoke-direct {v0, p0}, Lcom/appsflyer/internal/s;-><init>(Lcom/appsflyer/internal/AFd1wSDK;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 10
    :cond_0
    iput-object p1, p0, Lcom/appsflyer/internal/AFd1wSDK;->component1:Lcom/appsflyer/internal/AFd1xSDK$AFa1vSDK;

    .line 11
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1wSDK;->areAllFieldsValid()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/appsflyer/internal/s;

    invoke-direct {v0, p0}, Lcom/appsflyer/internal/s;-><init>(Lcom/appsflyer/internal/AFd1wSDK;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 12
    throw p1
.end method

.method public final getMonetizationNetwork(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 22
    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    const v0, -0x3e567caa

    const v1, 0x3e567cad

    invoke-static {p1, v0, v1, p2}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    return-void
.end method

.method public final getRevenue()Lcom/appsflyer/internal/AFc1cSDK;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    sget v0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    iget-object v0, p0, Lcom/appsflyer/internal/AFd1wSDK;->component3:Lms/i;

    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFc1cSDK;

    sget v1, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    add-int/lit8 v1, v1, 0x79

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/4 v1, 0x3

    div-int/lit8 v1, v1, 0x0

    :cond_0
    return-object v0
.end method
