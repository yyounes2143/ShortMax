.class public final Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;
.super Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;
.source "TagFilterListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment<",
        "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
        "Lcom/startshorts/androidplayer/databinding/FragmentTagFilterListBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTagFilterListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TagFilterListFragment.kt\ncom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,198:1\n1#2:199\n*E\n"
    }
.end annotation


# static fields
.field public static final L:Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private F:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private G:I

.field private H:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private I:Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private J:Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final K:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;->L:Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;->G:I

    .line 6
    .line 7
    new-instance v0, Lyi/h;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lyi/h;-><init>(Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;->K:Lms/i;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic a1(Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;)Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;->j1(Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;)Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b1(Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;Lcom/startshorts/androidplayer/viewmodel/tag/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;->k1(Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;Lcom/startshorts/androidplayer/viewmodel/tag/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c1(Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;->H:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic d1(Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;->F:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e1(Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;)Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;->I:Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic f1(Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;->G:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic g1(Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;->l1(Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final h1()Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;->K:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final i1()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v2, "from"

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, v1

    .line 16
    :goto_0
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;->F:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v2, 0x1

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const-string v3, "tab_type"

    .line 26
    .line 27
    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v0, v2

    .line 33
    :goto_1
    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;->G:I

    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    const-string v3, "shorts_label_param"

    .line 42
    .line 43
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    const-class v3, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 50
    .line 51
    invoke-static {v0, v3}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    move-object v0, v1

    .line 59
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    if-eqz v3, :cond_3

    .line 64
    .line 65
    const-string v4, "episode_param"

    .line 66
    .line 67
    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    if-eqz v3, :cond_3

    .line 72
    .line 73
    const-class v4, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 74
    .line 75
    invoke-static {v3, v4}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    check-cast v3, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_3
    move-object v3, v1

    .line 83
    :goto_3
    iput-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;->H:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 84
    .line 85
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    if-eqz v3, :cond_4

    .line 90
    .line 91
    const-string v4, "shorts_param"

    .line 92
    .line 93
    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    if-eqz v3, :cond_4

    .line 98
    .line 99
    const-class v1, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 100
    .line 101
    invoke-static {v3, v1}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    check-cast v1, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 106
    .line 107
    :cond_4
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;->I:Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 108
    .line 109
    if-nez v0, :cond_5

    .line 110
    .line 111
    const-string v0, "shortsLabel is null"

    .line 112
    .line 113
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->g(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->h()V

    .line 117
    .line 118
    .line 119
    const/4 v0, 0x0

    .line 120
    return v0

    .line 121
    :cond_5
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;->J:Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 122
    .line 123
    return v2
.end method

.method private static final j1(Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;)Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;
    .locals 4

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 4
    .line 5
    .line 6
    const-class v1, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;->C()Landroidx/lifecycle/MutableLiveData;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Lyi/i;

    .line 19
    .line 20
    invoke-direct {v2, p0}, Lyi/i;-><init>(Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment$c;

    .line 24
    .line 25
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method private static final k1(Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;Lcom/startshorts/androidplayer/viewmodel/tag/b;)Lkotlin/Unit;
    .locals 8

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/tag/b$c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/tag/b$c;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/tag/b$c;->b()Lcom/startshorts/androidplayer/bean/tag/TagFilterShortsListResult;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/tag/TagFilterShortsListResult;->getList()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :cond_0
    move-object v3, v1

    .line 19
    const/4 v6, 0x6

    .line 20
    const/4 v7, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    move-object v2, p0

    .line 24
    invoke-static/range {v2 .. v7}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->S0(Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;Ljava/util/List;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/tag/b$a;

    .line 29
    .line 30
    if-eqz v0, :cond_4

    .line 31
    .line 32
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/tag/b$a;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/tag/b$a;->a()Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const/4 v2, 0x0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getState()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/4 v3, 0x1

    .line 46
    if-ne v0, v3, :cond_2

    .line 47
    .line 48
    move v2, v3

    .line 49
    :cond_2
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/tag/b$a;->a()Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getMsg()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    goto :goto_0

    .line 60
    :cond_3
    move-object p1, v1

    .line 61
    :goto_0
    invoke-virtual {p0, v1, v2, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->R0(Ljava/util/List;ZLjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 65
    .line 66
    return-object p0
.end method

.method private final l1(Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->V0:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a;

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
    new-instance v2, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 13
    .line 14
    invoke-direct {v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v3, "tag_fullscreen_page"

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setFrom(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getEpisodeNum()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v3, 0x3

    .line 31
    :goto_0
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setType(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getEpisodeNum()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getEpisodeNum()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setEpisodeNum(I)V

    .line 45
    .line 46
    .line 47
    :cond_1
    new-instance v3, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;

    .line 48
    .line 49
    invoke-direct {v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getId()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsId(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayCode()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortPlayCode(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsName(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPicUrl()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setCover(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getUpack()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {v3, p1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setUpack(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setShortsInfo(Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;)V

    .line 88
    .line 89
    .line 90
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 91
    .line 92
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a;->a(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method


# virtual methods
.method public G()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->viewstub_page_state_empty:I

    .line 2
    .line 3
    return v0
.end method

.method public Q()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->h()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public T0(II)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->T0(II)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;->h1()Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/tag/a$a;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;->J:Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;->getId()Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    int-to-long v2, v2

    .line 25
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v2, 0x0

    .line 31
    :goto_0
    iget v3, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;->G:I

    .line 32
    .line 33
    invoke-direct {v1, v2, v3, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/tag/a$a;-><init>(Ljava/lang/Long;III)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;->G(Lcom/startshorts/androidplayer/viewmodel/tag/a;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public U0(II)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->U0(II)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;->h1()Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/tag/a$a;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;->J:Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;->getId()Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    int-to-long v1, v1

    .line 25
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v1, 0x0

    .line 31
    :goto_0
    iget v2, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;->G:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    invoke-direct {v0, v1, v2, v3, p2}, Lcom/startshorts/androidplayer/viewmodel/tag/a$a;-><init>(Ljava/lang/Long;III)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/viewmodel/tag/TagViewModel;->G(Lcom/startshorts/androidplayer/viewmodel/tag/a;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public a0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public i0()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment$b;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment$b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->B(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->k0(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 15
    .line 16
    .line 17
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->i0()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->fragment_tag_filter_list:I

    .line 2
    .line 3
    return v0
.end method

.method public o()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;->i1()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->W0(Z)V

    .line 18
    .line 19
    .line 20
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
    const-string v0, "TagFilterListFragment"

    .line 2
    .line 3
    return-object v0
.end method

.method public t()V
    .locals 7

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->t()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 5
    .line 6
    new-instance v2, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "from"

    .line 12
    .line 13
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;->F:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;->J:Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;->getId()Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const-string v3, "tag_id"

    .line 33
    .line 34
    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    :cond_0
    const-string v1, "type_id"

    .line 38
    .line 39
    const-string v3, "tag_fullscreen_page"

    .line 40
    .line 41
    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;->I:Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getId()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;->H:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 59
    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    move-object v1, v3

    .line 68
    :goto_1
    if-eqz v1, :cond_3

    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    const-string v4, "reel_id"

    .line 75
    .line 76
    invoke-virtual {v2, v4, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    :cond_3
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;->I:Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 80
    .line 81
    if-eqz v1, :cond_4

    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getEpisodeNum()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    goto :goto_3

    .line 92
    :cond_4
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;->H:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 93
    .line 94
    if-eqz v1, :cond_5

    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getEpisodeNum()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    goto :goto_2

    .line 101
    :cond_5
    :goto_3
    if-eqz v3, :cond_6

    .line 102
    .line 103
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    const-string v3, "episode"

    .line 108
    .line 109
    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    :cond_6
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 113
    .line 114
    const/4 v5, 0x4

    .line 115
    const/4 v6, 0x0

    .line 116
    const-string v1, "tag_page_show"

    .line 117
    .line 118
    const-wide/16 v3, 0x0

    .line 119
    .line 120
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    return-void
.end method

.method public v0()I
    .locals 1

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    return v0
.end method
