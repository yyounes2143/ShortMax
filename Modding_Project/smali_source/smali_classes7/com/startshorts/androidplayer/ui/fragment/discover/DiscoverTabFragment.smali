.class public final Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;
.super Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;
.source "DiscoverTabFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$a;,
        Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment<",
        "Lcom/startshorts/androidplayer/databinding/FragmentDiscoverTabBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDiscoverTabFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverTabFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,660:1\n1863#2,2:661\n1863#2,2:663\n360#2,7:666\n1557#2:673\n1628#2,3:674\n254#3:665\n*S KotlinDebug\n*F\n+ 1 DiscoverTabFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment\n*L\n175#1:661,2\n192#1:663,2\n453#1:666,7\n463#1:673\n463#1:674,3\n379#1:665\n*E\n"
    }
.end annotation


# static fields
.field public static final I:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private A:Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final B:I

.field private C:I

.field private D:Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final E:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$mOnPageChangeCallback$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/Fragment;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final H:I

.field private final o:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final p:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final q:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
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

.field private final t:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private u:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private v:I

.field private final w:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private x:Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private y:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private z:Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->I:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/discover/u0;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/u0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->o:Lms/i;

    .line 14
    .line 15
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 16
    .line 17
    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->p:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 21
    .line 22
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/discover/v0;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/v0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->q:Lms/i;

    .line 32
    .line 33
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/discover/w0;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/w0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->r:Lms/i;

    .line 43
    .line 44
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/discover/x0;

    .line 45
    .line 46
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/x0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->s:Lms/i;

    .line 54
    .line 55
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/discover/y0;

    .line 56
    .line 57
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/y0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->t:Lms/i;

    .line 65
    .line 66
    const-string v0, ""

    .line 67
    .line 68
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->u:Ljava/lang/String;

    .line 69
    .line 70
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$h;

    .line 71
    .line 72
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$h;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)V

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->w:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$b;

    .line 76
    .line 77
    const/high16 v0, 0x43160000    # 150.0f

    .line 78
    .line 79
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->B:I

    .line 84
    .line 85
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$mOnPageChangeCallback$1;

    .line 86
    .line 87
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$mOnPageChangeCallback$1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)V

    .line 88
    .line 89
    .line 90
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->E:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$mOnPageChangeCallback$1;

    .line 91
    .line 92
    new-instance v0, Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .line 96
    .line 97
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->F:Ljava/util/List;

    .line 98
    .line 99
    sget v0, Lcom/startshorts/androidplayer/R$layout;->fragment_discover_tab:I

    .line 100
    .line 101
    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->H:I

    .line 102
    .line 103
    return-void
.end method

