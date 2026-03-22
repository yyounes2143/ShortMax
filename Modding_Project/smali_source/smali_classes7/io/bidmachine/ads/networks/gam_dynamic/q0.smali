.class Lio/bidmachine/ads/networks/gam_dynamic/q0;
.super Ljava/lang/Object;
.source "WaterfallLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/gam_dynamic/q0$c;,
        Lio/bidmachine/ads/networks/gam_dynamic/q0$a;,
        Lio/bidmachine/ads/networks/gam_dynamic/q0$b;
    }
.end annotation


# instance fields
.field private final a:Lfr/j;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lhm/s;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final d:Lio/bidmachine/AdsFormat;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final e:Lim/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final f:Lio/bidmachine/ads/networks/gam_dynamic/g;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final g:Lio/bidmachine/ads/networks/gam_dynamic/j;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final h:Lio/bidmachine/ads/networks/gam_dynamic/o;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final i:Lhm/u;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final j:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final k:Ljava/util/Queue;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;",
            ">;"
        }
    .end annotation
.end field

.field final l:Ljava/util/Queue;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;",
            ">;"
        }
    .end annotation
.end field

.field final m:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final n:Lio/bidmachine/ads/networks/gam_dynamic/q0$c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final o:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lhm/s;Lio/bidmachine/AdsFormat;Lim/b;Lio/bidmachine/ads/networks/gam_dynamic/o;Lio/bidmachine/ads/networks/gam_dynamic/g;Lio/bidmachine/ads/networks/gam_dynamic/j;Lhm/u;Ljava/lang/String;Ljava/util/List;ILio/bidmachine/ads/networks/gam_dynamic/q0$c;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lhm/s;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/AdsFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lim/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lio/bidmachine/ads/networks/gam_dynamic/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lio/bidmachine/ads/networks/gam_dynamic/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lio/bidmachine/ads/networks/gam_dynamic/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lhm/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Lio/bidmachine/ads/networks/gam_dynamic/q0$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lhm/s;",
            "Lio/bidmachine/AdsFormat;",
            "Lim/b;",
            "Lio/bidmachine/ads/networks/gam_dynamic/o;",
            "Lio/bidmachine/ads/networks/gam_dynamic/g;",
            "Lio/bidmachine/ads/networks/gam_dynamic/j;",
            "Lhm/u;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;",
            ">;I",
            "Lio/bidmachine/ads/networks/gam_dynamic/q0$c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lfr/j;

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p2}, Lhm/s;->getNetworkName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, "WaterfallLoader"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-direct {v0, v1}, Lfr/j;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->a:Lfr/j;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->b:Landroid/content/Context;

    .line 37
    .line 38
    iput-object p2, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->c:Lhm/s;

    .line 39
    .line 40
    iput-object p3, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->d:Lio/bidmachine/AdsFormat;

    .line 41
    .line 42
    iput-object p4, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->e:Lim/b;

    .line 43
    .line 44
    iput-object p5, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->h:Lio/bidmachine/ads/networks/gam_dynamic/o;

    .line 45
    .line 46
    iput-object p6, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->f:Lio/bidmachine/ads/networks/gam_dynamic/g;

    .line 47
    .line 48
    iput-object p7, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->g:Lio/bidmachine/ads/networks/gam_dynamic/j;

    .line 49
    .line 50
    iput-object p8, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->i:Lhm/u;

    .line 51
    .line 52
    iput-object p9, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->j:Ljava/lang/String;

    .line 53
    .line 54
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 55
    .line 56
    invoke-direct {p1, p10}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>(Ljava/util/Collection;)V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->k:Ljava/util/Queue;

    .line 60
    .line 61
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 62
    .line 63
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->l:Ljava/util/Queue;

    .line 67
    .line 68
    iput p11, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->m:I

    .line 69
    .line 70
    iput-object p12, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->n:Lio/bidmachine/ads/networks/gam_dynamic/q0$c;

    .line 71
    .line 72
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    .line 74
    const/4 p2, 0x0

    .line 75
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 76
    .line 77
    .line 78
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    .line 80
    return-void
.end method

