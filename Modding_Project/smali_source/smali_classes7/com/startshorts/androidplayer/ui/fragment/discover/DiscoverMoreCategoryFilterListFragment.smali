.class public final Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;
.super Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;
.source "DiscoverMoreCategoryFilterListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment<",
        "Lcom/startshorts/androidplayer/bean/discover/DiscoverCategoryShorts;",
        "Lcom/startshorts/androidplayer/databinding/FragmentDiscoverMoreCategoryFilterListBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDiscoverMoreCategoryFilterListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverMoreCategoryFilterListFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,213:1\n2642#2:214\n1#3:215\n*S KotlinDebug\n*F\n+ 1 DiscoverMoreCategoryFilterListFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment\n*L\n67#1:214\n67#1:215\n*E\n"
    }
.end annotation


# static fields
.field public static final J:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private F:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private G:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

.field private H:Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;

.field private final I:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;->J:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment$a;

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
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;->F:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/discover/i0;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/i0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;->I:Lms/i;

    .line 18
    .line 19
    return-void
.end method

.method public static synthetic a1(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;)Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreCategoryFilterViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;->g1(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;)Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreCategoryFilterViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b1(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;Lcom/startshorts/androidplayer/viewmodel/discover/d;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;->h1(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;Lcom/startshorts/androidplayer/viewmodel/discover/d;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c1(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;)Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;->G:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic d1(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;->i1(Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final e1()Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreCategoryFilterViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;->I:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreCategoryFilterViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final f1()Z
    .locals 5

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
    const-string v1, "from"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    :cond_0
    const-string v0, ""

    .line 16
    .line 17
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    const-string v3, "module_info"

    .line 25
    .line 26
    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    const-class v3, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 33
    .line 34
    invoke-static {v1, v3}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    move-object v1, v2

    .line 42
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    if-eqz v3, :cond_3

    .line 47
    .line 48
    const-string v4, "discover_category"

    .line 49
    .line 50
    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    if-eqz v3, :cond_3

    .line 55
    .line 56
    const-class v2, Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;

    .line 57
    .line 58
    invoke-static {v3, v2}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;

    .line 63
    .line 64
    :cond_3
    if-eqz v1, :cond_5

    .line 65
    .line 66
    if-nez v2, :cond_4

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_4
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;->F:Ljava/lang/String;

    .line 70
    .line 71
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;->G:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 72
    .line 73
    iput-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;->H:Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;

    .line 74
    .line 75
    const/4 v0, 0x1

    .line 76
    return v0

    .line 77
    :cond_5
    :goto_1
    const-string v0, "moduleInfo or discoverCategory is null"

    .line 78
    .line 79
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->g(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->h()V

    .line 83
    .line 84
    .line 85
    const/4 v0, 0x0

    .line 86
    return v0
.end method

.method private static final g1(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;)Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreCategoryFilterViewModel;
    .locals 4

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 4
    .line 5
    .line 6
    const-class v1, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreCategoryFilterViewModel;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreCategoryFilterViewModel;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreCategoryFilterViewModel;->A()Landroidx/lifecycle/MutableLiveData;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/discover/j0;

    .line 19
    .line 20
    invoke-direct {v2, p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/j0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment$c;

    .line 24
    .line 25
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method private static final h1(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;Lcom/startshorts/androidplayer/viewmodel/discover/d;)Lkotlin/Unit;
    .locals 8

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/discover/d$c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/discover/d$c;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/discover/d$c;->a()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_4

    .line 13
    .line 14
    check-cast p1, Ljava/lang/Iterable;

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_3

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/startshorts/androidplayer/bean/discover/DiscoverCategoryShorts;

    .line 31
    .line 32
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;->G:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 33
    .line 34
    const-string v4, "mModuleInfo"

    .line 35
    .line 36
    if-nez v3, :cond_0

    .line 37
    .line 38
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    move-object v3, v1

    .line 42
    :cond_0
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->getModuleId()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->setModuleId(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;->G:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 50
    .line 51
    if-nez v3, :cond_1

    .line 52
    .line 53
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    move-object v3, v1

    .line 57
    :cond_1
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->getModuleName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->setModuleName(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;->G:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 65
    .line 66
    if-nez v3, :cond_2

    .line 67
    .line 68
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    move-object v3, v1

    .line 72
    :cond_2
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->getRecommendId()Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->setRecommendId(Ljava/lang/Integer;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    move-object v1, p1

    .line 81
    check-cast v1, Ljava/util/List;

    .line 82
    .line 83
    :cond_4
    move-object v3, v1

    .line 84
    const/4 v6, 0x6

    .line 85
    const/4 v7, 0x0

    .line 86
    const/4 v4, 0x0

    .line 87
    const/4 v5, 0x0

    .line 88
    move-object v2, p0

    .line 89
    invoke-static/range {v2 .. v7}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->S0(Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;Ljava/util/List;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_5
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/discover/d$a;

    .line 94
    .line 95
    if-eqz v0, :cond_8

    .line 96
    .line 97
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/discover/d$a;

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/discover/d$a;->a()Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    const/4 v2, 0x0

    .line 104
    if-eqz v0, :cond_6

    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getState()I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    const/4 v3, 0x1

    .line 111
    if-ne v0, v3, :cond_6

    .line 112
    .line 113
    move v2, v3

    .line 114
    :cond_6
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/discover/d$a;->a()Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    if-eqz p1, :cond_7

    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getMsg()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    goto :goto_1

    .line 125
    :cond_7
    move-object p1, v1

    .line 126
    :goto_1
    invoke-virtual {p0, v1, v2, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->R0(Ljava/util/List;ZLjava/lang/String;)V

    .line 127
    .line 128
    .line 129
    :cond_8
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 130
    .line 131
    return-object p0
.end method

.method private final i1(Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V
    .locals 7

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
    const-string v3, "discover_more"

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setFrom(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setModuleInfo(Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;->G:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    const-string v4, "mModuleInfo"

    .line 29
    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    move-object p1, v3

    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->getModuleType()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string v5, "coming_soon"

    .line 41
    .line 42
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    const/4 v6, 0x3

    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    invoke-virtual {v2, v6}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setType(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getEpisodeNum()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    const/4 v6, 0x1

    .line 60
    :cond_2
    invoke-virtual {v2, v6}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setType(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getEpisodeNum()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_3

    .line 68
    .line 69
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getEpisodeNum()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setEpisodeNum(I)V

    .line 74
    .line 75
    .line 76
    :cond_3
    :goto_0
    new-instance p1, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;

    .line 77
    .line 78
    invoke-direct {p1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;-><init>()V

    .line 79
    .line 80
    .line 81
    iget-object v6, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;->G:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 82
    .line 83
    if-nez v6, :cond_4

    .line 84
    .line 85
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_4
    move-object v3, v6

    .line 90
    :goto_1
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->getModuleType()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-eqz v3, :cond_5

    .line 99
    .line 100
    const/4 v3, 0x4

    .line 101
    invoke-virtual {p1, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setVideoType(I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->getTrailerId()I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    invoke-virtual {p1, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsId(I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->getTrailerId()I

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-virtual {p1, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortPlayCode(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getId()I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    invoke-virtual {p1, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setBindShortsId(I)V

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_5
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getId()I

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    invoke-virtual {p1, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsId(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayCode()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-virtual {p1, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortPlayCode(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :goto_2
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayName()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-virtual {p1, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsName(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPicUrl()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-virtual {p1, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setCover(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getUpack()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setUpack(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setShortsInfo(Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;)V

    .line 166
    .line 167
    .line 168
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 169
    .line 170
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a;->a(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;)V

    .line 171
    .line 172
    .line 173
    return-void
.end method


# virtual methods
.method public G()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->viewstub_page_state_empty_discover_more:I

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
    .locals 9

    .line 1
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->T0(II)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;->e1()Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreCategoryFilterViewModel;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v8, Lcom/startshorts/androidplayer/viewmodel/discover/c$a;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;->G:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 11
    .line 12
    const-string v2, "mModuleInfo"

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    move-object v1, v3

    .line 21
    :cond_0
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->getModuleId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    const-string v1, ""

    .line 28
    .line 29
    :cond_1
    move-object v4, v1

    .line 30
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;->H:Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;

    .line 31
    .line 32
    const-string v5, "mDiscoverCategory"

    .line 33
    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    move-object v1, v3

    .line 40
    :cond_2
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;->getId()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v6, "-1"

    .line 45
    .line 46
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    move-object v5, v3

    .line 53
    goto :goto_0

    .line 54
    :cond_3
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;->H:Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;

    .line 55
    .line 56
    if-nez v1, :cond_4

    .line 57
    .line 58
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    move-object v1, v3

    .line 62
    :cond_4
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;->getId()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    move-object v5, v1

    .line 67
    :goto_0
    iget-object v6, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;->F:Ljava/lang/String;

    .line 68
    .line 69
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;->G:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 70
    .line 71
    if-nez v1, :cond_5

    .line 72
    .line 73
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_5
    move-object v3, v1

    .line 78
    :goto_1
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->getRecommendId()Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    move-object v1, v8

    .line 83
    move-object v2, v4

    .line 84
    move-object v3, v5

    .line 85
    move v4, p1

    .line 86
    move v5, p2

    .line 87
    invoke-direct/range {v1 .. v7}, Lcom/startshorts/androidplayer/viewmodel/discover/c$a;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/Integer;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v8}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreCategoryFilterViewModel;->B(Lcom/startshorts/androidplayer/viewmodel/discover/c;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public U0(II)V
    .locals 9

    .line 1
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->U0(II)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;->e1()Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreCategoryFilterViewModel;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    new-instance v7, Lcom/startshorts/androidplayer/viewmodel/discover/c$a;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;->G:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 11
    .line 12
    const-string v1, "mModuleInfo"

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    move-object v0, v2

    .line 21
    :cond_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->getModuleId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    const-string v0, ""

    .line 28
    .line 29
    :cond_1
    move-object v3, v0

    .line 30
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;->H:Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;

    .line 31
    .line 32
    const-string v4, "mDiscoverCategory"

    .line 33
    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    move-object v0, v2

    .line 40
    :cond_2
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;->getId()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v5, "-1"

    .line 45
    .line 46
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    move-object v4, v2

    .line 53
    goto :goto_0

    .line 54
    :cond_3
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;->H:Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;

    .line 55
    .line 56
    if-nez v0, :cond_4

    .line 57
    .line 58
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    move-object v0, v2

    .line 62
    :cond_4
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;->getId()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    move-object v4, v0

    .line 67
    :goto_0
    iget-object v5, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;->F:Ljava/lang/String;

    .line 68
    .line 69
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;->G:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 70
    .line 71
    if-nez v0, :cond_5

    .line 72
    .line 73
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_5
    move-object v2, v0

    .line 78
    :goto_1
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->getRecommendId()Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    const/4 v8, 0x1

    .line 83
    move-object v0, v7

    .line 84
    move-object v1, v3

    .line 85
    move-object v2, v4

    .line 86
    move v3, v8

    .line 87
    move v4, p2

    .line 88
    invoke-direct/range {v0 .. v6}, Lcom/startshorts/androidplayer/viewmodel/discover/c$a;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/Integer;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v7}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreCategoryFilterViewModel;->B(Lcom/startshorts/androidplayer/viewmodel/discover/c;)V

    .line 92
    .line 93
    .line 94
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
    .locals 4

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;->G:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "mModuleInfo"

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    move-object v1, v2

    .line 14
    :cond_0
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->getModuleStyle()Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v1, 0x0

    .line 26
    :goto_0
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;-><init>(I)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;->G:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 30
    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    move-object v2, v1

    .line 38
    :goto_1
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;->Q(Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;)V

    .line 39
    .line 40
    .line 41
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment$b;

    .line 42
    .line 43
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment$b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->B(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->k0(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 50
    .line 51
    .line 52
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->i0()V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->fragment_discover_more_category_filter_list:I

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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;->f1()Z

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

.method public q()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "DiscoverMoreCategoryFilterListFragment"

    .line 2
    .line 3
    return-object v0
.end method

.method public final receiveRefreshEpisodeNumEvent(Lcom/startshorts/androidplayer/bean/eventbus/RefreshEpisodeNumEvent;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/RefreshEpisodeNumEvent;
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
    const-string v1, "receiveRefreshEpisodeNumEvent -> "

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
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->Z()Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    instance-of v1, v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    check-cast v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v0, 0x0

    .line 38
    :goto_0
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/RefreshEpisodeNumEvent;->getShortsId()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/RefreshEpisodeNumEvent;->getEpisodeNum()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;->P(II)V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void
.end method

.method public v0()I
    .locals 1

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    return v0
.end method
