.class Lio/bidmachine/w0;
.super Ljava/lang/Object;
.source "AdResponseManager.java"


# static fields
.field private static volatile c:Lio/bidmachine/w0;

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/protobuf/AdCachePlacementControl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/bidmachine/w0;->d:Ljava/util/Map;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/bidmachine/w0;->a:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lio/bidmachine/w0;->b:Ljava/util/List;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic a(Lio/bidmachine/u;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/w0;->k(Lio/bidmachine/u;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lio/bidmachine/u;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/w0;->i(Lio/bidmachine/u;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lio/bidmachine/u;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/w0;->j(Lio/bidmachine/u;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static e()Lio/bidmachine/w0;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/w0;->c:Lio/bidmachine/w0;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v1, Lio/bidmachine/w0;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    sget-object v0, Lio/bidmachine/w0;->c:Lio/bidmachine/w0;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lio/bidmachine/w0;

    .line 13
    .line 14
    invoke-direct {v0}, Lio/bidmachine/w0;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lio/bidmachine/w0;->c:Lio/bidmachine/w0;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v1

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v0

    .line 26
    :cond_1
    :goto_2
    return-object v0
.end method

.method private f(Lio/bidmachine/AdRequestParameters;)Lio/bidmachine/protobuf/AdCachePlacementControl;
    .locals 1
    .param p1    # Lio/bidmachine/AdRequestParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/AdRequestParameters;->getAdsType()Lio/bidmachine/AdsType;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lio/bidmachine/AdsType;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget-object v0, Lio/bidmachine/w0;->d:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lio/bidmachine/protobuf/AdCachePlacementControl;

    .line 16
    .line 17
    return-object p1
.end method

.method private static synthetic i(Lio/bidmachine/u;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "receive - %s"

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

.method private static synthetic j(Lio/bidmachine/u;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "remove - %s"

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

.method private static synthetic k(Lio/bidmachine/u;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "store - %s"

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

.method static o(Ljava/util/Map;)V
    .locals 1
    .param p0    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/protobuf/AdCachePlacementControl;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/w0;->d:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method


# virtual methods
.method d(Lio/bidmachine/u;)Z
    .locals 2
    .param p1    # Lio/bidmachine/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/w0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/w0;->b:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    monitor-exit v0

    .line 11
    return p1

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p1
.end method

.method g(Lio/bidmachine/AdRequestParameters;)I
    .locals 0
    .param p1    # Lio/bidmachine/AdRequestParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/w0;->f(Lio/bidmachine/AdRequestParameters;)Lio/bidmachine/protobuf/AdCachePlacementControl;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdCachePlacementControl;->getMaxRetainCount()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    if-lez p1, :cond_1

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    const/4 p1, 0x2

    .line 17
    :goto_1
    return p1
.end method

.method h(Lio/bidmachine/AdRequestParameters;)I
    .locals 0
    .param p1    # Lio/bidmachine/AdRequestParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/w0;->f(Lio/bidmachine/AdRequestParameters;)Lio/bidmachine/protobuf/AdCachePlacementControl;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdCachePlacementControl;->getMaxCacheSize()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    if-lez p1, :cond_1

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    const/16 p1, 0x8

    .line 17
    .line 18
    :goto_1
    return p1
.end method

.method l(Lio/bidmachine/AdRequestParameters;)Ljava/util/List;
    .locals 6
    .param p1    # Lio/bidmachine/AdRequestParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdRequestParameters;",
            ")",
            "Ljava/util/List<",
            "Lio/bidmachine/u;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/w0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Lio/bidmachine/w0;->b:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_2

    .line 20
    .line 21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lio/bidmachine/u;

    .line 26
    .line 27
    invoke-virtual {v3}, Lio/bidmachine/u;->G()Lio/bidmachine/AdResponseStatus;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    sget-object v5, Lio/bidmachine/AdResponseStatus;->Idle:Lio/bidmachine/AdResponseStatus;

    .line 32
    .line 33
    if-ne v4, v5, :cond_0

    .line 34
    .line 35
    invoke-virtual {v3}, Lio/bidmachine/u;->B()Lio/bidmachine/AdRequestParameters;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {p1, v4}, Lio/bidmachine/AdRequestParameters;->isParametersMatched(Lio/bidmachine/AdRequestParameters;)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-nez v4, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_3

    .line 57
    .line 58
    monitor-exit v0

    .line 59
    return-object v1

    .line 60
    :cond_3
    new-instance v2, Lio/bidmachine/w0$a;

    .line 61
    .line 62
    invoke-direct {v2, p0}, Lio/bidmachine/w0$a;-><init>(Lio/bidmachine/w0;)V

    .line 63
    .line 64
    .line 65
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1}, Lio/bidmachine/w0;->g(Lio/bidmachine/AdRequestParameters;)I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    const/4 v2, 0x0

    .line 81
    invoke-interface {v1, v2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    monitor-exit v0

    .line 86
    return-object p1

    .line 87
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    throw p1
.end method

.method m(Lio/bidmachine/AdRequestParameters;)Lio/bidmachine/u;
    .locals 12
    .param p1    # Lio/bidmachine/AdRequestParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/w0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lio/bidmachine/w0;->g(Lio/bidmachine/AdRequestParameters;)I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    iget-object v2, p0, Lio/bidmachine/w0;->b:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    move-object v5, v3

    .line 17
    move-object v6, v5

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v7

    .line 22
    if-eqz v7, :cond_6

    .line 23
    .line 24
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v7

    .line 28
    check-cast v7, Lio/bidmachine/u;

    .line 29
    .line 30
    invoke-virtual {v7}, Lio/bidmachine/u;->d0()Z

    .line 31
    .line 32
    .line 33
    move-result v8

    .line 34
    if-nez v8, :cond_0

    .line 35
    .line 36
    invoke-virtual {v7}, Lio/bidmachine/u;->B()Lio/bidmachine/AdRequestParameters;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    invoke-virtual {p1, v8}, Lio/bidmachine/AdRequestParameters;->isParametersMatched(Lio/bidmachine/AdRequestParameters;)Z

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    if-nez v8, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v7}, Lio/bidmachine/u;->G()Lio/bidmachine/AdResponseStatus;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    sget-object v9, Lio/bidmachine/AdResponseStatus;->Idle:Lio/bidmachine/AdResponseStatus;

    .line 52
    .line 53
    if-ne v8, v9, :cond_3

    .line 54
    .line 55
    if-eqz v5, :cond_2

    .line 56
    .line 57
    invoke-virtual {v7}, Lio/bidmachine/u;->F()D

    .line 58
    .line 59
    .line 60
    move-result-wide v8

    .line 61
    invoke-virtual {v5}, Lio/bidmachine/u;->F()D

    .line 62
    .line 63
    .line 64
    move-result-wide v10

    .line 65
    cmpl-double v8, v8, v10

    .line 66
    .line 67
    if-lez v8, :cond_0

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :catchall_0
    move-exception p1

    .line 71
    goto :goto_2

    .line 72
    :cond_2
    :goto_1
    move-object v5, v7

    .line 73
    goto :goto_0

    .line 74
    :cond_3
    invoke-virtual {v7}, Lio/bidmachine/u;->G()Lio/bidmachine/AdResponseStatus;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    sget-object v10, Lio/bidmachine/AdResponseStatus;->Busy:Lio/bidmachine/AdResponseStatus;

    .line 79
    .line 80
    if-ne v8, v10, :cond_0

    .line 81
    .line 82
    add-int/lit8 v4, v4, 0x1

    .line 83
    .line 84
    if-nez v6, :cond_4

    .line 85
    .line 86
    move-object v6, v7

    .line 87
    :cond_4
    if-lt v4, v1, :cond_0

    .line 88
    .line 89
    invoke-virtual {v6, v3}, Lio/bidmachine/u;->w(Lio/bidmachine/AdRequest;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v6}, Lio/bidmachine/u;->n()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v6, v9}, Lio/bidmachine/u;->Z(Lio/bidmachine/AdResponseStatus;)V

    .line 96
    .line 97
    .line 98
    if-eqz v5, :cond_5

    .line 99
    .line 100
    invoke-virtual {v6}, Lio/bidmachine/u;->F()D

    .line 101
    .line 102
    .line 103
    move-result-wide v7

    .line 104
    invoke-virtual {v5}, Lio/bidmachine/u;->F()D

    .line 105
    .line 106
    .line 107
    move-result-wide v9

    .line 108
    cmpl-double v7, v7, v9

    .line 109
    .line 110
    if-ltz v7, :cond_0

    .line 111
    .line 112
    :cond_5
    move-object v5, v6

    .line 113
    goto :goto_0

    .line 114
    :cond_6
    if-eqz v5, :cond_7

    .line 115
    .line 116
    invoke-virtual {v5}, Lio/bidmachine/u;->F()D

    .line 117
    .line 118
    .line 119
    move-result-wide v1

    .line 120
    invoke-virtual {p1, v1, v2}, Lio/bidmachine/AdRequestParameters;->isPricePassedByPriceFloor(D)Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-eqz p1, :cond_7

    .line 125
    .line 126
    sget-object p1, Lio/bidmachine/AdResponseStatus;->Busy:Lio/bidmachine/AdResponseStatus;

    .line 127
    .line 128
    invoke-virtual {v5, p1}, Lio/bidmachine/u;->Z(Lio/bidmachine/AdResponseStatus;)V

    .line 129
    .line 130
    .line 131
    const-string p1, "AdResponseManager"

    .line 132
    .line 133
    new-instance v1, Lio/bidmachine/t0;

    .line 134
    .line 135
    invoke-direct {v1, v5}, Lio/bidmachine/t0;-><init>(Lio/bidmachine/u;)V

    .line 136
    .line 137
    .line 138
    invoke-static {p1, v1}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 139
    .line 140
    .line 141
    iget-object p1, p0, Lio/bidmachine/w0;->b:Ljava/util/List;

    .line 142
    .line 143
    invoke-interface {p1, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, Lio/bidmachine/w0;->b:Ljava/util/List;

    .line 147
    .line 148
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    monitor-exit v0

    .line 152
    return-object v5

    .line 153
    :cond_7
    monitor-exit v0

    .line 154
    return-object v3

    .line 155
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    throw p1
.end method

.method n(Lio/bidmachine/u;)V
    .locals 2
    .param p1    # Lio/bidmachine/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "AdResponseManager"

    .line 2
    .line 3
    new-instance v1, Lio/bidmachine/v0;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lio/bidmachine/v0;-><init>(Lio/bidmachine/u;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/bidmachine/w0;->a:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/w0;->b:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p1
.end method

.method p(Lio/bidmachine/u;)V
    .locals 12
    .param p1    # Lio/bidmachine/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/u;->m()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v0, "AdResponseManager"

    .line 9
    .line 10
    new-instance v1, Lio/bidmachine/u0;

    .line 11
    .line 12
    invoke-direct {v1, p1}, Lio/bidmachine/u0;-><init>(Lio/bidmachine/u;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lio/bidmachine/w0;->a:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    invoke-virtual {p1}, Lio/bidmachine/u;->B()Lio/bidmachine/AdRequestParameters;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v2, p0, Lio/bidmachine/w0;->b:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x0

    .line 33
    move v5, v4

    .line 34
    move v6, v5

    .line 35
    move-object v4, v3

    .line 36
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    if-eqz v7, :cond_5

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    check-cast v7, Lio/bidmachine/u;

    .line 47
    .line 48
    invoke-virtual {v7}, Lio/bidmachine/u;->B()Lio/bidmachine/AdRequestParameters;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    invoke-virtual {v1, v8}, Lio/bidmachine/AdRequestParameters;->isParametersMatched(Lio/bidmachine/AdRequestParameters;)Z

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    if-nez v8, :cond_2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 60
    .line 61
    invoke-virtual {v7}, Lio/bidmachine/u;->G()Lio/bidmachine/AdResponseStatus;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    sget-object v9, Lio/bidmachine/AdResponseStatus;->Idle:Lio/bidmachine/AdResponseStatus;

    .line 66
    .line 67
    if-ne v8, v9, :cond_4

    .line 68
    .line 69
    if-eqz v4, :cond_3

    .line 70
    .line 71
    invoke-virtual {v4}, Lio/bidmachine/u;->F()D

    .line 72
    .line 73
    .line 74
    move-result-wide v8

    .line 75
    invoke-virtual {v7}, Lio/bidmachine/u;->F()D

    .line 76
    .line 77
    .line 78
    move-result-wide v10

    .line 79
    cmpl-double v8, v8, v10

    .line 80
    .line 81
    if-lez v8, :cond_1

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :catchall_0
    move-exception p1

    .line 85
    goto :goto_4

    .line 86
    :cond_3
    :goto_1
    move-object v4, v7

    .line 87
    goto :goto_0

    .line 88
    :cond_4
    invoke-virtual {v7}, Lio/bidmachine/u;->G()Lio/bidmachine/AdResponseStatus;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    sget-object v9, Lio/bidmachine/AdResponseStatus;->Busy:Lio/bidmachine/AdResponseStatus;

    .line 93
    .line 94
    if-ne v8, v9, :cond_1

    .line 95
    .line 96
    add-int/lit8 v5, v5, 0x1

    .line 97
    .line 98
    if-nez v3, :cond_1

    .line 99
    .line 100
    move-object v3, v7

    .line 101
    goto :goto_0

    .line 102
    :cond_5
    invoke-virtual {p1}, Lio/bidmachine/u;->G()Lio/bidmachine/AdResponseStatus;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    sget-object v7, Lio/bidmachine/AdResponseStatus;->Busy:Lio/bidmachine/AdResponseStatus;

    .line 107
    .line 108
    if-ne v2, v7, :cond_6

    .line 109
    .line 110
    if-eqz v3, :cond_6

    .line 111
    .line 112
    invoke-virtual {p0, v1}, Lio/bidmachine/w0;->g(Lio/bidmachine/AdRequestParameters;)I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-lt v5, v2, :cond_6

    .line 117
    .line 118
    sget-object v2, Lio/bidmachine/AdResponseStatus;->Idle:Lio/bidmachine/AdResponseStatus;

    .line 119
    .line 120
    invoke-virtual {v3, v2}, Lio/bidmachine/u;->Z(Lio/bidmachine/AdResponseStatus;)V

    .line 121
    .line 122
    .line 123
    if-eqz v4, :cond_7

    .line 124
    .line 125
    invoke-virtual {v4}, Lio/bidmachine/u;->F()D

    .line 126
    .line 127
    .line 128
    move-result-wide v7

    .line 129
    invoke-virtual {v3}, Lio/bidmachine/u;->F()D

    .line 130
    .line 131
    .line 132
    move-result-wide v9

    .line 133
    cmpl-double v2, v7, v9

    .line 134
    .line 135
    if-lez v2, :cond_6

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_6
    move-object v3, v4

    .line 139
    :cond_7
    :goto_2
    invoke-virtual {p0, v1}, Lio/bidmachine/w0;->h(Lio/bidmachine/AdRequestParameters;)I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-lt v6, v1, :cond_9

    .line 144
    .line 145
    if-eqz v3, :cond_9

    .line 146
    .line 147
    invoke-virtual {p1}, Lio/bidmachine/u;->F()D

    .line 148
    .line 149
    .line 150
    move-result-wide v1

    .line 151
    invoke-virtual {v3}, Lio/bidmachine/u;->F()D

    .line 152
    .line 153
    .line 154
    move-result-wide v4

    .line 155
    cmpl-double v1, v1, v4

    .line 156
    .line 157
    if-ltz v1, :cond_8

    .line 158
    .line 159
    const/4 v1, 0x1

    .line 160
    invoke-virtual {v3, v1}, Lio/bidmachine/u;->U(Z)V

    .line 161
    .line 162
    .line 163
    iget-object v1, p0, Lio/bidmachine/w0;->b:Ljava/util/List;

    .line 164
    .line 165
    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_8
    monitor-exit v0

    .line 170
    return-void

    .line 171
    :cond_9
    :goto_3
    iget-object v1, p0, Lio/bidmachine/w0;->b:Ljava/util/List;

    .line 172
    .line 173
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    monitor-exit v0

    .line 177
    return-void

    .line 178
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    throw p1
.end method
