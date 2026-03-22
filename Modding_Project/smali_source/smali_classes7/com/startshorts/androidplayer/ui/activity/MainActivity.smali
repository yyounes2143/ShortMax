.class public final Lcom/startshorts/androidplayer/ui/activity/MainActivity;
.super Lcom/startshorts/androidplayer/ui/activity/base/PermissionActivity;
.source "MainActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/activity/MainActivity$a;,
        Lcom/startshorts/androidplayer/ui/activity/MainActivity$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/activity/base/PermissionActivity<",
        "Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/startshorts/androidplayer/ui/activity/MainActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,958:1\n295#2,2:959\n1863#2,2:961\n1863#2,2:963\n1#3:965\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/startshorts/androidplayer/ui/activity/MainActivity\n*L\n239#1:959,2\n381#1:961,2\n410#1:963,2\n*E\n"
    }
.end annotation


# static fields
.field public static final w:Lcom/startshorts/androidplayer/ui/activity/MainActivity$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private p:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/Fragment;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final r:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final s:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private t:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private u:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private v:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/activity/MainActivity$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/MainActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->w:Lcom/startshorts/androidplayer/ui/activity/MainActivity$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/base/PermissionActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "DISCOVER"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->p:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Lph/c;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lph/c;-><init>(Lcom/startshorts/androidplayer/ui/activity/MainActivity;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->r:Lms/i;

    .line 18
    .line 19
    new-instance v0, Lph/d;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lph/d;-><init>(Lcom/startshorts/androidplayer/ui/activity/MainActivity;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->s:Lms/i;

    .line 29
    .line 30
    const-string v0, "icon"

    .line 31
    .line 32
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->t:Ljava/lang/String;

    .line 33
    .line 34
    const-string v0, ""

    .line 35
    .line 36
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->u:Ljava/lang/String;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->v:Ljava/lang/String;

    .line 39
    .line 40
    return-void
.end method

.method private static final A0(Lcom/startshorts/androidplayer/viewmodel/comingsoon/b;)Lkotlin/Unit;
    .locals 6

    .line 1
    instance-of v0, p0, Lcom/startshorts/androidplayer/viewmodel/comingsoon/b$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lcom/startshorts/androidplayer/viewmodel/comingsoon/b$b;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/viewmodel/comingsoon/b$b;->a()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 14
    .line 15
    new-instance v3, Lcom/startshorts/androidplayer/ui/activity/MainActivity$onCreate$1$1$1;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {v3, p0, v1}, Lcom/startshorts/androidplayer/ui/activity/MainActivity$onCreate$1$1$1;-><init>(Ljava/util/List;Lrs/c;)V

    .line 19
    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    const/4 v5, 0x0

    .line 23
    const-string v1, "ShortCutsUtil setDynamicShortcuts"

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 27
    .line 28
    .line 29
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 30
    .line 31
    return-object p0
.end method

.method private final B0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->p0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->f0()Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->H0()Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;->isH5()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-ne v0, v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;->a:Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;

    .line 33
    .line 34
    const/16 v1, 0x8

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->p0()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const/4 v2, 0x0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->f0()Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->S0()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-ne v0, v1, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    move v1, v2

    .line 61
    :goto_0
    sget-object v0, Lcom/startshorts/androidplayer/bean/tab/MainTab;->Companion:Lcom/startshorts/androidplayer/bean/tab/MainTab$Companion;

    .line 62
    .line 63
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->p:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/bean/tab/MainTab$Companion;->toEnum(Ljava/lang/String;)Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;

    .line 76
    .line 77
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;->a:Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;

    .line 78
    .line 79
    invoke-virtual {v2, v0, v1}, Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;->n(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;Z)V

    .line 80
    .line 81
    .line 82
    :cond_2
    return-void
.end method

.method private final D0()V
    .locals 8

    .line 1
    sget-object v0, Lbf/e;->a:Lbf/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lbf/e;->j()Lbf/e$a;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0}, Lbf/e;->i()Lbf/e$a;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v0}, Lbf/e;->h()Lbf/e$a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    filled-new-array {v1, v2, v0}, [Lbf/e$a;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/Iterable;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    move-object v2, v1

    .line 40
    check-cast v2, Lbf/e$a;

    .line 41
    .line 42
    invoke-virtual {v2}, Lbf/e$a;->h()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 v1, 0x0

    .line 50
    :goto_0
    move-object v2, v1

    .line 51
    check-cast v2, Lbf/e$a;

    .line 52
    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    const/4 v6, 0x6

    .line 56
    const/4 v7, 0x0

    .line 57
    const/4 v4, 0x0

    .line 58
    const/4 v5, 0x0

    .line 59
    move-object v3, p0

    .line 60
    invoke-static/range {v2 .. v7}, Lbf/e$a;->d(Lbf/e$a;Landroid/app/Activity;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    :cond_2
    return-void
.end method

.method public static synthetic K(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->e0(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic L(Lcom/startshorts/androidplayer/ui/activity/MainActivity;)Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->z0(Lcom/startshorts/androidplayer/ui/activity/MainActivity;)Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic M(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->u0(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic N(Lcom/startshorts/androidplayer/viewmodel/comingsoon/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->A0(Lcom/startshorts/androidplayer/viewmodel/comingsoon/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic O(Lcom/startshorts/androidplayer/ui/activity/MainActivity;)Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->y0(Lcom/startshorts/androidplayer/ui/activity/MainActivity;)Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic P(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->v0(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic Q(Lcom/startshorts/androidplayer/ui/activity/MainActivity;)Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->h0()Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic R(Lcom/startshorts/androidplayer/ui/activity/MainActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->q:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic S(Lcom/startshorts/androidplayer/ui/activity/MainActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->t:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic T(Lcom/startshorts/androidplayer/ui/activity/MainActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->u:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic U(Lcom/startshorts/androidplayer/ui/activity/MainActivity;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->n0()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic V(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->x0(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic W(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->q:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic X(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->u:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic Y(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->v:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method private final Z()V
    .locals 3

    .line 1
    sget-object v0, Lqe/a;->a:Lqe/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lqe/a;->h()Lcom/startshorts/androidplayer/bean/configure/FeatureController;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->getShortsProgressBarOptimizationEnable()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->k0()Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->f3()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v2, 0x1

    .line 26
    if-ne v0, v2, :cond_1

    .line 27
    .line 28
    move v1, v2

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v2, "checkEnableTabTouchView -> seekbarVisible("

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const/16 v2, 0x29

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->d0()V

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->c0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v2, "checkEnableTabTouchView exception -> "

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->m(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->c0()V

    .line 92
    .line 93
    .line 94
    :goto_2
    return-void
.end method

.method private final a0()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    const-class v1, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    sget-object v1, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->a:Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->q()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    const-class v1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 25
    .line 26
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    :cond_0
    const-class v1, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListFragment;

    .line 30
    .line 31
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    const-class v1, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;

    .line 35
    .line 36
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    return-object v0
.end method

.method private final b0(Ljava/util/List;)Landroidx/viewpager2/adapter/FragmentStateAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/tab/MainTab;",
            ">;)",
            "Landroidx/viewpager2/adapter/FragmentStateAdapter;"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->a0()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    goto :goto_1

    .line 8
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    check-cast p1, Ljava/lang/Iterable;

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_6

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/startshorts/androidplayer/bean/tab/MainTab;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/tab/MainTab;->getType()Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    sget-object v2, Lcom/startshorts/androidplayer/ui/activity/MainActivity$b;->$EnumSwitchMapping$0:[I

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    aget v1, v2, v1

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    if-eq v1, v2, :cond_5

    .line 45
    .line 46
    const/4 v2, 0x2

    .line 47
    if-eq v1, v2, :cond_4

    .line 48
    .line 49
    const/4 v2, 0x3

    .line 50
    if-eq v1, v2, :cond_3

    .line 51
    .line 52
    const/4 v2, 0x4

    .line 53
    if-eq v1, v2, :cond_2

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    if-eq v1, v2, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const-class v1, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;

    .line 60
    .line 61
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const-class v1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 66
    .line 67
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    const-class v1, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListFragment;

    .line 72
    .line 73
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_4
    const-class v1, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 78
    .line 79
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_5
    const-class v1, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 84
    .line 85
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_6
    move-object p1, v0

    .line 90
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .line 94
    .line 95
    move-object v1, p1

    .line 96
    check-cast v1, Ljava/lang/Iterable;

    .line 97
    .line 98
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-eqz v2, :cond_7

    .line 107
    .line 108
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    check-cast v2, Ljava/lang/Class;

    .line 113
    .line 114
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    int-to-long v2, v2

    .line 119
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_7
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/MainActivity$createFragmentStateAdapter$2;

    .line 128
    .line 129
    invoke-direct {v1, p0, p1, v0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity$createFragmentStateAdapter$2;-><init>(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Ljava/util/List;Ljava/util/List;)V

    .line 130
    .line 131
    .line 132
    return-object v1
.end method

.method private static final e0(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->r0()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    :try_start_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->k0()Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    const/4 v4, 0x4

    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v1, 0x2

    .line 19
    const/4 v3, 0x0

    .line 20
    move-object v2, p2

    .line 21
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->r2(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;ILandroid/view/MotionEvent;ZILjava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p1

    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v0, "processProgressBarTouchEvent exception -> "

    .line 32
    .line 33
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->m(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    :goto_0
    const/4 p0, 0x1

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const/4 p0, 0x0

    .line 53
    :goto_1
    return p0
.end method

.method private final g0()Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->r:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final h0()Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->s:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final i0()Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListFragment;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->q:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    check-cast v0, Ljava/lang/Iterable;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    move-object v3, v2

    .line 23
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-object v3, v1

    .line 39
    :goto_0
    const-class v4, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListFragment;

    .line 40
    .line 41
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move-object v2, v1

    .line 49
    :goto_1
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 50
    .line 51
    if-eqz v2, :cond_3

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_3
    move-object v0, v1

    .line 61
    :goto_2
    instance-of v2, v0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListFragment;

    .line 62
    .line 63
    if-eqz v2, :cond_4

    .line 64
    .line 65
    move-object v1, v0

    .line 66
    check-cast v1, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListFragment;

    .line 67
    .line 68
    :cond_4
    return-object v1
.end method

.method private final j0()Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->q:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    check-cast v0, Ljava/lang/Iterable;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    move-object v3, v2

    .line 23
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-object v3, v1

    .line 39
    :goto_0
    const-class v4, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 40
    .line 41
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move-object v2, v1

    .line 49
    :goto_1
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 50
    .line 51
    if-eqz v2, :cond_3

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_3
    move-object v0, v1

    .line 61
    :goto_2
    instance-of v2, v0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 62
    .line 63
    if-eqz v2, :cond_4

    .line 64
    .line 65
    move-object v1, v0

    .line 66
    check-cast v1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 67
    .line 68
    :cond_4
    return-object v1
.end method

.method private final k0()Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->q:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    check-cast v0, Ljava/lang/Iterable;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    move-object v3, v2

    .line 23
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-object v3, v1

    .line 39
    :goto_0
    const-class v4, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 40
    .line 41
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move-object v2, v1

    .line 49
    :goto_1
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 50
    .line 51
    if-eqz v2, :cond_3

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_3
    move-object v0, v1

    .line 61
    :goto_2
    instance-of v2, v0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 62
    .line 63
    if-eqz v2, :cond_4

    .line 64
    .line 65
    move-object v1, v0

    .line 66
    check-cast v1, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 67
    .line 68
    :cond_4
    return-object v1
.end method

.method private final m0()Lkotlinx/coroutines/r;
    .locals 6

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    new-instance v3, Lcom/startshorts/androidplayer/ui/activity/MainActivity$handleJumpPage$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, p0, v1}, Lcom/startshorts/androidplayer/ui/activity/MainActivity$handleJumpPage$1;-><init>(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Lrs/c;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v1, "handleJumpPage"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method private final n0()Z
    .locals 18

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    sget-object v1, Lrf/c;->a:Lrf/c;

    .line 5
    .line 6
    invoke-virtual {v1}, Lrf/c;->d()Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const-string v3, "CampaignNewTag"

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v10, 0x1

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 17
    .line 18
    const-string v2, "handleNotificationNavigatorCache -> exist campaign jump"

    .line 19
    .line 20
    invoke-virtual {v0, v3, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->V0:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a;

    .line 24
    .line 25
    invoke-virtual {v1}, Lrf/c;->d()Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v9, v2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a;->a(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v4}, Lrf/c;->t(Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;)V

    .line 36
    .line 37
    .line 38
    return v10

    .line 39
    :cond_0
    invoke-virtual {v1}, Lrf/c;->n()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 46
    .line 47
    const-string v4, "handleNotificationNavigatorCache -> exist redReward page"

    .line 48
    .line 49
    invoke-virtual {v2, v3, v4}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v0}, Lrf/c;->D(Z)V

    .line 53
    .line 54
    .line 55
    sget-object v0, Lfk/a;->a:Lfk/a;

    .line 56
    .line 57
    invoke-virtual {v0, v10, v10}, Lfk/a;->i(ZZ)V

    .line 58
    .line 59
    .line 60
    return v10

    .line 61
    :cond_1
    invoke-virtual {v1}, Lrf/c;->h()Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_2

    .line 66
    .line 67
    const-string v2, "handleNotificationNavigatorCache -> exist mShowCheckInPage"

    .line 68
    .line 69
    invoke-virtual {v9, v2}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v0}, Lrf/c;->x(Z)V

    .line 73
    .line 74
    .line 75
    sget-object v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->a:Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->z()V

    .line 78
    .line 79
    .line 80
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 81
    .line 82
    new-instance v3, Landroid/os/Bundle;

    .line 83
    .line 84
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v2, "scene"

    .line 88
    .line 89
    const-string v4, "push"

    .line 90
    .line 91
    invoke-virtual {v3, v2, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 95
    .line 96
    const/4 v6, 0x4

    .line 97
    const/4 v7, 0x0

    .line 98
    const-string v2, "reward_show"

    .line 99
    .line 100
    const-wide/16 v4, 0x0

    .line 101
    .line 102
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    sget-object v1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->Y:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$a;

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->q()Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    xor-int/lit8 v3, v0, 0x1

    .line 112
    .line 113
    const/16 v6, 0x18

    .line 114
    .line 115
    const/4 v7, 0x0

    .line 116
    const-string v2, "push"

    .line 117
    .line 118
    const/4 v4, 0x0

    .line 119
    const/4 v5, 0x0

    .line 120
    move-object v0, v1

    .line 121
    move-object/from16 v1, p0

    .line 122
    .line 123
    invoke-static/range {v0 .. v7}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$a;->d(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$a;Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    return v10

    .line 127
    :cond_2
    invoke-virtual {v1}, Lrf/c;->e()Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    if-eqz v2, :cond_3

    .line 132
    .line 133
    const-string v0, "handleNotificationNavigatorCache -> exist mImmersionParams"

    .line 134
    .line 135
    invoke-virtual {v9, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->V0:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a;

    .line 139
    .line 140
    invoke-virtual {v1}, Lrf/c;->e()Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v9, v2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a;->a(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, v4}, Lrf/c;->u(Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;)V

    .line 151
    .line 152
    .line 153
    return v10

    .line 154
    :cond_3
    invoke-virtual {v1}, Lrf/c;->f()Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    const-string v3, "getName(...)"

    .line 159
    .line 160
    const-class v5, Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 161
    .line 162
    if-eqz v2, :cond_6

    .line 163
    .line 164
    const-string v0, "handleNotificationNavigatorCache -> exist mShortsEpisode"

    .line 165
    .line 166
    invoke-virtual {v9, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    sget-object v0, Laa/a;->a:Laa/a;

    .line 170
    .line 171
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v2}, Laa/a;->i(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1}, Lrf/c;->f()Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    if-eqz v0, :cond_5

    .line 186
    .line 187
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->k0()Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    if-eqz v1, :cond_4

    .line 192
    .line 193
    const-string v2, "Push"

    .line 194
    .line 195
    invoke-virtual {v1, v2, v0}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->q3(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V

    .line 196
    .line 197
    .line 198
    :cond_4
    new-instance v0, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;

    .line 199
    .line 200
    sget-object v12, Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;->SHORTS:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 201
    .line 202
    const/16 v16, 0xe

    .line 203
    .line 204
    const/16 v17, 0x0

    .line 205
    .line 206
    const/4 v13, 0x0

    .line 207
    const/4 v14, 0x0

    .line 208
    const/4 v15, 0x0

    .line 209
    move-object v11, v0

    .line 210
    invoke-direct/range {v11 .. v17}, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;-><init>(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v9, v0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->receiveUpdateMainTabEvent(Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;)V

    .line 214
    .line 215
    .line 216
    :cond_5
    return v10

    .line 217
    :cond_6
    invoke-virtual {v1}, Lrf/c;->i()Z

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    if-eqz v2, :cond_7

    .line 222
    .line 223
    const-string v2, "handleNotificationNavigatorCache -> exist mShowDiscover"

    .line 224
    .line 225
    invoke-virtual {v9, v2}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1, v0}, Lrf/c;->y(Z)V

    .line 229
    .line 230
    .line 231
    sget-object v0, Laa/a;->a:Laa/a;

    .line 232
    .line 233
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, v1}, Laa/a;->i(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    new-instance v0, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;

    .line 244
    .line 245
    sget-object v12, Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;->DISCOVER:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 246
    .line 247
    const/16 v16, 0xe

    .line 248
    .line 249
    const/16 v17, 0x0

    .line 250
    .line 251
    const/4 v13, 0x0

    .line 252
    const/4 v14, 0x0

    .line 253
    const/4 v15, 0x0

    .line 254
    move-object v11, v0

    .line 255
    invoke-direct/range {v11 .. v17}, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;-><init>(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v9, v0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->receiveUpdateMainTabEvent(Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;)V

    .line 259
    .line 260
    .line 261
    return v10

    .line 262
    :cond_7
    invoke-virtual {v1}, Lrf/c;->m()Z

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    if-eqz v2, :cond_8

    .line 267
    .line 268
    const-string v2, "handleNotificationNavigatorCache -> exist mShowProfile"

    .line 269
    .line 270
    invoke-virtual {v9, v2}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v1, v0}, Lrf/c;->C(Z)V

    .line 274
    .line 275
    .line 276
    sget-object v0, Laa/a;->a:Laa/a;

    .line 277
    .line 278
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0, v1}, Laa/a;->i(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    new-instance v0, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;

    .line 289
    .line 290
    sget-object v12, Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;->PROFILE:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 291
    .line 292
    const/16 v16, 0xe

    .line 293
    .line 294
    const/16 v17, 0x0

    .line 295
    .line 296
    const/4 v13, 0x0

    .line 297
    const/4 v14, 0x0

    .line 298
    const/4 v15, 0x0

    .line 299
    move-object v11, v0

    .line 300
    invoke-direct/range {v11 .. v17}, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;-><init>(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v9, v0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->receiveUpdateMainTabEvent(Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;)V

    .line 304
    .line 305
    .line 306
    return v10

    .line 307
    :cond_8
    invoke-virtual {v1}, Lrf/c;->b()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    if-eqz v2, :cond_b

    .line 312
    .line 313
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 314
    .line 315
    .line 316
    move-result v2

    .line 317
    if-nez v2, :cond_9

    .line 318
    .line 319
    goto :goto_0

    .line 320
    :cond_9
    const-string v0, "handleNotificationNavigatorCache -> exist mActUrl"

    .line 321
    .line 322
    invoke-virtual {v9, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    sget-object v0, Lce/j;->a:Lce/j;

    .line 326
    .line 327
    invoke-virtual {v1}, Lrf/c;->c()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    if-nez v2, :cond_a

    .line 332
    .line 333
    const-string v2, ""

    .line 334
    .line 335
    :cond_a
    invoke-virtual {v1}, Lrf/c;->b()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v3

    .line 339
    invoke-virtual {v0, v9, v2, v3}, Lce/j;->m(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v1, v4}, Lrf/c;->r(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v1, v4}, Lrf/c;->s(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    return v10

    .line 349
    :cond_b
    :goto_0
    invoke-virtual {v1}, Lrf/c;->q()Z

    .line 350
    .line 351
    .line 352
    move-result v2

    .line 353
    if-eqz v2, :cond_c

    .line 354
    .line 355
    const-string v2, "handleNotificationNavigatorCache -> exist mShowTopupPage"

    .line 356
    .line 357
    invoke-virtual {v9, v2}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v1, v0}, Lrf/c;->G(Z)V

    .line 361
    .line 362
    .line 363
    sget-object v1, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer;->p:Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$a;

    .line 364
    .line 365
    sget-object v2, Lcom/startshorts/androidplayer/ui/fragment/a;->a:Lcom/startshorts/androidplayer/ui/fragment/a;

    .line 366
    .line 367
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/ui/fragment/a;->n()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v2

    .line 371
    new-array v0, v0, [Lcom/startshorts/androidplayer/bean/bundle/IFragmentBundle;

    .line 372
    .line 373
    invoke-virtual {v1, v9, v2, v0}, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$a;->b(Landroid/content/Context;Ljava/lang/String;[Lcom/startshorts/androidplayer/bean/bundle/IFragmentBundle;)V

    .line 374
    .line 375
    .line 376
    return v10

    .line 377
    :cond_c
    invoke-virtual {v1}, Lrf/c;->g()Z

    .line 378
    .line 379
    .line 380
    move-result v2

    .line 381
    if-eqz v2, :cond_d

    .line 382
    .line 383
    const-string v2, "handleNotificationNavigatorCache -> exist mShowBonusRecordPage"

    .line 384
    .line 385
    invoke-virtual {v9, v2}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v1, v0}, Lrf/c;->w(Z)V

    .line 389
    .line 390
    .line 391
    sget-object v1, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer;->p:Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$a;

    .line 392
    .line 393
    sget-object v2, Lcom/startshorts/androidplayer/ui/fragment/a;->a:Lcom/startshorts/androidplayer/ui/fragment/a;

    .line 394
    .line 395
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/ui/fragment/a;->h()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v2

    .line 399
    new-instance v3, Lcom/startshorts/androidplayer/bean/bundle/IntBundle;

    .line 400
    .line 401
    const-string v4, "tab_index"

    .line 402
    .line 403
    const/4 v5, 0x2

    .line 404
    invoke-direct {v3, v4, v5}, Lcom/startshorts/androidplayer/bean/bundle/IntBundle;-><init>(Ljava/lang/String;I)V

    .line 405
    .line 406
    .line 407
    new-array v4, v10, [Lcom/startshorts/androidplayer/bean/bundle/IFragmentBundle;

    .line 408
    .line 409
    aput-object v3, v4, v0

    .line 410
    .line 411
    invoke-virtual {v1, v9, v2, v4}, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$a;->b(Landroid/content/Context;Ljava/lang/String;[Lcom/startshorts/androidplayer/bean/bundle/IFragmentBundle;)V

    .line 412
    .line 413
    .line 414
    return v10

    .line 415
    :cond_d
    invoke-virtual {v1}, Lrf/c;->o()Z

    .line 416
    .line 417
    .line 418
    move-result v2

    .line 419
    if-eqz v2, :cond_e

    .line 420
    .line 421
    const-string v2, "handleNotificationNavigatorCache -> exist mShowShortsPage"

    .line 422
    .line 423
    invoke-virtual {v9, v2}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v1, v0}, Lrf/c;->E(Z)V

    .line 427
    .line 428
    .line 429
    sget-object v0, Laa/a;->a:Laa/a;

    .line 430
    .line 431
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v0, v1}, Laa/a;->i(Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    new-instance v0, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;

    .line 442
    .line 443
    sget-object v12, Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;->SHORTS:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 444
    .line 445
    const/16 v16, 0xe

    .line 446
    .line 447
    const/16 v17, 0x0

    .line 448
    .line 449
    const/4 v13, 0x0

    .line 450
    const/4 v14, 0x0

    .line 451
    const/4 v15, 0x0

    .line 452
    move-object v11, v0

    .line 453
    invoke-direct/range {v11 .. v17}, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;-><init>(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v9, v0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->receiveUpdateMainTabEvent(Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;)V

    .line 457
    .line 458
    .line 459
    return v10

    .line 460
    :cond_e
    invoke-virtual {v1}, Lrf/c;->k()Z

    .line 461
    .line 462
    .line 463
    move-result v2

    .line 464
    if-eqz v2, :cond_f

    .line 465
    .line 466
    const-string v2, "handleNotificationNavigatorCache -> exist mShowMyListPage"

    .line 467
    .line 468
    invoke-virtual {v9, v2}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v1, v0}, Lrf/c;->A(Z)V

    .line 472
    .line 473
    .line 474
    sget-object v0, Laa/a;->a:Laa/a;

    .line 475
    .line 476
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v1

    .line 480
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v0, v1}, Laa/a;->i(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    new-instance v0, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;

    .line 487
    .line 488
    sget-object v12, Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;->MY_LIST:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 489
    .line 490
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 491
    .line 492
    .line 493
    move-result-object v15

    .line 494
    const/16 v16, 0x6

    .line 495
    .line 496
    const/16 v17, 0x0

    .line 497
    .line 498
    const/4 v13, 0x0

    .line 499
    const/4 v14, 0x0

    .line 500
    move-object v11, v0

    .line 501
    invoke-direct/range {v11 .. v17}, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;-><init>(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {v9, v0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->receiveUpdateMainTabEvent(Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;)V

    .line 505
    .line 506
    .line 507
    return v10

    .line 508
    :cond_f
    invoke-virtual {v1}, Lrf/c;->l()Z

    .line 509
    .line 510
    .line 511
    move-result v2

    .line 512
    if-eqz v2, :cond_10

    .line 513
    .line 514
    const-string v2, "handleNotificationNavigatorCache -> exist mShowMyRecentPage"

    .line 515
    .line 516
    invoke-virtual {v9, v2}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v1, v0}, Lrf/c;->B(Z)V

    .line 520
    .line 521
    .line 522
    sget-object v1, Laa/a;->a:Laa/a;

    .line 523
    .line 524
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v2

    .line 528
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 529
    .line 530
    .line 531
    invoke-virtual {v1, v2}, Laa/a;->i(Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    new-instance v1, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;

    .line 535
    .line 536
    sget-object v12, Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;->MY_LIST:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 537
    .line 538
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 539
    .line 540
    .line 541
    move-result-object v15

    .line 542
    const/16 v16, 0x6

    .line 543
    .line 544
    const/16 v17, 0x0

    .line 545
    .line 546
    const/4 v13, 0x0

    .line 547
    const/4 v14, 0x0

    .line 548
    move-object v11, v1

    .line 549
    invoke-direct/range {v11 .. v17}, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;-><init>(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {v9, v1}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->receiveUpdateMainTabEvent(Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;)V

    .line 553
    .line 554
    .line 555
    return v10

    .line 556
    :cond_10
    invoke-virtual {v1}, Lrf/c;->p()Z

    .line 557
    .line 558
    .line 559
    move-result v2

    .line 560
    if-eqz v2, :cond_12

    .line 561
    .line 562
    const-string v2, "handleNotificationNavigatorCache -> exist mShowSubsDetailPage"

    .line 563
    .line 564
    invoke-virtual {v9, v2}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v1, v0}, Lrf/c;->F(Z)V

    .line 568
    .line 569
    .line 570
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 571
    .line 572
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->w0()Z

    .line 573
    .line 574
    .line 575
    move-result v0

    .line 576
    if-eqz v0, :cond_11

    .line 577
    .line 578
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->Q:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$a;

    .line 579
    .line 580
    const/16 v7, 0x3c

    .line 581
    .line 582
    const/4 v8, 0x0

    .line 583
    const-string v2, "mine"

    .line 584
    .line 585
    const/4 v3, 0x0

    .line 586
    const/4 v4, 0x0

    .line 587
    const/4 v5, 0x0

    .line 588
    const/4 v6, 0x0

    .line 589
    move-object/from16 v1, p0

    .line 590
    .line 591
    invoke-static/range {v0 .. v8}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$a;->b(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 592
    .line 593
    .line 594
    :cond_11
    return v10

    .line 595
    :cond_12
    invoke-virtual {v1}, Lrf/c;->j()Z

    .line 596
    .line 597
    .line 598
    move-result v2

    .line 599
    if-eqz v2, :cond_13

    .line 600
    .line 601
    const-string v2, "handleNotificationNavigatorCache -> exist mShowLibrary"

    .line 602
    .line 603
    invoke-virtual {v9, v2}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 604
    .line 605
    .line 606
    invoke-virtual {v1, v0}, Lrf/c;->z(Z)V

    .line 607
    .line 608
    .line 609
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->z:Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$a;

    .line 610
    .line 611
    invoke-virtual {v0, v9}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$a;->a(Landroid/content/Context;)V

    .line 612
    .line 613
    .line 614
    return v10

    .line 615
    :cond_13
    return v0
.end method

.method private final q0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->p:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "REWARDS"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method private final s0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;->a:Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;

    .line 8
    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/MainActivity$c;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity$c;-><init>(Lcom/startshorts/androidplayer/ui/activity/MainActivity;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;->setCallback(Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout$a;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final t0()V
    .locals 2

    .line 1
    sget-object v0, Lng/g;->a:Lng/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lng/g;->j()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;->b:Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;

    .line 13
    .line 14
    new-instance v1, Lph/e;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lph/e;-><init>(Lcom/startshorts/androidplayer/ui/activity/MainActivity;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;->setOnViewClick(Lkotlin/jvm/functions/Function2;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;->b:Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;

    .line 29
    .line 30
    new-instance v1, Lph/f;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lph/f;-><init>(Lcom/startshorts/androidplayer/ui/activity/MainActivity;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;->setOnViewHidden(Lkotlin/jvm/functions/Function1;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private static final u0(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    const-string v0, "lowest_subs_sku"

    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    sget-object p1, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->a:Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;

    .line 17
    .line 18
    const-string v0, "discover"

    .line 19
    .line 20
    invoke-virtual {p1, p0, p2, v0}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->y(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object p1, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->a:Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;

    .line 25
    .line 26
    invoke-virtual {p1, p0, p2}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->z(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 30
    .line 31
    return-object p0
.end method

.method private static final v0(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;->c:Lcom/startshorts/androidplayer/ui/activity/subs/HomeTurboLinkFloatView;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->p:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Lcom/startshorts/androidplayer/ui/activity/subs/HomeTurboLinkFloatView;->r(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;->c:Lcom/startshorts/androidplayer/ui/activity/subs/HomeTurboLinkFloatView;

    .line 24
    .line 25
    invoke-static {p0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p0
.end method

.method private final w0(Landroidx/viewpager2/adapter/FragmentStateAdapter;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;->g:Landroidx/viewpager2/widget/ViewPager2;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setSaveEnabled(Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x2

    .line 30
    invoke-static {v0, p1}, Lkd/d;->b(Landroidx/viewpager2/widget/ViewPager2;I)V

    .line 31
    .line 32
    .line 33
    sget-object p1, Lcom/startshorts/androidplayer/bean/tab/MainTab;->Companion:Lcom/startshorts/androidplayer/bean/tab/MainTab$Companion;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->p:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/bean/tab/MainTab$Companion;->toEnum(Ljava/lang/String;)Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;->e:Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;->e(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-lez p1, :cond_0

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;

    .line 60
    .line 61
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;->g:Landroidx/viewpager2/widget/ViewPager2;

    .line 62
    .line 63
    invoke-virtual {v0, p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 64
    .line 65
    .line 66
    :cond_0
    return-void
.end method

.method private final x0(Ljava/lang/String;I)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->r0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->q0()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_3

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    if-ne p2, v0, :cond_1

    .line 16
    .line 17
    const-string p2, "banner"

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const-string p2, "cover"

    .line 21
    .line 22
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->p:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const v2, -0x79827caf

    .line 29
    .line 30
    .line 31
    if-eq v1, v2, :cond_6

    .line 32
    .line 33
    const v2, 0x185a1589

    .line 34
    .line 35
    .line 36
    if-eq v1, v2, :cond_4

    .line 37
    .line 38
    const v2, 0x3eee67e9

    .line 39
    .line 40
    .line 41
    if-eq v1, v2, :cond_2

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    const-string v1, "DISCOVER"

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_3

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    const-string v0, "discover"

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_4
    const-string v1, "PROFILE"

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_5

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_5
    const-string v0, "profile"

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_6
    const-string v1, "MY_LIST"

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_7

    .line 75
    .line 76
    :goto_1
    const-string v0, ""

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_7
    const-string v0, "mylist"

    .line 80
    .line 81
    :goto_2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-lez v1, :cond_8

    .line 86
    .line 87
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 88
    .line 89
    new-instance v4, Landroid/os/Bundle;

    .line 90
    .line 91
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v1, "type"

    .line 95
    .line 96
    invoke-virtual {v4, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const-string p2, "scene"

    .line 100
    .line 101
    invoke-virtual {v4, p2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 105
    .line 106
    const/4 v7, 0x4

    .line 107
    const/4 v8, 0x0

    .line 108
    const-wide/16 v5, 0x0

    .line 109
    .line 110
    move-object v3, p1

    .line 111
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    :cond_8
    :goto_3
    return-void
.end method

.method private static final y0(Lcom/startshorts/androidplayer/ui/activity/MainActivity;)Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 4
    .line 5
    .line 6
    const-class p0, Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel;

    .line 13
    .line 14
    return-object p0
.end method

.method private static final z0(Lcom/startshorts/androidplayer/ui/activity/MainActivity;)Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 4
    .line 5
    .line 6
    const-class p0, Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/startshorts/androidplayer/viewmodel/cps/CpsViewModel;

    .line 13
    .line 14
    return-object p0
.end method


# virtual methods
.method public final C0()V
    .locals 9

    .line 1
    sget-object v0, Lud/a;->a:Lud/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lud/a;->K()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-string v2, "CampaignNewTag"

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 12
    .line 13
    const-string v1, "resolveCpsEvent return"

    .line 14
    .line 15
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const/4 v1, 0x1

    .line 20
    invoke-virtual {v0, v1}, Lud/a;->d0(Z)V

    .line 21
    .line 22
    .line 23
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 24
    .line 25
    const-string v1, "resolveCpsEvent"

    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sget-object v3, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 31
    .line 32
    new-instance v6, Lcom/startshorts/androidplayer/ui/activity/MainActivity$resolveCpsEvent$1;

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-direct {v6, p0, v0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity$resolveCpsEvent$1;-><init>(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Lrs/c;)V

    .line 36
    .line 37
    .line 38
    const/4 v7, 0x2

    .line 39
    const/4 v8, 0x0

    .line 40
    const-string v4, "resolveCpsEvent"

    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    invoke-static/range {v3 .. v8}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final E0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;->a:Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;->m()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final F0(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;Z)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "targetType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->l0()Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->p:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1, p1, p2}, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;->k(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final c0()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    const-string v0, "disableTabTouchView"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;->f:Landroid/view/View;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final d0()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    sget-object v0, Lqe/a;->a:Lqe/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lqe/a;->h()Lcom/startshorts/androidplayer/bean/configure/FeatureController;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->getShortsProgressBarOptimizationEnable()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string v0, "enableTabTouchView"

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;->f:Landroid/view/View;

    .line 26
    .line 27
    new-instance v1, Lph/b;

    .line 28
    .line 29
    invoke-direct {v1, p0}, Lph/b;-><init>(Lcom/startshorts/androidplayer/ui/activity/MainActivity;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final f0()Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->q:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    check-cast v0, Ljava/lang/Iterable;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    move-object v3, v2

    .line 23
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-object v3, v1

    .line 39
    :goto_0
    const-class v4, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 40
    .line 41
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move-object v2, v1

    .line 49
    :goto_1
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 50
    .line 51
    if-eqz v2, :cond_3

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_3
    move-object v0, v1

    .line 61
    :goto_2
    instance-of v2, v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 62
    .line 63
    if-eqz v2, :cond_4

    .line 64
    .line 65
    move-object v1, v0

    .line 66
    check-cast v1, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 67
    .line 68
    :cond_4
    return-object v1
.end method

.method public final l0()Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;->e:Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;

    .line 8
    .line 9
    const-string v1, "tabLayout"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public o()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->activity_main:I

    .line 2
    .line 3
    return v0
.end method

.method public final o0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;->a:Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lms/c;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;->e:Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;

    .line 11
    .line 12
    sget-object v1, Lcom/startshorts/androidplayer/bean/tab/MainTab;->Companion:Lcom/startshorts/androidplayer/bean/tab/MainTab$Companion;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->p:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/tab/MainTab$Companion;->toEnum(Ljava/lang/String;)Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;->e(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, -0x1

    .line 25
    if-ne v0, v1, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->q:Ljava/util/List;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p1

    .line 53
    new-instance p2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string p3, "handleActivityResult exception -> "

    .line 59
    .line 60
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->m(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Laa/a;->a:Laa/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Laa/a;->h()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->onCreate(Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->h1()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->isEnable()Lkotlin/jvm/functions/Function0;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const-string v0, "SHORTS"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-string v0, "DISCOVER"

    .line 35
    .line 36
    :goto_0
    sget-object v1, Luh/i0;->a:Luh/i0;

    .line 37
    .line 38
    invoke-virtual {v1}, Luh/i0;->b()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_1

    .line 43
    .line 44
    sget-object v1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->a:Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->N()V

    .line 47
    .line 48
    .line 49
    :cond_1
    sget-object v1, Lde/s;->a:Lde/s;

    .line 50
    .line 51
    const/4 v2, 0x1

    .line 52
    invoke-virtual {v1, v2}, Lde/s;->a(Z)V

    .line 53
    .line 54
    .line 55
    sget-object v1, Lcom/startshorts/androidplayer/utils/BillingUtil;->a:Lcom/startshorts/androidplayer/utils/BillingUtil;

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/utils/BillingUtil;->a()V

    .line 58
    .line 59
    .line 60
    sget-object v1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->H0()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_2

    .line 67
    .line 68
    sget-object v3, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;->a:Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;

    .line 69
    .line 70
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;->k()V

    .line 71
    .line 72
    .line 73
    :cond_2
    if-eqz p1, :cond_3

    .line 74
    .line 75
    const-string v3, "tab_type"

    .line 76
    .line 77
    invoke-virtual {p1, v3, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    if-nez v3, :cond_4

    .line 82
    .line 83
    :cond_3
    move-object v3, v0

    .line 84
    :cond_4
    iput-object v3, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->p:Ljava/lang/String;

    .line 85
    .line 86
    if-eqz p1, :cond_5

    .line 87
    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v4, "savedInstanceState mCurrentTabType -> "

    .line 94
    .line 95
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->p:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-virtual {p0, v3}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :cond_5
    sget-object v3, Lcom/startshorts/androidplayer/bean/tab/MainTab;->Companion:Lcom/startshorts/androidplayer/bean/tab/MainTab$Companion;

    .line 111
    .line 112
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->p:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/tab/MainTab$Companion;->isValidType(Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-nez v3, :cond_6

    .line 119
    .line 120
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->p:Ljava/lang/String;

    .line 121
    .line 122
    :cond_6
    if-eqz p1, :cond_7

    .line 123
    .line 124
    new-instance p1, Landroid/content/Intent;

    .line 125
    .line 126
    const-class v0, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;

    .line 127
    .line 128
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    const-string v0, "from"

    .line 143
    .line 144
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    if-nez p1, :cond_8

    .line 149
    .line 150
    const-string p1, "icon"

    .line 151
    .line 152
    :cond_8
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->t:Ljava/lang/String;

    .line 153
    .line 154
    sget-object p1, Led/a;->a:Led/a;

    .line 155
    .line 156
    invoke-virtual {p1, p0, v2}, Led/a;->b(Landroid/app/Activity;Z)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;

    .line 164
    .line 165
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;->e:Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;

    .line 166
    .line 167
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->p:Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;->g(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;

    .line 177
    .line 178
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;->e:Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;

    .line 179
    .line 180
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;->getTabLists()Ljava/util/List;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->b0(Ljava/util/List;)Landroidx/viewpager2/adapter/FragmentStateAdapter;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->w0(Landroidx/viewpager2/adapter/FragmentStateAdapter;)V

    .line 189
    .line 190
    .line 191
    sget-object p1, Lcom/startshorts/androidplayer/manager/configure/ad/a;->a:Lcom/startshorts/androidplayer/manager/configure/ad/a;

    .line 192
    .line 193
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/configure/ad/a;->h()Lcom/startshorts/androidplayer/manager/configure/ad/a$a;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    const-string v0, "home_reward"

    .line 198
    .line 199
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/manager/configure/ad/a$a;->p(Ljava/lang/String;)Z

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    if-eqz p1, :cond_9

    .line 204
    .line 205
    sget-object p1, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 206
    .line 207
    sget-object v0, Lcom/startshorts/androidplayer/bean/ad/AdScene;->INTERSTITIAL:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 208
    .line 209
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a0(Lcom/startshorts/androidplayer/bean/ad/AdScene;)Lkotlinx/coroutines/r;

    .line 210
    .line 211
    .line 212
    :cond_9
    sget-object p1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 213
    .line 214
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->t:Ljava/lang/String;

    .line 215
    .line 216
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/manager/event/EventManager;->Z(Ljava/lang/String;)Lkotlinx/coroutines/r;

    .line 217
    .line 218
    .line 219
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->s0()V

    .line 220
    .line 221
    .line 222
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->t0()V

    .line 223
    .line 224
    .line 225
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->g0()Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    sget-object v0, Lcom/startshorts/androidplayer/viewmodel/comingsoon/a$b;->a:Lcom/startshorts/androidplayer/viewmodel/comingsoon/a$b;

    .line 230
    .line 231
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel;->F(Lcom/startshorts/androidplayer/viewmodel/comingsoon/a;)V

    .line 232
    .line 233
    .line 234
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 235
    .line 236
    const/16 v0, 0x19

    .line 237
    .line 238
    if-lt p1, v0, :cond_a

    .line 239
    .line 240
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->g0()Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    sget-object v0, Lcom/startshorts/androidplayer/viewmodel/comingsoon/a$c;->a:Lcom/startshorts/androidplayer/viewmodel/comingsoon/a$c;

    .line 245
    .line 246
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel;->F(Lcom/startshorts/androidplayer/viewmodel/comingsoon/a;)V

    .line 247
    .line 248
    .line 249
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->g0()Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel;->C()Landroidx/lifecycle/MutableLiveData;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    new-instance v0, Lph/a;

    .line 258
    .line 259
    invoke-direct {v0}, Lph/a;-><init>()V

    .line 260
    .line 261
    .line 262
    new-instance v2, Lcom/startshorts/androidplayer/ui/activity/MainActivity$d;

    .line 263
    .line 264
    invoke-direct {v2, v0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 268
    .line 269
    .line 270
    :cond_a
    sget-object p1, Lng/g;->a:Lng/g;

    .line 271
    .line 272
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->t0()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-virtual {p1, v0}, Lng/g;->l(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x4

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    sget-object p1, Lcom/startshorts/androidplayer/utils/IntentUtil;->a:Lcom/startshorts/androidplayer/utils/IntentUtil;

    .line 16
    .line 17
    invoke-virtual {p1, p0}, Lcom/startshorts/androidplayer/utils/IntentUtil;->a(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    return p1

    .line 22
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1
.end method

.method protected onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/activity/base/PermissionActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->D0()V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lfk/c;->a:Lfk/c;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-static {v0, v1, v2, v3}, Lfk/c;->c(Lfk/c;ZILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Laf/i;->a:Laf/i;

    .line 16
    .line 17
    invoke-virtual {v0}, Laf/i;->g()V

    .line 18
    .line 19
    .line 20
    sget-object v0, Lcom/startshorts/androidplayer/manager/account/AccountManager;->a:Lcom/startshorts/androidplayer/manager/account/AccountManager;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/account/AccountManager;->v()V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Lcom/startshorts/androidplayer/bean/eventbus/DestroyNotificationActivityEvent;

    .line 30
    .line 31
    invoke-direct {v1, v3, v2, v3}, Lcom/startshorts/androidplayer/bean/eventbus/DestroyNotificationActivityEvent;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lau/c;->l(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->m0()Lkotlinx/coroutines/r;

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->B0()V

    .line 41
    .line 42
    .line 43
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/PushManager;->a:Lcom/startshorts/androidplayer/manager/push/PushManager;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/push/PushManager;->j()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;->b:Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->p:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;->B(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "outState"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    const-string v0, "tab_type"

    .line 10
    .line 11
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->p:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final p0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->p:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "DISCOVER"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public q()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public r()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "MainActivity"

    .line 2
    .line 3
    return-object v0
.end method

.method public final r0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->p:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "SHORTS"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final receiveAppStateEvent(Lcom/startshorts/androidplayer/bean/eventbus/AppStateEvent;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/AppStateEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/AppStateEvent;->getState()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x2

    .line 11
    if-ne v0, v1, :cond_3

    .line 12
    .line 13
    sget-object p1, Lkf/b;->a:Lkf/b;

    .line 14
    .line 15
    invoke-virtual {p1}, Lkf/b;->c()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-class v0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_4

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->r0()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->k0()Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_4

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->d2()Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_4

    .line 48
    .line 49
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/PushManager;->a:Lcom/startshorts/androidplayer/manager/push/PushManager;

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/manager/push/PushManager;->h(Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->q0()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_1

    .line 60
    .line 61
    sget-object p1, Lud/a;->a:Lud/a;

    .line 62
    .line 63
    invoke-virtual {p1}, Lud/a;->H()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-lez p1, :cond_1

    .line 68
    .line 69
    sget-object p1, Lcom/startshorts/androidplayer/manager/push/PushManager;->a:Lcom/startshorts/androidplayer/manager/push/PushManager;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/push/PushManager;->g()V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    sget-object p1, Lud/b;->a:Lud/b;

    .line 76
    .line 77
    invoke-virtual {p1}, Lud/b;->r0()Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-nez p1, :cond_2

    .line 82
    .line 83
    return-void

    .line 84
    :cond_2
    new-instance v0, Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;

    .line 85
    .line 86
    invoke-direct {v0}, Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;->getShortPlayId()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;->setShortId(Ljava/lang/Integer;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;->getShortPlayCode()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;->setShortPlayCode(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;->getShortPlayName()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;->setTitle(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;->getEpisodeNum()I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;->setDramaNum(Ljava/lang/Integer;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;->getCoverId()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;->setCover(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    sget-object p1, Lcom/startshorts/androidplayer/manager/push/PushManager;->a:Lcom/startshorts/androidplayer/manager/push/PushManager;

    .line 133
    .line 134
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/manager/push/PushManager;->h(Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;)V

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_3
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/AppStateEvent;->getState()I

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    const/4 v0, 0x1

    .line 143
    if-ne p1, v0, :cond_4

    .line 144
    .line 145
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->q0()Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-eqz p1, :cond_4

    .line 150
    .line 151
    sget-object p1, Lcom/startshorts/androidplayer/manager/push/PushManager;->a:Lcom/startshorts/androidplayer/manager/push/PushManager;

    .line 152
    .line 153
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/push/PushManager;->b()V

    .line 154
    .line 155
    .line 156
    :cond_4
    :goto_0
    return-void
.end method

.method public final receiveCampaignFailureEvent(Lcom/startshorts/androidplayer/bean/eventbus/CampaignFailureEvent;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/CampaignFailureEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->C0()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final receiveHandleHomeDialogProcessorEvent(Lcom/startshorts/androidplayer/bean/eventbus/HandleHomeDialogProcessorEvent;)V
    .locals 6
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/HandleHomeDialogProcessorEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->POSTING:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v0, "receiveHandleHomeDialogProcessorEvent -> mPaused("

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->p()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/16 v0, 0x29

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->p()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 43
    .line 44
    new-instance v3, Lcom/startshorts/androidplayer/ui/activity/MainActivity$receiveHandleHomeDialogProcessorEvent$1;

    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    invoke-direct {v3, p0, p1}, Lcom/startshorts/androidplayer/ui/activity/MainActivity$receiveHandleHomeDialogProcessorEvent$1;-><init>(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Lrs/c;)V

    .line 48
    .line 49
    .line 50
    const/4 v4, 0x2

    .line 51
    const/4 v5, 0x0

    .line 52
    const-string v1, "HandleHomeDialogProcessorEvent"

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final receiveHandleNotificationNavigatorCacheEvent(Lcom/startshorts/androidplayer/bean/eventbus/HandleNotificationNavigatorCacheEvent;)V
    .locals 6
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/HandleNotificationNavigatorCacheEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->POSTING:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "receive HandleNotificationNavigatorCacheEvent"

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 12
    .line 13
    new-instance v3, Lcom/startshorts/androidplayer/ui/activity/MainActivity$receiveHandleNotificationNavigatorCacheEvent$1;

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-direct {v3, p0, p1}, Lcom/startshorts/androidplayer/ui/activity/MainActivity$receiveHandleNotificationNavigatorCacheEvent$1;-><init>(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Lrs/c;)V

    .line 17
    .line 18
    .line 19
    const/4 v4, 0x2

    .line 20
    const/4 v5, 0x0

    .line 21
    const-string v1, "handleNotificationNavigatorCache"

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final receiveMainTabClickEvent(Lcom/startshorts/androidplayer/bean/eventbus/MainTabClickEvent;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/MainTabClickEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "receive MainTabClickEvent -> "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;->e:Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/MainTabClickEvent;->getMotionEvent()Landroid/view/MotionEvent;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final receiveRefreshContinuePlayLayoutEvent(Lcom/startshorts/androidplayer/bean/eventbus/RefreshContinuePlayLayoutEvent;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/RefreshContinuePlayLayoutEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->B0()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final receiveRefreshMyListRedPointEvent(Lcom/startshorts/androidplayer/bean/eventbus/RefreshMyListRedPointEvent;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/RefreshMyListRedPointEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;->e:Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;

    .line 13
    .line 14
    sget-object v1, Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;->REWARDS:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;->d(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;)Landroid/view/ViewGroup;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;->e:Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;

    .line 29
    .line 30
    sget-object v1, Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;->PROFILE:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/RefreshMyListRedPointEvent;->getShortIds()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Ljava/util/Collection;

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    xor-int/lit8 p1, p1, 0x1

    .line 43
    .line 44
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;->l(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;Z)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;->e:Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;

    .line 55
    .line 56
    sget-object v1, Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;->MY_LIST:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/RefreshMyListRedPointEvent;->getShortIds()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Ljava/util/Collection;

    .line 63
    .line 64
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    xor-int/lit8 p1, p1, 0x1

    .line 69
    .line 70
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;->l(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;Z)V

    .line 71
    .line 72
    .line 73
    :goto_0
    return-void
.end method

.method public final receiveSubsExpansionShowEvent(Lcom/startshorts/androidplayer/bean/eventbus/SubsExpansionShowEvent;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/SubsExpansionShowEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "receive receiveSubsExpansionShowEvent"

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;->b:Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->p:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;->B(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final receiveUpdateDataEvent(Lcom/startshorts/androidplayer/bean/update/UpdateData;)V
    .locals 6
    .param p1    # Lcom/startshorts/androidplayer/bean/update/UpdateData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->POSTING:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v0, "receiveUpdateDataEvent -> mPaused("

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->p()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/16 v0, 0x29

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->p()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 43
    .line 44
    new-instance v3, Lcom/startshorts/androidplayer/ui/activity/MainActivity$receiveUpdateDataEvent$1;

    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    invoke-direct {v3, p0, p1}, Lcom/startshorts/androidplayer/ui/activity/MainActivity$receiveUpdateDataEvent$1;-><init>(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Lrs/c;)V

    .line 48
    .line 49
    .line 50
    const/4 v4, 0x2

    .line 51
    const/4 v5, 0x0

    .line 52
    const-string v1, "ShowUpdateDialog"

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final receiveUpdateMainTabEvent(Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;)V
    .locals 14
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "receive UpdateMainTabEvent -> "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;->getTabType()Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sget-object v1, Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;->ACT:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 31
    .line 32
    if-eq v0, v1, :cond_0

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;->getTabType()Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->p:Ljava/lang/String;

    .line 43
    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;->b:Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;->getTabType()Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;->B(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;->getTabType()Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    sget-object v2, Lcom/startshorts/androidplayer/ui/activity/MainActivity$b;->$EnumSwitchMapping$0:[I

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    aget v0, v2, v0

    .line 74
    .line 75
    const-string v2, "CampaignNewTag"

    .line 76
    .line 77
    const/4 v3, 0x1

    .line 78
    const/4 v4, 0x0

    .line 79
    const/4 v5, 0x0

    .line 80
    if-eq v0, v3, :cond_6

    .line 81
    .line 82
    const/4 v6, 0x2

    .line 83
    if-eq v0, v6, :cond_4

    .line 84
    .line 85
    const/4 v2, 0x3

    .line 86
    if-eq v0, v2, :cond_3

    .line 87
    .line 88
    const/4 v6, 0x4

    .line 89
    if-eq v0, v6, :cond_2

    .line 90
    .line 91
    const/4 v6, 0x5

    .line 92
    if-eq v0, v6, :cond_1

    .line 93
    .line 94
    goto/16 :goto_0

    .line 95
    .line 96
    :cond_1
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 97
    .line 98
    invoke-static {v0, v4, v5, v2, v5}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->c1(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    sget-object v6, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 102
    .line 103
    const/4 v11, 0x6

    .line 104
    const/4 v12, 0x0

    .line 105
    const-string v7, "me_show"

    .line 106
    .line 107
    const/4 v8, 0x0

    .line 108
    const-wide/16 v9, 0x0

    .line 109
    .line 110
    invoke-static/range {v6 .. v12}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    goto/16 :goto_0

    .line 114
    .line 115
    :cond_2
    const-string v0, "REWARDS"

    .line 116
    .line 117
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->p:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;->getFrom()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->u:Ljava/lang/String;

    .line 124
    .line 125
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->j0()Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    if-eqz v0, :cond_9

    .line 130
    .line 131
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;->getFrom()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->R2(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    goto/16 :goto_0

    .line 139
    .line 140
    :cond_3
    sget-object v6, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 141
    .line 142
    const/4 v11, 0x6

    .line 143
    const/4 v12, 0x0

    .line 144
    const-string v7, "mylist_show"

    .line 145
    .line 146
    const/4 v8, 0x0

    .line 147
    const-wide/16 v9, 0x0

    .line 148
    .line 149
    invoke-static/range {v6 .. v12}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->i0()Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListFragment;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;->getExtra()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_4
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 168
    .line 169
    const-string v6, "receiveUpdateMainTabEvent MainTab.Type.SHORTS CampaignParser.parse()"

    .line 170
    .line 171
    invoke-virtual {v0, v2, v6}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    sget-object v7, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 175
    .line 176
    const/4 v12, 0x6

    .line 177
    const/4 v13, 0x0

    .line 178
    const-string v8, "short_show"

    .line 179
    .line 180
    const/4 v9, 0x0

    .line 181
    const-wide/16 v10, 0x0

    .line 182
    .line 183
    invoke-static/range {v7 .. v13}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;->getFrom()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->v:Ljava/lang/String;

    .line 191
    .line 192
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->k0()Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    if-eqz v0, :cond_5

    .line 197
    .line 198
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;->getFrom()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->j4(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    :cond_5
    sget-object v6, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 206
    .line 207
    new-instance v9, Lcom/startshorts/androidplayer/ui/activity/MainActivity$receiveUpdateMainTabEvent$2;

    .line 208
    .line 209
    invoke-direct {v9, p0, v5}, Lcom/startshorts/androidplayer/ui/activity/MainActivity$receiveUpdateMainTabEvent$2;-><init>(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Lrs/c;)V

    .line 210
    .line 211
    .line 212
    const/4 v10, 0x2

    .line 213
    const/4 v11, 0x0

    .line 214
    const-string v7, "HomeDialogProcessor.process"

    .line 215
    .line 216
    const/4 v8, 0x0

    .line 217
    invoke-static/range {v6 .. v11}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 218
    .line 219
    .line 220
    goto :goto_0

    .line 221
    :cond_6
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 222
    .line 223
    const-string v6, "receiveUpdateMainTabEvent MainTab.Type.DISCOVER CampaignParser.parse()"

    .line 224
    .line 225
    invoke-virtual {v0, v2, v6}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->e:Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;

    .line 229
    .line 230
    sget-object v2, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->UPLOAD_CAMPAIGN_INFO_RESULT:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 231
    .line 232
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;->a(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    if-eqz v0, :cond_7

    .line 241
    .line 242
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;

    .line 243
    .line 244
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->s()Z

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    if-eqz v0, :cond_8

    .line 249
    .line 250
    :cond_7
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;

    .line 251
    .line 252
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->x()V

    .line 253
    .line 254
    .line 255
    :cond_8
    sget-object v6, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 256
    .line 257
    new-instance v9, Lcom/startshorts/androidplayer/ui/activity/MainActivity$receiveUpdateMainTabEvent$1;

    .line 258
    .line 259
    invoke-direct {v9, p0, v5}, Lcom/startshorts/androidplayer/ui/activity/MainActivity$receiveUpdateMainTabEvent$1;-><init>(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Lrs/c;)V

    .line 260
    .line 261
    .line 262
    const/4 v10, 0x2

    .line 263
    const/4 v11, 0x0

    .line 264
    const-string v7, "HomeDialogProcessor.process"

    .line 265
    .line 266
    const/4 v8, 0x0

    .line 267
    invoke-static/range {v6 .. v11}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 268
    .line 269
    .line 270
    :cond_9
    :goto_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;->getTabType()Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    if-eq v0, v1, :cond_c

    .line 275
    .line 276
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;->getTabType()Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    sget-object v1, Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;->SHORTS:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 281
    .line 282
    if-ne v0, v1, :cond_a

    .line 283
    .line 284
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->Z()V

    .line 285
    .line 286
    .line 287
    goto :goto_1

    .line 288
    :cond_a
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->c0()V

    .line 289
    .line 290
    .line 291
    :goto_1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->B0()V

    .line 292
    .line 293
    .line 294
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;

    .line 299
    .line 300
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;->e:Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;

    .line 301
    .line 302
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;->getTabType()Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;->e(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;)I

    .line 307
    .line 308
    .line 309
    move-result v0

    .line 310
    const/4 v1, -0x1

    .line 311
    if-eq v0, v1, :cond_b

    .line 312
    .line 313
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    check-cast v1, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;

    .line 318
    .line 319
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;->g:Landroidx/viewpager2/widget/ViewPager2;

    .line 320
    .line 321
    invoke-virtual {v1, v0, v4}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 322
    .line 323
    .line 324
    :cond_b
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;->getClickTab()Z

    .line 325
    .line 326
    .line 327
    move-result v0

    .line 328
    if-eqz v0, :cond_c

    .line 329
    .line 330
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/c;->a:Lcom/startshorts/androidplayer/manager/configure/ad/c;

    .line 331
    .line 332
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->t:Ljava/lang/String;

    .line 333
    .line 334
    invoke-virtual {v0, v1, p0}, Lcom/startshorts/androidplayer/manager/configure/ad/c;->s(Ljava/lang/String;Landroid/app/Activity;)Z

    .line 335
    .line 336
    .line 337
    :cond_c
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;

    .line 342
    .line 343
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;->e:Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;

    .line 344
    .line 345
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;->getTabType()Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 346
    .line 347
    .line 348
    move-result-object p1

    .line 349
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;->j(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;)V

    .line 350
    .line 351
    .line 352
    sget-object p1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 353
    .line 354
    invoke-static {p1, v4, v3, v5}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s(Lcom/startshorts/androidplayer/manager/event/EventManager;ZILjava/lang/Object;)V

    .line 355
    .line 356
    .line 357
    return-void
.end method

.method public final receiveUserRechargedEvent(Lcom/startshorts/androidplayer/bean/eventbus/UserRechargedEvent;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/UserRechargedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "receive UserRechargedEvent"

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->a:Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->h()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public v()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->v()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->F()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityMainBinding;->g:Landroidx/viewpager2/widget/ViewPager2;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