.method public static synthetic a(Lio/bidmachine/ads/networks/gam_dynamic/q0;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/ads/networks/gam_dynamic/q0;->r()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lio/bidmachine/ads/networks/gam_dynamic/q0;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/ads/networks/gam_dynamic/q0;->q()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lio/bidmachine/ads/networks/gam_dynamic/q0;Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/q0;->t(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lio/bidmachine/ads/networks/gam_dynamic/q0;J)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/ads/networks/gam_dynamic/q0;->p(J)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Lio/bidmachine/ads/networks/gam_dynamic/q0;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/ads/networks/gam_dynamic/q0;->o()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Lio/bidmachine/ads/networks/gam_dynamic/q0;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/ads/networks/gam_dynamic/q0;->u()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic h(Lio/bidmachine/ads/networks/gam_dynamic/q0;)Lio/bidmachine/ads/networks/gam_dynamic/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->f:Lio/bidmachine/ads/networks/gam_dynamic/g;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic i(Lio/bidmachine/ads/networks/gam_dynamic/q0;)Lio/bidmachine/ads/networks/gam_dynamic/q0$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->n:Lio/bidmachine/ads/networks/gam_dynamic/q0$c;

    .line 2
    .line 3
    return-object p0
.end method

.method private synthetic o()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->d:Lio/bidmachine/AdsFormat;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->j:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->k:Ljava/util/Queue;

    .line 6
    .line 7
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "(%s) Polling started (waterfallId - %s, ad unit count - %s)"

    .line 20
    .line 21
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method private synthetic p(J)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->d:Lio/bidmachine/AdsFormat;

    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string p2, "(%s) Execution ad unit load started after %s ms"

    .line 12
    .line 13
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method private synthetic q()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->d:Lio/bidmachine/AdsFormat;

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "(%s) Stop polling. Waterfall already filled with expensive ads"

    .line 8
    .line 9
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method private synthetic r()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->d:Lio/bidmachine/AdsFormat;

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "(%s) Can\'t create InternalAd"

    .line 8
    .line 9
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method private synthetic t(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->f:Lio/bidmachine/ads/networks/gam_dynamic/g;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->d:Lio/bidmachine/AdsFormat;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lio/bidmachine/ads/networks/gam_dynamic/g;->g(Lio/bidmachine/AdsFormat;)Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;->getPrice()D

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    invoke-virtual {v0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->m()Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;->getPrice()D

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    cmpg-double v0, v2, v4

    .line 25
    .line 26
    if-gtz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->f:Lio/bidmachine/ads/networks/gam_dynamic/g;

    .line 29
    .line 30
    iget-object v2, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->d:Lio/bidmachine/AdsFormat;

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Lio/bidmachine/ads/networks/gam_dynamic/g;->j(Lio/bidmachine/AdsFormat;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget v2, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->m:I

    .line 37
    .line 38
    if-lt v0, v2, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->a:Lfr/j;

    .line 41
    .line 42
    new-instance v2, Lio/bidmachine/ads/networks/gam_dynamic/o0;

    .line 43
    .line 44
    invoke-direct {v2, p0}, Lio/bidmachine/ads/networks/gam_dynamic/o0;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/q0;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v2}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 48
    .line 49
    .line 50
    sget-object v0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;->STATUS_SKIPPED:Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;

    .line 51
    .line 52
    invoke-virtual {p0, p1, v0, v1, v1}, Lio/bidmachine/ads/networks/gam_dynamic/q0;->j(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;Lhm/l;Lfr/a;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->k:Ljava/util/Queue;

    .line 56
    .line 57
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_0

    .line 66
    .line 67
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;

    .line 72
    .line 73
    sget-object v2, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;->STATUS_SKIPPED:Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;

    .line 74
    .line 75
    invoke-virtual {p0, v0, v2, v1, v1}, Lio/bidmachine/ads/networks/gam_dynamic/q0;->j(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;Lhm/l;Lfr/a;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/q0;->x()V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_1
    :try_start_0
    iget-object v3, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->e:Lim/b;

    .line 84
    .line 85
    iget-object v4, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->c:Lhm/s;

    .line 86
    .line 87
    iget-object v5, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->i:Lhm/u;

    .line 88
    .line 89
    iget-object v6, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->d:Lio/bidmachine/AdsFormat;

    .line 90
    .line 91
    new-instance v8, Lio/bidmachine/ads/networks/gam_dynamic/q0$a;

    .line 92
    .line 93
    invoke-direct {v8, p0}, Lio/bidmachine/ads/networks/gam_dynamic/q0$a;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/q0;)V

    .line 94
    .line 95
    .line 96
    move-object v7, p1

    .line 97
    invoke-interface/range {v3 .. v8}, Lim/b;->e(Lhm/s;Lhm/u;Lio/bidmachine/AdsFormat;Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lhm/k;)Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    if-nez v0, :cond_2

    .line 102
    .line 103
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->a:Lfr/j;

    .line 104
    .line 105
    new-instance v2, Lio/bidmachine/ads/networks/gam_dynamic/p0;

    .line 106
    .line 107
    invoke-direct {v2, p0}, Lio/bidmachine/ads/networks/gam_dynamic/p0;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/q0;)V

    .line 108
    .line 109
    .line 110
    invoke-static {v0, v2}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 111
    .line 112
    .line 113
    sget-object v0, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;->STATUS_SKIPPED:Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;

    .line 114
    .line 115
    const-string v2, "Can\'t create InternalAd"

    .line 116
    .line 117
    invoke-static {v2}, Lfr/a;->i(Ljava/lang/String;)Lfr/a;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {p0, p1, v0, v1, v2}, Lio/bidmachine/ads/networks/gam_dynamic/q0;->j(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;Lhm/l;Lfr/a;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v1}, Lio/bidmachine/ads/networks/gam_dynamic/q0;->w(Ljava/lang/Long;)V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :catchall_0
    move-exception v0

    .line 129
    goto :goto_1

    .line 130
    :cond_2
    iget-object v2, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->j:Ljava/lang/String;

    .line 131
    .line 132
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-nez v2, :cond_3

    .line 137
    .line 138
    const-string v2, "gam_waterfall_id"

    .line 139
    .line 140
    iget-object v3, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->j:Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {v0, v2, v3}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->I(Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    const-string v2, "gam_ad_unit_id"

    .line 146
    .line 147
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;->getAdUnitId()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    invoke-virtual {v0, v2, v3}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->I(Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    :cond_3
    iget-object v2, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->b:Landroid/content/Context;

    .line 155
    .line 156
    new-instance v3, Lio/bidmachine/ads/networks/gam_dynamic/q0$b;

    .line 157
    .line 158
    invoke-direct {v3, p0}, Lio/bidmachine/ads/networks/gam_dynamic/q0$b;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/q0;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v2, v3}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->A(Landroid/content/Context;Lhm/q;)V

    .line 162
    .line 163
    .line 164
    sget-object v2, Lio/bidmachine/TrackEventType;->AdUnitLoadStart:Lio/bidmachine/TrackEventType;

    .line 165
    .line 166
    invoke-virtual {p0, v2, v0}, Lio/bidmachine/ads/networks/gam_dynamic/q0;->A(Lio/bidmachine/TrackEventType;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    .line 168
    .line 169
    goto :goto_2

    .line 170
    :goto_1
    invoke-static {v0}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 171
    .line 172
    .line 173
    sget-object v2, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;->STATUS_SKIPPED:Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;

    .line 174
    .line 175
    const-string v3, "Exception loading InternalAd object"

    .line 176
    .line 177
    invoke-static {v3, v0}, Lfr/a;->l(Ljava/lang/String;Ljava/lang/Throwable;)Lfr/a;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {p0, p1, v2, v1, v0}, Lio/bidmachine/ads/networks/gam_dynamic/q0;->j(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;Lhm/l;Lfr/a;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0, v1}, Lio/bidmachine/ads/networks/gam_dynamic/q0;->w(Ljava/lang/Long;)V

    .line 185
    .line 186
    .line 187
    :goto_2
    return-void
.end method

.method private synthetic u()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->d:Lio/bidmachine/AdsFormat;

    .line 4
    .line 5
    iget-object v2, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->j:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->l:Ljava/util/Queue;

    .line 8
    .line 9
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "(%s) Polling completed (waterfallId - %s, ad unit count - %s)"

    .line 22
    .line 23
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->l:Ljava/util/Queue;

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;

    .line 47
    .line 48
    invoke-static {v2}, Lhm/a;->b(Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const-string v3, "\n> %s"

    .line 57
    .line 58
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    return-object v0
.end method


# virtual methods
.method A(Lio/bidmachine/TrackEventType;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V
    .locals 2
    .param p1    # Lio/bidmachine/TrackEventType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p2}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->m()Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, p1, v0, p2, v1}, Lio/bidmachine/ads/networks/gam_dynamic/q0;->B(Lio/bidmachine/TrackEventType;Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Lfr/a;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method B(Lio/bidmachine/TrackEventType;Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Lfr/a;)V
    .locals 3
    .param p1    # Lio/bidmachine/TrackEventType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lfr/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    new-instance v0, Lwq/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lwq/a;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->c:Lhm/s;

    .line 7
    .line 8
    invoke-interface {v1}, Lhm/s;->a()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lwq/a;->h(Ljava/lang/String;)Lwq/a;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p2}, Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;->getPrice()D

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {v0, p2}, Lwq/a;->i(Ljava/lang/Double;)Lwq/a;

    .line 27
    .line 28
    .line 29
    :cond_0
    if-eqz p3, :cond_1

    .line 30
    .line 31
    invoke-virtual {p3}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->getCustomParamsMap()Ljava/util/Map;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {v0, p2}, Lwq/a;->g(Ljava/util/Map;)Lwq/a;

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object p2, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->j:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-nez p2, :cond_2

    .line 45
    .line 46
    const-string p2, "gam_waterfall_id"

    .line 47
    .line 48
    iget-object p3, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->j:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, p2, p3}, Lwq/a;->f(Ljava/lang/String;Ljava/lang/String;)Lwq/a;

    .line 51
    .line 52
    .line 53
    :cond_2
    iget-object p2, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->g:Lio/bidmachine/ads/networks/gam_dynamic/j;

    .line 54
    .line 55
    iget-object p3, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->d:Lio/bidmachine/AdsFormat;

    .line 56
    .line 57
    invoke-interface {p2, p1, p3, v0, p4}, Lio/bidmachine/ads/networks/gam_dynamic/j;->f(Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsFormat;Lwq/a;Lfr/a;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method j(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;Lhm/l;Lfr/a;)V
    .locals 1
    .param p1    # Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lhm/l;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lfr/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->l:Ljava/util/Queue;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/bidmachine/ads/networks/gam_dynamic/q0;->l(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;Lhm/l;Lfr/a;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method k(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Ljava/lang/Long;)J
    .locals 2
    .param p1    # Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/q0;->n(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 8
    .line 9
    .line 10
    move-result-wide p1

    .line 11
    add-long/2addr v0, p1

    .line 12
    :cond_0
    return-wide v0
.end method

.method l(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;Lhm/l;Lfr/a;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;
    .locals 2
    .param p1    # Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lhm/l;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lfr/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;->newBuilder()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p2}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;->setStatus(Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;->getPrice()D

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    invoke-virtual {p2, v0, v1}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;->setPrice(D)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;->getAdUnitId()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;->getAdUnitId()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p2, v0}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;->setAdUnitId(Ljava/lang/String;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;->getServerParams()Lcom/explorestack/protobuf/StringValue;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p2, p1}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;->setServerParams(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;

    .line 37
    .line 38
    .line 39
    :cond_1
    if-eqz p3, :cond_3

    .line 40
    .line 41
    invoke-virtual {p3}, Lhm/l;->b()Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    invoke-virtual {p2, p1}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;->setEstimatedPrice(Lio/bidmachine/protobuf/Waterfall$Result$EstimatedPrice;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;

    .line 48
    .line 49
    .line 50
    :cond_2
    invoke-virtual {p3}, Lhm/l;->a()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result p3

    .line 58
    if-nez p3, :cond_3

    .line 59
    .line 60
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->newBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    invoke-virtual {p3, p1}, Lcom/explorestack/protobuf/StringValue$Builder;->setValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p2, p1}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;->setAdResponse(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;

    .line 73
    .line 74
    .line 75
    :cond_3
    if-eqz p4, :cond_4

    .line 76
    .line 77
    invoke-static {}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error;->newBuilder()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p4}, Lfr/a;->e()I

    .line 82
    .line 83
    .line 84
    move-result p3

    .line 85
    invoke-virtual {p1, p3}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->setCode(I)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p4}, Lfr/a;->g()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p3

    .line 93
    invoke-virtual {p1, p3}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;->setDescription(Ljava/lang/String;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p2, p1}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;->setError(Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Error$Builder;)Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;

    .line 98
    .line 99
    .line 100
    :cond_4
    invoke-virtual {p2}, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Builder;->build()Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    return-object p1
.end method

.method m(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;)J
    .locals 2
    .param p1    # Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;->hasSleepTimeAfter()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;->getSleepTimeAfter()Lcom/explorestack/protobuf/UInt32Value;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/explorestack/protobuf/UInt32Value;->getValue()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    int-to-long v0, p1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    const-wide/16 v0, 0x0

    .line 22
    .line 23
    :goto_1
    return-wide v0
.end method

.method n(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;)J
    .locals 2
    .param p1    # Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;->hasSleepTimeBefore()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;->getSleepTimeBefore()Lcom/explorestack/protobuf/UInt32Value;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/explorestack/protobuf/UInt32Value;->getValue()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    int-to-long v0, p1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    const-wide/16 v0, 0x0

    .line 22
    .line 23
    :goto_1
    return-wide v0
.end method

.method public run()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/q0;->v()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method v()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->a:Lfr/j;

    .line 13
    .line 14
    new-instance v1, Lio/bidmachine/ads/networks/gam_dynamic/k0;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lio/bidmachine/ads/networks/gam_dynamic/k0;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/q0;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 20
    .line 21
    .line 22
    sget-object v0, Lio/bidmachine/TrackEventType;->WaterfallLoadStart:Lio/bidmachine/TrackEventType;

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lio/bidmachine/ads/networks/gam_dynamic/q0;->z(Lio/bidmachine/TrackEventType;)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, v0}, Lio/bidmachine/ads/networks/gam_dynamic/q0;->w(Ljava/lang/Long;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method w(Ljava/lang/Long;)V
    .locals 4
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->k:Ljava/util/Queue;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/q0;->x()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->k:Ljava/util/Queue;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/q0;->w(Ljava/lang/Long;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    invoke-virtual {p0, v0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/q0;->k(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Ljava/lang/Long;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    iget-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->a:Lfr/j;

    .line 32
    .line 33
    new-instance v3, Lio/bidmachine/ads/networks/gam_dynamic/l0;

    .line 34
    .line 35
    invoke-direct {v3, p0, v1, v2}, Lio/bidmachine/ads/networks/gam_dynamic/l0;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/q0;J)V

    .line 36
    .line 37
    .line 38
    invoke-static {p1, v3}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->i:Lhm/u;

    .line 42
    .line 43
    new-instance v3, Lio/bidmachine/ads/networks/gam_dynamic/m0;

    .line 44
    .line 45
    invoke-direct {v3, p0, v0}, Lio/bidmachine/ads/networks/gam_dynamic/m0;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/q0;Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v3, v1, v2}, Lhm/u;->a(Ljava/lang/Runnable;J)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-nez p1, :cond_2

    .line 53
    .line 54
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/q0;->x()V

    .line 55
    .line 56
    .line 57
    :cond_2
    return-void
.end method

.method x()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->a:Lfr/j;

    .line 2
    .line 3
    new-instance v1, Lio/bidmachine/ads/networks/gam_dynamic/n0;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lio/bidmachine/ads/networks/gam_dynamic/n0;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/q0;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lio/bidmachine/TrackEventType;->WaterfallLoadFinish:Lio/bidmachine/TrackEventType;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lio/bidmachine/ads/networks/gam_dynamic/q0;->z(Lio/bidmachine/TrackEventType;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->n:Lio/bidmachine/ads/networks/gam_dynamic/q0$c;

    .line 23
    .line 24
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->l:Ljava/util/Queue;

    .line 25
    .line 26
    invoke-interface {v0, v1}, Lio/bidmachine/ads/networks/gam_dynamic/q0$c;->a(Ljava/util/Queue;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method y(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V
    .locals 2
    .param p1    # Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->f:Lio/bidmachine/ads/networks/gam_dynamic/g;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/g;->t(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->h:Lio/bidmachine/ads/networks/gam_dynamic/o;

    .line 10
    .line 11
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->n()Lio/bidmachine/AdsFormat;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-interface {v0, p1, v1}, Lio/bidmachine/ads/networks/gam_dynamic/o;->d(Lio/bidmachine/AdsFormat;Z)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method z(Lio/bidmachine/TrackEventType;)V
    .locals 1
    .param p1    # Lio/bidmachine/TrackEventType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v0, v0}, Lio/bidmachine/ads/networks/gam_dynamic/q0;->B(Lio/bidmachine/TrackEventType;Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Lfr/a;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method
