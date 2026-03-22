.class public Lio/bidmachine/iab/vast/activity/VastActivity;
.super Lio/bidmachine/rendering/internal/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/iab/vast/activity/VastActivity$c;,
        Lio/bidmachine/iab/vast/activity/VastActivity$a;
    }
.end annotation


# static fields
.field static final h:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Ltm/a;",
            ">;>;"
        }
    .end annotation
.end field

.field static final i:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lio/bidmachine/iab/vast/activity/VastView;",
            ">;>;"
        }
    .end annotation
.end field

.field private static j:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/bidmachine/iab/vast/VastPlaybackListener;",
            ">;"
        }
    .end annotation
.end field

.field private static k:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/bidmachine/iab/measurer/VastAdMeasurer;",
            ">;"
        }
    .end annotation
.end field

.field private static l:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/bidmachine/iab/measurer/MraidAdMeasurer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ltm/i;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private b:Lio/bidmachine/iab/vast/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Lio/bidmachine/iab/vast/activity/VastView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Ltm/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Z

.field private f:Z

.field private g:Z


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
    sput-object v0, Lio/bidmachine/iab/vast/activity/VastActivity;->h:Ljava/util/Map;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lio/bidmachine/iab/vast/activity/VastActivity;->i:Ljava/util/Map;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/a;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/bidmachine/iab/vast/activity/VastActivity$c;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lio/bidmachine/iab/vast/activity/VastActivity$c;-><init>(Lio/bidmachine/iab/vast/activity/VastActivity;Lio/bidmachine/iab/vast/activity/VastActivity$b;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->a:Ltm/i;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->e:Z

    .line 14
    .line 15
    return-void
.end method

.method static synthetic e(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    sput-object p0, Lio/bidmachine/iab/vast/activity/VastActivity;->j:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lio/bidmachine/iab/vast/activity/VastActivity;)Ltm/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->d:Ltm/a;

    .line 2
    .line 3
    return-object p0
.end method

.method private g(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    const/4 p1, 0x7

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x2

    .line 7
    if-ne p1, v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x6

    .line 10
    goto :goto_0

    .line 11
    :cond_1
    const/4 p1, 0x4

    .line 12
    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method static synthetic h(Lio/bidmachine/iab/vast/a;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/iab/vast/activity/VastActivity;->y(Lio/bidmachine/iab/vast/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic i(Lio/bidmachine/iab/vast/a;Lio/bidmachine/iab/vast/activity/VastView;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/iab/vast/activity/VastActivity;->s(Lio/bidmachine/iab/vast/a;Lio/bidmachine/iab/vast/activity/VastView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private j(Lio/bidmachine/iab/vast/a;Lqm/a;)V
    .locals 1
    .param p1    # Lio/bidmachine/iab/vast/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lqm/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->d:Ltm/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Ltm/a;->b(Lio/bidmachine/iab/vast/a;Lqm/a;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method static synthetic k(Lio/bidmachine/iab/vast/a;Ltm/a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/iab/vast/activity/VastActivity;->t(Lio/bidmachine/iab/vast/a;Ltm/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private l(Lio/bidmachine/iab/vast/a;Z)V
    .locals 2
    .param p1    # Lio/bidmachine/iab/vast/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->d:Ltm/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->g:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v0, p0, p1, p2}, Ltm/a;->e(Lio/bidmachine/iab/vast/activity/VastActivity;Lio/bidmachine/iab/vast/a;Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 p2, 0x1

    .line 13
    iput-boolean p2, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->g:Z

    .line 14
    .line 15
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    const/16 v0, 0x80

    .line 20
    .line 21
    invoke-virtual {p2, v0}, Landroid/view/Window;->clearFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p2

    .line 26
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    const/4 v0, 0x0

    .line 31
    new-array v0, v0, [Ljava/lang/Object;

    .line 32
    .line 33
    const-string v1, "VastActivity"

    .line 34
    .line 35
    invoke-static {v1, p2, v0}, Ltm/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    if-eqz p1, :cond_1

    .line 39
    .line 40
    invoke-virtual {p1}, Lio/bidmachine/iab/vast/a;->L()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-direct {p0, p1}, Lio/bidmachine/iab/vast/activity/VastActivity;->g(I)V

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-static {p0}, Lyq/n;->a(Landroid/app/Activity;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method static synthetic m(Lio/bidmachine/iab/vast/activity/VastActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/iab/vast/activity/VastActivity;->g(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic n(Lio/bidmachine/iab/vast/activity/VastActivity;Lio/bidmachine/iab/vast/a;Lqm/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/iab/vast/activity/VastActivity;->j(Lio/bidmachine/iab/vast/a;Lqm/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic o(Lio/bidmachine/iab/vast/activity/VastActivity;Lio/bidmachine/iab/vast/a;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/iab/vast/activity/VastActivity;->l(Lio/bidmachine/iab/vast/a;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private p(Lio/bidmachine/iab/vast/activity/VastView;)V
    .locals 0
    .param p1    # Lio/bidmachine/iab/vast/activity/VastView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lsm/q;->h(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lsm/q;->J(Landroid/view/View;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lsm/q;->j(Landroid/app/Activity;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method static synthetic q(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    sput-object p0, Lio/bidmachine/iab/vast/activity/VastActivity;->k:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic r(Lio/bidmachine/iab/vast/a;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/iab/vast/activity/VastActivity;->z(Lio/bidmachine/iab/vast/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static s(Lio/bidmachine/iab/vast/a;Lio/bidmachine/iab/vast/activity/VastView;)V
    .locals 2
    .param p0    # Lio/bidmachine/iab/vast/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lio/bidmachine/iab/vast/activity/VastView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lio/bidmachine/iab/vast/activity/VastActivity;->i:Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/a;->H()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private static t(Lio/bidmachine/iab/vast/a;Ltm/a;)V
    .locals 2
    .param p0    # Lio/bidmachine/iab/vast/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ltm/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lio/bidmachine/iab/vast/activity/VastActivity;->h:Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/a;->H()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private u(Lio/bidmachine/iab/vast/a;)Ljava/lang/Integer;
    .locals 2
    .param p1    # Lio/bidmachine/iab/vast/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/iab/vast/a;->F()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-le v0, v1, :cond_0

    .line 7
    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1

    .line 13
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/iab/vast/a;->K()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 28
    .line 29
    if-eq p1, v0, :cond_1

    .line 30
    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    :cond_1
    const/4 p1, 0x0

    .line 37
    return-object p1
.end method

.method static synthetic v(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    sput-object p0, Lio/bidmachine/iab/vast/activity/VastActivity;->l:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-object p0
.end method

.method private static w(Lio/bidmachine/iab/vast/a;)Ltm/a;
    .locals 2
    .param p0    # Lio/bidmachine/iab/vast/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/iab/vast/activity/VastActivity;->h:Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/a;->H()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Ltm/a;

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_1
    :goto_0
    invoke-static {p0}, Lio/bidmachine/iab/vast/activity/VastActivity;->y(Lio/bidmachine/iab/vast/a;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method

.method private static x(Lio/bidmachine/iab/vast/a;)Lio/bidmachine/iab/vast/activity/VastView;
    .locals 2
    .param p0    # Lio/bidmachine/iab/vast/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/iab/vast/activity/VastActivity;->i:Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/a;->H()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lio/bidmachine/iab/vast/activity/VastView;

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_1
    :goto_0
    invoke-static {p0}, Lio/bidmachine/iab/vast/activity/VastActivity;->z(Lio/bidmachine/iab/vast/a;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method

.method private static y(Lio/bidmachine/iab/vast/a;)V
    .locals 1
    .param p0    # Lio/bidmachine/iab/vast/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lio/bidmachine/iab/vast/activity/VastActivity;->h:Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/a;->H()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private static z(Lio/bidmachine/iab/vast/a;)V
    .locals 1
    .param p0    # Lio/bidmachine/iab/vast/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lio/bidmachine/iab/vast/activity/VastActivity;->i:Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/a;->H()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method protected b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->c:Lio/bidmachine/iab/vast/activity/VastView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/activity/VastView;->u0()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lio/bidmachine/rendering/internal/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "vast_request_id"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Ltm/f;->a(Ljava/lang/String;)Lio/bidmachine/iab/vast/a;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->b:Lio/bidmachine/iab/vast/a;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    const-string v0, "isFinishedPerformed"

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->b:Lio/bidmachine/iab/vast/a;

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    const-string p1, "VastRequest is null"

    .line 39
    .line 40
    invoke-static {p1}, Lqm/a;->f(Ljava/lang/String;)Lqm/a;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, v0, p1}, Lio/bidmachine/iab/vast/activity/VastActivity;->j(Lio/bidmachine/iab/vast/a;Lqm/a;)V

    .line 46
    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    invoke-direct {p0, v0, p1}, Lio/bidmachine/iab/vast/activity/VastActivity;->l(Lio/bidmachine/iab/vast/a;Z)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    if-nez p1, :cond_2

    .line 54
    .line 55
    invoke-direct {p0, v0}, Lio/bidmachine/iab/vast/activity/VastActivity;->u(Lio/bidmachine/iab/vast/a;)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    invoke-direct {p0, v0}, Lio/bidmachine/iab/vast/activity/VastActivity;->g(I)V

    .line 66
    .line 67
    .line 68
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const/high16 v2, 0x10000

    .line 77
    .line 78
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iget v0, v0, Landroid/content/pm/ActivityInfo;->configChanges:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    and-int/lit16 v0, v0, 0x80

    .line 85
    .line 86
    if-nez v0, :cond_2

    .line 87
    .line 88
    return-void

    .line 89
    :catch_0
    :cond_2
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->b:Lio/bidmachine/iab/vast/a;

    .line 90
    .line 91
    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastActivity;->w(Lio/bidmachine/iab/vast/a;)Ltm/a;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    iput-object v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->d:Ltm/a;

    .line 96
    .line 97
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->b:Lio/bidmachine/iab/vast/a;

    .line 98
    .line 99
    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastActivity;->x(Lio/bidmachine/iab/vast/a;)Lio/bidmachine/iab/vast/activity/VastView;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iput-object v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->c:Lio/bidmachine/iab/vast/activity/VastView;

    .line 104
    .line 105
    const/4 v1, 0x1

    .line 106
    if-nez v0, :cond_3

    .line 107
    .line 108
    iput-boolean v1, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->e:Z

    .line 109
    .line 110
    new-instance v0, Lio/bidmachine/iab/vast/activity/VastView;

    .line 111
    .line 112
    invoke-direct {v0, p0}, Lio/bidmachine/iab/vast/activity/VastView;-><init>(Landroid/content/Context;)V

    .line 113
    .line 114
    .line 115
    iput-object v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->c:Lio/bidmachine/iab/vast/activity/VastView;

    .line 116
    .line 117
    :cond_3
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->c:Lio/bidmachine/iab/vast/activity/VastView;

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->c:Lio/bidmachine/iab/vast/activity/VastView;

    .line 123
    .line 124
    iget-object v2, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->a:Ltm/i;

    .line 125
    .line 126
    invoke-virtual {v0, v2}, Lio/bidmachine/iab/vast/activity/VastView;->setListener(Ltm/i;)V

    .line 127
    .line 128
    .line 129
    sget-object v0, Lio/bidmachine/iab/vast/activity/VastActivity;->j:Ljava/lang/ref/WeakReference;

    .line 130
    .line 131
    if-eqz v0, :cond_4

    .line 132
    .line 133
    iget-object v2, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->c:Lio/bidmachine/iab/vast/activity/VastView;

    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    check-cast v0, Lio/bidmachine/iab/vast/VastPlaybackListener;

    .line 140
    .line 141
    invoke-virtual {v2, v0}, Lio/bidmachine/iab/vast/activity/VastView;->setPlaybackListener(Lio/bidmachine/iab/vast/VastPlaybackListener;)V

    .line 142
    .line 143
    .line 144
    :cond_4
    sget-object v0, Lio/bidmachine/iab/vast/activity/VastActivity;->k:Ljava/lang/ref/WeakReference;

    .line 145
    .line 146
    if-eqz v0, :cond_5

    .line 147
    .line 148
    iget-object v2, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->c:Lio/bidmachine/iab/vast/activity/VastView;

    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    check-cast v0, Lio/bidmachine/iab/measurer/VastAdMeasurer;

    .line 155
    .line 156
    invoke-virtual {v2, v0}, Lio/bidmachine/iab/vast/activity/VastView;->setAdMeasurer(Lio/bidmachine/iab/measurer/VastAdMeasurer;)V

    .line 157
    .line 158
    .line 159
    :cond_5
    sget-object v0, Lio/bidmachine/iab/vast/activity/VastActivity;->l:Ljava/lang/ref/WeakReference;

    .line 160
    .line 161
    if-eqz v0, :cond_6

    .line 162
    .line 163
    iget-object v2, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->c:Lio/bidmachine/iab/vast/activity/VastView;

    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    check-cast v0, Lio/bidmachine/iab/measurer/MraidAdMeasurer;

    .line 170
    .line 171
    invoke-virtual {v2, v0}, Lio/bidmachine/iab/vast/activity/VastView;->setPostBannerAdMeasurer(Lio/bidmachine/iab/measurer/MraidAdMeasurer;)V

    .line 172
    .line 173
    .line 174
    :cond_6
    if-eqz p1, :cond_8

    .line 175
    .line 176
    const-string v0, "isLoadPerformed"

    .line 177
    .line 178
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    if-nez p1, :cond_7

    .line 183
    .line 184
    goto :goto_0

    .line 185
    :cond_7
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->c:Lio/bidmachine/iab/vast/activity/VastView;

    .line 186
    .line 187
    invoke-direct {p0, p1}, Lio/bidmachine/iab/vast/activity/VastActivity;->p(Lio/bidmachine/iab/vast/activity/VastView;)V

    .line 188
    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_8
    :goto_0
    iput-boolean v1, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->f:Z

    .line 192
    .line 193
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->c:Lio/bidmachine/iab/vast/activity/VastView;

    .line 194
    .line 195
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->b:Lio/bidmachine/iab/vast/a;

    .line 196
    .line 197
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 198
    .line 199
    invoke-virtual {p1, v0, v1}, Lio/bidmachine/iab/vast/activity/VastView;->f0(Lio/bidmachine/iab/vast/a;Ljava/lang/Boolean;)Z

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    if-eqz p1, :cond_9

    .line 204
    .line 205
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->c:Lio/bidmachine/iab/vast/activity/VastView;

    .line 206
    .line 207
    invoke-direct {p0, p1}, Lio/bidmachine/iab/vast/activity/VastActivity;->p(Lio/bidmachine/iab/vast/activity/VastView;)V

    .line 208
    .line 209
    .line 210
    :cond_9
    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->b:Lio/bidmachine/iab/vast/a;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-object v1, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->c:Lio/bidmachine/iab/vast/activity/VastView;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1}, Lio/bidmachine/iab/vast/activity/VastView;->z0()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 27
    :goto_0
    invoke-direct {p0, v0, v1}, Lio/bidmachine/iab/vast/activity/VastActivity;->l(Lio/bidmachine/iab/vast/a;Z)V

    .line 28
    .line 29
    .line 30
    iget-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->e:Z

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->c:Lio/bidmachine/iab/vast/activity/VastView;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/activity/VastView;->e0()V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->b:Lio/bidmachine/iab/vast/a;

    .line 42
    .line 43
    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastActivity;->y(Lio/bidmachine/iab/vast/a;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->b:Lio/bidmachine/iab/vast/a;

    .line 47
    .line 48
    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastActivity;->z(Lio/bidmachine/iab/vast/a;)V

    .line 49
    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    sput-object v0, Lio/bidmachine/iab/vast/activity/VastActivity;->j:Ljava/lang/ref/WeakReference;

    .line 53
    .line 54
    sput-object v0, Lio/bidmachine/iab/vast/activity/VastActivity;->k:Ljava/lang/ref/WeakReference;

    .line 55
    .line 56
    sput-object v0, Lio/bidmachine/iab/vast/activity/VastActivity;->l:Ljava/lang/ref/WeakReference;

    .line 57
    .line 58
    :cond_2
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->f:Z

    .line 5
    .line 6
    const-string v1, "isLoadPerformed"

    .line 7
    .line 8
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity;->g:Z

    .line 12
    .line 13
    const-string v1, "isFinishedPerformed"

    .line 14
    .line 15
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