.method private final A0()Landroid/animation/ObjectAnimator;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->r:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getValue(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 13
    .line 14
    return-object v0
.end method

.method private final B0()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->t:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final D0()Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->o:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final E0()Lcom/startshorts/androidplayer/ui/view/search/SearchLabelView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->q:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/ui/view/search/SearchLabelView;

    .line 8
    .line 9
    return-object v0
.end method

.method private final F0()Landroidx/lifecycle/ViewModelProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->s:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/ViewModelProvider;

    .line 8
    .line 9
    return-object v0
.end method

.method private final K0(Ljava/lang/Integer;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, -0x1

    .line 12
    if-eqz v3, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;->getTabId()Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move v2, v4

    .line 35
    :goto_1
    iput v2, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->C:I

    .line 36
    .line 37
    if-ne v2, v4, :cond_2

    .line 38
    .line 39
    iput v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->C:I

    .line 40
    .line 41
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_3

    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    goto :goto_2

    .line 49
    :cond_3
    iget p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->C:I

    .line 50
    .line 51
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 56
    .line 57
    :goto_2
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->D:Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 58
    .line 59
    return-void
.end method

.method private final L0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->G:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-object p1, Lud/a;->a:Lud/a;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Lud/a;->M0(Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->A:Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView;->A()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void

    .line 19
    :cond_1
    if-eqz v0, :cond_3

    .line 20
    .line 21
    move-object v1, v0

    .line 22
    check-cast v1, Ljava/lang/Iterable;

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 39
    .line 40
    invoke-static {v2, p1}, Ljk/u;->k(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/util/List;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    sget-object p1, Lud/a;->a:Lud/a;

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Lud/a;->M0(Ljava/util/List;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->A:Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView;

    .line 50
    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView;->D()V

    .line 54
    .line 55
    .line 56
    :cond_3
    return-void
.end method

.method private final M0()V
    .locals 5

    .line 1
    new-instance v0, Lfk/e;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "requireContext(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-string v3, "getViewLifecycleOwner(...)"

    .line 17
    .line 18
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->B0()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    new-instance v4, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$c;

    .line 26
    .line 27
    invoke-direct {v4, p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, v1, v2, v3, v4}, Lfk/e;-><init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;Lfk/e$a;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lfk/e;->d()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private final N0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverTabBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverTabBinding;->e:Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;

    .line 8
    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$d;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$d;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;->setCallback(Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout$a;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final O0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->z:Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverTabBinding;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverTabBinding;->d:Landroidx/databinding/ViewStubProxy;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getViewStub()Landroid/view/ViewStub;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-static {v0}, Ljk/e0;->d(Landroid/view/ViewStub;)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v0, v1

    .line 26
    :goto_0
    instance-of v2, v0, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    move-object v1, v0

    .line 31
    check-cast v1, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;

    .line 32
    .line 33
    :cond_1
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->z:Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    const-string v0, "home_reward"

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;->setMFrom(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$e;

    .line 43
    .line 44
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$e;-><init>(Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;->setMListener(Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$b;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->z:Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;

    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;->C()V

    .line 55
    .line 56
    .line 57
    :cond_3
    return-void
.end method

.method private final P0()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverTabBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverTabBinding;->f:Lcom/startshorts/androidplayer/ui/view/search/HomeSearchBarView;

    .line 8
    .line 9
    sget v1, Lcom/startshorts/androidplayer/R$id;->logo_iv:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string v0, "findViewById(...)"

    .line 16
    .line 17
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->J()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    const/16 v7, 0xd

    .line 27
    .line 28
    const/4 v8, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    const/4 v6, 0x0

    .line 32
    invoke-static/range {v2 .. v8}, Ljk/b0;->i(Landroid/view/View;IIIIILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->E0()Lcom/startshorts/androidplayer/ui/view/search/SearchLabelView;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v2, "<get-lifecycle>(...)"

    .line 44
    .line 45
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/search/SearchLabelView;->C(Landroidx/lifecycle/Lifecycle;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method private final Q0(Ljava/lang/Integer;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->K0(Ljava/lang/Integer;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverTabBinding;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverTabBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/TabView;

    .line 11
    .line 12
    new-instance v0, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;

    .line 13
    .line 14
    sget v1, Lcom/startshorts/androidplayer/R$layout;->item_discover_tab:I

    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;-><init>(I)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$f;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$f;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->J(Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$d;)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Lcom/startshorts/androidplayer/ui/view/base/CatchExceptionLinearLayoutManager;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-string v3, "requireActivity(...)"

    .line 34
    .line 35
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-direct {v1, v2, v3, v3}, Lcom/startshorts/androidplayer/ui/view/base/CatchExceptionLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 40
    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-virtual {p1, p2, v0, v2, v1}, Lcom/startshorts/androidplayer/ui/view/base/TabView;->a(Ljava/util/List;Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 44
    .line 45
    .line 46
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->C:I

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/ui/view/base/TabView;->setSelectedIndex(I)V

    .line 49
    .line 50
    .line 51
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    const/4 v1, 0x1

    .line 56
    if-le v0, v1, :cond_0

    .line 57
    .line 58
    move v0, v3

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const/16 v0, 0x8

    .line 61
    .line 62
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverTabBinding;

    .line 70
    .line 71
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverTabBinding;->h:Landroidx/viewpager2/widget/ViewPager2;

    .line 72
    .line 73
    const/4 v0, 0x4

    .line 74
    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 75
    .line 76
    .line 77
    invoke-direct {p0, p2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->w0(Ljava/util/List;)Landroidx/viewpager2/adapter/FragmentStateAdapter;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 82
    .line 83
    .line 84
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    invoke-static {p1, v3}, Lkd/d;->a(Landroidx/viewpager2/widget/ViewPager2;Z)V

    .line 88
    .line 89
    .line 90
    const/4 v0, 0x2

    .line 91
    invoke-static {p1, v0}, Lkd/d;->b(Landroidx/viewpager2/widget/ViewPager2;I)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->E:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$mOnPageChangeCallback$1;

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->E:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$mOnPageChangeCallback$1;

    .line 100
    .line 101
    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 102
    .line 103
    .line 104
    iget p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->C:I

    .line 105
    .line 106
    if-ltz p1, :cond_1

    .line 107
    .line 108
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 109
    .line 110
    .line 111
    move-result p2

    .line 112
    if-ge p1, p2, :cond_1

    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    check-cast p1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverTabBinding;

    .line 119
    .line 120
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverTabBinding;->h:Landroidx/viewpager2/widget/ViewPager2;

    .line 121
    .line 122
    iget p2, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->C:I

    .line 123
    .line 124
    invoke-virtual {p1, p2, v3}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 125
    .line 126
    .line 127
    :cond_1
    return-void
.end method

.method private final R0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->A:Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverTabBinding;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverTabBinding;->i:Landroidx/databinding/ViewStubProxy;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getViewStub()Landroid/view/ViewStub;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-static {v0}, Ljk/e0;->d(Landroid/view/ViewStub;)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v0, v1

    .line 26
    :goto_0
    instance-of v2, v0, Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView;

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    move-object v1, v0

    .line 31
    check-cast v1, Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView;

    .line 32
    .line 33
    :cond_1
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->A:Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView;

    .line 34
    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$g;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$g;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView;->setMListener(Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView$a;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    if-eqz v0, :cond_3

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView;->D()V

    .line 49
    .line 50
    .line 51
    :cond_3
    :goto_1
    return-void
.end method

.method private final T0()V
    .locals 6

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$loadSubscribeDiscountData$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, p0, v1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$loadSubscribeDiscountData$1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;Lrs/c;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v1, "loadSubscribeDiscountData"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private static final U0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Landroid/animation/ObjectAnimator;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverTabBinding;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverTabBinding;->b:Landroid/view/View;

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    new-array v0, v0, [F

    .line 11
    .line 12
    fill-array-data v0, :array_0

    .line 13
    .line 14
    .line 15
    const-string v1, "alpha"

    .line 16
    .line 17
    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-wide/16 v0, 0x1f4

    .line 22
    .line 23
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 24
    .line 25
    .line 26
    return-object p0

    .line 27
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private static final V0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->F0()Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-class v0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 12
    .line 13
    return-object p0
.end method

.method public static synthetic W(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->V0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final W0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;
    .locals 4

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 4
    .line 5
    .line 6
    const-class v1, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;->F()Landroidx/lifecycle/MutableLiveData;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/discover/b1;

    .line 19
    .line 20
    invoke-direct {v2, p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/b1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$i;

    .line 24
    .line 25
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$i;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method public static synthetic X(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Lcom/startshorts/androidplayer/ui/view/search/SearchLabelView;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->Z0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Lcom/startshorts/androidplayer/ui/view/search/SearchLabelView;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final X0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;Lcom/startshorts/androidplayer/viewmodel/discover/b;)Lkotlin/Unit;
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/discover/b$a;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/discover/b$a;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/discover/b$a;->a()Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getState()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->U()V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/discover/b$a;->a()Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getMsg()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 p1, 0x0

    .line 36
    :goto_0
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->V(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/discover/b$e;

    .line 41
    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->K()V

    .line 45
    .line 46
    .line 47
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/discover/b$e;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/discover/b$e;->a()Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/discover/b$e;->b()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-nez p1, :cond_3

    .line 58
    .line 59
    new-instance p1, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    :cond_3
    invoke-direct {p0, v0, p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->Q0(Ljava/lang/Integer;Ljava/util/List;)V

    .line 65
    .line 66
    .line 67
    new-instance p1, Lcom/startshorts/androidplayer/ui/fragment/discover/c1;

    .line 68
    .line 69
    invoke-direct {p1, p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/c1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)V

    .line 70
    .line 71
    .line 72
    invoke-direct {p0, v1, p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->x0(ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/r;

    .line 73
    .line 74
    .line 75
    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 76
    .line 77
    return-object p0
.end method

.method public static synthetic Y(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;Lcom/startshorts/androidplayer/viewmodel/discover/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->X0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;Lcom/startshorts/androidplayer/viewmodel/discover/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final Y0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    instance-of p1, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    check-cast p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    if-eqz p0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->E0()V

    .line 18
    .line 19
    .line 20
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p0
.end method

.method public static synthetic Z(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->b1(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final Z0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Lcom/startshorts/androidplayer/ui/view/search/SearchLabelView;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverTabBinding;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverTabBinding;->f:Lcom/startshorts/androidplayer/ui/view/search/HomeSearchBarView;

    .line 8
    .line 9
    sget v0, Lcom/startshorts/androidplayer/R$id;->search_label_view:I

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/startshorts/androidplayer/ui/view/search/SearchLabelView;

    .line 16
    .line 17
    return-object p0
.end method

.method public static synthetic a0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->U0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Landroid/animation/ObjectAnimator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final a1(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Landroidx/lifecycle/ViewModelProvider;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic b0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Landroidx/lifecycle/ViewModelProvider;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->a1(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final b1(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->T()V

    .line 4
    .line 5
    .line 6
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method public static synthetic c0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->Y0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final c1(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->K()V

    .line 4
    .line 5
    .line 6
    :cond_0
    if-eqz p1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    instance-of p1, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    check-cast p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 p0, 0x0

    .line 20
    :goto_0
    if-eqz p0, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->E0()V

    .line 23
    .line 24
    .line 25
    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 26
    .line 27
    return-object p0
.end method

.method public static synthetic d0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->W0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final d1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->G:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->A:Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView;->A()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void

    .line 13
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->G:Ljava/util/List;

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    check-cast v1, Ljava/lang/Iterable;

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    new-instance v2, Lzc/g;

    .line 54
    .line 55
    sget-object v3, Lle/h;->a:Lle/h;

    .line 56
    .line 57
    invoke-virtual {v3}, Lle/h;->b()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-direct {v2, v3, v0}, Lzc/g;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->e1(Ljava/util/List;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public static synthetic e0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->c1(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic f0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->v0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic g0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->z0()Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic h0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->A0()Landroid/animation/ObjectAnimator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic i0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Lcom/startshorts/androidplayer/databinding/FragmentDiscoverTabBinding;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverTabBinding;

    .line 6
    .line 7
    return-object p0
.end method

.method public static final synthetic j0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->x:Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic k0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->F:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic l0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->y:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic m0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->D:Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic n0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->B:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic o0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->A:Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic p0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->L0(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic q0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->d1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic r0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->x:Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic s0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->C:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic t0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->D:Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic u0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->G:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method private final v0()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->B0()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/billing/a$c;

    .line 6
    .line 7
    const-string v2, "coins_2_sub_dialog"

    .line 8
    .line 9
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/viewmodel/billing/a$c;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->W(Lcom/startshorts/androidplayer/viewmodel/billing/a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final w0(Ljava/util/List;)Landroidx/viewpager2/adapter/FragmentStateAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;",
            ">;)",
            "Landroidx/viewpager2/adapter/FragmentStateAdapter;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->F:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Ljava/lang/Iterable;

    .line 8
    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    const/16 v2, 0xa

    .line 12
    .line 13
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;->hashCode()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    int-to-long v2, v2

    .line 41
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$createFragmentStateAdapter$1;

    .line 50
    .line 51
    invoke-direct {v0, p0, v1, p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$createFragmentStateAdapter$1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;Ljava/util/List;Ljava/util/List;)V

    .line 52
    .line 53
    .line 54
    return-object v0
.end method

.method private final x0(ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/r;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlinx/coroutines/r;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$getBottomFloatView$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, p2, p1, p0, v1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$getBottomFloatView$1;-><init>(Lkotlin/jvm/functions/Function1;ZLcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;Lrs/c;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v1, "getBottomFloatView"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method static synthetic y0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/r;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x1

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->x0(ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/r;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private final z0()Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->F:Ljava/util/List;

    .line 2
    .line 3
    iget v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->C:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->t0(Ljava/util/List;I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v0, v1

    .line 22
    :goto_0
    instance-of v2, v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    move-object v1, v0

    .line 27
    check-cast v1, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;

    .line 28
    .line 29
    :cond_1
    return-object v1
.end method


# virtual methods
.method public final C0()Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->w:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final G0()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->p:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 2
    .line 3
    return-object v0
.end method

.method public final H0()Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->D:Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 2
    .line 3
    return-object v0
.end method

.method public final I0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->u:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final J0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->v:I

    .line 2
    .line 3
    return v0
.end method

.method public R()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->D0()Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/startshorts/androidplayer/viewmodel/discover/a$c;->a:Lcom/startshorts/androidplayer/viewmodel/discover/a$c;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;->Q(Lcom/startshorts/androidplayer/viewmodel/discover/a;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final S0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->x:Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->x:Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->P()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :goto_0
    return v1
.end method

.method public final e1(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzc/g;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "list"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->B0()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/billing/a$h;

    .line 11
    .line 12
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/viewmodel/billing/a$h;-><init>(Ljava/util/List;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->W(Lcom/startshorts/androidplayer/viewmodel/billing/a;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final f1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->D:Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;->isH5()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverTabBinding;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverTabBinding;->e:Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;->k()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method public final g1(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->u:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final h1(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->v:I

    .line 2
    .line 3
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->H:I

    .line 2
    .line 3
    return v0
.end method

.method public o()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public onPause()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->D:Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;->isH5()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/discover/z0;

    .line 15
    .line 16
    invoke-direct {v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/z0;-><init>()V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-static {p0, v3, v0, v1, v2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->y0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->E0()Lcom/startshorts/androidplayer/ui/view/search/SearchLabelView;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/search/SearchLabelView;->E()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->D0()Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Lcom/startshorts/androidplayer/viewmodel/discover/a$d;->a:Lcom/startshorts/androidplayer/viewmodel/discover/a$d;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;->Q(Lcom/startshorts/androidplayer/viewmodel/discover/a;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->D:Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;->isH5()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/discover/a1;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/a1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)V

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    const/4 v2, 0x0

    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-static {p0, v3, v0, v1, v2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->y0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->f1()V

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->O0()V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->R0()V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const-string p2, "from"

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    :cond_0
    const-string p1, "icon"

    .line 24
    .line 25
    :cond_1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->y:Ljava/lang/String;

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->P0()V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->N0()V

    .line 31
    .line 32
    .line 33
    sget-object p1, Lud/a;->a:Lud/a;

    .line 34
    .line 35
    const/4 p2, 0x0

    .line 36
    invoke-virtual {p1, p2}, Lud/a;->g0(Z)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->R0()V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->M0()V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->T0()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public p()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public q()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "DiscoverTabFragment"

    .line 2
    .line 3
    return-object v0
.end method

.method public final receiveRefreshAccountEvent(Lcom/startshorts/androidplayer/bean/eventbus/RefreshAccountEvent;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/RefreshAccountEvent;
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
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->m()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const-string p1, "receiveRefreshAccountEvent"

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->T()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->R()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final receiveRefreshDiscoverFragmentEvent(Lcom/startshorts/androidplayer/bean/eventbus/RefreshDiscoverFragmentEvent;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/RefreshDiscoverFragmentEvent;
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
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->D:Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;->getTabId()Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Lcom/startshorts/androidplayer/bean/eventbus/RefreshSpecifiedDiscoverFragmentEvent;

    .line 25
    .line 26
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/bean/eventbus/RefreshSpecifiedDiscoverFragmentEvent;-><init>(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lau/c;->l(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public t()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->t()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->D0()Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Lcom/startshorts/androidplayer/viewmodel/discover/a$c;->a:Lcom/startshorts/androidplayer/viewmodel/discover/a$c;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;->Q(Lcom/startshorts/androidplayer/viewmodel/discover/a;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public v()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->v()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->B()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverTabBinding;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverTabBinding;->e:Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout;->j()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverTabBinding;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverTabBinding;->h:Landroidx/viewpager2/widget/ViewPager2;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->E:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$mOnPageChangeCallback$1;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->A0()Landroid/animation/ObjectAnimator;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 43
    .line 44
    .line 45
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->F:Ljava/util/List;

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 48
    .line 49
    .line 50
    return-void
.end method
