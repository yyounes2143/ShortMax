.class Lio/bidmachine/u$d;
.super Ljava/lang/Object;
.source "AdResponse.java"

# interfaces
.implements Lio/bidmachine/AdProcessCallback;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/bidmachine/u;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/bidmachine/AdProcessCallback;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Object;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final d:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final e:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final h:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final i:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final j:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final k:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private volatile l:Z

.field private volatile m:Lio/bidmachine/core/VisibilitySource;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/bidmachine/u;)V
    .locals 1
    .param p1    # Lio/bidmachine/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/bidmachine/u$d;->a:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    new-instance p1, Ljava/util/WeakHashMap;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lio/bidmachine/u$d;->b:Ljava/util/Map;

    .line 17
    .line 18
    new-instance p1, Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lio/bidmachine/u$d;->c:Ljava/lang/Object;

    .line 24
    .line 25
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lio/bidmachine/u$d;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    .line 33
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    .line 35
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lio/bidmachine/u$d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    .line 40
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    .line 42
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lio/bidmachine/u$d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    .line 47
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    .line 49
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lio/bidmachine/u$d;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    .line 54
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55
    .line 56
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Lio/bidmachine/u$d;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    .line 61
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 62
    .line 63
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 64
    .line 65
    .line 66
    iput-object p1, p0, Lio/bidmachine/u$d;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    .line 68
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69
    .line 70
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 71
    .line 72
    .line 73
    iput-object p1, p0, Lio/bidmachine/u$d;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 74
    .line 75
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 76
    .line 77
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 78
    .line 79
    .line 80
    iput-object p1, p0, Lio/bidmachine/u$d;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 81
    .line 82
    iput-boolean v0, p0, Lio/bidmachine/u$d;->l:Z

    .line 83
    .line 84
    sget-object p1, Lio/bidmachine/core/VisibilitySource;->Network:Lio/bidmachine/core/VisibilitySource;

    .line 85
    .line 86
    iput-object p1, p0, Lio/bidmachine/u$d;->m:Lio/bidmachine/core/VisibilitySource;

    .line 87
    .line 88
    return-void
.end method

