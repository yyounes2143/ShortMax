.class public final Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtnView$a;
.super Lyd/d;
.source "PaymentMethodBtnView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtnView;->u(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/a;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtnView;

.field final synthetic f:Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/a;

.field final synthetic g:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

.field final synthetic h:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

.field final synthetic i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtnView;Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/a;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtnView$a;->e:Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtnView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtnView$a;->f:Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/a;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtnView$a;->g:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtnView$a;->h:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtnView$a;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    const/4 p2, 0x0

    .line 13
    const-wide/16 p3, 0x0

    .line 14
    .line 15
    invoke-direct {p0, p3, p4, p1, p2}, Lyd/d;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "v"

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtnView$a;->e:Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtnView;

    .line 11
    .line 12
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtnView;->r(Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtnView;)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    if-eq v1, v2, :cond_1

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    if-eq v1, v2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v3, v0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtnView$a;->f:Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/a;

    .line 24
    .line 25
    if-eqz v3, :cond_2

    .line 26
    .line 27
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtnView$a;->e:Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtnView;

    .line 28
    .line 29
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtnView;->r(Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtnView;)I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    iget-object v6, v0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtnView$a;->h:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 34
    .line 35
    iget-object v7, v0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtnView$a;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 36
    .line 37
    const/4 v8, 0x2

    .line 38
    const/4 v9, 0x0

    .line 39
    const/4 v5, 0x0

    .line 40
    invoke-static/range {v3 .. v9}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/a$a;->b(Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/a;ILcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object v10, v0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtnView$a;->f:Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/a;

    .line 45
    .line 46
    if-eqz v10, :cond_2

    .line 47
    .line 48
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtnView$a;->e:Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtnView;

    .line 49
    .line 50
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtnView;->r(Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtnView;)I

    .line 51
    .line 52
    .line 53
    move-result v11

    .line 54
    iget-object v12, v0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtnView$a;->g:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 55
    .line 56
    const/16 v15, 0xc

    .line 57
    .line 58
    const/16 v16, 0x0

    .line 59
    .line 60
    const/4 v13, 0x0

    .line 61
    const/4 v14, 0x0

    .line 62
    invoke-static/range {v10 .. v16}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/a$a;->b(Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/a;ILcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    :goto_0
    return-void
.end method
