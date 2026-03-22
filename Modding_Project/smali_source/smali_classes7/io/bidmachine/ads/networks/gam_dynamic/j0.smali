.class Lio/bidmachine/ads/networks/gam_dynamic/j0;
.super Ljava/lang/Object;
.source "WaterfallController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/gam_dynamic/j0$b;,
        Lio/bidmachine/ads/networks/gam_dynamic/j0$a;
    }
.end annotation


# static fields
.field private static final w:Lcr/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


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

.field final d:Lio/bidmachine/AdsFormat;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final e:Lim/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final f:Lio/bidmachine/ads/networks/gam_dynamic/o;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final g:Lio/bidmachine/ads/networks/gam_dynamic/g;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final h:Lio/bidmachine/ads/networks/gam_dynamic/j;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final i:Lhm/u;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final j:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;",
            ">;"
        }
    .end annotation
.end field

.field final k:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final l:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final m:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final n:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field o:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field p:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field q:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field r:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field s:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field t:J
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field u:Lcom/explorestack/protobuf/StringValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field v:Lio/bidmachine/ads/networks/gam_dynamic/q0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ldr/a;

    .line 2
    .line 3
    invoke-direct {v0}, Ldr/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->w:Lcr/c;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lhm/s;Lio/bidmachine/AdsFormat;Lio/bidmachine/protobuf/Waterfall$Configuration;Lim/b;Lio/bidmachine/ads/networks/gam_dynamic/o;Lio/bidmachine/ads/networks/gam_dynamic/g;Lio/bidmachine/ads/networks/gam_dynamic/j;Lhm/u;)V
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
    .param p4    # Lio/bidmachine/protobuf/Waterfall$Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lim/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lio/bidmachine/ads/networks/gam_dynamic/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lio/bidmachine/ads/networks/gam_dynamic/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lio/bidmachine/ads/networks/gam_dynamic/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lhm/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

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
    const-string v2, "WaterfallController"

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
    iput-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->a:Lfr/j;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->b:Landroid/content/Context;

    .line 37
    .line 38
    iput-object p2, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->c:Lhm/s;

    .line 39
    .line 40
    iput-object p3, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->d:Lio/bidmachine/AdsFormat;

    .line 41
    .line 42
    iput-object p5, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->e:Lim/b;

    .line 43
    .line 44
    iput-object p6, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->f:Lio/bidmachine/ads/networks/gam_dynamic/o;

    .line 45
    .line 46
    iput-object p7, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->g:Lio/bidmachine/ads/networks/gam_dynamic/g;

    .line 47
    .line 48
    iput-object p9, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->i:Lhm/u;

    .line 49
    .line 50
    iput-object p8, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->h:Lio/bidmachine/ads/networks/gam_dynamic/j;

    .line 51
    .line 52
    new-instance p1, Ljava/util/LinkedList;

    .line 53
    .line 54
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->j:Ljava/util/List;

    .line 58
    .line 59
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    .line 61
    const/4 p2, 0x0

    .line 62
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 63
    .line 64
    .line 65
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    .line 67
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    .line 69
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 70
    .line 71
    .line 72
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    .line 74
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 75
    .line 76
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 77
    .line 78
    .line 79
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 80
    .line 81
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 82
    .line 83
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 84
    .line 85
    .line 86
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 87
    .line 88
    invoke-virtual {p0, p4}, Lio/bidmachine/ads/networks/gam_dynamic/j0;->w(Lio/bidmachine/protobuf/Waterfall$Configuration;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public static synthetic a(Lio/bidmachine/ads/networks/gam_dynamic/j0;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/ads/networks/gam_dynamic/j0;->o()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lio/bidmachine/ads/networks/gam_dynamic/j0;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/ads/networks/gam_dynamic/j0;->m()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lio/bidmachine/ads/networks/gam_dynamic/j0;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/ads/networks/gam_dynamic/j0;->k()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lio/bidmachine/ads/networks/gam_dynamic/j0;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/j0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Lio/bidmachine/ads/networks/gam_dynamic/j0;J)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/ads/networks/gam_dynamic/j0;->j(J)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/j0;->p(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic g(Lio/bidmachine/ads/networks/gam_dynamic/j0;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/ads/networks/gam_dynamic/j0;->n()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private synthetic j(J)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->d:Lio/bidmachine/AdsFormat;

    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p2, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    iget v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->s:I

    .line 18
    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget v2, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->r:I

    .line 24
    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    filled-new-array {v0, p1, p2, v1, v2}, [Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string p2, "(%s) Execution waterfall load started after - %s ms (failedAttempts - %s, maxRetryDegree - %s, retryBase - %s sec)"

    .line 34
    .line 35
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1
.end method

.method private synthetic k()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->d:Lio/bidmachine/AdsFormat;

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "(%s) Fail to start loading waterfall"

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

.method private synthetic l(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->d:Lio/bidmachine/AdsFormat;

    .line 2
    .line 3
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "(%s) onWaterfallRequestFail - %s"

    .line 8
    .line 9
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method private synthetic m()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->d:Lio/bidmachine/AdsFormat;

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "(%s) onWaterfallRequestSuccess"

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

.method private synthetic n()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->d:Lio/bidmachine/AdsFormat;

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "(%s) Loading completed"

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

.method private synthetic o()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->d:Lio/bidmachine/AdsFormat;

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "(%s) Request next waterfall"

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

.method private static synthetic p(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;->getPrice()D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;->getPrice()D

    .line 6
    .line 7
    .line 8
    move-result-wide p0

    .line 9
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    neg-int p0, p0

    .line 14
    return p0
.end method


# virtual methods
.method h()J
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->s:I

    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->r:I

    .line 14
    .line 15
    int-to-double v1, v1

    .line 16
    int-to-double v3, v0

    .line 17
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    mul-double/2addr v0, v2

    .line 27
    double-to-long v0, v0

    .line 28
    return-wide v0
.end method

.method i()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->v:Lio/bidmachine/ads/networks/gam_dynamic/q0;

    .line 3
    .line 4
    return-void
.end method

.method public q(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    if-nez v0, :cond_1

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void

    .line 27
    :cond_1
    iget-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    .line 29
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/j0;->r()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method r()V
    .locals 15
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lio/bidmachine/ads/networks/gam_dynamic/q0;

    .line 8
    .line 9
    iget-object v3, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->b:Landroid/content/Context;

    .line 10
    .line 11
    iget-object v4, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->c:Lhm/s;

    .line 12
    .line 13
    iget-object v5, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->d:Lio/bidmachine/AdsFormat;

    .line 14
    .line 15
    iget-object v6, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->e:Lim/b;

    .line 16
    .line 17
    iget-object v7, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->f:Lio/bidmachine/ads/networks/gam_dynamic/o;

    .line 18
    .line 19
    iget-object v8, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->g:Lio/bidmachine/ads/networks/gam_dynamic/g;

    .line 20
    .line 21
    iget-object v9, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->h:Lio/bidmachine/ads/networks/gam_dynamic/j;

    .line 22
    .line 23
    iget-object v10, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->i:Lhm/u;

    .line 24
    .line 25
    iget-object v11, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->o:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v12, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->j:Ljava/util/List;

    .line 28
    .line 29
    iget v13, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->q:I

    .line 30
    .line 31
    new-instance v14, Lio/bidmachine/ads/networks/gam_dynamic/j0$b;

    .line 32
    .line 33
    invoke-direct {v14, p0}, Lio/bidmachine/ads/networks/gam_dynamic/j0$b;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/j0;)V

    .line 34
    .line 35
    .line 36
    move-object v2, v0

    .line 37
    invoke-direct/range {v2 .. v14}, Lio/bidmachine/ads/networks/gam_dynamic/q0;-><init>(Landroid/content/Context;Lhm/s;Lio/bidmachine/AdsFormat;Lim/b;Lio/bidmachine/ads/networks/gam_dynamic/o;Lio/bidmachine/ads/networks/gam_dynamic/g;Lio/bidmachine/ads/networks/gam_dynamic/j;Lhm/u;Ljava/lang/String;Ljava/util/List;ILio/bidmachine/ads/networks/gam_dynamic/q0$c;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->v:Lio/bidmachine/ads/networks/gam_dynamic/q0;

    .line 41
    .line 42
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/j0;->h()J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    iget-object v2, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->a:Lfr/j;

    .line 47
    .line 48
    new-instance v3, Lio/bidmachine/ads/networks/gam_dynamic/c0;

    .line 49
    .line 50
    invoke-direct {v3, p0, v0, v1}, Lio/bidmachine/ads/networks/gam_dynamic/c0;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/j0;J)V

    .line 51
    .line 52
    .line 53
    invoke-static {v2, v3}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->i:Lhm/u;

    .line 57
    .line 58
    iget-object v3, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->v:Lio/bidmachine/ads/networks/gam_dynamic/q0;

    .line 59
    .line 60
    invoke-interface {v2, v3, v0, v1}, Lhm/u;->a(Ljava/lang/Runnable;J)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_0

    .line 65
    .line 66
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->a:Lfr/j;

    .line 67
    .line 68
    new-instance v1, Lio/bidmachine/ads/networks/gam_dynamic/d0;

    .line 69
    .line 70
    invoke-direct {v1, p0}, Lio/bidmachine/ads/networks/gam_dynamic/d0;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/j0;)V

    .line 71
    .line 72
    .line 73
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/j0;->u()V

    .line 77
    .line 78
    .line 79
    :cond_0
    return-void
.end method

.method s(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->a:Lfr/j;

    .line 2
    .line 3
    new-instance v1, Lio/bidmachine/ads/networks/gam_dynamic/h0;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/h0;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/j0;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/j0;->r()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method t(Lio/bidmachine/protobuf/Waterfall$Configuration;)V
    .locals 2
    .param p1    # Lio/bidmachine/protobuf/Waterfall$Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->a:Lfr/j;

    .line 2
    .line 3
    new-instance v1, Lio/bidmachine/ads/networks/gam_dynamic/i0;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lio/bidmachine/ads/networks/gam_dynamic/i0;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/j0;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/j0;->w(Lio/bidmachine/protobuf/Waterfall$Configuration;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Configuration;->getShouldBreak()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/j0;->u()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/j0;->r()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method u()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->a:Lfr/j;

    .line 2
    .line 3
    new-instance v1, Lio/bidmachine/ads/networks/gam_dynamic/f0;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lio/bidmachine/ads/networks/gam_dynamic/f0;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/j0;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/j0;->i()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method v(Ljava/util/Queue;)V
    .locals 5
    .param p1    # Ljava/util/Queue;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->a:Lfr/j;

    .line 2
    .line 3
    new-instance v1, Lio/bidmachine/ads/networks/gam_dynamic/g0;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lio/bidmachine/ads/networks/gam_dynamic/g0;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/j0;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->p:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_5

    .line 18
    .line 19
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->p:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v0}, Lio/bidmachine/core/g;->K(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {}, Lio/bidmachine/protobuf/Waterfall$Result;->newBuilder()Lio/bidmachine/protobuf/Waterfall$Result$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->newBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-object v2, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->d:Lio/bidmachine/AdsFormat;

    .line 37
    .line 38
    invoke-virtual {v2}, Lio/bidmachine/AdsFormat;->getRemoteName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/StringValue$Builder;->setValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue$Builder;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/Waterfall$Result$Builder;->setFormat(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/Waterfall$Result$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/Waterfall$Result$Builder;->addAllAdUnitResults(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/Waterfall$Result$Builder;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->o:Ljava/lang/String;

    .line 59
    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Lio/bidmachine/protobuf/Waterfall$Result$Builder;->setWaterfallId(Ljava/lang/String;)Lio/bidmachine/protobuf/Waterfall$Result$Builder;

    .line 63
    .line 64
    .line 65
    :cond_1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->g:Lio/bidmachine/ads/networks/gam_dynamic/g;

    .line 66
    .line 67
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->d:Lio/bidmachine/AdsFormat;

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lio/bidmachine/ads/networks/gam_dynamic/g;->i(Lio/bidmachine/AdsFormat;)Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-nez v1, :cond_2

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Lio/bidmachine/protobuf/Waterfall$Result$Builder;->addAllCachedAdUnits(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/Waterfall$Result$Builder;

    .line 82
    .line 83
    .line 84
    :cond_2
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->c:Lhm/s;

    .line 85
    .line 86
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->b:Landroid/content/Context;

    .line 87
    .line 88
    invoke-interface {v0, v1}, Lhm/s;->b(Landroid/content/Context;)Lcom/explorestack/protobuf/Struct;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    if-eqz v0, :cond_3

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Lio/bidmachine/protobuf/Waterfall$Result$Builder;->setExt(Lcom/explorestack/protobuf/Struct;)Lio/bidmachine/protobuf/Waterfall$Result$Builder;

    .line 95
    .line 96
    .line 97
    :cond_3
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->u:Lcom/explorestack/protobuf/StringValue;

    .line 98
    .line 99
    if-eqz v0, :cond_4

    .line 100
    .line 101
    invoke-virtual {p1, v0}, Lio/bidmachine/protobuf/Waterfall$Result$Builder;->setServerParams(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/Waterfall$Result$Builder;

    .line 102
    .line 103
    .line 104
    :cond_4
    new-instance v0, Lio/bidmachine/ads/networks/gam_dynamic/j0$a;

    .line 105
    .line 106
    invoke-direct {v0, p0}, Lio/bidmachine/ads/networks/gam_dynamic/j0$a;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/j0;)V

    .line 107
    .line 108
    .line 109
    new-instance v1, Lhm/v;

    .line 110
    .line 111
    iget-object v2, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->p:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Result$Builder;->build()Lio/bidmachine/protobuf/Waterfall$Result;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    iget-wide v3, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->t:J

    .line 118
    .line 119
    long-to-int v3, v3

    .line 120
    invoke-direct {v1, v2, p1, v3}, Lhm/v;-><init>(Ljava/lang/String;Lio/bidmachine/protobuf/Waterfall$Result;I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, v0}, Lio/bidmachine/core/NetworkRequest;->setCallback(Lio/bidmachine/core/NetworkRequest$b;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v0}, Lio/bidmachine/core/NetworkRequest;->setCancelCallback(Lio/bidmachine/core/NetworkRequest$c;)V

    .line 127
    .line 128
    .line 129
    sget-object p1, Lio/bidmachine/ads/networks/gam_dynamic/j0;->w:Lcr/c;

    .line 130
    .line 131
    invoke-virtual {v1, p1}, Lio/bidmachine/core/NetworkRequest;->request(Lcr/c;)V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :cond_5
    :goto_0
    const-string p1, "Request next waterfall failed (refreshUrl is null or empty or incorrect)"

    .line 136
    .line 137
    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/j0;->s(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    return-void
.end method

.method w(Lio/bidmachine/protobuf/Waterfall$Configuration;)V
    .locals 4
    .param p1    # Lio/bidmachine/protobuf/Waterfall$Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Configuration;->getId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->o:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->j:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Configuration;->getAdUnitsList()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->j:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->j:Ljava/util/List;

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lio/bidmachine/ads/networks/gam_dynamic/j0;->x(Ljava/util/List;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Configuration;->hasRefreshUrl()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/4 v1, 0x0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Configuration;->getRefreshUrl()Lcom/explorestack/protobuf/StringValue;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move-object v0, v1

    .line 47
    :goto_0
    if-eqz v0, :cond_2

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->getValue()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-nez v3, :cond_2

    .line 58
    .line 59
    invoke-static {v2}, Lio/bidmachine/core/g;->K(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_2

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->getValue()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iput-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->p:Ljava/lang/String;

    .line 70
    .line 71
    :cond_2
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Configuration;->hasCacheSize()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Configuration;->getCacheSize()Lcom/explorestack/protobuf/UInt32Value;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    goto :goto_1

    .line 82
    :cond_3
    move-object v0, v1

    .line 83
    :goto_1
    if-eqz v0, :cond_4

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UInt32Value;->getValue()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    goto :goto_2

    .line 90
    :cond_4
    const/4 v0, 0x1

    .line 91
    :goto_2
    iput v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->q:I

    .line 92
    .line 93
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Configuration;->hasRetryBase()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_5

    .line 98
    .line 99
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Configuration;->getRetryBase()Lcom/explorestack/protobuf/UInt32Value;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    goto :goto_3

    .line 104
    :cond_5
    move-object v0, v1

    .line 105
    :goto_3
    if-eqz v0, :cond_6

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UInt32Value;->getValue()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    goto :goto_4

    .line 112
    :cond_6
    const/4 v0, 0x2

    .line 113
    :goto_4
    iput v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->r:I

    .line 114
    .line 115
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Configuration;->hasMaxRetryDegree()Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_7

    .line 120
    .line 121
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Configuration;->getMaxRetryDegree()Lcom/explorestack/protobuf/UInt32Value;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    goto :goto_5

    .line 126
    :cond_7
    move-object v0, v1

    .line 127
    :goto_5
    if-eqz v0, :cond_8

    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UInt32Value;->getValue()I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    goto :goto_6

    .line 134
    :cond_8
    const/4 v0, 0x5

    .line 135
    :goto_6
    iput v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->s:I

    .line 136
    .line 137
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Configuration;->hasRefreshTimeout()Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_9

    .line 142
    .line 143
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Configuration;->getRefreshTimeout()Lcom/explorestack/protobuf/UInt64Value;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    goto :goto_7

    .line 148
    :cond_9
    move-object v0, v1

    .line 149
    :goto_7
    if-eqz v0, :cond_a

    .line 150
    .line 151
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UInt64Value;->getValue()J

    .line 152
    .line 153
    .line 154
    move-result-wide v2

    .line 155
    goto :goto_8

    .line 156
    :cond_a
    const-wide/16 v2, 0x2710

    .line 157
    .line 158
    :goto_8
    iput-wide v2, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->t:J

    .line 159
    .line 160
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Configuration;->hasServerParams()Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-eqz v0, :cond_b

    .line 165
    .line 166
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Configuration;->getServerParams()Lcom/explorestack/protobuf/StringValue;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    :cond_b
    iput-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->u:Lcom/explorestack/protobuf/StringValue;

    .line 171
    .line 172
    return-void
.end method

.method x(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/ads/networks/gam_dynamic/e0;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/bidmachine/ads/networks/gam_dynamic/e0;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
