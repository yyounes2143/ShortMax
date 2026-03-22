.class public final Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;
.super Lcom/startshorts/androidplayer/ui/fragment/base/ListFragment;
.source "BlackFridayCoinSkuFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/ListFragment<",
        "Lcom/startshorts/androidplayer/bean/purchase/BlackFridayCoinSku;",
        "Lcom/startshorts/androidplayer/databinding/FragmentBlackFridayCoinSkuBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final D:Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final A:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

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
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;->D:Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/ListFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Laj/a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Laj/a;-><init>(Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;->A:Lms/i;

    .line 14
    .line 15
    new-instance v0, Laj/b;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Laj/b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;->B:Lms/i;

    .line 25
    .line 26
    new-instance v0, Laj/c;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Laj/c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;->C:Lms/i;

    .line 36
    .line 37
    return-void
.end method

.method public static synthetic E0(Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;->X0(Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic F0(Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;->U0(Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic G0(Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;Lcom/startshorts/androidplayer/viewmodel/purchase/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;->Y0(Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;Lcom/startshorts/androidplayer/viewmodel/purchase/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic H0(Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;)Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;->W0(Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;)Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic I0(Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;)Landroidx/lifecycle/ViewModelProvider;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;->Z0(Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;)Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic J0(Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;Lcom/startshorts/androidplayer/viewmodel/billing/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;->V0(Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;Lcom/startshorts/androidplayer/viewmodel/billing/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic K0(Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;->P0()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic L0(Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;)Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;->Q0()Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic M0(Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;->d1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final N0()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;->P0()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/billing/a$c;

    .line 6
    .line 7
    const-string v2, "black_friday"

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

.method private final O0()Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter;
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment$b;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment$b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->B(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment$c;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment$c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter;->K(Lcom/startshorts/androidplayer/ui/view/purchase/BlackFridayCoinSkuView$b;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method private final P0()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;->C:Lms/i;

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

.method private final Q0()Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;->B:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final R0()Landroidx/lifecycle/ViewModelProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;->A:Lms/i;

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

.method private final S0(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V
    .locals 9

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$string;->top_up_fragment_recharge_success:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->w(I)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;->Q0()Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v8, Lcom/startshorts/androidplayer/viewmodel/purchase/a$d;

    .line 11
    .line 12
    const/16 v6, 0x8

    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    move-object v1, v8

    .line 17
    move-object v2, p1

    .line 18
    move-object v3, p2

    .line 19
    move-object v4, p3

    .line 20
    invoke-direct/range {v1 .. v7}, Lcom/startshorts/androidplayer/viewmodel/purchase/a$d;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v8}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->Y(Lcom/startshorts/androidplayer/viewmodel/purchase/a;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;->d1()V

    .line 27
    .line 28
    .line 29
    sget-object p1, Lbf/e;->a:Lbf/e;

    .line 30
    .line 31
    invoke-virtual {p1}, Lbf/e;->i()Lbf/e$a;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lbf/e$a;->i()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private final T0(Ljava/util/List;)V
    .locals 2
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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;->Q0()Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/purchase/a$b;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/viewmodel/purchase/a$b;-><init>(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->Y(Lcom/startshorts/androidplayer/viewmodel/purchase/a;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private static final U0(Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;->R0()Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Laj/f;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Laj/f;-><init>(Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;)V

    .line 20
    .line 21
    .line 22
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment$d;

    .line 23
    .line 24
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method private static final V0(Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;Lcom/startshorts/androidplayer/viewmodel/billing/b;)Lkotlin/Unit;
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$q;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;->c1()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$m;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$m;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$m;->a()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;->T0(Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$u;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    sget p1, Lcom/startshorts/androidplayer/R$string;->common_user_canceled:I

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->w(I)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$c;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$c;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$c;->a()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$c;->b()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$c;->c()Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {p0, v0, v1, p1}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;->S0(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$k;

    .line 56
    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    new-instance v0, Lgi/f;

    .line 60
    .line 61
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    const-string v1, "requireContext(...)"

    .line 66
    .line 67
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$k;

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$k;->a()Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-direct {v0, p0, p1}, Lgi/f;-><init>(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Lfi/a;->show()V

    .line 80
    .line 81
    .line 82
    :cond_4
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 83
    .line 84
    return-object p0
.end method

.method private static final W0(Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;)Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;->R0()Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->o()Landroidx/lifecycle/MutableLiveData;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Laj/d;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Laj/d;-><init>(Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;)V

    .line 20
    .line 21
    .line 22
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment$d;

    .line 23
    .line 24
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->R()Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    new-instance v2, Laj/e;

    .line 35
    .line 36
    invoke-direct {v2, v0, p0}, Laj/e;-><init>(Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;)V

    .line 37
    .line 38
    .line 39
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment$d;

    .line 40
    .line 41
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 45
    .line 46
    .line 47
    return-object v0
.end method

.method private static final X0(Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;
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
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;->U()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getMsg()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;->V(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    return-object p0
.end method

.method private static final Y0(Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;Lcom/startshorts/androidplayer/viewmodel/purchase/b;)Lkotlin/Unit;
    .locals 8

    .line 1
    instance-of v0, p2, Lcom/startshorts/androidplayer/viewmodel/purchase/b$a;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p2, Lcom/startshorts/androidplayer/viewmodel/purchase/b$a;

    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/purchase/b$a;->a()Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->N()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/16 v6, 0x1c

    .line 20
    .line 21
    const/4 v7, 0x0

    .line 22
    const-string v2, "other"

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    const/4 v4, 0x0

    .line 26
    const/4 v5, 0x0

    .line 27
    invoke-static/range {v0 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->Y0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLcom/startshorts/androidplayer/bean/act/ActResource;ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;->S()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;->N0()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    instance-of p0, p2, Lcom/startshorts/androidplayer/viewmodel/purchase/b$e;

    .line 39
    .line 40
    if-eqz p0, :cond_2

    .line 41
    .line 42
    check-cast p2, Lcom/startshorts/androidplayer/viewmodel/purchase/b$e;

    .line 43
    .line 44
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/purchase/b$e;->a()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-direct {p1, p0}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;->b1(Ljava/util/List;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    instance-of p0, p2, Lcom/startshorts/androidplayer/viewmodel/purchase/b$h;

    .line 53
    .line 54
    if-eqz p0, :cond_3

    .line 55
    .line 56
    check-cast p2, Lcom/startshorts/androidplayer/viewmodel/purchase/b$h;

    .line 57
    .line 58
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/purchase/b$h;->a()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    const/4 p2, 0x1

    .line 63
    invoke-virtual {p1, p2, p0}, Lcom/startshorts/androidplayer/ui/fragment/base/ListFragment;->y0(ZLjava/util/List;)V

    .line 64
    .line 65
    .line 66
    :cond_3
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 67
    .line 68
    return-object p0
.end method

.method private static final Z0(Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;)Landroidx/lifecycle/ViewModelProvider;
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

.method private final a1()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;->Q0()Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v7, Lcom/startshorts/androidplayer/viewmodel/purchase/a$g;

    .line 6
    .line 7
    const/4 v5, 0x6

    .line 8
    const/4 v6, 0x0

    .line 9
    const-string v2, "black_friday"

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    move-object v1, v7

    .line 14
    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/viewmodel/purchase/a$g;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v7}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->Y(Lcom/startshorts/androidplayer/viewmodel/purchase/a;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private final b1(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzc/g;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;->P0()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/billing/a$h;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/viewmodel/billing/a$h;-><init>(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->W(Lcom/startshorts/androidplayer/viewmodel/billing/a;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private final c1()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;->Q0()Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/startshorts/androidplayer/viewmodel/purchase/a$f;->b:Lcom/startshorts/androidplayer/viewmodel/purchase/a$f;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->Y(Lcom/startshorts/androidplayer/viewmodel/purchase/a;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final d1()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;->Q0()Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->J()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;->e1()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;->T()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;->R()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final e1()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;->O0()Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->k0(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->g0()Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->e0()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method private final f1()V
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
    const-string v2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    .line 12
    .line 13
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 20
    .line 21
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 22
    .line 23
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method private final g1()V
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
    const-string v2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    .line 12
    .line 13
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 20
    .line 21
    const/4 v2, -0x1

    .line 22
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 23
    .line 24
    const/high16 v2, 0x42ac0000    # 86.0f

    .line 25
    .line 26
    invoke-static {v2}, Ljk/g;->a(F)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    .line 34
    .line 35
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

.method public R()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;->Q0()Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->L()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;->a1()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;->N0()V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public S()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->S()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;->g1()V

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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;->f1()V

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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;->g1()V

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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;->g1()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public i0()V
    .locals 2

    .line 1
    const/high16 v0, 0x41200000    # 10.0f

    .line 2
    .line 3
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment$initRecyclerView$1;

    .line 8
    .line 9
    invoke-direct {v1, p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment$initRecyclerView$1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->m0(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;->O0()Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->k0(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 20
    .line 21
    .line 22
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/ListFragment;->i0()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->fragment_black_friday_coin_sku:I

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
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;->R()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "BlackFridayCoinSkuFragment"

    .line 2
    .line 3
    return-object v0
.end method

.method public v()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/ListFragment;->v()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->Z()Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    instance-of v1, v0, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter;->z()V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method
