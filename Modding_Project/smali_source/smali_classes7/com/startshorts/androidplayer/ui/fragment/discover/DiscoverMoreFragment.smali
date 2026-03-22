.class public final Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;
.super Lcom/startshorts/androidplayer/ui/fragment/base/ToolbarListFragment;
.source "DiscoverMoreFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/ToolbarListFragment<",
        "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
        "Lcom/startshorts/androidplayer/databinding/FragmentDiscoverMoreBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDiscoverMoreFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverMoreFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,240:1\n2642#2:241\n1#3:242\n*S KotlinDebug\n*F\n+ 1 DiscoverMoreFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment\n*L\n74#1:241\n74#1:242\n*E\n"
    }
.end annotation


# static fields
.field public static final G:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final B:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private C:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

.field private D:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private E:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private F:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;->G:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/ToolbarListFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/discover/k0;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/k0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;->B:Lms/i;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic I0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;)Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;->P0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;)Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic J0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;Lcom/startshorts/androidplayer/viewmodel/discover/f;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;->Q0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;Lcom/startshorts/androidplayer/viewmodel/discover/f;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic K0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;)Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;->C:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic L0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;->R0(Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final M0()Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;->B:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final N0()V
    .locals 9

    .line 1
    sget-object v0, Led/a;->a:Led/a;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "requireActivity(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-virtual {v0, v1, v2}, Led/a;->b(Landroid/app/Activity;Z)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Landroid/widget/ImageView;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 26
    .line 27
    const/4 v2, -0x1

    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-direct {v1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 30
    .line 31
    .line 32
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    .line 36
    .line 37
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 40
    .line 41
    .line 42
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->bg_discover_2_top_mask:I

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    sget v2, Lcom/startshorts/androidplayer/R$id;->root_layout:I

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 58
    .line 59
    if-eqz v1, :cond_0

    .line 60
    .line 61
    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 62
    .line 63
    .line 64
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    sget v1, Lcom/startshorts/androidplayer/R$id;->toolbar_view:I

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    if-eqz v2, :cond_1

    .line 75
    .line 76
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->J()I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    const/16 v7, 0xd

    .line 83
    .line 84
    const/4 v8, 0x0

    .line 85
    const/4 v3, 0x0

    .line 86
    const/4 v5, 0x0

    .line 87
    const/4 v6, 0x0

    .line 88
    invoke-static/range {v2 .. v8}, Ljk/b0;->i(Landroid/view/View;IIIIILjava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :cond_1
    return-void
.end method

.method private final O0()Z
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
    const-string v1, "module_info_param"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-class v1, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 16
    .line 17
    invoke-static {v0, v1}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    const-string v2, "from"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    :cond_1
    const-string v1, ""

    .line 40
    .line 41
    :cond_2
    if-nez v0, :cond_3

    .line 42
    .line 43
    const-string v0, "data is null"

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->g(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->h()V

    .line 49
    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    return v0

    .line 53
    :cond_3
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;->F:Ljava/lang/String;

    .line 54
    .line 55
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;->C:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 56
    .line 57
    const/4 v0, 0x1

    .line 58
    return v0
.end method

.method private static final P0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;)Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel;
    .locals 4

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 4
    .line 5
    .line 6
    const-class v1, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel;->A()Landroidx/lifecycle/MutableLiveData;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/discover/l0;

    .line 19
    .line 20
    invoke-direct {v2, p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/l0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment$c;

    .line 24
    .line 25
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method private static final Q0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;Lcom/startshorts/androidplayer/viewmodel/discover/f;)Lkotlin/Unit;
    .locals 6

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/discover/f$c;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/discover/f$c;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/discover/f$c;->a()Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getValidStartTime()Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v0, v2

    .line 21
    :goto_0
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;->D:Ljava/lang/Long;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/discover/f$c;->a()Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getValidEndTime()Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move-object v0, v2

    .line 35
    :goto_1
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;->E:Ljava/lang/Long;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/discover/f$c;->a()Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_6

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getShortPlayResponseList()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_6

    .line 48
    .line 49
    check-cast p1, Ljava/lang/Iterable;

    .line 50
    .line 51
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_5

    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    check-cast v3, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 66
    .line 67
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;->C:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 68
    .line 69
    const-string v5, "mModuleInfo"

    .line 70
    .line 71
    if-nez v4, :cond_2

    .line 72
    .line 73
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    move-object v4, v2

    .line 77
    :cond_2
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->getModuleId()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->setModuleId(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;->C:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 85
    .line 86
    if-nez v4, :cond_3

    .line 87
    .line 88
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    move-object v4, v2

    .line 92
    :cond_3
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->getModuleName()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->setModuleName(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;->C:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 100
    .line 101
    if-nez v4, :cond_4

    .line 102
    .line 103
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    move-object v4, v2

    .line 107
    :cond_4
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->getRecommendId()Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->setRecommendId(Ljava/lang/Integer;)V

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_5
    move-object v2, p1

    .line 116
    check-cast v2, Ljava/util/List;

    .line 117
    .line 118
    :cond_6
    invoke-virtual {p0, v1, v2}, Lcom/startshorts/androidplayer/ui/fragment/base/ListFragment;->y0(ZLjava/util/List;)V

    .line 119
    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_7
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/discover/f$a;

    .line 123
    .line 124
    if-eqz v0, :cond_a

    .line 125
    .line 126
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/discover/f$a;

    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/discover/f$a;->a()Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    const/4 v3, 0x0

    .line 133
    if-eqz v0, :cond_8

    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getState()I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-ne v0, v1, :cond_8

    .line 140
    .line 141
    move v3, v1

    .line 142
    :cond_8
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/discover/f$a;->a()Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    if-eqz p1, :cond_9

    .line 147
    .line 148
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getMsg()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    :cond_9
    invoke-virtual {p0, v1, v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/base/ListFragment;->x0(ZZLjava/lang/String;)V

    .line 153
    .line 154
    .line 155
    :cond_a
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 156
    .line 157
    return-object p0
.end method

.method private final R0(Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V
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
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;->C:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

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
    iget-object v6, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;->C:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

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

.method public H()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$string;->discover_more_fragment_empty_content:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getString(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
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

.method public R()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;->M0()Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/discover/e$a;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;->C:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    const-string v2, "mModuleInfo"

    .line 13
    .line 14
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    move-object v2, v3

    .line 18
    :cond_0
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;->F:Ljava/lang/String;

    .line 19
    .line 20
    if-nez v4, :cond_1

    .line 21
    .line 22
    const-string v4, "mFrom"

    .line 23
    .line 24
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move-object v3, v4

    .line 29
    :goto_0
    invoke-direct {v1, v2, v3}, Lcom/startshorts/androidplayer/viewmodel/discover/e$a;-><init>(Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel;->C(Lcom/startshorts/androidplayer/viewmodel/discover/e;)V

    .line 33
    .line 34
    .line 35
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
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;->C:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

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
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;->E:Ljava/lang/Long;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;->R(Ljava/lang/Long;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;->D:Ljava/lang/Long;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;->S(Ljava/lang/Long;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;->C:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 40
    .line 41
    if-nez v1, :cond_2

    .line 42
    .line 43
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    move-object v2, v1

    .line 48
    :goto_1
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;->Q(Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;)V

    .line 49
    .line 50
    .line 51
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment$b;

    .line 52
    .line 53
    invoke-direct {v1, p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment$b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->B(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->k0(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 60
    .line 61
    .line 62
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/ListFragment;->i0()V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->fragment_discover_more:I

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
    .locals 3
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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;->O0()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;->N0()V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;->C:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 20
    .line 21
    const-string p2, "mModuleInfo"

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    move-object p1, v0

    .line 30
    :cond_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->getModuleName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/ToolbarListFragment;->H0(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v1, "onCreate -> ModuleInfo="

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;->C:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 48
    .line 49
    if-nez v1, :cond_2

    .line 50
    .line 51
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    move-object v1, v0

    .line 55
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;->M0()Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/discover/e$a;

    .line 70
    .line 71
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;->C:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 72
    .line 73
    if-nez v2, :cond_3

    .line 74
    .line 75
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    move-object v2, v0

    .line 79
    :cond_3
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;->F:Ljava/lang/String;

    .line 80
    .line 81
    if-nez p2, :cond_4

    .line 82
    .line 83
    const-string p2, "mFrom"

    .line 84
    .line 85
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_4
    move-object v0, p2

    .line 90
    :goto_0
    invoke-direct {v1, v2, v0}, Lcom/startshorts/androidplayer/viewmodel/discover/e$a;-><init>(Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel;->C(Lcom/startshorts/androidplayer/viewmodel/discover/e;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "DiscoverMoreFragment"

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

.method public final receiveShortDiscountUnLockEvent(Lcom/startshorts/androidplayer/bean/eventbus/ShortDiscountUnLockEvent;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/ShortDiscountUnLockEvent;
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
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;->C:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const-string p1, "mModuleInfo"

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->getModuleStyle()Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    const/16 v0, 0xc

    .line 28
    .line 29
    if-ne p1, v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;->R()V

    .line 32
    .line 33
    .line 34
    :cond_2
    :goto_0
    return-void
.end method
