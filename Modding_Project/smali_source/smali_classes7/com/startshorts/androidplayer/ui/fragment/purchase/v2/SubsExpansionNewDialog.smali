.class public final Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;
.super Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;
.source "SubsExpansionNewDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog$a;,
        Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment<",
        "Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSubsExpansionNewDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubsExpansionNewDialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog\n+ 2 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,624:1\n470#2:625\n470#2:626\n470#2:627\n*S KotlinDebug\n*F\n+ 1 SubsExpansionNewDialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog\n*L\n158#1:625\n230#1:626\n397#1:627\n*E\n"
    }
.end annotation


# static fields
.field public static final y:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private j:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private k:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog$b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private l:Z

.field private m:Z

.field private n:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private o:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final w:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final x:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->y:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog$a;

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
    new-instance v0, Lti/t;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lti/t;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->w:Lms/i;

    .line 14
    .line 15
    new-instance v0, Lti/u;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lti/u;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->x:Lms/i;

    .line 25
    .line 26
    return-void
.end method

.method public static synthetic F(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->w0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic G(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->l0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic H(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->v0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic I(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;)Landroidx/lifecycle/ViewModelProvider;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->m0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;)Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic J(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->X()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic K(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->l:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic L(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->m:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic M(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->c0()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic N(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;ILjava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->d0(ILjava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic O(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->g0(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic P(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->h0(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic Q(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->j0(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic R(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->k0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic S(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->o0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic T(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->x0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final V()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->X()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

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

.method private final W(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x6

    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x7

    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    .line 13
    sget-object p1, Lfk/u;->a:Lfk/u;

    .line 14
    .line 15
    sget v0, Lcom/startshorts/androidplayer/R$string;->subs_type_week_unit:I

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lfk/u;->d(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    sget-object p1, Lfk/u;->a:Lfk/u;

    .line 23
    .line 24
    sget v0, Lcom/startshorts/androidplayer/R$string;->subs_type_year_unit:I

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lfk/u;->d(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    sget-object p1, Lfk/u;->a:Lfk/u;

    .line 32
    .line 33
    sget v0, Lcom/startshorts/androidplayer/R$string;->subs_type_month_unit:I

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lfk/u;->d(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :goto_0
    return-object p1
.end method

.method private final X()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->x:Lms/i;

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

.method private final b0()Landroidx/lifecycle/ViewModelProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->w:Lms/i;

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

.method private final c0()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "retention_pop_sku_pay"

    .line 2
    .line 3
    return-object v0
.end method

.method private final d0(ILjava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 4
    .line 5
    sget v2, Lcom/startshorts/androidplayer/R$string;->subscription_detail_activity_subs_success:I

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x0

    .line 10
    invoke-static {v1, v2, v5, v3, v4}, Lfk/u;->j(Lfk/u;IIILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    sget-object v6, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 14
    .line 15
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->c0()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v7

    .line 19
    iget-object v8, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 20
    .line 21
    iget-object v11, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->j:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 22
    .line 23
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v14

    .line 27
    const/16 v17, 0x360

    .line 28
    .line 29
    const/16 v18, 0x0

    .line 30
    .line 31
    const/4 v12, 0x0

    .line 32
    const/4 v13, 0x0

    .line 33
    const/4 v15, 0x0

    .line 34
    const/16 v16, 0x0

    .line 35
    .line 36
    move-object/from16 v9, p4

    .line 37
    .line 38
    move-object/from16 v10, p2

    .line 39
    .line 40
    invoke-static/range {v6 .. v18}, Lcom/startshorts/androidplayer/manager/event/EventManager;->U0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->k:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog$b;

    .line 44
    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    invoke-interface {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog$b;->a()V

    .line 48
    .line 49
    .line 50
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->dismiss()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private final e0()V
    .locals 5

    .line 1
    new-instance v0, Lfk/e;

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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-string v3, "getViewLifecycleOwner(...)"

    .line 17
    .line 18
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->X()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    new-instance v4, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog$c;

    .line 26
    .line 27
    invoke-direct {v4, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog$c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, v1, v2, v3, v4}, Lfk/e;-><init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;Lfk/e$a;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lfk/e;->d()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private final f0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;->n:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 8
    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog$d;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog$d;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;->g:Landroid/widget/ImageView;

    .line 24
    .line 25
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog$e;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog$e;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private final g0(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 10

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->W(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;->t:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->l:Z

    .line 24
    .line 25
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-static {v0}, Ljk/u;->b(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-object v0, v1

    .line 36
    :goto_0
    const-string v2, ""

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->isShowDiscountPrice()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-ne v3, p1, :cond_3

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getDiscountPriceText()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-nez p1, :cond_2

    .line 51
    .line 52
    :cond_1
    :goto_1
    move-object v4, v2

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    move-object v4, p1

    .line 55
    goto :goto_2

    .line 56
    :cond_3
    if-eqz v0, :cond_1

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getOriginPriceText()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-nez p1, :cond_2

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :goto_2
    if-eqz v0, :cond_4

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getSkuId()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    goto :goto_3

    .line 72
    :cond_4
    move-object p1, v1

    .line 73
    :goto_3
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->n:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;

    .line 80
    .line 81
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;->t:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 82
    .line 83
    invoke-static {p1}, Ljk/b0;->d(Landroid/view/View;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;

    .line 91
    .line 92
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;->l:Landroid/widget/ImageView;

    .line 93
    .line 94
    invoke-static {p1}, Ljk/b0;->l(Landroid/view/View;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;

    .line 102
    .line 103
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;->s:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 104
    .line 105
    if-eqz v0, :cond_7

    .line 106
    .line 107
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 108
    .line 109
    if-eqz v2, :cond_5

    .line 110
    .line 111
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    goto :goto_4

    .line 120
    :cond_5
    move-object v2, v1

    .line 121
    :goto_4
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 122
    .line 123
    if-eqz v3, :cond_6

    .line 124
    .line 125
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->isDayToWeekSub()Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    :cond_6
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->formatRenewPrice(Ljava/lang/Integer;Ljava/lang/Boolean;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    :cond_7
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;

    .line 145
    .line 146
    iget-object v3, p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;->r:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 147
    .line 148
    const-string p1, "tvPrice"

    .line 149
    .line 150
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    const-string p1, "#F6610F"

    .line 154
    .line 155
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    const-string v0, "#FEDAA4"

    .line 160
    .line 161
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    filled-new-array {p1, v0}, [I

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    const/high16 p1, 0x40000000    # 2.0f

    .line 170
    .line 171
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 172
    .line 173
    .line 174
    move-result-object v7

    .line 175
    const/4 v8, 0x4

    .line 176
    const/4 v9, 0x0

    .line 177
    const/4 v6, 0x0

    .line 178
    invoke-static/range {v3 .. v9}, Ljk/y;->h(Landroid/widget/TextView;Ljava/lang/String;[I[FLjava/lang/Float;ILjava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;

    .line 186
    .line 187
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;->o:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 188
    .line 189
    invoke-static {p1}, Ljk/b0;->d(Landroid/view/View;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;

    .line 197
    .line 198
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;->u:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 199
    .line 200
    invoke-static {p1}, Ljk/b0;->d(Landroid/view/View;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;

    .line 208
    .line 209
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;->f:Landroid/view/View;

    .line 210
    .line 211
    invoke-static {p1}, Ljk/b0;->d(Landroid/view/View;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;

    .line 219
    .line 220
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;->p:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 221
    .line 222
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 223
    .line 224
    sget v1, Lcom/startshorts/androidplayer/R$string;->subs_expansion_dialog_first_day_special:I

    .line 225
    .line 226
    invoke-virtual {v0, v1}, Lfk/u;->d(I)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;

    .line 238
    .line 239
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;->p:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 240
    .line 241
    invoke-static {p1}, Ljk/b0;->l(Landroid/view/View;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;

    .line 249
    .line 250
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 251
    .line 252
    invoke-static {p1}, Ljk/b0;->l(Landroid/view/View;)V

    .line 253
    .line 254
    .line 255
    return-void
.end method

.method private final h0(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 12

    .line 1
    sget-object v10, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->c0()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->j:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 8
    .line 9
    sget-object v11, Lud/a;->a:Lud/a;

    .line 10
    .line 11
    invoke-virtual {v11}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    const/16 v8, 0x70

    .line 16
    .line 17
    const/4 v9, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x0

    .line 20
    const/4 v7, 0x0

    .line 21
    move-object v0, v10

    .line 22
    move-object v2, p1

    .line 23
    invoke-static/range {v0 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->P0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->c0()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->j:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 31
    .line 32
    invoke-virtual {v11}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->l:Z

    .line 37
    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->m:Z

    .line 43
    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->n:Ljava/lang/String;

    .line 47
    .line 48
    :goto_0
    move-object v7, v0

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    const/4 v0, 0x0

    .line 51
    goto :goto_0

    .line 52
    :goto_1
    const/4 v5, 0x0

    .line 53
    move-object v0, v10

    .line 54
    move-object v2, p1

    .line 55
    invoke-virtual/range {v0 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->d1(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;ZLjava/lang/Integer;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method private final i0()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;->v:Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;

    .line 8
    .line 9
    const-string v0, "tvTitle"

    .line 10
    .line 11
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 15
    .line 16
    sget v2, Lcom/startshorts/androidplayer/R$string;->subs_expansion_dialog_title:I

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Lfk/u;->d(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v0, "#CD7FAC"

    .line 23
    .line 24
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const-string v3, "#F3AE66"

    .line 29
    .line 30
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const-string v4, "#F8E4C3"

    .line 35
    .line 36
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    const-string v5, "#F9D4A5"

    .line 41
    .line 42
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    filled-new-array {v0, v3, v4, v5}, [I

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    const/4 v0, 0x4

    .line 51
    new-array v4, v0, [F

    .line 52
    .line 53
    fill-array-data v4, :array_0

    .line 54
    .line 55
    .line 56
    const/16 v6, 0x8

    .line 57
    .line 58
    const/4 v7, 0x0

    .line 59
    const/4 v5, 0x0

    .line 60
    invoke-static/range {v1 .. v7}, Ljk/y;->h(Landroid/widget/TextView;Ljava/lang/String;[I[FLjava/lang/Float;ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    nop

    .line 65
    :array_0
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private final j0(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 12

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->W(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;->t:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    sget-object v0, Lqf/h;->a:Lqf/h;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lqf/h;->o(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    sget-object v1, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->X0()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->isEnable()Lkotlin/jvm/functions/Function0;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Ljava/lang/Boolean;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    const-string v2, ""

    .line 49
    .line 50
    const/4 v3, 0x1

    .line 51
    const/4 v4, 0x0

    .line 52
    if-eqz v1, :cond_a

    .line 53
    .line 54
    if-eqz v0, :cond_a

    .line 55
    .line 56
    iput-boolean v3, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->l:Z

    .line 57
    .line 58
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 59
    .line 60
    const/4 v0, 0x0

    .line 61
    if-eqz p1, :cond_0

    .line 62
    .line 63
    invoke-static {p1}, Ljk/u;->b(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    move-object p1, v0

    .line 69
    :goto_0
    if-eqz p1, :cond_2

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->isShowDiscountPrice()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-ne v1, v3, :cond_2

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getDiscountPriceText()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    if-nez v1, :cond_1

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    move-object v2, v1

    .line 85
    goto :goto_1

    .line 86
    :cond_2
    if-eqz p1, :cond_3

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getOriginPriceText()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    if-nez v1, :cond_1

    .line 93
    .line 94
    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getSkuId()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    goto :goto_2

    .line 101
    :cond_4
    move-object v1, v0

    .line 102
    :goto_2
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->n:Ljava/lang/String;

    .line 103
    .line 104
    if-eqz p1, :cond_5

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getDiscountPeriodNum()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    goto :goto_3

    .line 111
    :cond_5
    move v1, v4

    .line 112
    :goto_3
    if-eqz p1, :cond_6

    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getDiscountPercent()Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    if-eqz v5, :cond_6

    .line 119
    .line 120
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    goto :goto_4

    .line 125
    :cond_6
    move v5, v4

    .line 126
    :goto_4
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    check-cast v6, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;

    .line 131
    .line 132
    iget-object v6, v6, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;->t:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 133
    .line 134
    invoke-static {v6}, Ljk/b0;->l(Landroid/view/View;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    check-cast v6, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;

    .line 142
    .line 143
    iget-object v6, v6, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;->l:Landroid/widget/ImageView;

    .line 144
    .line 145
    invoke-static {v6}, Ljk/b0;->l(Landroid/view/View;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    check-cast v6, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;

    .line 153
    .line 154
    iget-object v6, v6, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;->s:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 155
    .line 156
    if-eqz p1, :cond_9

    .line 157
    .line 158
    iget-object v7, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 159
    .line 160
    if-eqz v7, :cond_7

    .line 161
    .line 162
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 163
    .line 164
    .line 165
    move-result v7

    .line 166
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    goto :goto_5

    .line 171
    :cond_7
    move-object v7, v0

    .line 172
    :goto_5
    iget-object v8, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 173
    .line 174
    if-eqz v8, :cond_8

    .line 175
    .line 176
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->isDayToWeekSub()Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    :cond_8
    invoke-virtual {p1, v7, v0}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->formatRenewPrice(Ljava/lang/Integer;Ljava/lang/Boolean;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    :cond_9
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    .line 190
    .line 191
    :goto_6
    move-object v6, v2

    .line 192
    move p1, v5

    .line 193
    goto :goto_a

    .line 194
    :cond_a
    iput-boolean v4, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->l:Z

    .line 195
    .line 196
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscount()Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-eqz v0, :cond_c

    .line 201
    .line 202
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getDiscountPriceText()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    if-nez v0, :cond_b

    .line 207
    .line 208
    goto :goto_7

    .line 209
    :cond_b
    move-object v2, v0

    .line 210
    goto :goto_7

    .line 211
    :cond_c
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getOriginPriceText()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    if-nez v0, :cond_b

    .line 216
    .line 217
    :goto_7
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 218
    .line 219
    if-eqz v0, :cond_d

    .line 220
    .line 221
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getFlavorPayCycleCount()I

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    move v1, v0

    .line 226
    goto :goto_8

    .line 227
    :cond_d
    move v1, v4

    .line 228
    :goto_8
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 229
    .line 230
    if-eqz v0, :cond_e

    .line 231
    .line 232
    invoke-static {v0}, Ljk/u;->d(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)I

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    move v5, v0

    .line 237
    goto :goto_9

    .line 238
    :cond_e
    move v5, v4

    .line 239
    :goto_9
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;

    .line 244
    .line 245
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;->l:Landroid/widget/ImageView;

    .line 246
    .line 247
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;

    .line 255
    .line 256
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;->s:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 257
    .line 258
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->formatRenewPrice()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    .line 264
    .line 265
    goto :goto_6

    .line 266
    :goto_a
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;

    .line 271
    .line 272
    iget-object v5, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;->r:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 273
    .line 274
    const-string v0, "tvPrice"

    .line 275
    .line 276
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    const-string v0, "#F6610F"

    .line 280
    .line 281
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    const-string v2, "#FEDAA4"

    .line 286
    .line 287
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 288
    .line 289
    .line 290
    move-result v2

    .line 291
    filled-new-array {v0, v2}, [I

    .line 292
    .line 293
    .line 294
    move-result-object v7

    .line 295
    const/high16 v0, 0x40000000    # 2.0f

    .line 296
    .line 297
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 298
    .line 299
    .line 300
    move-result-object v9

    .line 301
    const/4 v10, 0x4

    .line 302
    const/4 v11, 0x0

    .line 303
    const/4 v8, 0x0

    .line 304
    invoke-static/range {v5 .. v11}, Ljk/y;->h(Landroid/widget/TextView;Ljava/lang/String;[I[FLjava/lang/Float;ILjava/lang/Object;)V

    .line 305
    .line 306
    .line 307
    if-le v1, v3, :cond_11

    .line 308
    .line 309
    sget-object v0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->Companion:Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod$Companion;

    .line 310
    .line 311
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 312
    .line 313
    if-eqz v2, :cond_f

    .line 314
    .line 315
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 316
    .line 317
    .line 318
    move-result v2

    .line 319
    goto :goto_b

    .line 320
    :cond_f
    move v2, v4

    .line 321
    :goto_b
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod$Companion;->formatCycleCount(II)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;

    .line 330
    .line 331
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;->o:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 332
    .line 333
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;

    .line 341
    .line 342
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;->o:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 343
    .line 344
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 345
    .line 346
    .line 347
    move-result v0

    .line 348
    if-nez v0, :cond_10

    .line 349
    .line 350
    const/16 v0, 0x8

    .line 351
    .line 352
    goto :goto_c

    .line 353
    :cond_10
    move v0, v4

    .line 354
    :goto_c
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 355
    .line 356
    .line 357
    iput-boolean v3, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->p:Z

    .line 358
    .line 359
    goto :goto_d

    .line 360
    :cond_11
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;

    .line 365
    .line 366
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;->o:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 367
    .line 368
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 369
    .line 370
    .line 371
    iput-boolean v4, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->p:Z

    .line 372
    .line 373
    :goto_d
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 374
    .line 375
    if-eqz v0, :cond_12

    .line 376
    .line 377
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getExpireTime()J

    .line 378
    .line 379
    .line 380
    move-result-wide v0

    .line 381
    goto :goto_e

    .line 382
    :cond_12
    const-wide/16 v0, 0x0

    .line 383
    .line 384
    :goto_e
    sget-object v2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 385
    .line 386
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 387
    .line 388
    .line 389
    move-result-wide v5

    .line 390
    sub-long/2addr v0, v5

    .line 391
    const/16 v2, 0x3e8

    .line 392
    .line 393
    int-to-long v5, v2

    .line 394
    div-long/2addr v0, v5

    .line 395
    long-to-int v0, v0

    .line 396
    if-lez v0, :cond_14

    .line 397
    .line 398
    if-lez p1, :cond_14

    .line 399
    .line 400
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->u0(I)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;

    .line 408
    .line 409
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;->u:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 410
    .line 411
    invoke-static {v1}, Ljk/b0;->l(Landroid/view/View;)V

    .line 412
    .line 413
    .line 414
    sget-object v1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 415
    .line 416
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->H0()Z

    .line 417
    .line 418
    .line 419
    move-result v1

    .line 420
    if-eqz v1, :cond_13

    .line 421
    .line 422
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    new-instance v2, Lcom/startshorts/androidplayer/bean/eventbus/SubsExpansionShowEvent;

    .line 427
    .line 428
    invoke-direct {v2}, Lcom/startshorts/androidplayer/bean/eventbus/SubsExpansionShowEvent;-><init>()V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v1, v2}, Lau/c;->l(Ljava/lang/Object;)V

    .line 432
    .line 433
    .line 434
    :cond_13
    iput-boolean v3, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->t:Z

    .line 435
    .line 436
    goto :goto_f

    .line 437
    :cond_14
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->U()V

    .line 438
    .line 439
    .line 440
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;

    .line 445
    .line 446
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;->u:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 447
    .line 448
    invoke-static {v1}, Ljk/b0;->d(Landroid/view/View;)V

    .line 449
    .line 450
    .line 451
    iput-boolean v4, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->t:Z

    .line 452
    .line 453
    :goto_f
    if-lez p1, :cond_16

    .line 454
    .line 455
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;

    .line 460
    .line 461
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;->p:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 462
    .line 463
    sget-object v2, Lfk/u;->a:Lfk/u;

    .line 464
    .line 465
    sget v4, Lcom/startshorts/androidplayer/R$string;->discount_label_off:I

    .line 466
    .line 467
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 468
    .line 469
    .line 470
    move-result-object p1

    .line 471
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object p1

    .line 475
    invoke-virtual {v2, v4, p1}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object p1

    .line 479
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 483
    .line 484
    .line 485
    move-result-object p1

    .line 486
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;

    .line 487
    .line 488
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;->p:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 489
    .line 490
    invoke-static {p1}, Ljk/b0;->l(Landroid/view/View;)V

    .line 491
    .line 492
    .line 493
    if-lez v0, :cond_15

    .line 494
    .line 495
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 496
    .line 497
    .line 498
    move-result-object p1

    .line 499
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;

    .line 500
    .line 501
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;->f:Landroid/view/View;

    .line 502
    .line 503
    invoke-static {p1}, Ljk/b0;->l(Landroid/view/View;)V

    .line 504
    .line 505
    .line 506
    goto :goto_10

    .line 507
    :cond_15
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 508
    .line 509
    .line 510
    move-result-object p1

    .line 511
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;

    .line 512
    .line 513
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;->f:Landroid/view/View;

    .line 514
    .line 515
    invoke-static {p1}, Ljk/b0;->d(Landroid/view/View;)V

    .line 516
    .line 517
    .line 518
    :goto_10
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 519
    .line 520
    .line 521
    move-result-object p1

    .line 522
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;

    .line 523
    .line 524
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 525
    .line 526
    invoke-static {p1}, Ljk/b0;->l(Landroid/view/View;)V

    .line 527
    .line 528
    .line 529
    iput-boolean v3, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->r:Z

    .line 530
    .line 531
    goto :goto_11

    .line 532
    :cond_16
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 533
    .line 534
    .line 535
    move-result-object p1

    .line 536
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;

    .line 537
    .line 538
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 539
    .line 540
    invoke-static {p1}, Ljk/b0;->d(Landroid/view/View;)V

    .line 541
    .line 542
    .line 543
    iput-boolean v4, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->r:Z

    .line 544
    .line 545
    :goto_11
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->t0()V

    .line 546
    .line 547
    .line 548
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 549
    .line 550
    if-eqz p1, :cond_17

    .line 551
    .line 552
    sget-object v0, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->a:Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;

    .line 553
    .line 554
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSubscriptionId()I

    .line 555
    .line 556
    .line 557
    move-result v1

    .line 558
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getProductId()Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object p1

    .line 562
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->v(ILjava/lang/String;)Lkotlinx/coroutines/r;

    .line 563
    .line 564
    .line 565
    :cond_17
    return-void
.end method

.method private final k0(Ljava/lang/String;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    :cond_0
    const-string v1, ""

    .line 14
    .line 15
    :cond_1
    const/4 v5, 0x4

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x0

    .line 19
    move-object v2, p1

    .line 20
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->i1(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;IILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private static final l0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->b0()Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-class v0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 12
    .line 13
    return-object p0
.end method

.method private static final m0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;)Landroidx/lifecycle/ViewModelProvider;
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

.method private final n0()V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->m:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->a:Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->w(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 14
    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    :goto_0
    if-eqz v0, :cond_3

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->V()V

    .line 35
    .line 36
    .line 37
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 38
    .line 39
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->c0()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->j:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 44
    .line 45
    const/16 v8, 0x38

    .line 46
    .line 47
    const/4 v9, 0x0

    .line 48
    const-string v3, "other"

    .line 49
    .line 50
    const/4 v5, 0x0

    .line 51
    const/4 v6, 0x0

    .line 52
    const/4 v7, 0x0

    .line 53
    invoke-static/range {v1 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->W0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->dismiss()V

    .line 58
    .line 59
    .line 60
    :goto_2
    return-void
.end method

.method private final o0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    const-string v0, ""

    .line 12
    .line 13
    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->dismiss()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v2, Lzc/g;

    .line 29
    .line 30
    sget-object v3, Lle/h;->a:Lle/h;

    .line 31
    .line 32
    invoke-virtual {v3}, Lle/h;->b()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    filled-new-array {v0}, [Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-direct {v2, v3, v0}, Lzc/g;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->p0(Ljava/util/List;)V

    .line 51
    .line 52
    .line 53
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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->X()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

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

.method private final t0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->o:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_6

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x0

    .line 11
    packed-switch v2, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    goto/16 :goto_0

    .line 15
    .line 16
    :pswitch_0
    const-string v2, "7"

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_6

    .line 23
    .line 24
    iput-boolean v3, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->q:Z

    .line 25
    .line 26
    iput-boolean v3, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->u:Z

    .line 27
    .line 28
    iput-boolean v3, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->s:Z

    .line 29
    .line 30
    goto/16 :goto_1

    .line 31
    .line 32
    :pswitch_1
    const-string v2, "6"

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iput-boolean v1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->u:Z

    .line 42
    .line 43
    iput-boolean v1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->s:Z

    .line 44
    .line 45
    iput-boolean v3, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->q:Z

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :pswitch_2
    const-string v2, "5"

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iput-boolean v1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->s:Z

    .line 58
    .line 59
    iput-boolean v3, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->u:Z

    .line 60
    .line 61
    iput-boolean v3, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->q:Z

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :pswitch_3
    const-string v2, "4"

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_2

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    iput-boolean v1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->u:Z

    .line 74
    .line 75
    iput-boolean v3, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->s:Z

    .line 76
    .line 77
    iput-boolean v3, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->q:Z

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :pswitch_4
    const-string v2, "3"

    .line 81
    .line 82
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_3

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    iput-boolean v1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->q:Z

    .line 90
    .line 91
    iput-boolean v1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->s:Z

    .line 92
    .line 93
    iput-boolean v3, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->u:Z

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :pswitch_5
    const-string v2, "2"

    .line 97
    .line 98
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-nez v0, :cond_4

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_4
    iput-boolean v1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->q:Z

    .line 106
    .line 107
    iput-boolean v1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->u:Z

    .line 108
    .line 109
    iput-boolean v3, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->s:Z

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :pswitch_6
    const-string v2, "1"

    .line 113
    .line 114
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-nez v0, :cond_5

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_5
    iput-boolean v1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->q:Z

    .line 122
    .line 123
    iput-boolean v3, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->u:Z

    .line 124
    .line 125
    iput-boolean v3, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->s:Z

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_6
    :goto_0
    iput-boolean v1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->q:Z

    .line 129
    .line 130
    iput-boolean v1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->u:Z

    .line 131
    .line 132
    iput-boolean v1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->s:Z

    .line 133
    .line 134
    :goto_1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->q:Z

    .line 135
    .line 136
    if-eqz v0, :cond_7

    .line 137
    .line 138
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->p:Z

    .line 139
    .line 140
    if-eqz v0, :cond_7

    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;

    .line 147
    .line 148
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;->o:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 149
    .line 150
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_7
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;

    .line 159
    .line 160
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;->o:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 161
    .line 162
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 163
    .line 164
    .line 165
    :goto_2
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->u:Z

    .line 166
    .line 167
    if-eqz v0, :cond_8

    .line 168
    .line 169
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->t:Z

    .line 170
    .line 171
    if-eqz v0, :cond_8

    .line 172
    .line 173
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;

    .line 178
    .line 179
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;->u:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 180
    .line 181
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 182
    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_8
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;

    .line 190
    .line 191
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;->u:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 192
    .line 193
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;

    .line 201
    .line 202
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;->f:Landroid/view/View;

    .line 203
    .line 204
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 205
    .line 206
    .line 207
    :goto_3
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->s:Z

    .line 208
    .line 209
    if-eqz v0, :cond_9

    .line 210
    .line 211
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->r:Z

    .line 212
    .line 213
    if-eqz v0, :cond_9

    .line 214
    .line 215
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;

    .line 220
    .line 221
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;->p:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 222
    .line 223
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;

    .line 231
    .line 232
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 233
    .line 234
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 235
    .line 236
    .line 237
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->u:Z

    .line 238
    .line 239
    if-eqz v0, :cond_c

    .line 240
    .line 241
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->t:Z

    .line 242
    .line 243
    if-eqz v0, :cond_c

    .line 244
    .line 245
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;

    .line 250
    .line 251
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;->f:Landroid/view/View;

    .line 252
    .line 253
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 254
    .line 255
    .line 256
    goto :goto_4

    .line 257
    :cond_9
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->u:Z

    .line 258
    .line 259
    if-eqz v0, :cond_a

    .line 260
    .line 261
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->t:Z

    .line 262
    .line 263
    if-nez v0, :cond_b

    .line 264
    .line 265
    :cond_a
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;

    .line 270
    .line 271
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 272
    .line 273
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 274
    .line 275
    .line 276
    :cond_b
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;

    .line 281
    .line 282
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;->f:Landroid/view/View;

    .line 283
    .line 284
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;

    .line 292
    .line 293
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;->p:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 294
    .line 295
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 296
    .line 297
    .line 298
    :cond_c
    :goto_4
    return-void

    .line 299
    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final u0(I)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->U()V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 8
    .line 9
    new-instance v1, Lti/v;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lti/v;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lti/w;

    .line 15
    .line 16
    invoke-direct {v2, p0}, Lti/w;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1, v1, v2}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->d(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/r;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->v:Lkotlinx/coroutines/r;

    .line 24
    .line 25
    return-void
.end method

.method private static final v0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;I)Lkotlin/Unit;
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 2
    .line 3
    int-to-long v1, p1

    .line 4
    const/4 p1, 0x1

    .line 5
    invoke-virtual {v0, v1, v2, p1}, Lcom/startshorts/androidplayer/utils/TimeUtil;->c(JZ)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;->u:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p0
.end method

.method private static final w0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;)Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->a:Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->j()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->dismiss()V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method private final x0(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->X()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/billing/a$g;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/viewmodel/billing/a$g;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->W(Lcom/startshorts/androidplayer/viewmodel/billing/a;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final U()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->v:Lkotlinx/coroutines/r;

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
    :cond_0
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->v:Lkotlinx/coroutines/r;

    .line 11
    .line 12
    return-void
.end method

.method public final Y()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->j:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Z()Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog$b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->k:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final a0()Lcom/startshorts/androidplayer/bean/subs/SubsSku;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    return-object v0
.end method

.method public dismiss()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->dismiss()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->U()V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->c0()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->j:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 16
    .line 17
    sget-object v4, Lud/a;->a:Lud/a;

    .line 18
    .line 19
    invoke-virtual {v4}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const/4 v5, 0x0

    .line 24
    invoke-virtual/range {v0 .. v5}, Lcom/startshorts/androidplayer/manager/event/EventManager;->a1(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Z)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public k()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->dialog_fragment_subs_expansion_new:I

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
    const-string v0, "SubsExpansionNewDialog"

    .line 2
    .line 3
    return-object v0
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lud/a;->a:Lud/a;

    .line 5
    .line 6
    invoke-virtual {v0}, Lud/a;->O()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Lud/a;->p0(Z)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/startshorts/androidplayer/ui/dialog/immersion/a;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "requireContext(...)"

    .line 23
    .line 24
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog$f;

    .line 28
    .line 29
    invoke-direct {v2, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog$f;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1, v2}, Lcom/startshorts/androidplayer/ui/dialog/immersion/a;-><init>(Landroid/content/Context;Lcom/startshorts/androidplayer/ui/dialog/immersion/a$b;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lfi/a;->show()V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
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
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 p2, 0x0

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    sget-object p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->I0()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->isDayToWeekSub()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    const/4 v0, 0x1

    .line 36
    if-ne p1, v0, :cond_1

    .line 37
    .line 38
    sget-object p1, Lqf/h;->a:Lqf/h;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 41
    .line 42
    invoke-virtual {p1, v1}, Lqf/h;->o(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    move p2, v0

    .line 49
    :cond_1
    iput-boolean p2, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->m:Z

    .line 50
    .line 51
    sget-object p1, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->R0()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->abTestValue()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->o:Ljava/lang/String;

    .line 62
    .line 63
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->i0()V

    .line 64
    .line 65
    .line 66
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->f0()V

    .line 67
    .line 68
    .line 69
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->e0()V

    .line 70
    .line 71
    .line 72
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->n0()V

    .line 73
    .line 74
    .line 75
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
    invoke-virtual {v1}, Lfk/z;->o()I

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
    invoke-virtual {v1}, Lfk/z;->o()I

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

.method public final q0(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->j:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    return-void
.end method

.method public final r0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog$b;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->k:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog$b;

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
    return-void
.end method

.method public final receiveTTPResultEvent(Lcom/startshorts/androidplayer/bean/eventbus/TTPResultEvent;)V
    .locals 3
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/TTPResultEvent;
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
    const-string v0, "receive ttppmentResultEvent"

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->q(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->X()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/billing/a$i;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/TTPResultEvent;->getOrderNo()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/TTPResultEvent;->getOrderType()Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {v1, v2, p1}, Lcom/startshorts/androidplayer/viewmodel/billing/a$i;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->W(Lcom/startshorts/androidplayer/viewmodel/billing/a;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final s0(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    return-void
.end method
