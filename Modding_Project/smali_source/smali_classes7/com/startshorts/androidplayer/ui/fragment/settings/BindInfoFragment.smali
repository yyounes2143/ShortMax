.class public final Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment;
.super Lcom/startshorts/androidplayer/ui/fragment/base/ToolbarListFragment;
.source "BindInfoFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/ToolbarListFragment<",
        "Lcom/startshorts/androidplayer/bean/auth/BindInfo;",
        "Lcom/startshorts/androidplayer/databinding/FragmentBindInfoBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final D:Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final B:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final C:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment;->D:Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment$a;

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
    new-instance v0, Lwi/a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lwi/a;-><init>(Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment;->B:Lms/i;

    .line 14
    .line 15
    new-instance v0, Lwi/b;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lwi/b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment;->C:Lms/i;

    .line 25
    .line 26
    return-void
.end method

.method public static synthetic I0(Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment;)Landroidx/lifecycle/ViewModelProvider;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment;->T0(Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment;)Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic J0(Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment;->R0(Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic K0(Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment;)Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment;->Q0(Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment;)Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic L0(Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment;Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel;Lcom/startshorts/androidplayer/viewmodel/auth/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment;->S0(Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment;Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel;Lcom/startshorts/androidplayer/viewmodel/auth/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic M0(Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment;)Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment;->N0()Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final N0()Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment;->C:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final O0()Landroidx/lifecycle/ViewModelProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment;->B:Lms/i;

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

.method private final P0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentBindInfoBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentBindInfoBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    sget v1, Lcom/startshorts/androidplayer/R$string;->settings_fragment_version:I

    .line 10
    .line 11
    sget-object v2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->V()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private static final Q0(Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment;)Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment;->O0()Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->o()Landroidx/lifecycle/MutableLiveData;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Lwi/c;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Lwi/c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment;)V

    .line 20
    .line 21
    .line 22
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment$c;

    .line 23
    .line 24
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel;->D()Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    new-instance v2, Lwi/d;

    .line 35
    .line 36
    invoke-direct {v2, p0, v0}, Lwi/d;-><init>(Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment;Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel;)V

    .line 37
    .line 38
    .line 39
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment$c;

    .line 40
    .line 41
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 45
    .line 46
    .line 47
    return-object v0
.end method

.method private static final R0(Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getState()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    move v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getMsg()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, v1, v0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/ListFragment;->x0(ZZLjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method

.method private static final S0(Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment;Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel;Lcom/startshorts/androidplayer/viewmodel/auth/b;)Lkotlin/Unit;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    instance-of v2, p2, Lcom/startshorts/androidplayer/viewmodel/auth/b$c;

    .line 4
    .line 5
    if-eqz v2, :cond_0

    .line 6
    .line 7
    check-cast p2, Lcom/startshorts/androidplayer/viewmodel/auth/b$c;

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/auth/b$c;->a()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p0, v1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/ListFragment;->y0(ZLjava/util/List;)V

    .line 14
    .line 15
    .line 16
    new-instance p2, Lcom/startshorts/androidplayer/viewmodel/auth/a$c;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string v0, "requireActivity(...)"

    .line 23
    .line 24
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p2, p0}, Lcom/startshorts/androidplayer/viewmodel/auth/a$c;-><init>(Landroid/app/Activity;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel;->H(Lcom/startshorts/androidplayer/viewmodel/auth/a;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    sget-object p1, Lcom/startshorts/androidplayer/viewmodel/auth/b$a;->a:Lcom/startshorts/androidplayer/viewmodel/auth/b$a;

    .line 35
    .line 36
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    const-string v2, "2"

    .line 41
    .line 42
    const-string v3, "auth_reason"

    .line 43
    .line 44
    const-string v4, "requireContext(...)"

    .line 45
    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    sget-object p1, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer;->p:Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$a;

    .line 49
    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    sget-object p2, Lcom/startshorts/androidplayer/ui/fragment/a;->a:Lcom/startshorts/androidplayer/ui/fragment/a;

    .line 58
    .line 59
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/ui/fragment/a;->f()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    new-instance v4, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;

    .line 64
    .line 65
    invoke-direct {v4, v3, v2}, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    new-array v1, v1, [Lcom/startshorts/androidplayer/bean/bundle/IFragmentBundle;

    .line 69
    .line 70
    aput-object v4, v1, v0

    .line 71
    .line 72
    invoke-virtual {p1, p0, p2, v1}, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$a;->b(Landroid/content/Context;Ljava/lang/String;[Lcom/startshorts/androidplayer/bean/bundle/IFragmentBundle;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    sget-object p1, Lcom/startshorts/androidplayer/viewmodel/auth/b$b;->a:Lcom/startshorts/androidplayer/viewmodel/auth/b$b;

    .line 77
    .line 78
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_2

    .line 83
    .line 84
    sget-object p1, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer;->p:Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$a;

    .line 85
    .line 86
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    sget-object p2, Lcom/startshorts/androidplayer/ui/fragment/a;->a:Lcom/startshorts/androidplayer/ui/fragment/a;

    .line 94
    .line 95
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/ui/fragment/a;->i()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    new-instance v4, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;

    .line 100
    .line 101
    invoke-direct {v4, v3, v2}, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    new-array v1, v1, [Lcom/startshorts/androidplayer/bean/bundle/IFragmentBundle;

    .line 105
    .line 106
    aput-object v4, v1, v0

    .line 107
    .line 108
    invoke-virtual {p1, p0, p2, v1}, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$a;->b(Landroid/content/Context;Ljava/lang/String;[Lcom/startshorts/androidplayer/bean/bundle/IFragmentBundle;)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_2
    instance-of p1, p2, Lcom/startshorts/androidplayer/viewmodel/auth/b$d;

    .line 113
    .line 114
    if-eqz p1, :cond_3

    .line 115
    .line 116
    check-cast p2, Lcom/startshorts/androidplayer/viewmodel/auth/b$d;

    .line 117
    .line 118
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/auth/b$d;->a()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->x(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 126
    .line 127
    return-object p0

    .line 128
    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 129
    .line 130
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 131
    .line 132
    .line 133
    throw p0
.end method

.method private static final T0(Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment;)Landroidx/lifecycle/ViewModelProvider;
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


# virtual methods
.method public R()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment;->N0()Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/startshorts/androidplayer/viewmodel/auth/a$d;->a:Lcom/startshorts/androidplayer/viewmodel/auth/a$d;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel;->H(Lcom/startshorts/androidplayer/viewmodel/auth/a;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public i0()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 2
    .line 3
    sget v1, Lcom/startshorts/androidplayer/R$layout;->item_bind_info:I

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment$b;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment$b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->B(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->k0(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 17
    .line 18
    .line 19
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/ListFragment;->i0()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->fragment_bind_info:I

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

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lms/c;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment;->N0()Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/auth/a$b;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "requireActivity(...)"

    .line 12
    .line 13
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v2, p1, p2, p3}, Lcom/startshorts/androidplayer/viewmodel/auth/a$b;-><init>(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel;->H(Lcom/startshorts/androidplayer/viewmodel/auth/a;)V

    .line 20
    .line 21
    .line 22
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
    sget p1, Lcom/startshorts/androidplayer/R$string;->settings_fragment_account_info:I

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/ToolbarListFragment;->G0(I)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment;->P0()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment;->R()V

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
    const-string v0, "BindInfoFragment"

    .line 2
    .line 3
    return-object v0
.end method

.method public final receiveBindSuccessEvent(Lcom/startshorts/androidplayer/bean/eventbus/BindSuccessEvent;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/BindSuccessEvent;
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
    const-string v1, "receive BindSuccessEvent -> "

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
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment;->R()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final receiveLoginSuccessEvent(Lcom/startshorts/androidplayer/bean/eventbus/LoginSuccessEvent;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/LoginSuccessEvent;
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
    const-string v1, "receive LoginSuccessEvent -> "

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
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/BindInfoFragment;->R()V

    .line 27
    .line 28
    .line 29
    return-void
.end method
