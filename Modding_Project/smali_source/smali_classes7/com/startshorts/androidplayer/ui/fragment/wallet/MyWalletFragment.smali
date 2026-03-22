.class public final Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;
.super Lcom/startshorts/androidplayer/ui/fragment/base/ToolbarFragment;
.source "MyWalletFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/ToolbarFragment<",
        "Lcom/startshorts/androidplayer/databinding/FragmentMyWalletBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final o:Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private j:I

.field private final k:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private l:Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private m:Z

.field private final n:Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment$mOnPageChangeCallback$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;->o:Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/ToolbarFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Laj/o;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Laj/o;-><init>(Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;->k:Lms/i;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;->m:Z

    .line 17
    .line 18
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment$mOnPageChangeCallback$1;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment$mOnPageChangeCallback$1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;->n:Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment$mOnPageChangeCallback$1;

    .line 24
    .line 25
    return-void
.end method

.method public static synthetic G(Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel;Lcom/startshorts/androidplayer/viewmodel/wallet/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;->R(Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel;Lcom/startshorts/androidplayer/viewmodel/wallet/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic H(Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;)Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;->Q(Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;)Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic I(Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;)Lcom/startshorts/androidplayer/databinding/FragmentMyWalletBinding;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/startshorts/androidplayer/databinding/FragmentMyWalletBinding;

    .line 6
    .line 7
    return-object p0
.end method

.method public static final synthetic J(Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;->j:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic K(Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;->m:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic L(Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;->j:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic M(Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;->m:Z

    .line 2
    .line 3
    return-void
.end method

.method private final N()Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;->k:Lms/i;

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

.method private final O(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/tab/WalletTab;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;

    .line 2
    .line 3
    sget v1, Lcom/startshorts/androidplayer/R$layout;->item_wallet_tab:I

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;-><init>(I)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;->j:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->I(I)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment$b;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment$b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->J(Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$d;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/startshorts/androidplayer/databinding/FragmentMyWalletBinding;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/FragmentMyWalletBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/TabView;

    .line 28
    .line 29
    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 40
    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-virtual {v1, p1, v0, v3, v2}, Lcom/startshorts/androidplayer/ui/view/base/TabView;->a(Ljava/util/List;Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private final P(Landroidx/viewpager2/adapter/FragmentStateAdapter;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentMyWalletBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentMyWalletBinding;->d:Landroidx/viewpager2/widget/ViewPager2;

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
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lkd/d;->a(Landroidx/viewpager2/widget/ViewPager2;Z)V

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    invoke-static {v0, v2}, Lkd/d;->b(Landroidx/viewpager2/widget/ViewPager2;I)V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;->n:Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment$mOnPageChangeCallback$1;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 29
    .line 30
    .line 31
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;->j:I

    .line 32
    .line 33
    if-ltz v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-ge v0, p1, :cond_0

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lcom/startshorts/androidplayer/databinding/FragmentMyWalletBinding;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/FragmentMyWalletBinding;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 48
    .line 49
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;->j:I

    .line 50
    .line 51
    invoke-virtual {p1, v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 52
    .line 53
    .line 54
    :cond_0
    sget-object p1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->e()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const-string v0, "fil"

    .line 61
    .line 62
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_2

    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Lcom/startshorts/androidplayer/databinding/FragmentMyWalletBinding;

    .line 73
    .line 74
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/FragmentMyWalletBinding;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    instance-of v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 81
    .line 82
    if-eqz v0, :cond_1

    .line 83
    .line 84
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    const/4 p1, 0x0

    .line 88
    :goto_0
    if-eqz p1, :cond_2

    .line 89
    .line 90
    const/high16 v0, 0x42500000    # 52.0f

    .line 91
    .line 92
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 97
    .line 98
    :cond_2
    return-void
.end method

.method private static final Q(Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;)Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel;
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
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel;->B()Landroidx/lifecycle/MutableLiveData;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Laj/p;

    .line 19
    .line 20
    invoke-direct {v2, p0, v0}, Laj/p;-><init>(Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment$c;

    .line 24
    .line 25
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method private static final R(Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel;Lcom/startshorts/androidplayer/viewmodel/wallet/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    instance-of v0, p2, Lcom/startshorts/androidplayer/viewmodel/wallet/b$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p2, Lcom/startshorts/androidplayer/viewmodel/wallet/b$b;

    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/wallet/b$b;->a()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-direct {p0, p2}, Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;->O(Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    new-instance p2, Lcom/startshorts/androidplayer/viewmodel/wallet/a$a;

    .line 15
    .line 16
    invoke-direct {p2, p0}, Lcom/startshorts/androidplayer/viewmodel/wallet/a$a;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel;->F(Lcom/startshorts/androidplayer/viewmodel/wallet/a;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    instance-of p1, p2, Lcom/startshorts/androidplayer/viewmodel/wallet/b$a;

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    check-cast p2, Lcom/startshorts/androidplayer/viewmodel/wallet/b$a;

    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/wallet/b$a;->a()Landroidx/viewpager2/adapter/FragmentStateAdapter;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;->P(Landroidx/viewpager2/adapter/FragmentStateAdapter;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 37
    .line 38
    return-object p0
.end method

.method private final S()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;->l:Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentMyWalletBinding;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentMyWalletBinding;->b:Landroidx/databinding/ViewStubProxy;

    .line 12
    .line 13
    const-string v1, "rechargeTipViewstub"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Ljk/e0;->c(Landroidx/databinding/ViewStubProxy;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    instance-of v1, v0, Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    check-cast v0, Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;->l:Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    if-eqz v0, :cond_2

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;->l:Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;->B()V

    .line 44
    .line 45
    .line 46
    :cond_3
    return-void
.end method


# virtual methods
.method public l()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->fragment_my_wallet:I

    .line 2
    .line 3
    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
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
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

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
    const-string p2, "tab_index"

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;->j:I

    .line 24
    .line 25
    sget p1, Lcom/startshorts/androidplayer/R$string;->my_wallet_fragment_title:I

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/ToolbarFragment;->E(I)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;->N()Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    new-instance p2, Lcom/startshorts/androidplayer/viewmodel/wallet/a$b;

    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "requireContext(...)"

    .line 41
    .line 42
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget v1, p0, Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;->j:I

    .line 46
    .line 47
    invoke-direct {p2, v0, v1}, Lcom/startshorts/androidplayer/viewmodel/wallet/a$b;-><init>(Landroid/content/Context;I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel;->F(Lcom/startshorts/androidplayer/viewmodel/wallet/a;)V

    .line 51
    .line 52
    .line 53
    sget-object p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->D0()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-nez p1, :cond_1

    .line 60
    .line 61
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;->S()V

    .line 62
    .line 63
    .line 64
    :cond_1
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "MyWalletFragment"

    .line 2
    .line 3
    return-object v0
.end method

.method public v()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->v()V

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
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentMyWalletBinding;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentMyWalletBinding;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;->n:Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment$mOnPageChangeCallback$1;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;->l:Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;->release()V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method
