.class public final Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;
.super Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;
.source "RetainDiscountDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment<",
        "Lcom/startshorts/androidplayer/databinding/DialogRetainFragmentDiscountBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRetainDiscountDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RetainDiscountDialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,330:1\n1#2:331\n470#3:332\n*S KotlinDebug\n*F\n+ 1 RetainDiscountDialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog\n*L\n151#1:332\n*E\n"
    }
.end annotation


# static fields
.field public static final n:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private k:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->n:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;-><init>(Lcom/startshorts/androidplayer/bean/subs/SubsSku;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;-><init>()V

    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 3
    const-string p1, ""

    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->j:Ljava/lang/String;

    .line 4
    new-instance p1, Lti/a;

    invoke-direct {p1, p0}, Lti/a;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;)V

    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    move-result-object p1

    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->l:Lms/i;

    .line 5
    new-instance p1, Lti/b;

    invoke-direct {p1, p0}, Lti/b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;)V

    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    move-result-object p1

    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->m:Lms/i;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/bean/subs/SubsSku;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;-><init>(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    return-void
.end method

.method public static synthetic F(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->c0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic G(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;)Landroidx/lifecycle/ViewModelProvider;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->d0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;)Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic H(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->j0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic I(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->k0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic J(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->S()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic K(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->W()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic L(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;ILjava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->X(ILjava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic M(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->b0(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic N(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->f0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic O(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->l0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final Q()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->S()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

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

.method private final R(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Ljk/u;->c(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Ljk/h;->b(F)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method private final S()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->m:Lms/i;

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

.method private final V()Landroidx/lifecycle/ViewModelProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->l:Lms/i;

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

.method private final W()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private final X(ILjava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V
    .locals 18

    .line 1
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 2
    .line 3
    sget v1, Lcom/startshorts/androidplayer/R$string;->subscription_detail_activity_subs_success:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-static {v0, v1, v4, v2, v3}, Lfk/u;->j(Lfk/u;IIILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object v5, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 12
    .line 13
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->W()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    move-object/from16 v0, p0

    .line 18
    .line 19
    iget-object v7, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 20
    .line 21
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v13

    .line 25
    const/16 v16, 0x360

    .line 26
    .line 27
    const/16 v17, 0x0

    .line 28
    .line 29
    const/4 v10, 0x0

    .line 30
    const/4 v11, 0x0

    .line 31
    const/4 v12, 0x0

    .line 32
    const/4 v14, 0x0

    .line 33
    const/4 v15, 0x0

    .line 34
    move-object/from16 v8, p4

    .line 35
    .line 36
    move-object/from16 v9, p2

    .line 37
    .line 38
    invoke-static/range {v5 .. v17}, Lcom/startshorts/androidplayer/manager/event/EventManager;->U0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->dismiss()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private final Y()V
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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->S()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    new-instance v4, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog$b;

    .line 26
    .line 27
    invoke-direct {v4, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog$b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;)V

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

.method private final Z()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogRetainFragmentDiscountBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogRetainFragmentDiscountBinding;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 8
    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog$c;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog$c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;)V

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
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogRetainFragmentDiscountBinding;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogRetainFragmentDiscountBinding;->e:Landroid/widget/ImageView;

    .line 24
    .line 25
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog$d;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog$d;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private final a0()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogRetainFragmentDiscountBinding;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/startshorts/androidplayer/databinding/DialogRetainFragmentDiscountBinding;->x:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    const-string v0, "tvTitle"

    .line 10
    .line 11
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->formateDiscountTitle()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const-string v0, "#F3AD63"

    .line 29
    .line 30
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const-string v4, "#FFFAE7"

    .line 35
    .line 36
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    filled-new-array {v3, v4, v0}, [I

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    const/4 v0, 0x3

    .line 49
    new-array v4, v0, [F

    .line 50
    .line 51
    fill-array-data v4, :array_0

    .line 52
    .line 53
    .line 54
    const/16 v6, 0x8

    .line 55
    .line 56
    const/4 v7, 0x0

    .line 57
    const/4 v5, 0x0

    .line 58
    invoke-static/range {v1 .. v7}, Ljk/y;->h(Landroid/widget/TextView;Ljava/lang/String;[I[FLjava/lang/Float;ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    nop

    .line 63
    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private final b0(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 14

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 10
    .line 11
    .line 12
    const/high16 v2, 0x40000000    # 2.0f

    .line 13
    .line 14
    invoke-static {v2}, Ljk/g;->a(F)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    int-to-float v2, v2

    .line 19
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    sget v3, Lcom/startshorts/androidplayer/R$color;->str_color_fedaa4:I

    .line 29
    .line 30
    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lcom/startshorts/androidplayer/databinding/DialogRetainFragmentDiscountBinding;

    .line 42
    .line 43
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/DialogRetainFragmentDiscountBinding;->r:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 44
    .line 45
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Lcom/startshorts/androidplayer/databinding/DialogRetainFragmentDiscountBinding;

    .line 53
    .line 54
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/DialogRetainFragmentDiscountBinding;->v:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 55
    .line 56
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Lcom/startshorts/androidplayer/databinding/DialogRetainFragmentDiscountBinding;

    .line 64
    .line 65
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/DialogRetainFragmentDiscountBinding;->s:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 66
    .line 67
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 68
    .line 69
    .line 70
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->a0()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogRetainFragmentDiscountBinding;

    .line 78
    .line 79
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogRetainFragmentDiscountBinding;->m:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->formatDiscountTxt()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogRetainFragmentDiscountBinding;

    .line 93
    .line 94
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogRetainFragmentDiscountBinding;->p:Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;

    .line 95
    .line 96
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 97
    .line 98
    const/4 v3, 0x0

    .line 99
    if-eqz v2, :cond_1

    .line 100
    .line 101
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getOriginPriceText()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    if-eqz v2, :cond_1

    .line 106
    .line 107
    invoke-static {v2}, Ljk/v;->q(Ljava/lang/String;)Lkotlin/Pair;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    goto :goto_0

    .line 112
    :cond_1
    move-object v2, v3

    .line 113
    :goto_0
    if-eqz v2, :cond_2

    .line 114
    .line 115
    invoke-virtual {v2}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    check-cast v2, Ljava/lang/CharSequence;

    .line 120
    .line 121
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    .line 123
    .line 124
    :cond_2
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogRetainFragmentDiscountBinding;

    .line 129
    .line 130
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogRetainFragmentDiscountBinding;->n:Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;

    .line 131
    .line 132
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->R(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogRetainFragmentDiscountBinding;

    .line 144
    .line 145
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogRetainFragmentDiscountBinding;->o:Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;

    .line 146
    .line 147
    sget v2, Lcom/startshorts/androidplayer/R$string;->ad2pay_subscribe_discount:I

    .line 148
    .line 149
    const-string v4, ""

    .line 150
    .line 151
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    invoke-virtual {p0, v2, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogRetainFragmentDiscountBinding;

    .line 167
    .line 168
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogRetainFragmentDiscountBinding;->u:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 169
    .line 170
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 171
    .line 172
    if-eqz v2, :cond_3

    .line 173
    .line 174
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getDiscountPriceText()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    goto :goto_1

    .line 179
    :cond_3
    move-object v2, v3

    .line 180
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogRetainFragmentDiscountBinding;

    .line 188
    .line 189
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogRetainFragmentDiscountBinding;->t:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 190
    .line 191
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 192
    .line 193
    if-eqz v2, :cond_4

    .line 194
    .line 195
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getOriginPriceText()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    goto :goto_2

    .line 200
    :cond_4
    move-object v2, v3

    .line 201
    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogRetainFragmentDiscountBinding;

    .line 209
    .line 210
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogRetainFragmentDiscountBinding;->t:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 211
    .line 212
    const-string v2, "tvOriginPrice"

    .line 213
    .line 214
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    const/4 v2, 0x1

    .line 218
    invoke-static {v0, v2}, Ljk/y;->j(Landroid/widget/TextView;Z)V

    .line 219
    .line 220
    .line 221
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 222
    .line 223
    if-eqz v0, :cond_5

    .line 224
    .line 225
    invoke-static {v0}, Ljk/u;->d(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)I

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    :cond_5
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 230
    .line 231
    if-eqz v0, :cond_6

    .line 232
    .line 233
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getExpireTime()J

    .line 234
    .line 235
    .line 236
    move-result-wide v4

    .line 237
    goto :goto_3

    .line 238
    :cond_6
    const-wide/16 v4, 0x0

    .line 239
    .line 240
    :goto_3
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 241
    .line 242
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 243
    .line 244
    .line 245
    move-result-wide v6

    .line 246
    sub-long/2addr v4, v6

    .line 247
    const/16 v0, 0x3e8

    .line 248
    .line 249
    int-to-long v6, v0

    .line 250
    div-long/2addr v4, v6

    .line 251
    long-to-int v0, v4

    .line 252
    if-lez v0, :cond_7

    .line 253
    .line 254
    if-lez v1, :cond_7

    .line 255
    .line 256
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->i0(I)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogRetainFragmentDiscountBinding;

    .line 264
    .line 265
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogRetainFragmentDiscountBinding;->k:Landroid/widget/LinearLayout;

    .line 266
    .line 267
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 268
    .line 269
    .line 270
    goto :goto_4

    .line 271
    :cond_7
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->P()V

    .line 272
    .line 273
    .line 274
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogRetainFragmentDiscountBinding;

    .line 279
    .line 280
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogRetainFragmentDiscountBinding;->k:Landroid/widget/LinearLayout;

    .line 281
    .line 282
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 283
    .line 284
    .line 285
    :goto_4
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 286
    .line 287
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->W()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v5

    .line 291
    sget-object v1, Lud/a;->a:Lud/a;

    .line 292
    .line 293
    invoke-virtual {v1}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 294
    .line 295
    .line 296
    move-result-object v8

    .line 297
    const/16 v12, 0x34

    .line 298
    .line 299
    const/4 v13, 0x0

    .line 300
    const/4 v7, 0x0

    .line 301
    const/4 v9, 0x0

    .line 302
    const/4 v10, 0x0

    .line 303
    const-string v11, "coupon_pop_up_window"

    .line 304
    .line 305
    move-object v4, v0

    .line 306
    move-object v6, p1

    .line 307
    invoke-static/range {v4 .. v13}, Lcom/startshorts/androidplayer/manager/event/EventManager;->P0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 308
    .line 309
    .line 310
    new-instance v6, Landroid/os/Bundle;

    .line 311
    .line 312
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 313
    .line 314
    .line 315
    const-string p1, "from"

    .line 316
    .line 317
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->j:Ljava/lang/String;

    .line 318
    .line 319
    invoke-virtual {v6, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    const-string p1, "popup_name"

    .line 323
    .line 324
    const-string v1, "coupon_pop_up_window"

    .line 325
    .line 326
    invoke-virtual {v6, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 330
    .line 331
    if-eqz p1, :cond_8

    .line 332
    .line 333
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v3

    .line 337
    :cond_8
    const-string p1, "sku_id"

    .line 338
    .line 339
    invoke-virtual {v6, p1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    const-string p1, "popup_type"

    .line 343
    .line 344
    const-string v1, "modal"

    .line 345
    .line 346
    invoke-virtual {v6, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 350
    .line 351
    const/4 v9, 0x4

    .line 352
    const/4 v10, 0x0

    .line 353
    const-string v5, "popup_show"

    .line 354
    .line 355
    const-wide/16 v7, 0x0

    .line 356
    .line 357
    move-object v4, v0

    .line 358
    invoke-static/range {v4 .. v10}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 359
    .line 360
    .line 361
    return-void
.end method

.method private static final c0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->V()Landroidx/lifecycle/ViewModelProvider;

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

.method private static final d0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;)Landroidx/lifecycle/ViewModelProvider;
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

.method private final e0()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    sget-object v0, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->a:Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->w(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Z)V

    .line 28
    .line 29
    .line 30
    sget-object v0, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;->a:Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;->l()V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->Q()V

    .line 36
    .line 37
    .line 38
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 39
    .line 40
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->W()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const/16 v8, 0x3c

    .line 45
    .line 46
    const/4 v9, 0x0

    .line 47
    const-string v3, "other"

    .line 48
    .line 49
    const/4 v4, 0x0

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
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->dismiss()V

    .line 58
    .line 59
    .line 60
    :goto_2
    return-void
.end method

.method private final f0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

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
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->dismiss()V

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
    invoke-direct {p0, v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->g0(Ljava/util/List;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private final g0(Ljava/util/List;)V
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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->S()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

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

.method private final i0(I)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->P()V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 8
    .line 9
    new-instance v1, Lti/c;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lti/c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lti/d;

    .line 15
    .line 16
    invoke-direct {v2, p0}, Lti/d;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1, v1, v2}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->d(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/r;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->k:Lkotlinx/coroutines/r;

    .line 24
    .line 25
    return-void
.end method

.method private static final j0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;I)Lkotlin/Unit;
    .locals 9

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
    move-result-object v3

    .line 9
    const-string v0, ":"

    .line 10
    .line 11
    filled-new-array {v0}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    const/4 v7, 0x6

    .line 16
    const/4 v8, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v6, 0x0

    .line 19
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/String;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/startshorts/androidplayer/databinding/DialogRetainFragmentDiscountBinding;

    .line 36
    .line 37
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/DialogRetainFragmentDiscountBinding;->r:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 38
    .line 39
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->t0(Ljava/util/List;I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Ljava/lang/String;

    .line 47
    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogRetainFragmentDiscountBinding;

    .line 55
    .line 56
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogRetainFragmentDiscountBinding;->s:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 57
    .line 58
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    const/4 p1, 0x2

    .line 62
    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->t0(Ljava/util/List;I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Ljava/lang/String;

    .line 67
    .line 68
    if-eqz p1, :cond_2

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    check-cast p0, Lcom/startshorts/androidplayer/databinding/DialogRetainFragmentDiscountBinding;

    .line 75
    .line 76
    iget-object p0, p0, Lcom/startshorts/androidplayer/databinding/DialogRetainFragmentDiscountBinding;->v:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 77
    .line 78
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 82
    .line 83
    return-object p0
.end method

.method private static final k0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;)Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->a:Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->j()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->dismiss()V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method private final l0(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->S()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

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
.method public final P()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->k:Lkotlinx/coroutines/r;

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
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->k:Lkotlinx/coroutines/r;

    .line 11
    .line 12
    return-void
.end method

.method public final T()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final U()Lcom/startshorts/androidplayer/bean/subs/SubsSku;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

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
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lcom/startshorts/androidplayer/bean/eventbus/SubsExpansionShowEvent;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/eventbus/SubsExpansionShowEvent;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lau/c;->l(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->P()V

    .line 17
    .line 18
    .line 19
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 20
    .line 21
    new-instance v4, Landroid/os/Bundle;

    .line 22
    .line 23
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v0, "from"

    .line 27
    .line 28
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->j:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v0, "popup_name"

    .line 34
    .line 35
    const-string v1, "coupon_pop_up_window"

    .line 36
    .line 37
    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 41
    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 v0, 0x0

    .line 50
    :goto_0
    const-string v1, "sku_id"

    .line 51
    .line 52
    invoke-virtual {v4, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string v0, "popup_type"

    .line 56
    .line 57
    const-string v1, "modal"

    .line 58
    .line 59
    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 63
    .line 64
    const/4 v7, 0x4

    .line 65
    const/4 v8, 0x0

    .line 66
    const-string v3, "popup_close"

    .line 67
    .line 68
    const-wide/16 v5, 0x0

    .line 69
    .line 70
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final h0(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->j:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public k()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->dialog_retain_fragment_discount:I

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
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->a0()V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->Z()V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->Y()V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->e0()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public p()I
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
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
