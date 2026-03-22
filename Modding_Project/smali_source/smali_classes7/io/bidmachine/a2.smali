.class Lio/bidmachine/a2;
.super Ljava/lang/Object;
.source "BidMachineEventTracker.java"

# interfaces
.implements Lwq/b;


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

.method public static synthetic g(Lio/bidmachine/TrackEventType;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/a2;->n(Lio/bidmachine/TrackEventType;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h(Lfr/a;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/a2;->o(Lfr/a;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i(ILfr/a;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/a2;->m(ILfr/a;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic j(Ljava/util/List;Lwq/j;ILfr/a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lio/bidmachine/a2;->u(Ljava/util/List;Lwq/j;ILfr/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static k(Lwq/k;Lio/bidmachine/TrackEventType;)Ljava/util/List;
    .locals 2
    .param p0    # Lwq/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lio/bidmachine/TrackEventType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwq/k;",
            "Lio/bidmachine/TrackEventType;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/bidmachine/j2;->e()Lio/bidmachine/j2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lio/bidmachine/j2;->t(Lio/bidmachine/TrackEventType;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    :goto_0
    invoke-interface {p0, p1}, Lwq/k;->getTrackingUrls(Lio/bidmachine/TrackEventType;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    if-eqz p0, :cond_2

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    new-instance v1, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 33
    .line 34
    .line 35
    :cond_2
    :goto_1
    return-object v1
.end method

.method private static l(Ljava/lang/String;Lio/bidmachine/core/NetworkRequest$b;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lio/bidmachine/core/NetworkRequest$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/bidmachine/core/NetworkRequest$b<",
            "Ljava/lang/String;",
            "Lfr/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Lio/bidmachine/ApiRequest$Builder;

    .line 9
    .line 10
    invoke-direct {v0}, Lio/bidmachine/ApiRequest$Builder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Lio/bidmachine/ApiRequest$Builder;->url(Ljava/lang/String;)Lio/bidmachine/ApiRequest$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    sget-object v0, Lio/bidmachine/core/NetworkRequest$Method;->Get:Lio/bidmachine/core/NetworkRequest$Method;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lio/bidmachine/ApiRequest$Builder;->setMethod(Lio/bidmachine/core/NetworkRequest$Method;)Lio/bidmachine/ApiRequest$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    new-instance v0, Lio/bidmachine/ApiRequest$ApiTrackerDataBinder;

    .line 24
    .line 25
    invoke-direct {v0}, Lio/bidmachine/ApiRequest$ApiTrackerDataBinder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lio/bidmachine/ApiRequest$Builder;->setDataBinder(Lio/bidmachine/ApiRequest$ApiDataBinder;)Lio/bidmachine/ApiRequest$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0, p1}, Lio/bidmachine/ApiRequest$Builder;->setCallback(Lio/bidmachine/core/NetworkRequest$b;)Lio/bidmachine/ApiRequest$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Lio/bidmachine/ApiRequest$Builder;->request()Lio/bidmachine/ApiRequest;

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private static synthetic m(ILfr/a;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p1}, Lfr/a;->e()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1}, Lfr/a;->g()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    filled-new-array {p0, v0, p1}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string p1, "Dispatching error event to server - (%s-%s) - %s"

    .line 22
    .line 23
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method private static synthetic n(Lio/bidmachine/TrackEventType;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Dispatching event to server - %s"

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

.method private static synthetic o(Lfr/a;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Dispatching tracking fail to server - %s"

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

.method private static p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "${"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, "}"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v1, "%24%7B"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p1, "%7D"

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0
.end method

.method private static q(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/util/Map$Entry;

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/String;

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_0

    .line 38
    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-static {p0, v1, v0}, Lio/bidmachine/a2;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    return-object p0
.end method

.method static r(Ljava/lang/String;Lwq/j;IILwq/a;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lwq/j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lwq/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "BM_EVENT_CODE"

    .line 14
    .line 15
    invoke-static {p0, v1, v0}, Lio/bidmachine/a2;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    const-string v0, "BM_ACTION_CODE"

    .line 24
    .line 25
    invoke-static {p0, v0, p2}, Lio/bidmachine/a2;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    const-string p3, "BM_ERROR_REASON"

    .line 34
    .line 35
    invoke-static {p0, p3, p2}, Lio/bidmachine/a2;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    if-eqz p4, :cond_2

    .line 40
    .line 41
    invoke-virtual {p4}, Lwq/a;->c()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    if-eqz p2, :cond_1

    .line 46
    .line 47
    const-string p3, "AUCTION_SEAT_ID"

    .line 48
    .line 49
    invoke-static {p0, p3, p2}, Lio/bidmachine/a2;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    :cond_1
    invoke-virtual {p4}, Lwq/a;->d()Ljava/lang/Double;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    if-eqz p2, :cond_2

    .line 58
    .line 59
    const-string p3, "AUCTION_PRICE"

    .line 60
    .line 61
    invoke-static {p0, p3, p2}, Lio/bidmachine/a2;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    :cond_2
    if-eqz p1, :cond_3

    .line 66
    .line 67
    invoke-virtual {p1}, Lwq/j;->c()J

    .line 68
    .line 69
    .line 70
    move-result-wide p2

    .line 71
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    const-string p3, "BM_ACTION_START"

    .line 76
    .line 77
    invoke-static {p0, p3, p2}, Lio/bidmachine/a2;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {p1}, Lwq/j;->b()J

    .line 82
    .line 83
    .line 84
    move-result-wide p2

    .line 85
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    const-string p3, "BM_ACTION_FINISH"

    .line 90
    .line 91
    invoke-static {p0, p3, p2}, Lio/bidmachine/a2;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {p1}, Lwq/j;->a()Ljava/util/Map;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-static {p0, p1}, Lio/bidmachine/a2;->q(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    :cond_3
    return-object p0
.end method

.method private static s(Ljava/util/List;Ljava/util/List;Lwq/j;ILfr/a;)V
    .locals 3
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lwq/j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lfr/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lwq/j;",
            "I",
            "Lfr/a;",
            ")V"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p4}, Lfr/a;->j()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    new-instance v0, Lio/bidmachine/x1;

    .line 12
    .line 13
    invoke-direct {v0, p3, p4}, Lio/bidmachine/x1;-><init>(ILfr/a;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lio/bidmachine/core/a;->a(Lhr/b;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p4}, Lfr/a;->e()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-static {v0, p2, p3, v1, v2}, Lio/bidmachine/a2;->r(Ljava/lang/String;Lwq/j;IILwq/a;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-instance v1, Lio/bidmachine/a2$b;

    .line 45
    .line 46
    invoke-direct {v1, p1, p2}, Lio/bidmachine/a2$b;-><init>(Ljava/util/List;Lwq/j;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v1}, Lio/bidmachine/a2;->l(Ljava/lang/String;Lio/bidmachine/core/NetworkRequest$b;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    return-void
.end method

.method private static t(Ljava/util/List;Ljava/util/List;Lwq/j;Lio/bidmachine/TrackEventType;Lwq/a;)V
    .locals 3
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lwq/j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/TrackEventType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lwq/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lwq/j;",
            "Lio/bidmachine/TrackEventType;",
            "Lwq/a;",
            ")V"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lio/bidmachine/y1;

    .line 5
    .line 6
    invoke-direct {v0, p3}, Lio/bidmachine/y1;-><init>(Lio/bidmachine/TrackEventType;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lio/bidmachine/core/a;->a(Lhr/b;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p3}, Lio/bidmachine/TrackEventType;->getActionValue()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/4 v2, -0x1

    .line 33
    invoke-static {v0, p2, v1, v2, p4}, Lio/bidmachine/a2;->r(Ljava/lang/String;Lwq/j;IILwq/a;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v1, Lio/bidmachine/a2$a;

    .line 38
    .line 39
    invoke-direct {v1, p1, p2, p3}, Lio/bidmachine/a2$a;-><init>(Ljava/util/List;Lwq/j;Lio/bidmachine/TrackEventType;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1}, Lio/bidmachine/a2;->l(Ljava/lang/String;Lio/bidmachine/core/NetworkRequest$b;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return-void
.end method

.method private static u(Ljava/util/List;Lwq/j;ILfr/a;)V
    .locals 3
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lwq/j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lfr/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lwq/j;",
            "I",
            "Lfr/a;",
            ")V"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p3}, Lfr/a;->j()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    new-instance v0, Lio/bidmachine/z1;

    .line 12
    .line 13
    invoke-direct {v0, p3}, Lio/bidmachine/z1;-><init>(Lfr/a;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lio/bidmachine/core/a;->a(Lhr/b;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p3}, Lfr/a;->e()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-static {v0, p1, p2, v1, v2}, Lio/bidmachine/a2;->r(Ljava/lang/String;Lwq/j;IILwq/a;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0, v2}, Lio/bidmachine/a2;->l(Ljava/lang/String;Lio/bidmachine/core/NetworkRequest$b;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lwq/k;Lio/bidmachine/TrackEventType;Lwq/j;Lio/bidmachine/AdsType;Lfr/a;Lwq/a;)V
    .locals 0
    .param p1    # Lwq/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/TrackEventType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lwq/j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lio/bidmachine/AdsType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lfr/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lwq/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p5, :cond_0

    .line 2
    .line 3
    sget-object p4, Lio/bidmachine/TrackEventType;->Error:Lio/bidmachine/TrackEventType;

    .line 4
    .line 5
    invoke-static {p1, p4}, Lio/bidmachine/a2;->k(Lwq/k;Lio/bidmachine/TrackEventType;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p4

    .line 9
    sget-object p6, Lio/bidmachine/TrackEventType;->TrackingError:Lio/bidmachine/TrackEventType;

    .line 10
    .line 11
    invoke-static {p1, p6}, Lio/bidmachine/a2;->k(Lwq/k;Lio/bidmachine/TrackEventType;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p2}, Lio/bidmachine/TrackEventType;->getActionValue()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    invoke-static {p4, p1, p3, p2, p5}, Lio/bidmachine/a2;->s(Ljava/util/List;Ljava/util/List;Lwq/j;ILfr/a;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {p1, p2}, Lio/bidmachine/a2;->k(Lwq/k;Lio/bidmachine/TrackEventType;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p4

    .line 27
    sget-object p5, Lio/bidmachine/TrackEventType;->TrackingError:Lio/bidmachine/TrackEventType;

    .line 28
    .line 29
    invoke-static {p1, p5}, Lio/bidmachine/a2;->k(Lwq/k;Lio/bidmachine/TrackEventType;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p4, p1, p3, p2, p6}, Lio/bidmachine/a2;->t(Ljava/util/List;Ljava/util/List;Lwq/j;Lio/bidmachine/TrackEventType;Lwq/a;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method
