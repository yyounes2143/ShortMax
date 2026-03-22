.class public final Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;
.super Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment;
.source "Ad2CoinsDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAd2CoinsDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Ad2CoinsDialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Color.kt\nandroidx/core/graphics/ColorKt\n+ 4 ColorDrawable.kt\nandroidx/core/graphics/drawable/ColorDrawableKt\n*L\n1#1,325:1\n1#2:326\n470#3:327\n470#3:328\n28#4:329\n*S KotlinDebug\n*F\n+ 1 Ad2CoinsDialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog\n*L\n269#1:327\n274#1:328\n299#1:329\n*E\n"
    }
.end annotation


# static fields
.field public static final m:Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private b:Lcom/startshorts/androidplayer/databinding/AdToCoinsDialogBinding;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private d:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private e:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private g:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private i:Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private j:Z

.field private final k:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final l:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->m:Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/b;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/b;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->c:Lkotlin/jvm/functions/Function0;

    .line 10
    .line 11
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/c;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/c;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->d:Lkotlin/jvm/functions/Function1;

    .line 17
    .line 18
    const-string v0, ""

    .line 19
    .line 20
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->f:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/d;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/d;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->k:Lms/i;

    .line 32
    .line 33
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/e;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/e;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->l:Lms/i;

    .line 43
    .line 44
    return-void
.end method

.method private final A()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->l:Lms/i;

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

.method private final E()Landroidx/lifecycle/ViewModelProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->k:Lms/i;

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

