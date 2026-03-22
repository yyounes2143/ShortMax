.class public final Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment;
.super Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;
.source "BonusRecordFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment<",
        "Lcom/startshorts/androidplayer/bean/record/WalletRecord;",
        "Lcom/startshorts/androidplayer/databinding/FragmentBonusRecordBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final H:Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final F:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final G:Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment$mPropertyObserver$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment;->H:Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment$a;

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
    new-instance v0, Laj/g;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Laj/g;-><init>(Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment;->F:Lms/i;

    .line 14
    .line 15
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment$mPropertyObserver$1;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment$mPropertyObserver$1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment;->G:Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment$mPropertyObserver$1;

    .line 21
    .line 22
    return-void
.end method

.method public static synthetic a1(Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment;Lcom/startshorts/androidplayer/viewmodel/wallet/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment;->g1(Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment;Lcom/startshorts/androidplayer/viewmodel/wallet/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b1(Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment;->f1(Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c1(Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment;)Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment;->e1(Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment;)Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final d1()Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment;->F:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final e1(Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment;)Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel;
    .locals 4

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 4
    .line 5
    .line 6
    const-class v1, Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->o()Landroidx/lifecycle/MutableLiveData;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Laj/h;

    .line 19
    .line 20
    invoke-direct {v2, p0}, Laj/h;-><init>(Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment$b;

    .line 24
    .line 25
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel;->B()Landroidx/lifecycle/MutableLiveData;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    new-instance v2, Laj/i;

    .line 36
    .line 37
    invoke-direct {v2, p0}, Laj/i;-><init>(Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment;)V

    .line 38
    .line 39
    .line 40
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment$b;

    .line 41
    .line 42
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 46
    .line 47
    .line 48
    return-object v0
.end method

.method private static final f1(Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;
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
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getMsg()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0, v1, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->R0(Ljava/util/List;ZLjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method

.method private static final g1(Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment;Lcom/startshorts/androidplayer/viewmodel/wallet/b;)Lkotlin/Unit;
    .locals 6

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/wallet/b$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/wallet/b$c;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/wallet/b$c;->a()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v4, 0x4

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    move-object v0, p0

    .line 16
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->S0(Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;Ljava/util/List;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    return-object p0
.end method

.method private final h1()V
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment;->G:Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment$mPropertyObserver$1;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->O(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final i1(II)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment;->d1()Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/wallet/a$c;

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    invoke-direct {v1, p1, p2, v2}, Lcom/startshorts/androidplayer/viewmodel/wallet/a$c;-><init>(III)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel;->F(Lcom/startshorts/androidplayer/viewmodel/wallet/a;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final j1()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->I()Lcom/hades/aar/pagestate/StateViewGroup;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams"

    .line 12
    .line 13
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 17
    .line 18
    const/16 v2, 0xa

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 21
    .line 22
    .line 23
    const/16 v2, 0xd

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 26
    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method private final k1()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->I()Lcom/hades/aar/pagestate/StateViewGroup;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams"

    .line 12
    .line 13
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 17
    .line 18
    const/16 v2, 0xd

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 21
    .line 22
    .line 23
    const/16 v2, 0xa

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 26
    .line 27
    .line 28
    const/high16 v2, 0x42ac0000    # 86.0f

    .line 29
    .line 30
    invoke-static {v2}, Ljk/g;->a(F)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method


# virtual methods
.method public G()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->viewstub_record_empty:I

    .line 2
    .line 3
    return v0
.end method

.method public S()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->S()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment;->k1()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public T()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->T()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment;->j1()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public T0(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->T0(II)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment;->i1(II)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public U()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->U()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment;->k1()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public U0(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->U0(II)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment;->i1(II)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public V(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->V(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment;->k1()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public i0()V
    .locals 9

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 2
    .line 3
    sget v1, Lcom/startshorts/androidplayer/R$layout;->item_bonus_record:I

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->k0(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 9
    .line 10
    .line 11
    sget-object v2, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration;->f:Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$a;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const-string v0, "requireContext(...)"

    .line 18
    .line 19
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object v0, Lfk/z;->a:Lfk/z;

    .line 23
    .line 24
    invoke-virtual {v0}, Lfk/z;->b()I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    const/16 v7, 0xa

    .line 29
    .line 30
    const/4 v8, 0x0

    .line 31
    const/4 v4, 0x0

    .line 32
    const/4 v6, 0x0

    .line 33
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$a;->b(Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$a;Landroid/content/Context;Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$Orientation;IZILjava/lang/Object;)Lcom/startshorts/androidplayer/ui/view/base/RVDecoration;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->m0(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 38
    .line 39
    .line 40
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->i0()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->fragment_bonus_record:I

    .line 2
    .line 3
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment;->h1()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "BonusRecordFragment"

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
    const-string p1, "receive RefreshAccountEvent"

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment;->h1()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public v()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/ListFragment;->v()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment;->G:Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment$mPropertyObserver$1;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->d1(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
