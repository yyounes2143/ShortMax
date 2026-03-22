.class public final Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "PaymentMethodBtn1View.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View$a;,
        Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final h:Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:Z

.field private b:Z

.field public c:Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn1Binding;

.field private d:I

.field private e:Lcom/startshorts/androidplayer/bean/subs/SubsSku;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View;->h:Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View;->a:Z

    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View;->d:I

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View;->w(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic q(Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View;->x(Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic r(Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View;->a:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic s(Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View;)Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View$b;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0
.end method

.method public static final synthetic t(Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View;->a:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic u(Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View;->y()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final v()V
    .locals 3

    .line 1
    sget-object v0, Lng/e;->a:Lng/e;

    .line 2
    .line 3
    const-string v1, "rememberMyPayType"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lng/e;->i(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget v1, Lcom/startshorts/androidplayer/R$string;->remember_my_paypal:I

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn1Binding;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn1Binding;->h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private static final x(Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View;->d:I

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    if-eq p1, v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View;->e:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View;->f:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 19
    .line 20
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p0
.end method

.method private final y()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View;->a:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn1Binding;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn1Binding;->b:Landroid/widget/ImageView;

    .line 14
    .line 15
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->remenber_paypal_selected:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn1Binding;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn1Binding;->b:Landroid/widget/ImageView;

    .line 26
    .line 27
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->remenber_paypal_unselected:I

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn1Binding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View;->c:Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn1Binding;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "binding"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getMCoinDate()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View;->f:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMSkuDate()Lcom/startshorts/androidplayer/bean/subs/SubsSku;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View;->e:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMSkuPaymentMethod()Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View;->g:Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setBinding(Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn1Binding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn1Binding;
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View;->c:Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn1Binding;

    .line 7
    .line 8
    return-void
.end method

.method public final setCoinData(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "sku"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View;->e:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View;->f:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View;->d:I

    .line 13
    .line 14
    return-void
.end method

.method public final setMCoinDate(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View;->f:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 2
    .line 3
    return-void
.end method

.method public final setMSkuDate(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View;->e:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    return-void
.end method

.method public final setMSkuPaymentMethod(Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View;->g:Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 2
    .line 3
    return-void
.end method

.method public final setSkuData(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "sku"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View;->e:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View;->f:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View;->d:I

    .line 13
    .line 14
    return-void
.end method

.method public final w(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p2, "context"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 p2, 0x1

    .line 11
    invoke-static {p1, p0, p2}, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn1Binding;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn1Binding;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View;->setBinding(Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn1Binding;)V

    .line 16
    .line 17
    .line 18
    sget-object p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a0()Lcom/startshorts/androidplayer/bean/account/Account;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/account/Account;->getSupportOneTouchPayment()Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p1, 0x0

    .line 38
    :goto_0
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View;->b:Z

    .line 39
    .line 40
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View;->v()V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View;->y()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn1Binding;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn1Binding;->c:Landroid/widget/LinearLayout;

    .line 51
    .line 52
    new-instance p2, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View$c;

    .line 53
    .line 54
    invoke-direct {p2, p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View$c;-><init>(Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn1Binding;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iget-object v0, p1, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn1Binding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 65
    .line 66
    const-string p1, "clPayBtn"

    .line 67
    .line 68
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    new-instance v3, Ltj/c;

    .line 72
    .line 73
    invoke-direct {v3, p0}, Ltj/c;-><init>(Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn1View;)V

    .line 74
    .line 75
    .line 76
    const/4 v4, 0x1

    .line 77
    const/4 v5, 0x0

    .line 78
    const-wide/16 v1, 0x0

    .line 79
    .line 80
    invoke-static/range {v0 .. v5}, Ljk/b0;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method
