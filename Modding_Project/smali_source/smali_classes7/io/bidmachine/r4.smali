.class Lio/bidmachine/r4;
.super Ljava/lang/Object;
.source "NetworkConfigFactory.java"


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "format"

    .line 2
    .line 3
    const-string v1, "ad_units"

    .line 4
    .line 5
    const-string v2, "network"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lio/bidmachine/r4;->a:[Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/r4;->n(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/r4;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/r4;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/r4;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Lio/bidmachine/NetworkConfig;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/r4;->l(Lio/bidmachine/NetworkConfig;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static f(Landroid/content/Context;Lio/bidmachine/protobuf/AdNetwork;)Lio/bidmachine/NetworkConfig;
    .locals 3
    .param p1    # Lio/bidmachine/protobuf/AdNetwork;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdNetwork;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_1
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdNetwork;->getCustomParamsMap()Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {p0, v1, v2}, Lio/bidmachine/r4;->g(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Lio/bidmachine/NetworkConfig;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    if-nez p0, :cond_2

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_2
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdNetwork;->getAdUnitsList()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    .line 46
    .line 47
    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->getAdFormat()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-static {v2}, Lio/bidmachine/AdsFormat;->byRemoteName(Ljava/lang/String;)Lio/bidmachine/AdsFormat;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    if-eqz v2, :cond_3

    .line 56
    .line 57
    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->getCustomParamsMap()Ljava/util/Map;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p0, v2, v0}, Lio/bidmachine/NetworkConfig;->withMediationConfig(Lio/bidmachine/AdsFormat;Ljava/util/Map;)Lio/bidmachine/NetworkConfig;

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    new-instance v0, Lio/bidmachine/m4;

    .line 66
    .line 67
    invoke-direct {v0, v1}, Lio/bidmachine/m4;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-static {v0}, Lio/bidmachine/core/a;->a(Lhr/b;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_4
    return-object p0
.end method

.method private static g(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Lio/bidmachine/NetworkConfig;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/NetworkConfig;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/k4;->d(Landroid/content/Context;Ljava/lang/String;)Lio/bidmachine/l4;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lio/bidmachine/l4;->b()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-class v1, Ljava/util/Map;

    .line 18
    .line 19
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {p2}, Lio/bidmachine/r4;->i(Ljava/util/Map;)Ljava/util/Map;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p0, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Lio/bidmachine/NetworkConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    return-object p0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    new-instance p2, Lio/bidmachine/q4;

    .line 44
    .line 45
    invoke-direct {p2, p1}, Lio/bidmachine/q4;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p2}, Lio/bidmachine/core/a;->a(Lhr/b;)V

    .line 49
    .line 50
    .line 51
    invoke-static {p0}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    return-object v0
.end method

.method static h(Landroid/content/Context;Lorg/json/JSONObject;)Lio/bidmachine/NetworkConfig;
    .locals 5
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    :try_start_0
    const-string v1, "network"

    .line 6
    .line 7
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    invoke-static {p1}, Lio/bidmachine/core/g;->q0(Lorg/json/JSONObject;)Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-static {p0, v1, v2}, Lio/bidmachine/r4;->g(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Lio/bidmachine/NetworkConfig;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    if-nez p0, :cond_1

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_1
    const-string v2, "ad_units"

    .line 23
    .line 24
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/4 v2, 0x0

    .line 29
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-ge v2, v3, :cond_3

    .line 34
    .line 35
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const-string v4, "format"

    .line 40
    .line 41
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-static {v4}, Lio/bidmachine/AdsFormat;->byRemoteName(Ljava/lang/String;)Lio/bidmachine/AdsFormat;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    if-eqz v4, :cond_2

    .line 50
    .line 51
    invoke-static {v3}, Lio/bidmachine/core/g;->q0(Lorg/json/JSONObject;)Ljava/util/Map;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-static {v3}, Lio/bidmachine/r4;->i(Ljava/util/Map;)Ljava/util/Map;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {p0, v4, v3}, Lio/bidmachine/NetworkConfig;->withMediationConfig(Lio/bidmachine/AdsFormat;Ljava/util/Map;)Lio/bidmachine/NetworkConfig;

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    new-instance v3, Lio/bidmachine/n4;

    .line 66
    .line 67
    invoke-direct {v3, v1}, Lio/bidmachine/n4;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-static {v3}, Lio/bidmachine/core/a;->a(Lhr/b;)V

    .line 71
    .line 72
    .line 73
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    new-instance p1, Lio/bidmachine/o4;

    .line 77
    .line 78
    invoke-direct {p1, p0}, Lio/bidmachine/o4;-><init>(Lio/bidmachine/NetworkConfig;)V

    .line 79
    .line 80
    .line 81
    invoke-static {p1}, Lio/bidmachine/core/a;->a(Lhr/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    .line 83
    .line 84
    return-object p0

    .line 85
    :catchall_1
    move-exception p0

    .line 86
    move-object v1, v0

    .line 87
    :goto_2
    new-instance p1, Lio/bidmachine/p4;

    .line 88
    .line 89
    invoke-direct {p1, v1}, Lio/bidmachine/p4;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-static {p1}, Lio/bidmachine/core/a;->a(Lhr/b;)V

    .line 93
    .line 94
    .line 95
    invoke-static {p0}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    return-object v0
.end method

.method private static i(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .param p0    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    sget-object v0, Lio/bidmachine/r4;->a:[Ljava/lang/String;

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_0

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    invoke-interface {p0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    :cond_0
    return-object p0
.end method

.method private static synthetic j(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "format"

    .line 2
    .line 3
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "Network (%s) adUnit register fail: %s not provided"

    .line 8
    .line 9
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method private static synthetic k(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "format"

    .line 2
    .line 3
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "Network (%s) adUnit register fail: %s not provided"

    .line 8
    .line 9
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method private static synthetic l(Lio/bidmachine/NetworkConfig;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/NetworkConfig;->getNetworkKey()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "Load network from json config completed successfully: %s"

    .line 10
    .line 11
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method private static synthetic m(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Network (%s) load fail!"

    .line 2
    .line 3
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private static synthetic n(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Network (%s) load fail!"

    .line 2
    .line 3
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
