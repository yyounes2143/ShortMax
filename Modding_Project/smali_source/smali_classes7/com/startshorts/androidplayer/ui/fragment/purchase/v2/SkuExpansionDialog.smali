.class public final Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;
.super Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;
.source "SkuExpansionDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment<",
        "Lcom/startshorts/androidplayer/databinding/DialogFragmentSkuExpansionBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSkuExpansionDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SkuExpansionDialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,369:1\n1#2:370\n*E\n"
    }
.end annotation


# static fields
.field public static final q:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private i:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final j:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final k:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final l:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final m:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private n:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private o:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private p:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->q:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lti/e;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lti/e;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->j:Lms/i;

    .line 14
    .line 15
    new-instance v0, Lti/h;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lti/h;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->k:Lms/i;

    .line 25
    .line 26
    new-instance v0, Lti/i;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lti/i;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->l:Lms/i;

    .line 36
    .line 37
    new-instance v0, Lti/j;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lti/j;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->m:Lms/i;

    .line 47
    .line 48
    return-void
.end method

.method public static synthetic F(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->w0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic G(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->g0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic H(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;)Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->l0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;)Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic I(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;)Landroidx/lifecycle/ViewModelProvider;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->n0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;)Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic J(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;Lcom/startshorts/androidplayer/viewmodel/immersion/f;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->m0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;Lcom/startshorts/androidplayer/viewmodel/immersion/f;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic K(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;Lcom/startshorts/androidplayer/viewmodel/billing/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->i0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;Lcom/startshorts/androidplayer/viewmodel/billing/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic L(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->h0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic M(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;Lcom/startshorts/androidplayer/viewmodel/purchase/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->k0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;Lcom/startshorts/androidplayer/viewmodel/purchase/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic N(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->x0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic O(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->u0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic P(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;J)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->t0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;J)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;)Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->j0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;)Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic R(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->W()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic S(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;)Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->Y()Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final T()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->n:Lkotlinx/coroutines/r;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    const-string v0, "cancelBonusValueAnimJob"

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->q(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->n:Lkotlinx/coroutines/r;

    .line 18
    .line 19
    return-void
.end method

.method private final U()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->o:Lkotlinx/coroutines/r;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 13
    .line 14
    const-string v2, "SkuExpansionDialog"

    .line 15
    .line 16
    const-string v3, "cancelCountDownJob"

    .line 17
    .line 18
    invoke-virtual {v0, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->o:Lkotlinx/coroutines/r;

    .line 22
    .line 23
    return-void
.end method

.method private final V()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->W()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/billing/a$c;

    .line 6
    .line 7
    const-string v2, "expansion"

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

.method private final W()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->m:Lms/i;

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

.method private final Y()Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->l:Lms/i;

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

.method private final Z()Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->k:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final a0()Landroidx/lifecycle/ViewModelProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->j:Lms/i;

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

.method private final b0(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V
    .locals 4

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$string;->top_up_fragment_recharge_success:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-static {p0, v0, v3, v1, v2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->A(Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;IIILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->E(F)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->Y()Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/purchase/a$d;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->i:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 20
    .line 21
    invoke-direct {v1, p1, p2, p3, v2}, Lcom/startshorts/androidplayer/viewmodel/purchase/a$d;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->Y(Lcom/startshorts/androidplayer/viewmodel/purchase/a;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->z0()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSkuExpansionBinding;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSkuExpansionBinding;->a:Lcom/startshorts/androidplayer/ui/view/immersion/unlock/RetentionAutoUnlockEpisodeView;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/RetentionAutoUnlockEpisodeView;->w()V

    .line 39
    .line 40
    .line 41
    sget-object p1, Lcom/startshorts/androidplayer/manager/configure/ad/c;->a:Lcom/startshorts/androidplayer/manager/configure/ad/c;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/configure/ad/c;->i()Lcom/startshorts/androidplayer/manager/configure/ad/c$b;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/configure/ad/c$b;->c()V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method private final c0(Ljava/util/List;)V
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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->Y()Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

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

.method private final d0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSkuExpansionBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSkuExpansionBinding;->e:Landroid/widget/ImageView;

    .line 8
    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog$b;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog$b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final e0(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSkuExpansionBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSkuExpansionBinding;->l:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getPriceText()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog$c;

    .line 17
    .line 18
    invoke-direct {v1, p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog$c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private final f0(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V
    .locals 12

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->p:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->isSubscriptValid()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSkuExpansionBinding;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSkuExpansionBinding;->k:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 16
    .line 17
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSkuExpansionBinding;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSkuExpansionBinding;->k:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSubscript()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSkuExpansionBinding;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSkuExpansionBinding;->k:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 43
    .line 44
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSkuExpansionBinding;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSkuExpansionBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 54
    .line 55
    sget v1, Lcom/startshorts/androidplayer/R$string;->common_coins:I

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getCoins()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getProductGiveCoins()Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    if-eqz v0, :cond_2

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-gtz v0, :cond_1

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSkuExpansionBinding;

    .line 93
    .line 94
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSkuExpansionBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 95
    .line 96
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSkuExpansionBinding;

    .line 104
    .line 105
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSkuExpansionBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 106
    .line 107
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSkuExpansionBinding;

    .line 116
    .line 117
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSkuExpansionBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 118
    .line 119
    invoke-static {v1}, Ljk/b0;->l(Landroid/view/View;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSkuExpansionBinding;

    .line 127
    .line 128
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSkuExpansionBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 129
    .line 130
    invoke-static {v1}, Ljk/b0;->l(Landroid/view/View;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSkuExpansionBinding;

    .line 138
    .line 139
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSkuExpansionBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 140
    .line 141
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSkuExpansionBinding;

    .line 153
    .line 154
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSkuExpansionBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 155
    .line 156
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGiveCoinsUnit()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_2
    new-instance v0, Lti/n;

    .line 165
    .line 166
    invoke-direct {v0, p0}, Lti/n;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;)V

    .line 167
    .line 168
    .line 169
    :goto_1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->e0(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V

    .line 170
    .line 171
    .line 172
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 173
    .line 174
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->i:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 175
    .line 176
    sget-object v11, Lud/a;->a:Lud/a;

    .line 177
    .line 178
    invoke-virtual {v11}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    const/16 v9, 0x70

    .line 183
    .line 184
    const/4 v10, 0x0

    .line 185
    const-string v2, "pay_retain"

    .line 186
    .line 187
    const/4 v6, 0x0

    .line 188
    const/4 v7, 0x0

    .line 189
    const/4 v8, 0x0

    .line 190
    move-object v1, v0

    .line 191
    move-object v3, p1

    .line 192
    invoke-static/range {v1 .. v10}, Lcom/startshorts/androidplayer/manager/event/EventManager;->O0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->p:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 196
    .line 197
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->i:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 198
    .line 199
    invoke-virtual {v11}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    const/4 v6, 0x0

    .line 204
    const-string v2, "SkuExpansionDialog"

    .line 205
    .line 206
    invoke-virtual/range {v1 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->c1(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Z)V

    .line 207
    .line 208
    .line 209
    return-void
.end method

.method private static final g0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSkuExpansionBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSkuExpansionBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSkuExpansionBinding;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSkuExpansionBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 19
    .line 20
    invoke-static {p0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    .line 25
    return-object p0
.end method

.method private static final h0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->a0()Landroidx/lifecycle/ViewModelProvider;

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
    new-instance v2, Lti/m;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Lti/m;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;)V

    .line 20
    .line 21
    .line 22
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog$d;

    .line 23
    .line 24
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method private static final i0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;Lcom/startshorts/androidplayer/viewmodel/billing/b;)Lkotlin/Unit;
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$q;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->q0()V

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
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->c0(Ljava/util/List;)V

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
    const/4 v0, 0x2

    .line 30
    const/4 v1, 0x0

    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-static {p0, p1, v2, v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->A(Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;IIILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$c;

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$c;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$c;->a()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$c;->b()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$c;->c()Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-direct {p0, v0, v1, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->b0(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$k;

    .line 59
    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    new-instance v0, Lgi/f;

    .line 63
    .line 64
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    const-string v1, "requireContext(...)"

    .line 69
    .line 70
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$k;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$k;->a()Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-direct {v0, p0, p1}, Lgi/f;-><init>(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Lfi/a;->show()V

    .line 83
    .line 84
    .line 85
    :cond_4
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 86
    .line 87
    return-object p0
.end method

.method private static final j0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;)Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->a0()Landroidx/lifecycle/ViewModelProvider;

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
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->R()Landroidx/lifecycle/MutableLiveData;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Lti/l;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Lti/l;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;)V

    .line 20
    .line 21
    .line 22
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog$d;

    .line 23
    .line 24
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method private static final k0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;Lcom/startshorts/androidplayer/viewmodel/purchase/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/purchase/b$b;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/purchase/b$b;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/purchase/b$b;->a()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/purchase/b$b;->a()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->f0(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/purchase/b$b;->a()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->s0(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/purchase/b$b;->a()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->v0(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->V()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/purchase/b$e;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/purchase/b$e;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/purchase/b$e;->a()Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->p0(Ljava/util/List;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/purchase/b$i;

    .line 57
    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/purchase/b$i;

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/purchase/b$i;->a()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-eqz p1, :cond_3

    .line 67
    .line 68
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->e0(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V

    .line 69
    .line 70
    .line 71
    :cond_3
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 72
    .line 73
    return-object p0
.end method

.method private static final l0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;)Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->a0()Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->a0()Landroidx/lifecycle/MutableLiveData;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Lti/k;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Lti/k;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;)V

    .line 20
    .line 21
    .line 22
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog$d;

    .line 23
    .line 24
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method private static final m0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;Lcom/startshorts/androidplayer/viewmodel/immersion/f;)Lkotlin/Unit;
    .locals 0

    .line 1
    instance-of p1, p1, Lcom/startshorts/androidplayer/viewmodel/immersion/f$d;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/high16 p1, 0x3f800000    # 1.0f

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->E(F)V

    .line 8
    .line 9
    .line 10
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method

.method private static final n0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;)Landroidx/lifecycle/ViewModelProvider;
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

.method private final o0()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->Y()Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v7, Lcom/startshorts/androidplayer/viewmodel/purchase/a$g;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->i:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 8
    .line 9
    const/4 v5, 0x2

    .line 10
    const/4 v6, 0x0

    .line 11
    const-string v2, "expansion"

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    move-object v1, v7

    .line 15
    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/viewmodel/purchase/a$g;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v7}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->Y(Lcom/startshorts/androidplayer/viewmodel/purchase/a;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private final p0(Ljava/util/List;)V
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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->W()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

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

.method private final q0()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->Y()Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

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

.method private final s0(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->T()V

    .line 2
    .line 3
    .line 4
    const-string v0, "startBonusValueAnimJob -> 1000ms"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->q(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 10
    .line 11
    new-instance v6, Lti/o;

    .line 12
    .line 13
    invoke-direct {v6, p0, p1}, Lti/o;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V

    .line 14
    .line 15
    .line 16
    new-instance v7, Lti/p;

    .line 17
    .line 18
    invoke-direct {v7, p0, p1}, Lti/p;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V

    .line 19
    .line 20
    .line 21
    const-wide/16 v2, 0x3e8

    .line 22
    .line 23
    const-wide/16 v4, 0xa6

    .line 24
    .line 25
    invoke-virtual/range {v1 .. v7}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->e(JJLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/r;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->n:Lkotlinx/coroutines/r;

    .line 30
    .line 31
    return-void
.end method

.method private static final t0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;J)Lkotlin/Unit;
    .locals 3

    .line 1
    const-wide/16 v0, 0x3e8

    .line 2
    .line 3
    sub-long p2, v0, p2

    .line 4
    .line 5
    long-to-float p2, p2

    .line 6
    const/high16 p3, 0x3f800000    # 1.0f

    .line 7
    .line 8
    mul-float/2addr p2, p3

    .line 9
    long-to-float p3, v0

    .line 10
    div-float/2addr p2, p3

    .line 11
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSkuExpansionBinding;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSkuExpansionBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 18
    .line 19
    new-instance p3, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const/16 v0, 0x2b

    .line 25
    .line 26
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getProductGiveCoins()Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const/4 v1, 0x0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move v0, v1

    .line 42
    :goto_0
    int-to-float v0, v0

    .line 43
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getKeepGiveCoins()Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    move v2, v1

    .line 55
    :goto_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getProductGiveCoins()Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    :cond_2
    sub-int/2addr v2, v1

    .line 66
    int-to-float p1, v2

    .line 67
    mul-float/2addr p1, p2

    .line 68
    add-float/2addr v0, p1

    .line 69
    invoke-static {v0}, Ljk/h;->b(F)I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {p1}, Ljk/v;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    .line 86
    .line 87
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 88
    .line 89
    return-object p0
.end method

.method private static final u0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSkuExpansionBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSkuExpansionBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const/16 v2, 0x2b

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getKeepGiveCoins()Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p1, 0x0

    .line 31
    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p1}, Ljk/v;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->y0()V

    .line 46
    .line 47
    .line 48
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    return-object p0
.end method

.method private final v0(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->U()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getRetentionSeconds()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v3, "startCountDownJob -> "

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/16 v3, 0x73

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const-string v3, "SkuExpansionDialog"

    .line 33
    .line 34
    invoke-virtual {p1, v3, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-wide/16 v2, 0x0

    .line 38
    .line 39
    cmp-long p1, v0, v2

    .line 40
    .line 41
    if-gtz p1, :cond_0

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSkuExpansionBinding;

    .line 48
    .line 49
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSkuExpansionBinding;->j:Landroid/widget/LinearLayout;

    .line 50
    .line 51
    invoke-static {p1}, Ljk/b0;->e(Landroid/view/View;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSkuExpansionBinding;

    .line 60
    .line 61
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSkuExpansionBinding;->j:Landroid/widget/LinearLayout;

    .line 62
    .line 63
    invoke-static {p1}, Ljk/b0;->l(Landroid/view/View;)V

    .line 64
    .line 65
    .line 66
    sget-object p1, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 67
    .line 68
    long-to-int v0, v0

    .line 69
    new-instance v1, Lti/f;

    .line 70
    .line 71
    invoke-direct {v1, p0}, Lti/f;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;)V

    .line 72
    .line 73
    .line 74
    new-instance v2, Lti/g;

    .line 75
    .line 76
    invoke-direct {v2, p0}, Lti/g;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v0, v1, v2}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->d(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/r;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->o:Lkotlinx/coroutines/r;

    .line 84
    .line 85
    :goto_0
    return-void
.end method

.method private static final w0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;I)Lkotlin/Unit;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSkuExpansionBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSkuExpansionBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    sget v1, Lcom/startshorts/androidplayer/R$string;->sku_expansion_dialog_fragment_count_down:I

    .line 10
    .line 11
    sget-object v2, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 12
    .line 13
    int-to-long v3, p1

    .line 14
    const/4 p1, 0x1

    .line 15
    invoke-virtual {v2, v3, v4, p1}, Lcom/startshorts/androidplayer/utils/TimeUtil;->c(JZ)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, v1, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 31
    .line 32
    return-object p0
.end method

.method private static final x0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private final y0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSkuExpansionBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSkuExpansionBinding;->l:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sget v2, Lcom/startshorts/androidplayer/R$anim;->anim_expansion_purchase_button:I

    .line 14
    .line 15
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private final z0()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->Z()Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v8, Lcom/startshorts/androidplayer/viewmodel/immersion/e$m;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSkuExpansionBinding;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSkuExpansionBinding;->a:Lcom/startshorts/androidplayer/ui/view/immersion/unlock/RetentionAutoUnlockEpisodeView;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/RetentionAutoUnlockEpisodeView;->getMAutoUnlockEpisode()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/16 v6, 0x8

    .line 24
    .line 25
    const/4 v7, 0x0

    .line 26
    const/4 v4, 0x1

    .line 27
    const/4 v5, 0x0

    .line 28
    move-object v1, v8

    .line 29
    invoke-direct/range {v1 .. v7}, Lcom/startshorts/androidplayer/viewmodel/immersion/e$m;-><init>(Landroid/content/Context;ZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v8}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->j0(Lcom/startshorts/androidplayer/viewmodel/immersion/e;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final X()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->i:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    return-object v0
.end method

.method public dismiss()V
    .locals 9

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->dismiss()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->p:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 7
    .line 8
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->i:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 9
    .line 10
    sget-object v1, Lud/a;->a:Lud/a;

    .line 11
    .line 12
    invoke-virtual {v1}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    const/16 v7, 0x20

    .line 17
    .line 18
    const/4 v8, 0x0

    .line 19
    const-string v1, "SkuExpansionDialog"

    .line 20
    .line 21
    const/4 v5, 0x0

    .line 22
    const/4 v6, 0x0

    .line 23
    invoke-static/range {v0 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->b1(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public k()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->dialog_fragment_sku_expansion:I

    .line 2
    .line 3
    return v0
.end method

.method public n()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "SkuExpansionDialog"

    .line 2
    .line 3
    return-object v0
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
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->i:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const-string p1, "mEpisode is null, dismiss now"

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->g(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->dismiss()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    const/4 p2, 0x0

    .line 29
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->Z()Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    new-instance p2, Lcom/startshorts/androidplayer/viewmodel/immersion/e$d;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->i:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 39
    .line 40
    invoke-direct {p2, v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/e$d;-><init>(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->j0(Lcom/startshorts/androidplayer/viewmodel/immersion/e;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->d0()V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->o0()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSkuExpansionBinding;

    .line 57
    .line 58
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSkuExpansionBinding;->a:Lcom/startshorts/androidplayer/ui/view/immersion/unlock/RetentionAutoUnlockEpisodeView;

    .line 59
    .line 60
    sget p2, Lcom/startshorts/androidplayer/R$color;->color_auto_unlock_episode_in_sku_expansion_dialog_text:I

    .line 61
    .line 62
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    const-string v0, "pay_retain"

    .line 67
    .line 68
    invoke-virtual {p1, v0, p2}, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/RetentionAutoUnlockEpisodeView;->x(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public p()I
    .locals 2

    .line 1
    sget-object v0, Lfk/v;->a:Lfk/v;

    .line 2
    .line 3
    invoke-virtual {v0}, Lfk/v;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sget-object v1, Lfk/z;->a:Lfk/z;

    .line 16
    .line 17
    invoke-virtual {v1}, Lfk/z;->p()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    :goto_0
    sub-int/2addr v0, v1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    sget-object v1, Lfk/z;->a:Lfk/z;

    .line 30
    .line 31
    invoke-virtual {v1}, Lfk/z;->p()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    mul-int/lit8 v1, v1, 0x2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :goto_1
    return v0
.end method

.method public final r0(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->i:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    return-void
.end method

.method public final receiveAcknowledgePurchaseResult(Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "result"

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
    const-string v1, "receive AcknowledgePurchaseResult -> "

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
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->q(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sget-object p1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->a:Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->k()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->z0()V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public final receiveEpisodeListUnlockedEvent(Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;
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
    const-string v1, "receive EpisodeListUnlockedEvent -> unlockType("

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->getUnlockType()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ") userRecharged("

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->getUserRecharged()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, ") episodeId("

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->getFirstUnlockedEpisodeId()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const/16 v1, 0x29

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->q(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->i:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 60
    .line 61
    if-eqz v0, :cond_0

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->getFirstUnlockedEpisodeId()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-ne v0, p1, :cond_0

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->dismiss()V

    .line 74
    .line 75
    .line 76
    :cond_0
    return-void
.end method

.method public t()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->t()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->T()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->U()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