.method private final F(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->j:Z

    .line 5
    .line 6
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 7
    .line 8
    sget v2, Lcom/startshorts/androidplayer/R$string;->top_up_fragment_recharge_success:I

    .line 9
    .line 10
    const/4 v3, 0x2

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    invoke-static {v1, v2, v5, v3, v4}, Lfk/u;->j(Lfk/u;IIILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    sget-object v6, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 17
    .line 18
    iget-object v8, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->e:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 19
    .line 20
    iget-object v11, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->g:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 21
    .line 22
    sget-object v1, Lud/a;->a:Lud/a;

    .line 23
    .line 24
    invoke-virtual {v1}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 25
    .line 26
    .line 27
    move-result-object v12

    .line 28
    const/16 v16, 0x1c0

    .line 29
    .line 30
    const/16 v17, 0x0

    .line 31
    .line 32
    const-string v7, "ad_to_purchase"

    .line 33
    .line 34
    const/4 v13, 0x0

    .line 35
    const/4 v14, 0x0

    .line 36
    const/4 v15, 0x0

    .line 37
    move-object/from16 v9, p2

    .line 38
    .line 39
    move-object/from16 v10, p1

    .line 40
    .line 41
    invoke-static/range {v6 .. v17}, Lcom/startshorts/androidplayer/manager/event/EventManager;->T0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->c:Lkotlin/jvm/functions/Function0;

    .line 45
    .line 46
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->dismiss()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method private final G(Ljava/util/List;)V
    .locals 4
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
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment;->g()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->e:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static {v0, p1, v3, v1, v2}, Ljk/u;->l(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Ljava/util/List;ZILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->I(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private final H()V
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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->A()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    new-instance v4, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog$b;

    .line 26
    .line 27
    invoke-direct {v4, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog$b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;)V

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

.method private final I(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->R()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->b:Lcom/startshorts/androidplayer/databinding/AdToCoinsDialogBinding;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/AdToCoinsDialogBinding;->c:Landroid/widget/ImageView;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog$c;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog$c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->b:Lcom/startshorts/androidplayer/databinding/AdToCoinsDialogBinding;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/AdToCoinsDialogBinding;->n:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog$d;

    .line 29
    .line 30
    invoke-direct {v1, p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog$d;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method private static final J(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->E()Landroidx/lifecycle/ViewModelProvider;

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

.method private static final K(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;)Landroidx/lifecycle/ViewModelProvider;
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

.method private static final L(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->dismiss()V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method private static final M(Z)Lkotlin/Unit;
    .locals 0

    .line 1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final N()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object v0
.end method

.method private final O()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->i:Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->getSkuResp()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->e:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->j()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private final P()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->e:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGpSkuId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->dismiss()V

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
    invoke-virtual {v3}, Lle/h;->a()Ljava/lang/String;

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
    invoke-virtual {p0, v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->Q(Ljava/util/List;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private final Y(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->A()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/billing/a$f;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/viewmodel/billing/a$f;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->W(Lcom/startshorts/androidplayer/viewmodel/billing/a;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static synthetic m(Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->M(Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic n()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->N()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic o(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->L(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic p(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;)Landroidx/lifecycle/ViewModelProvider;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->K(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;)Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic q(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->J(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic r(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->z()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic s(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->A()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic t(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->F(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic u(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->G(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic v(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->P()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic w(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->Y(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final x()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->i:Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->getSkuResp()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method private final y()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->A()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/billing/a$c;

    .line 6
    .line 7
    const-string v2, "ad_2_coin_dialog"

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

.method private final z()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->f:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "mission_center"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const-string v0, "c"

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string v1, "immerse_page"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const-string v1, ""

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->h:Ljava/lang/String;

    .line 25
    .line 26
    const-string v2, "A"

    .line 27
    .line 28
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    const-string v0, "a"

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->h:Ljava/lang/String;

    .line 38
    .line 39
    const-string v2, "B"

    .line 40
    .line 41
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    const-string v0, "b"

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    move-object v0, v1

    .line 51
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final B()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->g:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    return-object v0
.end method

.method public final C()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final D()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->e:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Q(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzc/g;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "list"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->A()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/billing/a$h;

    .line 11
    .line 12
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/viewmodel/billing/a$h;-><init>(Ljava/util/List;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->W(Lcom/startshorts/androidplayer/viewmodel/billing/a;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final R()V
    .locals 28
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->e:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 4
    .line 5
    if-eqz v1, :cond_7

    .line 6
    .line 7
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->b:Lcom/startshorts/androidplayer/databinding/AdToCoinsDialogBinding;

    .line 8
    .line 9
    if-eqz v2, :cond_7

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getCoins()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuType()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const/4 v5, 0x7

    .line 20
    const/4 v6, 0x0

    .line 21
    if-ne v4, v5, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getKeepGiveCoins()Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    :goto_0
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getProductGiveCoins()Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    :goto_1
    add-int v4, v3, v6

    .line 42
    .line 43
    div-int/lit8 v5, v4, 0xa

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getPriceText()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    if-nez v7, :cond_2

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getOriginPriceText()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    :cond_2
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->f:Ljava/lang/String;

    .line 56
    .line 57
    const-string v8, "immerse_page"

    .line 58
    .line 59
    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_3

    .line 64
    .line 65
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 66
    .line 67
    sget v4, Lcom/startshorts/androidplayer/R$string;->ad2pay_immersion_title:I

    .line 68
    .line 69
    invoke-virtual {v1, v4}, Lfk/u;->d(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    sget v5, Lcom/startshorts/androidplayer/R$string;->ad2pay_immersion_desc:I

    .line 74
    .line 75
    invoke-virtual {v1, v5}, Lfk/u;->d(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iget-object v5, v2, Lcom/startshorts/androidplayer/databinding/AdToCoinsDialogBinding;->l:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 80
    .line 81
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    move-object/from16 v22, v4

    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_3
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 88
    .line 89
    sget v8, Lcom/startshorts/androidplayer/R$string;->ad2pay_rewards_title:I

    .line 90
    .line 91
    invoke-virtual {v1, v8}, Lfk/u;->d(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    sget v9, Lcom/startshorts/androidplayer/R$string;->ad2pay_rewards_desc:I

    .line 96
    .line 97
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    const-string v10, ""

    .line 102
    .line 103
    if-nez v7, :cond_4

    .line 104
    .line 105
    move-object v11, v10

    .line 106
    goto :goto_2

    .line 107
    :cond_4
    move-object v11, v7

    .line 108
    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    filled-new-array {v4, v11, v5}, [Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-virtual {v1, v9, v4}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v12

    .line 120
    iget-object v11, v2, Lcom/startshorts/androidplayer/databinding/AdToCoinsDialogBinding;->l:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 121
    .line 122
    const-string v1, "tvDesc"

    .line 123
    .line 124
    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    if-nez v7, :cond_5

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_5
    move-object v10, v7

    .line 131
    :goto_3
    filled-new-array {v10}, [Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v13

    .line 135
    const-string v1, "#F6610F"

    .line 136
    .line 137
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    move-result v14

    .line 141
    sget-object v1, Lyf/a;->a:Lyf/a;

    .line 142
    .line 143
    invoke-virtual {v1}, Lyf/a;->g()Landroid/graphics/Typeface;

    .line 144
    .line 145
    .line 146
    move-result-object v15

    .line 147
    const/16 v19, 0x70

    .line 148
    .line 149
    const/16 v20, 0x0

    .line 150
    .line 151
    const/16 v16, 0x0

    .line 152
    .line 153
    const/16 v17, 0x0

    .line 154
    .line 155
    const/16 v18, 0x0

    .line 156
    .line 157
    invoke-static/range {v11 .. v20}, Ljk/y;->l(Landroid/widget/TextView;Ljava/lang/String;[Ljava/lang/String;ILandroid/graphics/Typeface;FZLjava/util/List;ILjava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    move-object/from16 v22, v8

    .line 161
    .line 162
    :goto_4
    iget-object v1, v2, Lcom/startshorts/androidplayer/databinding/AdToCoinsDialogBinding;->o:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 163
    .line 164
    const-string v4, "tvTitle"

    .line 165
    .line 166
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    const-string v4, "#FE6D0C"

    .line 170
    .line 171
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    const-string v5, "#FF61D5"

    .line 176
    .line 177
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    filled-new-array {v4, v5}, [I

    .line 182
    .line 183
    .line 184
    move-result-object v23

    .line 185
    const/high16 v4, 0x3f800000    # 1.0f

    .line 186
    .line 187
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 188
    .line 189
    .line 190
    move-result-object v25

    .line 191
    const/16 v26, 0x4

    .line 192
    .line 193
    const/16 v27, 0x0

    .line 194
    .line 195
    const/16 v24, 0x0

    .line 196
    .line 197
    move-object/from16 v21, v1

    .line 198
    .line 199
    invoke-static/range {v21 .. v27}, Ljk/y;->h(Landroid/widget/TextView;Ljava/lang/String;[I[FLjava/lang/Float;ILjava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    iget-object v1, v2, Lcom/startshorts/androidplayer/databinding/AdToCoinsDialogBinding;->j:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 203
    .line 204
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    .line 210
    .line 211
    iget-object v1, v2, Lcom/startshorts/androidplayer/databinding/AdToCoinsDialogBinding;->h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 212
    .line 213
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    .line 219
    .line 220
    if-lez v6, :cond_6

    .line 221
    .line 222
    if-lez v3, :cond_6

    .line 223
    .line 224
    mul-int/lit8 v6, v6, 0x64

    .line 225
    .line 226
    div-int/2addr v6, v3

    .line 227
    iget-object v1, v2, Lcom/startshorts/androidplayer/databinding/AdToCoinsDialogBinding;->m:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 228
    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .line 233
    .line 234
    const/16 v4, 0x2b

    .line 235
    .line 236
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const/16 v4, 0x25

    .line 243
    .line 244
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    .line 253
    .line 254
    iget-object v1, v2, Lcom/startshorts/androidplayer/databinding/AdToCoinsDialogBinding;->m:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 255
    .line 256
    invoke-static {v1}, Ljk/b0;->l(Landroid/view/View;)V

    .line 257
    .line 258
    .line 259
    iget-object v1, v2, Lcom/startshorts/androidplayer/databinding/AdToCoinsDialogBinding;->f:Landroid/widget/ImageView;

    .line 260
    .line 261
    invoke-static {v1}, Ljk/b0;->l(Landroid/view/View;)V

    .line 262
    .line 263
    .line 264
    goto :goto_5

    .line 265
    :cond_6
    iget-object v1, v2, Lcom/startshorts/androidplayer/databinding/AdToCoinsDialogBinding;->m:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 266
    .line 267
    invoke-static {v1}, Ljk/b0;->d(Landroid/view/View;)V

    .line 268
    .line 269
    .line 270
    iget-object v1, v2, Lcom/startshorts/androidplayer/databinding/AdToCoinsDialogBinding;->f:Landroid/widget/ImageView;

    .line 271
    .line 272
    invoke-static {v1}, Ljk/b0;->d(Landroid/view/View;)V

    .line 273
    .line 274
    .line 275
    :goto_5
    iget-object v1, v2, Lcom/startshorts/androidplayer/databinding/AdToCoinsDialogBinding;->n:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 276
    .line 277
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    .line 283
    .line 284
    :cond_7
    return-void
.end method

.method public final S(Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->i:Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;

    .line 2
    .line 3
    return-void
.end method

.method public final T(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->g:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    return-void
.end method

.method public final U(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->f:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final V(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final W(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->d:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    return-void
.end method

.method public final X(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->c:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->d:Lkotlin/jvm/functions/Function1;

    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->j:Z

    .line 7
    .line 8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public j()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment;->j()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->e:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->dismiss()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->y()V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "onCreateDialog(...)"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 21
    .line 22
    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p3, "inflater"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget p3, Lcom/startshorts/androidplayer/R$layout;->ad_to_coins_dialog:I

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/startshorts/androidplayer/databinding/AdToCoinsDialogBinding;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object v0, p1, Lcom/startshorts/androidplayer/databinding/AdToCoinsDialogBinding;->c:Landroid/widget/ImageView;

    .line 18
    .line 19
    const-string p2, "icCloseDialog"

    .line 20
    .line 21
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/purchase/a;

    .line 25
    .line 26
    invoke-direct {v3, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/a;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;)V

    .line 27
    .line 28
    .line 29
    const/4 v4, 0x1

    .line 30
    const/4 v5, 0x0

    .line 31
    const-wide/16 v1, 0x0

    .line 32
    .line 33
    invoke-static/range {v0 .. v5}, Ljk/b0;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p1, Lcom/startshorts/androidplayer/databinding/AdToCoinsDialogBinding;->g:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 37
    .line 38
    const-string p3, "pageStateView"

    .line 39
    .line 40
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment;->k(Lcom/hades/aar/pagestate/StateViewGroup;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 p1, 0x0

    .line 48
    :goto_0
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->b:Lcom/startshorts/androidplayer/databinding/AdToCoinsDialogBinding;

    .line 49
    .line 50
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string p2, "getRoot(...)"

    .line 58
    .line 59
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
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
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->x()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment;->l()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->H()V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->O()V

    .line 19
    .line 20
    .line 21
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->f:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->g:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 26
    .line 27
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->e:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGpSkuId()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    :goto_0
    move-object v5, p1

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    const/4 p1, 0x0

    .line 38
    goto :goto_0

    .line 39
    :goto_1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->z()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    const-string v2, "ad_to_purchase"

    .line 44
    .line 45
    invoke-virtual/range {v1 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->X(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
