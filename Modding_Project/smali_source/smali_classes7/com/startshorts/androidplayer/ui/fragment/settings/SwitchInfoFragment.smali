.class public final Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;
.super Lcom/startshorts/androidplayer/ui/fragment/base/ToolbarListFragment;
.source "SwitchInfoFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/ToolbarListFragment<",
        "Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;",
        "Lcom/startshorts/androidplayer/databinding/FragmentSwitchInfoBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSwitchInfoFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SwitchInfoFragment.kt\ncom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt\n*L\n1#1,199:1\n1863#2,2:200\n15#3,9:202\n15#3,9:211\n*S KotlinDebug\n*F\n+ 1 SwitchInfoFragment.kt\ncom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment\n*L\n155#1:200,2\n59#1:202,9\n81#1:211,9\n*E\n"
    }
.end annotation


# static fields
.field public static final F:Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private B:Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private C:I

.field private final D:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final E:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;->F:Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$a;

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
    new-instance v0, Lwi/v;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lwi/v;-><init>(Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;->D:Lms/i;

    .line 14
    .line 15
    new-instance v0, Lwi/w;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lwi/w;-><init>(Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;->E:Lms/i;

    .line 25
    .line 26
    return-void
.end method

.method public static synthetic I0(Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;->V0(Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic J0(Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;)Landroidx/lifecycle/ViewModelProvider;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;->X0(Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;)Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic K0(Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;Lcom/startshorts/androidplayer/viewmodel/auth/g;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;->W0(Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;Lcom/startshorts/androidplayer/viewmodel/auth/g;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic L0(Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;->T0(Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic M0(Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;)Lcom/startshorts/androidplayer/viewmodel/auth/SwitchInfoViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;->U0(Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;)Lcom/startshorts/androidplayer/viewmodel/auth/SwitchInfoViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic N0(Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;->B:Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic O0(Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;->Y0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic P0(Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;->Z0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final Q0()Lcom/startshorts/androidplayer/viewmodel/auth/SwitchInfoViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;->E:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/auth/SwitchInfoViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final R0()Landroidx/lifecycle/ViewModelProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;->D:Lms/i;

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

.method private final S0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentSwitchInfoBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentSwitchInfoBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    new-instance v1, Lwi/x;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lwi/x;-><init>(Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private static final T0(Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;->B:Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->getButtonStatus()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->getHintMsg()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->getHintMsg()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->x(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->getButtonType()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/4 v0, 0x2

    .line 34
    if-ne p1, v0, :cond_1

    .line 35
    .line 36
    sget-object p1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 37
    .line 38
    const-string v0, "switch_account"

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/manager/event/EventManager;->R(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;->Q0()Lcom/startshorts/androidplayer/viewmodel/auth/SwitchInfoViewModel;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    sget-object p1, Lpk/e$c;->a:Lpk/e$c;

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/auth/SwitchInfoViewModel;->D(Lpk/e;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget p1, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;->C:I

    .line 54
    .line 55
    if-nez p1, :cond_2

    .line 56
    .line 57
    sget-object p1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 58
    .line 59
    const-string v0, "benefits_migration"

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/manager/event/EventManager;->R(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;->Q0()Lcom/startshorts/androidplayer/viewmodel/auth/SwitchInfoViewModel;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    sget-object p1, Lpk/e$a;->a:Lpk/e$a;

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/auth/SwitchInfoViewModel;->D(Lpk/e;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    sget p1, Lcom/startshorts/androidplayer/R$string;->settings_fragment_merge_toast:I

    .line 75
    .line 76
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->w(I)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    sget p1, Lcom/startshorts/androidplayer/R$string;->settings_fragment_select_no:I

    .line 81
    .line 82
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->w(I)V

    .line 83
    .line 84
    .line 85
    :goto_0
    return-void
.end method

.method private static final U0(Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;)Lcom/startshorts/androidplayer/viewmodel/auth/SwitchInfoViewModel;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;->R0()Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/startshorts/androidplayer/viewmodel/auth/SwitchInfoViewModel;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/auth/SwitchInfoViewModel;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->o()Landroidx/lifecycle/MutableLiveData;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Lwi/y;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Lwi/y;-><init>(Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;)V

    .line 20
    .line 21
    .line 22
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$h;

    .line 23
    .line 24
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$h;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/auth/SwitchInfoViewModel;->B()Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    new-instance v2, Lwi/z;

    .line 35
    .line 36
    invoke-direct {v2, p0}, Lwi/z;-><init>(Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;)V

    .line 37
    .line 38
    .line 39
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$h;

    .line 40
    .line 41
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$h;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 45
    .line 46
    .line 47
    return-object v0
.end method

.method private static final V0(Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;
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

.method private static final W0(Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;Lcom/startshorts/androidplayer/viewmodel/auth/g;)Lkotlin/Unit;
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/auth/g$b;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/auth/g$b;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/auth/g$b;->a()Lcom/startshorts/androidplayer/bean/auth/SwitchInfoList;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_5

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/auth/SwitchInfoList;->getUserList()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/util/Collection;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/auth/SwitchInfoList;->getUserList()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;->B:Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/auth/SwitchInfoList;->getUserList()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->setSelect(Z)V

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/auth/SwitchInfoList;->getMergeStatus()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;->C:I

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/auth/SwitchInfoList;->getUserList()Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p0, v1, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/ListFragment;->y0(ZLjava/util/List;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;->Z0()V

    .line 69
    .line 70
    .line 71
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;->Y0()V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/auth/g$d;

    .line 76
    .line 77
    if-eqz v0, :cond_3

    .line 78
    .line 79
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;->B:Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;

    .line 80
    .line 81
    if-eqz p1, :cond_5

    .line 82
    .line 83
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$f;

    .line 84
    .line 85
    invoke-direct {v0, p1, p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$f;-><init>(Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;)V

    .line 86
    .line 87
    .line 88
    new-instance p1, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$g;

    .line 89
    .line 90
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$g;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-static {p0, v0, p1}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/auth/g$a;

    .line 98
    .line 99
    if-eqz v0, :cond_4

    .line 100
    .line 101
    new-instance p1, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$d;

    .line 102
    .line 103
    invoke-direct {p1, p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$d;-><init>(Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;)V

    .line 104
    .line 105
    .line 106
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$e;

    .line 107
    .line 108
    invoke-direct {v0}, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$e;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-static {p0, p1, v0}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_4
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/auth/g$c;

    .line 116
    .line 117
    if-eqz v0, :cond_6

    .line 118
    .line 119
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/auth/g$c;

    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/auth/g$c;->a()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->x(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    :cond_5
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 129
    .line 130
    return-object p0

    .line 131
    :cond_6
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 132
    .line 133
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 134
    .line 135
    .line 136
    throw p0
.end method

.method private static final X0(Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;)Landroidx/lifecycle/ViewModelProvider;
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

.method private final Y0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->d0()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    check-cast v0, Ljava/lang/Iterable;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;->B:Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->getUserCode()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    const/4 v2, 0x0

    .line 35
    :goto_1
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->getUserCode()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->setSelect(Z)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->d0()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/ListFragment;->o0(Ljava/util/List;)Z

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private final Z0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;->B:Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentSwitchInfoBinding;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentSwitchInfoBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 12
    .line 13
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 14
    .line 15
    sget v2, Lcom/startshorts/androidplayer/R$string;->settings_fragment_switch_btn:I

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lfk/u;->d(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentSwitchInfoBinding;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentSwitchInfoBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 31
    .line 32
    sget v2, Lcom/startshorts/androidplayer/R$color;->color_common_white_60:I

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Lfk/u;->a(I)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->getButtonStatus()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_1

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Lcom/startshorts/androidplayer/databinding/FragmentSwitchInfoBinding;

    .line 53
    .line 54
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/FragmentSwitchInfoBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 55
    .line 56
    sget-object v2, Lfk/u;->a:Lfk/u;

    .line 57
    .line 58
    sget v3, Lcom/startshorts/androidplayer/R$color;->color_common_white_60:I

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Lfk/u;->a(I)I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Lcom/startshorts/androidplayer/databinding/FragmentSwitchInfoBinding;

    .line 73
    .line 74
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/FragmentSwitchInfoBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 75
    .line 76
    sget-object v2, Lfk/u;->a:Lfk/u;

    .line 77
    .line 78
    sget v3, Lcom/startshorts/androidplayer/R$color;->color_common_white:I

    .line 79
    .line 80
    invoke-virtual {v2, v3}, Lfk/u;->a(I)I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    .line 86
    .line 87
    :goto_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->getButtonType()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    const/4 v1, 0x2

    .line 92
    if-ne v0, v1, :cond_2

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentSwitchInfoBinding;

    .line 99
    .line 100
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentSwitchInfoBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 101
    .line 102
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 103
    .line 104
    sget v2, Lcom/startshorts/androidplayer/R$string;->settings_fragment_switch_btn:I

    .line 105
    .line 106
    invoke-virtual {v1, v2}, Lfk/u;->d(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_2
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;->C:I

    .line 115
    .line 116
    if-nez v0, :cond_3

    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentSwitchInfoBinding;

    .line 123
    .line 124
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentSwitchInfoBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 125
    .line 126
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 127
    .line 128
    sget v2, Lcom/startshorts/androidplayer/R$string;->settings_fragment_merge_btn:I

    .line 129
    .line 130
    invoke-virtual {v1, v2}, Lfk/u;->d(I)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentSwitchInfoBinding;

    .line 143
    .line 144
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentSwitchInfoBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 145
    .line 146
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 147
    .line 148
    sget v2, Lcom/startshorts/androidplayer/R$string;->settings_fragment_mergeing_btn:I

    .line 149
    .line 150
    invoke-virtual {v1, v2}, Lfk/u;->d(I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    .line 156
    .line 157
    :goto_1
    return-void
.end method


# virtual methods
.method public R()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;->Q0()Lcom/startshorts/androidplayer/viewmodel/auth/SwitchInfoViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lpk/e$b;->a:Lpk/e$b;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/auth/SwitchInfoViewModel;->D(Lpk/e;)V

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
    sget v1, Lcom/startshorts/androidplayer/R$layout;->item_switch_info:I

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$b;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;)V

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
    sget v0, Lcom/startshorts/androidplayer/R$layout;->fragment_switch_info:I

    .line 2
    .line 3
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
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    sget p1, Lcom/startshorts/androidplayer/R$string;->settings_fragment_account_switching:I

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/ToolbarListFragment;->G0(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;->R()V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;->S0()V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;->Z0()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "SwitchInfoFragment"

    .line 2
    .line 3
    return-object v0
.end method
