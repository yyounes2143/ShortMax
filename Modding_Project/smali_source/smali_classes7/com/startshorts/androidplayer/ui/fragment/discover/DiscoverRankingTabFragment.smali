.class public final Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;
.super Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;
.source "DiscoverRankingTabFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment$a;,
        Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment$PagerAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment<",
        "Lcom/startshorts/androidplayer/databinding/FragmentDiscoverRankingTabBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDiscoverRankingTabFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverRankingTabFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,267:1\n1872#2,3:268\n1872#2,3:271\n*S KotlinDebug\n*F\n+ 1 DiscoverRankingTabFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment\n*L\n112#1:268,3\n135#1:271,3\n*E\n"
    }
.end annotation


# static fields
.field public static final t:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private o:Z

.field private p:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final q:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final r:I

.field private final s:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;->t:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment$a;

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
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/discover/r0;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/r0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;->q:Lms/i;

    .line 14
    .line 15
    sget v0, Lcom/startshorts/androidplayer/R$layout;->fragment_discover_ranking_tab:I

    .line 16
    .line 17
    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;->r:I

    .line 18
    .line 19
    const-string v0, "DiscoverRankingTabFragment"

    .line 20
    .line 21
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;->s:Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method

.method public static synthetic W(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;)Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;->i0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;)Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic X(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;Lcom/startshorts/androidplayer/viewmodel/discover/h;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;->k0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;Lcom/startshorts/androidplayer/viewmodel/discover/h;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Y(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;->j0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic Z(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;)Lcom/startshorts/androidplayer/databinding/FragmentDiscoverRankingTabBinding;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverRankingTabBinding;

    .line 6
    .line 7
    return-object p0
.end method

.method private final b0(Landroidx/fragment/app/Fragment;)Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p1, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;->b0(Landroidx/fragment/app/Fragment;)Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :goto_0
    return-object p1
.end method

.method private final c0()Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;->q:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final d0()V
    .locals 9

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;->t:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment$a;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment$a;->a(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment$a;Landroid/os/Bundle;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->J()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->u()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    add-int/2addr v1, v2

    .line 24
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->t()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    :goto_0
    add-int/2addr v1, v0

    .line 29
    move v4, v1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->J()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->t()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    goto :goto_0

    .line 42
    :goto_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverRankingTabBinding;

    .line 47
    .line 48
    iget-object v2, v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverRankingTabBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/TabView;

    .line 49
    .line 50
    const-string v0, "tabView"

    .line 51
    .line 52
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/16 v7, 0xd

    .line 56
    .line 57
    const/4 v8, 0x0

    .line 58
    const/4 v3, 0x0

    .line 59
    const/4 v5, 0x0

    .line 60
    const/4 v6, 0x0

    .line 61
    invoke-static/range {v2 .. v8}, Ljk/b0;->i(Landroid/view/View;IIIIILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method private final e0()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;->b0(Landroidx/fragment/app/Fragment;)Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->I0()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    :cond_1
    const-string v0, "tab_ranking"

    .line 26
    .line 27
    :cond_2
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 28
    .line 29
    new-instance v3, Landroid/os/Bundle;

    .line 30
    .line 31
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v2, "from"

    .line 35
    .line 36
    invoke-virtual {v3, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 40
    .line 41
    const/4 v6, 0x4

    .line 42
    const/4 v7, 0x0

    .line 43
    const-string v2, "ranking_list_show"

    .line 44
    .line 45
    const-wide/16 v4, 0x0

    .line 46
    .line 47
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method private final g0()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;->b0(Landroidx/fragment/app/Fragment;)Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;->c0()Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel;->C()Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getRankingNameList()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    check-cast v1, Ljava/lang/Iterable;

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const/4 v2, 0x0

    .line 37
    const/4 v3, -0x1

    .line 38
    move v4, v2

    .line 39
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_6

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    add-int/lit8 v6, v4, 0x1

    .line 50
    .line 51
    if-gez v4, :cond_3

    .line 52
    .line 53
    invoke-static {}, Lkotlin/collections/CollectionsKt;->y()V

    .line 54
    .line 55
    .line 56
    :cond_3
    check-cast v5, Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->J0()I

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;->getId()Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    if-nez v5, :cond_4

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_4
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-ne v7, v5, :cond_5

    .line 74
    .line 75
    move v3, v4

    .line 76
    :cond_5
    :goto_1
    move v4, v6

    .line 77
    goto :goto_0

    .line 78
    :cond_6
    if-ltz v3, :cond_7

    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverRankingTabBinding;

    .line 85
    .line 86
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverRankingTabBinding;->c:Landroidx/viewpager2/widget/ViewPager2;

    .line 87
    .line 88
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eq v1, v3, :cond_7

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    check-cast v1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverRankingTabBinding;

    .line 99
    .line 100
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverRankingTabBinding;->c:Landroidx/viewpager2/widget/ViewPager2;

    .line 101
    .line 102
    invoke-virtual {v1, v3, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 103
    .line 104
    .line 105
    :cond_7
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;->e0()V

    .line 106
    .line 107
    .line 108
    const-string v1, ""

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->g1(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->h1(I)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method private final h0(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;->b0(Landroidx/fragment/app/Fragment;)Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getRankingNameList()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    move-object v2, v1

    .line 20
    check-cast v2, Ljava/lang/Iterable;

    .line 21
    .line 22
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const/4 v3, 0x0

    .line 27
    move v4, v3

    .line 28
    move v5, v4

    .line 29
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-eqz v6, :cond_5

    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    add-int/lit8 v7, v5, 0x1

    .line 40
    .line 41
    if-gez v5, :cond_2

    .line 42
    .line 43
    invoke-static {}, Lkotlin/collections/CollectionsKt;->y()V

    .line 44
    .line 45
    .line 46
    :cond_2
    check-cast v6, Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;

    .line 47
    .line 48
    const/4 v8, 0x1

    .line 49
    invoke-virtual {v6, v8}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->setClickable(Z)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->J0()I

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;->getId()Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    if-nez v6, :cond_3

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-ne v8, v6, :cond_4

    .line 68
    .line 69
    move v4, v5

    .line 70
    :cond_4
    :goto_1
    move v5, v7

    .line 71
    goto :goto_0

    .line 72
    :cond_5
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverRankingTabBinding;

    .line 77
    .line 78
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverRankingTabBinding;->c:Landroidx/viewpager2/widget/ViewPager2;

    .line 79
    .line 80
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment$PagerAdapter;

    .line 81
    .line 82
    invoke-direct {v2, p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment$PagerAdapter;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverRankingTabBinding;

    .line 93
    .line 94
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverRankingTabBinding;->c:Landroidx/viewpager2/widget/ViewPager2;

    .line 95
    .line 96
    invoke-virtual {p1, v4, v3}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    check-cast p1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverRankingTabBinding;

    .line 104
    .line 105
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverRankingTabBinding;->c:Landroidx/viewpager2/widget/ViewPager2;

    .line 106
    .line 107
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment$updateTabView$2;

    .line 108
    .line 109
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment$updateTabView$2;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 113
    .line 114
    .line 115
    new-instance p1, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;

    .line 116
    .line 117
    sget v0, Lcom/startshorts/androidplayer/R$layout;->item_discover_ranking_tab:I

    .line 118
    .line 119
    invoke-direct {p1, v0}, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;-><init>(I)V

    .line 120
    .line 121
    .line 122
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment$c;

    .line 123
    .line 124
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment$c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->J(Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$d;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverRankingTabBinding;

    .line 135
    .line 136
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverRankingTabBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/TabView;

    .line 137
    .line 138
    new-instance v2, Lcom/startshorts/androidplayer/ui/view/base/CatchExceptionLinearLayoutManager;

    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    check-cast v5, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverRankingTabBinding;

    .line 145
    .line 146
    iget-object v5, v5, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverRankingTabBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/TabView;

    .line 147
    .line 148
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    const-string v6, "getContext(...)"

    .line 153
    .line 154
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-direct {v2, v5, v3, v3}, Lcom/startshorts/androidplayer/ui/view/base/CatchExceptionLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 158
    .line 159
    .line 160
    const/4 v3, 0x0

    .line 161
    invoke-virtual {v0, v1, p1, v3, v2}, Lcom/startshorts/androidplayer/ui/view/base/TabView;->a(Ljava/util/List;Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    check-cast p1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverRankingTabBinding;

    .line 169
    .line 170
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverRankingTabBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/TabView;

    .line 171
    .line 172
    invoke-virtual {p1, v4}, Lcom/startshorts/androidplayer/ui/view/base/TabView;->setSelectedIndex(I)V

    .line 173
    .line 174
    .line 175
    return-void
.end method

.method private static final i0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;)Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel;
    .locals 4

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 4
    .line 5
    .line 6
    const-class v1, Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->o()Landroidx/lifecycle/MutableLiveData;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/discover/s0;

    .line 19
    .line 20
    invoke-direct {v2, p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/s0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment$b;

    .line 24
    .line 25
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel;->D()Landroidx/lifecycle/MutableLiveData;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/discover/t0;

    .line 36
    .line 37
    invoke-direct {v2, p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/t0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;)V

    .line 38
    .line 39
    .line 40
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment$b;

    .line 41
    .line 42
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 46
    .line 47
    .line 48
    return-object v0
.end method

.method private static final j0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->K()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getState()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->U()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getMsg()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->V(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0
.end method

.method private static final k0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;Lcom/startshorts/androidplayer/viewmodel/discover/h;)Lkotlin/Unit;
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/discover/h$b;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->K()V

    .line 6
    .line 7
    .line 8
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/discover/h$b;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/discover/h$b;->a()Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/discover/h$b;->a()Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getRankingNameList()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/util/Collection;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->J()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/discover/h$b;->a()Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;->h0(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->S()V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/discover/h$a;

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/discover/h$a;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/discover/h$a;->a()Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getState()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    const/4 v1, 0x1

    .line 65
    if-ne v0, v1, :cond_3

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->U()V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/discover/h$a;->a()Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getMsg()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->V(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 83
    .line 84
    return-object p0

    .line 85
    :cond_4
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 86
    .line 87
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 88
    .line 89
    .line 90
    throw p0
.end method


# virtual methods
.method public R()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v1, "parent_tab_id"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;->c0()Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    new-instance v2, Lcom/startshorts/androidplayer/viewmodel/discover/g$a;

    .line 20
    .line 21
    invoke-direct {v2, v0}, Lcom/startshorts/androidplayer/viewmodel/discover/g$a;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel;->E(Lcom/startshorts/androidplayer/viewmodel/discover/g;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final a0(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;->c0()Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel;->B(I)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final f0(ILjava/util/List;)V
    .locals 1
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;->c0()Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/discover/RankingTabViewModel;->I(ILjava/util/List;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;->r:I

    .line 2
    .line 3
    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;->b0(Landroidx/fragment/app/Fragment;)Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->C0()Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$b;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    :goto_0
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;->p:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$b;

    .line 26
    .line 27
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;->p:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$b;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-interface {v0, v2, v1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$b;->b(FZ)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;->o:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;->g0()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iput-boolean v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;->o:Z

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;->d0()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;->R()V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;->e0()V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;->s:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
