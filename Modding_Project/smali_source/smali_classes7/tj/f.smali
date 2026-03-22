.class public final synthetic Ltj/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtnView;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtnView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ltj/f;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Ltj/f;->b:Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtnView;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ltj/f;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Ltj/f;->b:Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtnView;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtnView;->q(Landroid/content/Context;Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtnView;)Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtnBinding;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