.method private static synthetic A(Lio/bidmachine/u;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "processClicked - %s"

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

.method private synthetic B(Lio/bidmachine/u;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/u$d;->l:Z

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v0, "processClosed (%s) - %s"

    .line 12
    .line 13
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method private static synthetic C(Lio/bidmachine/u;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "processDestroy - %s"

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

.method private static synthetic D(Lio/bidmachine/u;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "processExpired - %s"

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

.method private static synthetic E(Lio/bidmachine/u;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "processFillAd - %s"

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

.method private static synthetic F(Lio/bidmachine/u;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "processFinished - %s"

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

.method private static synthetic G(Lfr/a;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "processLoadFail - %s"

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

.method private static synthetic H(Lfr/a;Lio/bidmachine/AdProcessCallback;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lio/bidmachine/AdProcessCallback;->processLoadFail(Lfr/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic I(Lio/bidmachine/u;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "processLoadSuccess - %s"

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

.method private static synthetic J(Lio/bidmachine/u;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "processShown - %s"

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

.method private static synthetic K(Lfr/a;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "processShowFail - %s"

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

.method private static synthetic L(Lfr/a;Lio/bidmachine/AdProcessCallback;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lio/bidmachine/AdProcessCallback;->processShowFail(Lfr/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic M(Lio/bidmachine/u;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "processImpression - %s"

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

.method public static synthetic a(Lio/bidmachine/u;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/u$d;->F(Lio/bidmachine/u;)Ljava/lang/String;

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
    invoke-static {p0}, Lio/bidmachine/u$d;->M(Lio/bidmachine/u;)Ljava/lang/String;

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
    invoke-static {p0}, Lio/bidmachine/u$d;->J(Lio/bidmachine/u;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lio/bidmachine/u;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/u$d;->I(Lio/bidmachine/u;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Lfr/a;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/u$d;->G(Lfr/a;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Lio/bidmachine/u;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/u$d;->C(Lio/bidmachine/u;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Lio/bidmachine/u$d;Lio/bidmachine/u;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/u$d;->B(Lio/bidmachine/u;)Ljava/lang/String;

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
    invoke-static {p0}, Lio/bidmachine/u$d;->K(Lfr/a;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i(Lio/bidmachine/u;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/u$d;->z(Lio/bidmachine/u;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j(Lfr/a;Lio/bidmachine/AdProcessCallback;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/u$d;->H(Lfr/a;Lio/bidmachine/AdProcessCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic k(Lio/bidmachine/u;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/u$d;->A(Lio/bidmachine/u;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l(Lfr/a;Lio/bidmachine/AdProcessCallback;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/u$d;->L(Lfr/a;Lio/bidmachine/AdProcessCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic m(Lio/bidmachine/u;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/u$d;->E(Lio/bidmachine/u;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic n(Lio/bidmachine/u;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/u$d;->D(Lio/bidmachine/u;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic o(Lio/bidmachine/u$d;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/u$d;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic p(Lio/bidmachine/u$d;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/u$d;->x()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private r()Z
    .locals 4

    .line 1
    sget-object v0, Lio/bidmachine/u$c;->a:[I

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/u$d;->m:Lio/bidmachine/core/VisibilitySource;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_3

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    if-eq v0, v2, :cond_2

    .line 16
    .line 17
    const/4 v2, 0x3

    .line 18
    const/4 v3, 0x0

    .line 19
    if-eq v0, v2, :cond_0

    .line 20
    .line 21
    return v3

    .line 22
    :cond_0
    invoke-direct {p0}, Lio/bidmachine/u$d;->w()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-direct {p0}, Lio/bidmachine/u$d;->y()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move v1, v3

    .line 36
    :goto_0
    return v1

    .line 37
    :cond_2
    invoke-direct {p0}, Lio/bidmachine/u$d;->y()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    return v0

    .line 42
    :cond_3
    invoke-direct {p0}, Lio/bidmachine/u$d;->w()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    return v0
.end method

.method private u()Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/AdProcessCallback;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/u$d;->b:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method private v()Lio/bidmachine/u;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/u$d;->a:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/bidmachine/u;

    .line 8
    .line 9
    return-object v0
.end method

.method private w()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/u$d;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lio/bidmachine/u$d;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    return v0
.end method

.method private x()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/u$d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private y()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/u$d;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private static synthetic z(Lio/bidmachine/u;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "onBrokenCreativeEvent - %s"

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


# virtual methods
.method N()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/u$d;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    invoke-direct {p0}, Lio/bidmachine/u$d;->v()Lio/bidmachine/u;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    invoke-static {v0}, Lio/bidmachine/u;->i(Lio/bidmachine/u;)Lfr/j;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-instance v2, Lio/bidmachine/f0;

    .line 23
    .line 24
    invoke-direct {v2, v0}, Lio/bidmachine/f0;-><init>(Lio/bidmachine/u;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v2}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lio/bidmachine/u;->W()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lio/bidmachine/u;->A()Llp/a;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-interface {v1}, Llp/a;->onShown()V

    .line 40
    .line 41
    .line 42
    :cond_1
    sget-object v1, Lio/bidmachine/TrackEventType;->Show:Lio/bidmachine/TrackEventType;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lio/bidmachine/u;->s(Lio/bidmachine/TrackEventType;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    new-instance v0, Lio/bidmachine/h0;

    .line 48
    .line 49
    invoke-direct {v0}, Lio/bidmachine/h0;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lio/bidmachine/u$d;->t(Lio/bidmachine/Executable;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method O(Lio/bidmachine/AdProcessCallback;)V
    .locals 2
    .param p1    # Lio/bidmachine/AdProcessCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/u$d;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/u$d;->b:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method

.method public onBrokenCreativeEvent(Ljava/util/Map;)V
    .locals 3
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/bidmachine/u$d;->v()Lio/bidmachine/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {v0}, Lio/bidmachine/u;->i(Lio/bidmachine/u;)Lfr/j;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Lio/bidmachine/q0;

    .line 12
    .line 13
    invoke-direct {v2, v0}, Lio/bidmachine/q0;-><init>(Lio/bidmachine/u;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v2}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 17
    .line 18
    .line 19
    sget-object v1, Lio/bidmachine/TrackEventType;->BrokenCreativeDetector:Lio/bidmachine/TrackEventType;

    .line 20
    .line 21
    invoke-virtual {v0, v1, p1}, Lio/bidmachine/u;->v(Lio/bidmachine/TrackEventType;Ljava/util/Map;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public processClicked()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lio/bidmachine/u$d;->v()Lio/bidmachine/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-static {v0}, Lio/bidmachine/u;->i(Lio/bidmachine/u;)Lfr/j;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Lio/bidmachine/d0;

    .line 12
    .line 13
    invoke-direct {v2, v0}, Lio/bidmachine/d0;-><init>(Lio/bidmachine/u;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v2}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lio/bidmachine/u;->A()Llp/a;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-interface {v1}, Llp/a;->onClicked()V

    .line 26
    .line 27
    .line 28
    :cond_0
    sget-object v1, Lio/bidmachine/TrackEventType;->Click:Lio/bidmachine/TrackEventType;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lio/bidmachine/u;->s(Lio/bidmachine/TrackEventType;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    new-instance v0, Lio/bidmachine/e0;

    .line 34
    .line 35
    invoke-direct {v0}, Lio/bidmachine/e0;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lio/bidmachine/u$d;->t(Lio/bidmachine/Executable;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public processClosed()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lio/bidmachine/u$d;->v()Lio/bidmachine/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-static {v0}, Lio/bidmachine/u;->i(Lio/bidmachine/u;)Lfr/j;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Lio/bidmachine/k0;

    .line 12
    .line 13
    invoke-direct {v2, p0, v0}, Lio/bidmachine/k0;-><init>(Lio/bidmachine/u$d;Lio/bidmachine/u;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v2}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lio/bidmachine/u;->A()Llp/a;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget-boolean v2, p0, Lio/bidmachine/u$d;->l:Z

    .line 26
    .line 27
    invoke-interface {v1, v2}, Llp/a;->onClosed(Z)V

    .line 28
    .line 29
    .line 30
    :cond_0
    sget-object v1, Lio/bidmachine/TrackEventType;->Close:Lio/bidmachine/TrackEventType;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lio/bidmachine/u;->s(Lio/bidmachine/TrackEventType;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    new-instance v0, Lio/bidmachine/l0;

    .line 36
    .line 37
    invoke-direct {v0}, Lio/bidmachine/l0;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lio/bidmachine/u$d;->t(Lio/bidmachine/Executable;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public processDestroy()V
    .locals 3

    .line 1
    new-instance v0, Lio/bidmachine/x;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/bidmachine/x;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lio/bidmachine/u$d;->t(Lio/bidmachine/Executable;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lio/bidmachine/u$d;->v()Lio/bidmachine/u;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {v0}, Lio/bidmachine/u;->i(Lio/bidmachine/u;)Lfr/j;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    new-instance v2, Lio/bidmachine/y;

    .line 20
    .line 21
    invoke-direct {v2, v0}, Lio/bidmachine/y;-><init>(Lio/bidmachine/u;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v2}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lio/bidmachine/u;->q()V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public processExpired()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lio/bidmachine/u$d;->v()Lio/bidmachine/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {v0}, Lio/bidmachine/u;->i(Lio/bidmachine/u;)Lfr/j;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Lio/bidmachine/b0;

    .line 12
    .line 13
    invoke-direct {v2, v0}, Lio/bidmachine/b0;-><init>(Lio/bidmachine/u;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v2}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lio/bidmachine/u;->A()Llp/a;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-interface {v1}, Llp/a;->onExpired()V

    .line 26
    .line 27
    .line 28
    sget-object v1, Lio/bidmachine/TrackEventType;->Expired:Lio/bidmachine/TrackEventType;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lio/bidmachine/u;->s(Lio/bidmachine/TrackEventType;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    new-instance v1, Lio/bidmachine/c0;

    .line 34
    .line 35
    invoke-direct {v1}, Lio/bidmachine/c0;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v1}, Lio/bidmachine/u$d;->t(Lio/bidmachine/Executable;)V

    .line 39
    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-virtual {v0, v1}, Lio/bidmachine/u;->U(Z)V

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-virtual {p0}, Lio/bidmachine/u$d;->processDestroy()V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public processFillAd()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lio/bidmachine/u$d;->v()Lio/bidmachine/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-static {v0}, Lio/bidmachine/u;->i(Lio/bidmachine/u;)Lfr/j;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Lio/bidmachine/m0;

    .line 12
    .line 13
    invoke-direct {v2, v0}, Lio/bidmachine/m0;-><init>(Lio/bidmachine/u;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v2}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lio/bidmachine/u;->C()Lio/bidmachine/AdsType;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lio/bidmachine/AdsType;->isFullscreen()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Lio/bidmachine/u;->W()V

    .line 30
    .line 31
    .line 32
    :cond_0
    sget-object v1, Lio/bidmachine/TrackEventType;->FillAd:Lio/bidmachine/TrackEventType;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lio/bidmachine/u;->s(Lio/bidmachine/TrackEventType;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    new-instance v0, Lio/bidmachine/n0;

    .line 38
    .line 39
    invoke-direct {v0}, Lio/bidmachine/n0;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lio/bidmachine/u$d;->t(Lio/bidmachine/Executable;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public processFinished()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lio/bidmachine/u$d;->v()Lio/bidmachine/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-static {v0}, Lio/bidmachine/u;->i(Lio/bidmachine/u;)Lfr/j;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Lio/bidmachine/o0;

    .line 12
    .line 13
    invoke-direct {v2, v0}, Lio/bidmachine/o0;-><init>(Lio/bidmachine/u;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v2}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lio/bidmachine/u;->A()Llp/a;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-interface {v0}, Llp/a;->onFinished()V

    .line 26
    .line 27
    .line 28
    :cond_0
    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lio/bidmachine/u$d;->l:Z

    .line 30
    .line 31
    :cond_1
    new-instance v0, Lio/bidmachine/p0;

    .line 32
    .line 33
    invoke-direct {v0}, Lio/bidmachine/p0;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lio/bidmachine/u$d;->t(Lio/bidmachine/Executable;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public processLoadFail(Lfr/a;)V
    .locals 3
    .param p1    # Lfr/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/u$d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lio/bidmachine/u$d;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lio/bidmachine/u$d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lio/bidmachine/u$d;->v()Lio/bidmachine/u;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-static {v0}, Lio/bidmachine/u;->i(Lio/bidmachine/u;)Lfr/j;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    new-instance v2, Lio/bidmachine/r0;

    .line 33
    .line 34
    invoke-direct {v2, p1}, Lio/bidmachine/r0;-><init>(Lfr/a;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v2}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lio/bidmachine/u;->o()V

    .line 41
    .line 42
    .line 43
    sget-object v1, Lio/bidmachine/TrackEventType;->Load:Lio/bidmachine/TrackEventType;

    .line 44
    .line 45
    invoke-virtual {v0, v1, p1}, Lio/bidmachine/u;->t(Lio/bidmachine/TrackEventType;Lfr/a;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    new-instance v0, Lio/bidmachine/w;

    .line 49
    .line 50
    invoke-direct {v0, p1}, Lio/bidmachine/w;-><init>(Lfr/a;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Lio/bidmachine/u$d;->t(Lio/bidmachine/Executable;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lio/bidmachine/u$d;->processDestroy()V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public processLoadSuccess()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/u$d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lio/bidmachine/u$d;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lio/bidmachine/u$d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lio/bidmachine/u$d;->v()Lio/bidmachine/u;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-static {v0}, Lio/bidmachine/u;->i(Lio/bidmachine/u;)Lfr/j;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    new-instance v2, Lio/bidmachine/z;

    .line 33
    .line 34
    invoke-direct {v2, v0}, Lio/bidmachine/z;-><init>(Lio/bidmachine/u;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v2}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lio/bidmachine/u;->o()V

    .line 41
    .line 42
    .line 43
    sget-object v1, Lio/bidmachine/TrackEventType;->Load:Lio/bidmachine/TrackEventType;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lio/bidmachine/u;->s(Lio/bidmachine/TrackEventType;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-static {}, Lio/bidmachine/UserAgentManager;->updateWebViewUserAgent()V

    .line 49
    .line 50
    .line 51
    new-instance v0, Lio/bidmachine/a0;

    .line 52
    .line 53
    invoke-direct {v0}, Lio/bidmachine/a0;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v0}, Lio/bidmachine/u$d;->t(Lio/bidmachine/Executable;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public processShowFail(Lfr/a;)V
    .locals 3
    .param p1    # Lfr/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lio/bidmachine/u$d;->v()Lio/bidmachine/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-static {v0}, Lio/bidmachine/u;->i(Lio/bidmachine/u;)Lfr/j;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Lio/bidmachine/i0;

    .line 12
    .line 13
    invoke-direct {v2, p1}, Lio/bidmachine/i0;-><init>(Lfr/a;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v2}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lio/bidmachine/u;->A()Llp/a;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-interface {v1}, Llp/a;->onShowFailed()V

    .line 26
    .line 27
    .line 28
    :cond_0
    sget-object v1, Lio/bidmachine/TrackEventType;->Show:Lio/bidmachine/TrackEventType;

    .line 29
    .line 30
    invoke-virtual {v0, v1, p1}, Lio/bidmachine/u;->t(Lio/bidmachine/TrackEventType;Lfr/a;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    new-instance v0, Lio/bidmachine/j0;

    .line 34
    .line 35
    invoke-direct {v0, p1}, Lio/bidmachine/j0;-><init>(Lfr/a;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lio/bidmachine/u$d;->t(Lio/bidmachine/Executable;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public processShown()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/u$d;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lio/bidmachine/u$d;->r()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lio/bidmachine/u$d;->N()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public processStartVisibilityTracker()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/u$d;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public processVisibilityTrackerImpression()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/u$d;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-direct {p0}, Lio/bidmachine/u$d;->v()Lio/bidmachine/u;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-static {v0}, Lio/bidmachine/u;->i(Lio/bidmachine/u;)Lfr/j;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Lio/bidmachine/v;

    .line 22
    .line 23
    invoke-direct {v2, v0}, Lio/bidmachine/v;-><init>(Lio/bidmachine/u;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v2}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lio/bidmachine/u;->A()Llp/a;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-interface {v1}, Llp/a;->onImpression()V

    .line 36
    .line 37
    .line 38
    :cond_1
    sget-object v1, Lio/bidmachine/TrackEventType;->Impression:Lio/bidmachine/TrackEventType;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lio/bidmachine/u;->s(Lio/bidmachine/TrackEventType;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    new-instance v0, Lio/bidmachine/g0;

    .line 44
    .line 45
    invoke-direct {v0}, Lio/bidmachine/g0;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lio/bidmachine/u$d;->t(Lio/bidmachine/Executable;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public processVisibilityTrackerShown()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/u$d;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lio/bidmachine/u$d;->r()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lio/bidmachine/u$d;->N()V

    .line 14
    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method q(Lio/bidmachine/AdProcessCallback;)V
    .locals 3
    .param p1    # Lio/bidmachine/AdProcessCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/u$d;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/u$d;->b:Ljava/util/Map;

    .line 5
    .line 6
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 7
    .line 8
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p1
.end method

.method s()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/u$d;->a:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/u$d;->c:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/u$d;->b:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 12
    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw v1
.end method

.method public setVisibilitySource(Lio/bidmachine/core/VisibilitySource;)V
    .locals 0
    .param p1    # Lio/bidmachine/core/VisibilitySource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/u$d;->m:Lio/bidmachine/core/VisibilitySource;

    .line 2
    .line 3
    return-void
.end method

.method t(Lio/bidmachine/Executable;)V
    .locals 3
    .param p1    # Lio/bidmachine/Executable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/Executable<",
            "Lio/bidmachine/AdProcessCallback;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/u$d;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lio/bidmachine/u$d;->u()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lio/bidmachine/AdProcessCallback;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-interface {p1, v2}, Lio/bidmachine/Executable;->execute(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p1
.end method
