.class public final Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;
.super Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;
.source "SubsExpansionDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$a;,
        Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment<",
        "Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSubsExpansionDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubsExpansionDialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog\n+ 2 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,297:1\n470#2:298\n*S KotlinDebug\n*F\n+ 1 SubsExpansionDialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog\n*L\n134#1:298\n*E\n"
    }
.end annotation


# static fields
.field public static final p:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private i:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private j:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
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

.field private n:Z

.field private o:Lcom/startshorts/androidplayer/bean/subs/SubsSku;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->p:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$a;

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
    new-instance v0, Lti/q;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lti/q;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->k:Lms/i;

    .line 14
    .line 15
    new-instance v0, Lti/r;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lti/r;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->l:Lms/i;

    .line 25
    .line 26
    new-instance v0, Lti/s;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lti/s;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->m:Lms/i;

    .line 36
    .line 37
    return-void
.end method

.method public static synthetic F(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->d0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic G(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;)Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->e0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;)Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic H(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;)Landroidx/lifecycle/ViewModelProvider;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->f0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;)Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic I(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->R()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic J(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;)Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->U()Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic K(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->W()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic L(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;ILjava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->Y(ILjava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic M(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->c0(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic N(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->j0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic O(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->n0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final P()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->R()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

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

.method private final Q(I)Ljava/lang/String;
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

.method private final R()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->l:Lms/i;

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

.method private final U()Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->m:Lms/i;

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

.method private final V()Landroidx/lifecycle/ViewModelProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->k:Lms/i;

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
    const-string v0, "retention_pop_sku_pay"

    .line 2
    .line 3
    return-object v0
.end method

.method private final X(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_2

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x5

    .line 11
    if-eq p1, v0, :cond_2

    .line 12
    .line 13
    const/4 v0, 0x6

    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x7

    .line 17
    if-eq p1, v0, :cond_0

    .line 18
    .line 19
    const-string p1, ""

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    sget-object p1, Lfk/u;->a:Lfk/u;

    .line 23
    .line 24
    sget v0, Lcom/startshorts/androidplayer/R$string;->profile_subscription_view_annual_pro_card_desc:I

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
    sget v0, Lcom/startshorts/androidplayer/R$string;->profile_subscription_view_monthly_pro_card_desc:I

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lfk/u;->d(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    sget-object p1, Lfk/u;->a:Lfk/u;

    .line 41
    .line 42
    sget v0, Lcom/startshorts/androidplayer/R$string;->profile_subscription_view_weekly_pro_card_desc:I

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lfk/u;->d(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    :goto_0
    return-object p1
.end method

.method private final Y(ILjava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    move/from16 v2, p1

    .line 5
    .line 6
    if-ne v2, v1, :cond_0

    .line 7
    .line 8
    sget v3, Lcom/startshorts/androidplayer/R$string;->subscription_detail_activity_subs_success:I

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget v3, Lcom/startshorts/androidplayer/R$string;->subscription_detail_activity_subs_update_success:I

    .line 12
    .line 13
    :goto_0
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    invoke-static {v0, v3, v4, v1, v5}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->A(Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;IIILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    sget-object v6, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 19
    .line 20
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->W()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v7

    .line 24
    iget-object v8, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->o:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 25
    .line 26
    iget-object v11, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->j:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 27
    .line 28
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v14

    .line 32
    const/16 v17, 0x360

    .line 33
    .line 34
    const/16 v18, 0x0

    .line 35
    .line 36
    const/4 v12, 0x0

    .line 37
    const/4 v13, 0x0

    .line 38
    const/4 v15, 0x0

    .line 39
    const/16 v16, 0x0

    .line 40
    .line 41
    move-object/from16 v9, p4

    .line 42
    .line 43
    move-object/from16 v10, p2

    .line 44
    .line 45
    invoke-static/range {v6 .. v18}, Lcom/startshorts/androidplayer/manager/event/EventManager;->U0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->i:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$b;

    .line 49
    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    invoke-interface {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$b;->a()V

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->dismiss()V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method private final Z()V
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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->R()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    new-instance v4, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$c;

    .line 26
    .line 27
    invoke-direct {v4, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;)V

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

.method private final a0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionBinding;->c:Landroid/widget/ImageView;

    .line 8
    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$d;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$d;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final b0(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscount()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, ""

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getDiscountPriceText()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v1, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getOriginPriceText()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    :goto_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->Q(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionBinding;

    .line 37
    .line 38
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionBinding;->l:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 39
    .line 40
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionBinding;

    .line 48
    .line 49
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionBinding;->k:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionBinding;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionBinding;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 61
    .line 62
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$e;

    .line 63
    .line 64
    invoke-direct {v1, p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$e;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method private final c0(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 14

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->o:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionBinding;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionBinding;->j:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-direct {p0, v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->X(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionBinding;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionBinding;->m:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->formatRenewPrice()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionBinding;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionBinding;->n:Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;

    .line 44
    .line 45
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 46
    .line 47
    sget v2, Lcom/startshorts/androidplayer/R$string;->subs_expansion_dialog_title:I

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Lfk/u;->d(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    const-string v1, "#CD7FAC"

    .line 57
    .line 58
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    const-string v2, "#F3AE66"

    .line 63
    .line 64
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    const-string v3, "#F8E4C3"

    .line 69
    .line 70
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    const-string v4, "#F9D4A5"

    .line 75
    .line 76
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    filled-new-array {v1, v2, v3, v4}, [I

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const/4 v2, 0x4

    .line 85
    new-array v2, v2, [F

    .line 86
    .line 87
    fill-array-data v2, :array_0

    .line 88
    .line 89
    .line 90
    const/4 v3, 0x0

    .line 91
    invoke-virtual {v0, v1, v2, v3}, Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;->setColor([I[FI)V

    .line 92
    .line 93
    .line 94
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->b0(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 95
    .line 96
    .line 97
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->g0()V

    .line 98
    .line 99
    .line 100
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 101
    .line 102
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->W()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    iget-object v7, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->j:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 107
    .line 108
    sget-object v1, Lud/a;->a:Lud/a;

    .line 109
    .line 110
    invoke-virtual {v1}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    const/16 v12, 0x70

    .line 115
    .line 116
    const/4 v13, 0x0

    .line 117
    const/4 v9, 0x0

    .line 118
    const/4 v10, 0x0

    .line 119
    const/4 v11, 0x0

    .line 120
    move-object v4, v0

    .line 121
    move-object v6, p1

    .line 122
    invoke-static/range {v4 .. v13}, Lcom/startshorts/androidplayer/manager/event/EventManager;->P0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->W()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    iget-object v7, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->j:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 130
    .line 131
    invoke-virtual {v1}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    iget-boolean v9, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->n:Z

    .line 136
    .line 137
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object v10

    .line 141
    const/16 v12, 0x40

    .line 142
    .line 143
    invoke-static/range {v4 .. v13}, Lcom/startshorts/androidplayer/manager/event/EventManager;->e1(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;ZLjava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :array_0
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static final d0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->V()Landroidx/lifecycle/ViewModelProvider;

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

.method private static final e0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;)Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 4
    .line 5
    .line 6
    const-class p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 13
    .line 14
    return-object p0
.end method

.method private static final f0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;)Landroidx/lifecycle/ViewModelProvider;
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

.method private final g0()V
    .locals 7

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->j1()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->isEnable()Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    sget-object v1, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 24
    .line 25
    new-instance v4, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$preUnlockData$1;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-direct {v4, p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$preUnlockData$1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;Lrs/c;)V

    .line 29
    .line 30
    .line 31
    const/4 v5, 0x2

    .line 32
    const/4 v6, 0x0

    .line 33
    const-string v2, "preUnlockData"

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-static/range {v1 .. v6}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method private final h0()V
    .locals 10

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->a:Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->B()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->o:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->w(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->o:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    :goto_0
    if-eqz v0, :cond_3

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->P()V

    .line 37
    .line 38
    .line 39
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 40
    .line 41
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->W()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->j:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 46
    .line 47
    const/16 v8, 0x38

    .line 48
    .line 49
    const/4 v9, 0x0

    .line 50
    const-string v3, "other"

    .line 51
    .line 52
    const/4 v5, 0x0

    .line 53
    const/4 v6, 0x0

    .line 54
    const/4 v7, 0x0

    .line 55
    invoke-static/range {v1 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->W0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->dismiss()V

    .line 60
    .line 61
    .line 62
    :goto_2
    return-void
.end method

.method private final i0(Ljava/util/List;)V
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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->R()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

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

.method private final j0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->o:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

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
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->dismiss()V

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
    invoke-direct {p0, v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->i0(Ljava/util/List;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private final n0(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->R()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

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
.method public final S()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->j:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    return-object v0
.end method

.method public final T()Lcom/startshorts/androidplayer/bean/subs/SubsSku;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->o:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

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
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->W()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->o:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 11
    .line 12
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->j:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 13
    .line 14
    sget-object v4, Lud/a;->a:Lud/a;

    .line 15
    .line 16
    invoke-virtual {v4}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    iget-boolean v5, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->n:Z

    .line 21
    .line 22
    invoke-virtual/range {v0 .. v5}, Lcom/startshorts/androidplayer/manager/event/EventManager;->a1(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Z)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public k()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->dialog_fragment_subs_expansion:I

    .line 2
    .line 3
    return v0
.end method

.method public final k0(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->j:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    return-void
.end method

.method public final l0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$b;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->i:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$b;

    .line 2
    .line 3
    return-void
.end method

.method public final m0(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->o:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    return-void
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
    const-string v0, "SubsExpansionDialog"

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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    const-string p2, "isFromTaskCenter"

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    :cond_1
    iput-boolean p2, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->n:Z

    .line 32
    .line 33
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->Z()V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->a0()V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->h0()V

    .line 40
    .line 41
    .line 42
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
