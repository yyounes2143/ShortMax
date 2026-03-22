.class final Lio/bidmachine/o5;
.super Ljava/lang/Object;
.source "SessionParams.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lio/bidmachine/protobuf/sdk/ContextualData$Builder;Lio/bidmachine/AdsType;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/o5;->k(Lio/bidmachine/protobuf/sdk/ContextualData$Builder;Lio/bidmachine/AdsType;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/o5;->m(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/o5;->l(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private f(Lio/bidmachine/AdsType;Ljava/lang/String;Ljava/util/Map;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;
    .locals 1
    .param p1    # Lio/bidmachine/AdsType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdsType;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/bidmachine/protobuf/sdk/ContextualData$Builder;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ContextualData;->newBuilder()Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p2}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->setMediatorName(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    new-instance v0, Lio/bidmachine/g5;

    .line 10
    .line 11
    invoke-direct {v0, p2}, Lio/bidmachine/g5;-><init>(Lio/bidmachine/protobuf/sdk/ContextualData$Builder;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Lio/bidmachine/core/g;->H(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p3}, Lio/bidmachine/o5;->g(Ljava/util/Map;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    new-instance p3, Lio/bidmachine/h5;

    .line 25
    .line 26
    invoke-direct {p3, p2}, Lio/bidmachine/h5;-><init>(Lio/bidmachine/protobuf/sdk/ContextualData$Builder;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1, p3}, Lio/bidmachine/core/g;->H(Ljava/lang/Object;Lio/bidmachine/Executable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    return-object p2

    .line 33
    :catchall_0
    const/4 p1, 0x0

    .line 34
    return-object p1
.end method

.method private g(Ljava/util/Map;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;
    .locals 4
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData;->newBuilder()Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-string v2, "imimd"

    .line 7
    .line 8
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-static {v2, v0}, Lio/bidmachine/core/g;->l(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    new-instance v3, Lio/bidmachine/i5;

    .line 20
    .line 21
    invoke-direct {v3, v1}, Lio/bidmachine/i5;-><init>(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v2, v3}, Lio/bidmachine/core/g;->H(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 25
    .line 26
    .line 27
    const-string v2, "imd"

    .line 28
    .line 29
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-static {v2, v0}, Lio/bidmachine/core/g;->l(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    new-instance v3, Lio/bidmachine/j5;

    .line 38
    .line 39
    invoke-direct {v3, v1}, Lio/bidmachine/j5;-><init>(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v2, v3}, Lio/bidmachine/core/g;->H(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 43
    .line 44
    .line 45
    const-string v2, "imwp"

    .line 46
    .line 47
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-static {v2, v0}, Lio/bidmachine/core/g;->k(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    new-instance v3, Lio/bidmachine/k5;

    .line 56
    .line 57
    invoke-direct {v3, v1}, Lio/bidmachine/k5;-><init>(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v2, v3}, Lio/bidmachine/core/g;->H(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 61
    .line 62
    .line 63
    const-string v2, "wp"

    .line 64
    .line 65
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-static {v2, v0}, Lio/bidmachine/core/g;->k(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    new-instance v3, Lio/bidmachine/l5;

    .line 74
    .line 75
    invoke-direct {v3, v1}, Lio/bidmachine/l5;-><init>(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v2, v3}, Lio/bidmachine/core/g;->H(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 79
    .line 80
    .line 81
    const-string v2, "imagency"

    .line 82
    .line 83
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    new-instance v3, Lio/bidmachine/m5;

    .line 88
    .line 89
    invoke-direct {v3, v1}, Lio/bidmachine/m5;-><init>(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v2, v3}, Lio/bidmachine/core/g;->H(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 93
    .line 94
    .line 95
    const-string v2, "agency"

    .line 96
    .line 97
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    new-instance v2, Lio/bidmachine/n5;

    .line 102
    .line 103
    invoke-direct {v2, v1}, Lio/bidmachine/n5;-><init>(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;)V

    .line 104
    .line 105
    .line 106
    invoke-static {p1, v2}, Lio/bidmachine/core/g;->H(Ljava/lang/Object;Lio/bidmachine/Executable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .line 108
    .line 109
    return-object v1

    .line 110
    :catchall_0
    return-object v0
.end method

.method private h(Landroid/content/Context;Lio/bidmachine/AdsType;)Lio/bidmachine/protobuf/sdk/Session$Builder;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/AdsType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lio/bidmachine/SessionManager;->get()Lio/bidmachine/SessionManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Session;->newBuilder()Lio/bidmachine/protobuf/sdk/Session$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0}, Lio/bidmachine/SessionManager;->getSessionId()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v1, v0}, Lio/bidmachine/protobuf/sdk/Session$Builder;->setSessionId(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Session$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-direct {p0, p1, p2}, Lio/bidmachine/o5;->i(Landroid/content/Context;Lio/bidmachine/AdsType;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    new-instance p2, Lio/bidmachine/e5;

    .line 25
    .line 26
    invoke-direct {p2, v0}, Lio/bidmachine/e5;-><init>(Lio/bidmachine/protobuf/sdk/Session$Builder;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1, p2}, Lio/bidmachine/core/g;->H(Ljava/lang/Object;Lio/bidmachine/Executable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    return-object v0

    .line 33
    :catchall_0
    const/4 p1, 0x0

    .line 34
    return-object p1
.end method

.method private i(Landroid/content/Context;Lio/bidmachine/AdsType;)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/AdsType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/Date;

    .line 2
    .line 3
    invoke-static {p1}, Lio/bidmachine/m2;->q(Landroid/content/Context;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lio/bidmachine/SessionManager;->get()Lio/bidmachine/SessionManager;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Session$Context;->newBuilder()Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p1}, Lio/bidmachine/SessionManager;->getSessionDurationSec()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    int-to-long v2, v2

    .line 23
    invoke-virtual {v1, v2, v3}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->setSessionduration(J)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p1}, Lio/bidmachine/SessionManager;->getLastSessionDurationSec()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    int-to-long v2, p1

    .line 32
    invoke-virtual {v1, v2, v3}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->setLastSessionDuration(J)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {}, Lio/bidmachine/SessionManager;->get()Lio/bidmachine/SessionManager;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lio/bidmachine/SessionManager;->getSessionCount()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {p1, v1}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->setSc(I)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    new-instance v1, Ljava/util/Date;

    .line 49
    .line 50
    invoke-static {}, Lio/bidmachine/core/b;->a()J

    .line 51
    .line 52
    .line 53
    move-result-wide v2

    .line 54
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 55
    .line 56
    .line 57
    invoke-static {v0, v1}, Lkr/a;->c(Ljava/util/Date;Ljava/util/Date;)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-virtual {p1, v0}, Lio/bidmachine/protobuf/sdk/Session$Context$Builder;->setRetention(I)Lio/bidmachine/protobuf/sdk/Session$Context$Builder;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-direct {p0, p2}, Lio/bidmachine/o5;->j(Lio/bidmachine/AdsType;)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    invoke-static {v0}, Lio/bidmachine/analytics/BidMachineAnalytics;->getImpData(I)Ljava/util/Map;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_0

    .line 86
    .line 87
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Ljava/util/Map$Entry;

    .line 92
    .line 93
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    check-cast v2, Ljava/lang/String;

    .line 98
    .line 99
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    check-cast v1, Ljava/util/Map;

    .line 104
    .line 105
    invoke-direct {p0, p2, v2, v1}, Lio/bidmachine/o5;->f(Lio/bidmachine/AdsType;Ljava/lang/String;Ljava/util/Map;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    new-instance v2, Lio/bidmachine/f5;

    .line 113
    .line 114
    invoke-direct {v2, p1}, Lio/bidmachine/f5;-><init>(Lio/bidmachine/protobuf/sdk/Session$Context$Builder;)V

    .line 115
    .line 116
    .line 117
    invoke-static {v1, v2}, Lio/bidmachine/core/g;->H(Ljava/lang/Object;Lio/bidmachine/Executable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_0
    return-object p1

    .line 122
    :catchall_0
    const/4 p1, 0x0

    .line 123
    return-object p1
.end method

.method private j(Lio/bidmachine/AdsType;)I
    .locals 2
    .param p1    # Lio/bidmachine/AdsType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    sget-object v1, Lio/bidmachine/o5$a;->a:[I

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    aget p1, v1, p1

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq p1, v1, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    if-eq p1, v1, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    if-eq p1, v1, :cond_1

    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    if-eq p1, v1, :cond_1

    .line 24
    .line 25
    return v0

    .line 26
    :cond_1
    return v1
.end method

.method private static synthetic k(Lio/bidmachine/protobuf/sdk/ContextualData$Builder;Lio/bidmachine/AdsType;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/AdsType;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ContextualData$Builder;->setPlacement(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/ContextualData$Builder;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static synthetic l(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->setImagency(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static synthetic m(Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;->setAgency(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/ContextualData$ImpressionData$Builder;

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method d(Landroid/content/Context;Lcom/explorestack/protobuf/adcom/Context$User$Builder;Lio/bidmachine/AdsType;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/explorestack/protobuf/adcom/Context$User$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/AdsType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p3}, Lio/bidmachine/o5;->h(Landroid/content/Context;Lio/bidmachine/AdsType;)Lio/bidmachine/protobuf/sdk/Session$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Session$Builder;->build()Lio/bidmachine/protobuf/sdk/Session;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/explorestack/protobuf/Any;->pack(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Any;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/adcom/Context$User$Builder;->addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method e(Landroid/content/Context;Lio/bidmachine/protobuf/RequestTokenPayload$Builder;Lio/bidmachine/AdsFormat;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/protobuf/RequestTokenPayload$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/AdsFormat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-virtual {p3}, Lio/bidmachine/AdsFormat;->getAdsType()Lio/bidmachine/AdsType;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p3, 0x0

    .line 9
    :goto_0
    invoke-direct {p0, p1, p3}, Lio/bidmachine/o5;->h(Landroid/content/Context;Lio/bidmachine/AdsType;)Lio/bidmachine/protobuf/sdk/Session$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p2, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$Builder;->setSession(Lio/bidmachine/protobuf/sdk/Session$Builder;)Lio/bidmachine/protobuf/RequestTokenPayload$Builder;

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method
