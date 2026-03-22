.class public final Lcom/appsflyer/internal/AFg1gSDK;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final getCurrencyIso4217Code:Ljava/lang/Double;

.field public static final getRevenue:Ljava/lang/Object;


# instance fields
.field private final getMediationNetwork:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/appsflyer/internal/AFg1gSDK$4;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/appsflyer/internal/AFg1gSDK$4;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/appsflyer/internal/AFg1gSDK;->getRevenue:Ljava/lang/Object;

    .line 7
    .line 8
    const-wide/high16 v0, -0x8000000000000000L

    .line 9
    .line 10
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/appsflyer/internal/AFg1gSDK;->getCurrencyIso4217Code:Ljava/lang/Double;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFg1gSDK;->getMediationNetwork:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/appsflyer/internal/AFg1mSDK;
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    :try_start_0
    sget-object v0, Lcom/appsflyer/internal/AFa1hSDK;->d:Ljava/util/Map;

    const v1, 0x4981e9d4    # 1064250.5f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    add-int/lit16 v2, v2, 0x167

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v5

    shr-int/lit8 v5, v5, 0x8

    rsub-int v5, v5, 0x45b9

    int-to-char v5, v5

    invoke-static {v4, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    add-int/lit8 v6, v6, 0x24

    invoke-static {v2, v5, v6}, Lcom/appsflyer/internal/AFa1hSDK;->getRevenue(ICI)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    const-string v5, "AFAdRevenueData"

    invoke-virtual {v2, v5, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    check-cast v2, Ljava/lang/reflect/Method;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    instance-of v1, p1, Lcom/appsflyer/internal/AFg1gSDK;

    if-eqz v1, :cond_1

    .line 11
    check-cast p1, Lcom/appsflyer/internal/AFg1gSDK;

    iget-object p1, p1, Lcom/appsflyer/internal/AFg1gSDK;->getMediationNetwork:Ljava/util/LinkedHashMap;

    iput-object p1, p0, Lcom/appsflyer/internal/AFg1gSDK;->getMediationNetwork:Ljava/util/LinkedHashMap;

    return-void

    .line 12
    :cond_1
    const-string v1, "AFJsonObject"

    const/4 v2, 0x2

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x1

    aput-object v1, v2, v5

    aput-object p1, v2, v4

    const p1, -0x1e522924

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    add-int/lit16 v1, v1, 0x11f

    const-string v5, ""

    const/16 v6, 0x30

    invoke-static {v5, v6, v4}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v4

    rsub-int/lit8 v4, v4, -0x1

    int-to-char v4, v4

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x24

    invoke-static {v1, v4, v5}, Lcom/appsflyer/internal/AFa1hSDK;->getRevenue(ICI)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    const-string v4, "getMonetizationNetwork"

    const-class v5, Ljava/lang/Object;

    const-class v6, Ljava/lang/String;

    filled-new-array {v5, v6}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    check-cast v1, Ljava/lang/reflect/Method;

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    throw v0

    :cond_3
    throw p1
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/appsflyer/internal/AFg1mSDK;
        }
    .end annotation

    .line 14
    :try_start_0
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/appsflyer/internal/AFa1hSDK;->d:Ljava/util/Map;

    const v1, -0x556b720a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-static {v2, v2, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v3

    rsub-int v3, v3, 0x167

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    rsub-int v2, v2, 0x45b9

    int-to-char v2, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    rsub-int/lit8 v4, v4, 0x24

    invoke-static {v3, v2, v4}, Lcom/appsflyer/internal/AFa1hSDK;->getRevenue(ICI)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    check-cast v2, Ljava/lang/reflect/Constructor;

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFg1gSDK;-><init>(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    throw v0

    :cond_1
    throw p1
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1gSDK;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6
    iget-object v2, p0, Lcom/appsflyer/internal/AFg1gSDK;->getMediationNetwork:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/AFg1gSDK;->getMediationNetwork(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "key == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method static getCurrencyIso4217Code(Ljava/lang/Number;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/appsflyer/internal/AFg1mSDK;
        }
    .end annotation

    .line 1
    const-string v0, ""

    if-eqz p0, :cond_4

    .line 2
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    .line 3
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/appsflyer/internal/AFa1hSDK;->d:Ljava/util/Map;

    const v5, -0x67c2c605

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    invoke-static {v0, v0, v6}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    rsub-int v0, v0, 0x11f

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    int-to-char v6, v6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    shr-int/lit8 v7, v7, 0x16

    rsub-int/lit8 v7, v7, 0x24

    invoke-static {v0, v6, v7}, Lcom/appsflyer/internal/AFa1hSDK;->getRevenue(ICI)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const-string v6, "AFAdRevenueData"

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    filled-new-array {v7}, [Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    check-cast v6, Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    invoke-virtual {v6, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    sget-object v0, Lcom/appsflyer/internal/AFg1gSDK;->getCurrencyIso4217Code:Ljava/lang/Double;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    const-string p0, "-0"

    return-object p0

    .line 6
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    long-to-double v5, v3

    cmpl-double v0, v1, v5

    if-nez v0, :cond_2

    .line 7
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    throw v0

    :cond_3
    throw p0

    .line 10
    :cond_4
    new-instance p0, Lcom/appsflyer/internal/AFg1mSDK;

    const-string v0, "Number must be non-null"

    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFg1mSDK;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getMediationNetwork(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Lcom/appsflyer/internal/AFg1gSDK;->getRevenue:Ljava/lang/Object;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    invoke-static {v0, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/lit16 v1, v1, 0x143

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    const-wide/16 v4, 0x0

    .line 18
    .line 19
    cmp-long v2, v2, v4

    .line 20
    .line 21
    rsub-int v2, v2, 0x7bc8

    .line 22
    .line 23
    int-to-char v2, v2

    .line 24
    const-string v3, ""

    .line 25
    .line 26
    invoke-static {v3, v3, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    rsub-int/lit8 v6, v6, 0x24

    .line 31
    .line 32
    invoke-static {v1, v2, v6}, Lcom/appsflyer/internal/AFa1hSDK;->getRevenue(ICI)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Ljava/lang/Class;

    .line 37
    .line 38
    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_11

    .line 43
    .line 44
    instance-of v1, p0, Lcom/appsflyer/internal/AFg1gSDK;

    .line 45
    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    goto/16 :goto_4

    .line 49
    .line 50
    :cond_1
    :try_start_0
    instance-of v1, p0, Lorg/json/JSONArray;

    .line 51
    .line 52
    if-eqz v1, :cond_4

    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1
    :try_end_0
    .catch Lcom/appsflyer/internal/AFg1mSDK; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :try_start_1
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    sget-object v2, Lcom/appsflyer/internal/AFa1hSDK;->d:Ljava/util/Map;

    .line 63
    .line 64
    const v6, 0x65693876

    .line 65
    .line 66
    .line 67
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    if-eqz v7, :cond_2

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    invoke-static {v4, v5}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    rsub-int v7, v7, 0x142

    .line 83
    .line 84
    invoke-static {v4, v5}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    rsub-int v8, v8, 0x7bc6

    .line 89
    .line 90
    int-to-char v8, v8

    .line 91
    const/16 v9, 0x30

    .line 92
    .line 93
    invoke-static {v3, v9, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    rsub-int/lit8 v3, v3, 0x23

    .line 98
    .line 99
    invoke-static {v7, v8, v3}, Lcom/appsflyer/internal/AFa1hSDK;->getRevenue(ICI)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    check-cast v3, Ljava/lang/Class;

    .line 104
    .line 105
    const-class v7, Ljava/lang/String;

    .line 106
    .line 107
    filled-new-array {v7}, [Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    invoke-virtual {v3, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-interface {v2, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    :goto_0
    check-cast v7, Ljava/lang/reflect/Constructor;

    .line 123
    .line 124
    invoke-virtual {v7, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    return-object p0

    .line 129
    :catchall_0
    move-exception v1

    .line 130
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    if-eqz v2, :cond_3

    .line 135
    .line 136
    throw v2

    .line 137
    :cond_3
    throw v1

    .line 138
    :cond_4
    instance-of v1, p0, Lorg/json/JSONObject;

    .line 139
    .line 140
    if-eqz v1, :cond_5

    .line 141
    .line 142
    new-instance v1, Lcom/appsflyer/internal/AFg1gSDK;

    .line 143
    .line 144
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-direct {v1, v2}, Lcom/appsflyer/internal/AFg1gSDK;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/appsflyer/internal/AFg1mSDK; {:try_start_2 .. :try_end_2} :catch_0

    .line 149
    .line 150
    .line 151
    return-object v1

    .line 152
    :catch_0
    :cond_5
    sget-object v1, Lcom/appsflyer/internal/AFg1gSDK;->getRevenue:Ljava/lang/Object;

    .line 153
    .line 154
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    if-eqz v1, :cond_6

    .line 159
    .line 160
    return-object p0

    .line 161
    :cond_6
    :try_start_3
    instance-of v1, p0, Ljava/util/Collection;

    .line 162
    .line 163
    if-eqz v1, :cond_9

    .line 164
    .line 165
    check-cast p0, Ljava/util/Collection;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 166
    .line 167
    :try_start_4
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    sget-object v1, Lcom/appsflyer/internal/AFa1hSDK;->d:Ljava/util/Map;

    .line 172
    .line 173
    const v2, 0x6784f0af

    .line 174
    .line 175
    .line 176
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    if-eqz v3, :cond_7

    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_7
    invoke-static {v0}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    .line 188
    .line 189
    .line 190
    move-result-wide v6

    .line 191
    cmp-long v3, v6, v4

    .line 192
    .line 193
    rsub-int v3, v3, 0x143

    .line 194
    .line 195
    invoke-static {v0}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    .line 196
    .line 197
    .line 198
    move-result v6

    .line 199
    rsub-int v6, v6, 0x7bc6

    .line 200
    .line 201
    int-to-char v6, v6

    .line 202
    invoke-static {v0, v0}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    .line 203
    .line 204
    .line 205
    move-result-wide v7

    .line 206
    cmp-long v0, v7, v4

    .line 207
    .line 208
    rsub-int/lit8 v0, v0, 0x23

    .line 209
    .line 210
    invoke-static {v3, v6, v0}, Lcom/appsflyer/internal/AFa1hSDK;->getRevenue(ICI)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    check-cast v0, Ljava/lang/Class;

    .line 215
    .line 216
    const-class v3, Ljava/util/Collection;

    .line 217
    .line 218
    filled-new-array {v3}, [Ljava/lang/Class;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    :goto_1
    check-cast v3, Ljava/lang/reflect/Constructor;

    .line 234
    .line 235
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 239
    return-object p0

    .line 240
    :catchall_1
    move-exception p0

    .line 241
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    if-eqz v0, :cond_8

    .line 246
    .line 247
    throw v0

    .line 248
    :cond_8
    throw p0

    .line 249
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    .line 254
    .line 255
    .line 256
    move-result v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 257
    if-eqz v1, :cond_c

    .line 258
    .line 259
    :try_start_6
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object p0

    .line 263
    sget-object v1, Lcom/appsflyer/internal/AFa1hSDK;->d:Ljava/util/Map;

    .line 264
    .line 265
    const v2, -0x2f97dc

    .line 266
    .line 267
    .line 268
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    if-eqz v3, :cond_a

    .line 277
    .line 278
    goto :goto_2

    .line 279
    :cond_a
    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    .line 280
    .line 281
    .line 282
    move-result v3

    .line 283
    shr-int/lit8 v3, v3, 0x10

    .line 284
    .line 285
    add-int/lit16 v3, v3, 0x143

    .line 286
    .line 287
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    const v4, -0xff8439

    .line 292
    .line 293
    .line 294
    sub-int/2addr v4, v0

    .line 295
    int-to-char v0, v4

    .line 296
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    .line 297
    .line 298
    .line 299
    move-result v4

    .line 300
    shr-int/lit8 v4, v4, 0x10

    .line 301
    .line 302
    add-int/lit8 v4, v4, 0x24

    .line 303
    .line 304
    invoke-static {v3, v0, v4}, Lcom/appsflyer/internal/AFa1hSDK;->getRevenue(ICI)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    check-cast v0, Ljava/lang/Class;

    .line 309
    .line 310
    const-class v3, Ljava/lang/Object;

    .line 311
    .line 312
    filled-new-array {v3}, [Ljava/lang/Class;

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    :goto_2
    check-cast v3, Ljava/lang/reflect/Constructor;

    .line 328
    .line 329
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 333
    return-object p0

    .line 334
    :catchall_2
    move-exception p0

    .line 335
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    if-eqz v0, :cond_b

    .line 340
    .line 341
    throw v0

    .line 342
    :cond_b
    throw p0

    .line 343
    :cond_c
    instance-of v0, p0, Ljava/util/Map;

    .line 344
    .line 345
    if-eqz v0, :cond_d

    .line 346
    .line 347
    new-instance v0, Lcom/appsflyer/internal/AFg1gSDK;

    .line 348
    .line 349
    check-cast p0, Ljava/util/Map;

    .line 350
    .line 351
    invoke-direct {v0, p0}, Lcom/appsflyer/internal/AFg1gSDK;-><init>(Ljava/util/Map;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 352
    .line 353
    .line 354
    return-object v0

    .line 355
    :cond_d
    instance-of v0, p0, Ljava/lang/Boolean;

    .line 356
    .line 357
    if-nez v0, :cond_f

    .line 358
    .line 359
    instance-of v0, p0, Ljava/lang/Byte;

    .line 360
    .line 361
    if-nez v0, :cond_f

    .line 362
    .line 363
    instance-of v0, p0, Ljava/lang/Character;

    .line 364
    .line 365
    if-nez v0, :cond_f

    .line 366
    .line 367
    instance-of v0, p0, Ljava/lang/Double;

    .line 368
    .line 369
    if-nez v0, :cond_f

    .line 370
    .line 371
    instance-of v0, p0, Ljava/lang/Float;

    .line 372
    .line 373
    if-nez v0, :cond_f

    .line 374
    .line 375
    instance-of v0, p0, Ljava/lang/Integer;

    .line 376
    .line 377
    if-nez v0, :cond_f

    .line 378
    .line 379
    instance-of v0, p0, Ljava/lang/Long;

    .line 380
    .line 381
    if-nez v0, :cond_f

    .line 382
    .line 383
    instance-of v0, p0, Ljava/lang/Short;

    .line 384
    .line 385
    if-nez v0, :cond_f

    .line 386
    .line 387
    instance-of v0, p0, Ljava/lang/String;

    .line 388
    .line 389
    if-eqz v0, :cond_e

    .line 390
    .line 391
    goto :goto_3

    .line 392
    :cond_e
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    const-string v1, "java."

    .line 405
    .line 406
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 407
    .line 408
    .line 409
    move-result v0

    .line 410
    if-eqz v0, :cond_10

    .line 411
    .line 412
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 416
    :cond_f
    :goto_3
    return-object p0

    .line 417
    :catch_1
    :cond_10
    const/4 p0, 0x0

    .line 418
    :cond_11
    :goto_4
    return-object p0
.end method


# virtual methods
.method final getCurrencyIso4217Code(Lcom/appsflyer/internal/AFg1dSDK;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/appsflyer/internal/AFg1mSDK;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/appsflyer/internal/AFg1dSDK$AFa1zSDK;->getRevenue:Lcom/appsflyer/internal/AFg1dSDK$AFa1zSDK;

    const-string/jumbo v1, "{"

    invoke-virtual {p1, v0, v1}, Lcom/appsflyer/internal/AFg1dSDK;->getMediationNetwork(Lcom/appsflyer/internal/AFg1dSDK$AFa1zSDK;Ljava/lang/String;)Lcom/appsflyer/internal/AFg1dSDK;

    .line 12
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1gSDK;->getMediationNetwork:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 13
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 14
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFg1dSDK;->getMonetizationNetwork()V

    .line 15
    invoke-virtual {p1, v2}, Lcom/appsflyer/internal/AFg1dSDK;->AFAdRevenueData(Ljava/lang/String;)V

    .line 16
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/appsflyer/internal/AFg1dSDK;->getCurrencyIso4217Code(Ljava/lang/Object;)Lcom/appsflyer/internal/AFg1dSDK;

    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Lcom/appsflyer/internal/AFg1mSDK;

    const-string v0, "Names must be non-null"

    invoke-direct {p1, v0}, Lcom/appsflyer/internal/AFg1mSDK;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_1
    sget-object v0, Lcom/appsflyer/internal/AFg1dSDK$AFa1zSDK;->getRevenue:Lcom/appsflyer/internal/AFg1dSDK$AFa1zSDK;

    sget-object v1, Lcom/appsflyer/internal/AFg1dSDK$AFa1zSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFg1dSDK$AFa1zSDK;

    const-string/jumbo v2, "}"

    invoke-virtual {p1, v0, v1, v2}, Lcom/appsflyer/internal/AFg1dSDK;->getMonetizationNetwork(Lcom/appsflyer/internal/AFg1dSDK$AFa1zSDK;Lcom/appsflyer/internal/AFg1dSDK$AFa1zSDK;Ljava/lang/String;)Lcom/appsflyer/internal/AFg1dSDK;

    return-void
.end method

.method public final getMonetizationNetwork(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFg1gSDK;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/appsflyer/internal/AFg1mSDK;
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lcom/appsflyer/internal/AFg1gSDK;->getMediationNetwork:Ljava/util/LinkedHashMap;

    .line 4
    .line 5
    invoke-virtual {p2, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    instance-of v0, p2, Ljava/lang/Number;

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    move-object v0, p2

    .line 14
    check-cast v0, Ljava/lang/Number;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sget-object v1, Lcom/appsflyer/internal/AFa1hSDK;->d:Ljava/util/Map;

    .line 29
    .line 30
    const v2, -0x67c2c605

    .line 31
    .line 32
    .line 33
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    shr-int/lit8 v3, v3, 0x10

    .line 49
    .line 50
    add-int/lit16 v3, v3, 0x11f

    .line 51
    .line 52
    const/4 v4, 0x0

    .line 53
    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    int-to-char v4, v4

    .line 58
    const-wide/16 v5, 0x0

    .line 59
    .line 60
    invoke-static {v5, v6}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    add-int/lit8 v5, v5, 0x24

    .line 65
    .line 66
    invoke-static {v3, v4, v5}, Lcom/appsflyer/internal/AFa1hSDK;->getRevenue(ICI)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    check-cast v3, Ljava/lang/Class;

    .line 71
    .line 72
    const-string v4, "AFAdRevenueData"

    .line 73
    .line 74
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 75
    .line 76
    filled-new-array {v5}, [Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    :goto_0
    check-cast v3, Ljava/lang/reflect/Method;

    .line 92
    .line 93
    const/4 v1, 0x0

    .line 94
    invoke-virtual {v3, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Ljava/lang/Double;

    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :catchall_0
    move-exception p1

    .line 105
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    if-eqz p2, :cond_2

    .line 110
    .line 111
    throw p2

    .line 112
    :cond_2
    throw p1

    .line 113
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1gSDK;->getMediationNetwork:Ljava/util/LinkedHashMap;

    .line 114
    .line 115
    if-eqz p1, :cond_4

    .line 116
    .line 117
    invoke-virtual {v0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    return-object p0

    .line 121
    :cond_4
    new-instance p1, Lcom/appsflyer/internal/AFg1mSDK;

    .line 122
    .line 123
    const-string p2, "Names must be non-null"

    .line 124
    .line 125
    invoke-direct {p1, p2}, Lcom/appsflyer/internal/AFg1mSDK;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/appsflyer/internal/AFg1dSDK;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/appsflyer/internal/AFg1dSDK;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/appsflyer/internal/AFg1gSDK;->getCurrencyIso4217Code(Lcom/appsflyer/internal/AFg1dSDK;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0
    :try_end_0
    .catch Lcom/appsflyer/internal/AFg1mSDK; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object v0

    .line 14
    :catch_0
    const/4 v0, 0x0

    .line 15
    return-object v0
.end method
