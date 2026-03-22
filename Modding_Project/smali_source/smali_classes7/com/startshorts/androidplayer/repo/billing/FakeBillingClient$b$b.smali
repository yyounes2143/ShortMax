.class public final Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$b;
.super Lyd/d;
.source "FakeBillingClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;->n(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic f:Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;

.field final synthetic g:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Lorg/json/JSONObject;

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Ljava/lang/String;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$b;->e:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$b;->f:Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$b;->g:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$b;->h:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$b;->i:Lorg/json/JSONObject;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$b;->j:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$b;->k:Ljava/lang/String;

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    const/4 p2, 0x0

    .line 17
    const-wide/16 p3, 0x0

    .line 18
    .line 19
    invoke-direct {p0, p3, p4, p1, p2}, Lyd/d;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 12

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$b;->e:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v1, "PCN220513171445751001000014572350"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$b;->f:Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;

    .line 37
    .line 38
    invoke-static {v1}, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;->q(Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;)Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-object v2, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$b;->g:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGpSkuId()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    iget-object v3, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$b;->h:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v4, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$b;->i:Lorg/json/JSONObject;

    .line 51
    .line 52
    const-string v5, "orderId"

    .line 53
    .line 54
    invoke-virtual {v4, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    .line 56
    .line 57
    const-string v5, "purchaseTime"

    .line 58
    .line 59
    invoke-virtual {v4, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    .line 61
    .line 62
    const-string p1, "purchaseToken"

    .line 63
    .line 64
    invoke-virtual {v4, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    .line 66
    .line 67
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 68
    .line 69
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const-string v0, "toString(...)"

    .line 74
    .line 75
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const-string v0, ""

    .line 79
    .line 80
    invoke-virtual {v1, v2, v3, v0, p1}, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sget-object p1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 84
    .line 85
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$b;->j:Ljava/lang/String;

    .line 86
    .line 87
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$b;->g:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGpSkuId()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    const-string v2, "\u5185\u8d2d\u6389\u5355\u6d4b\u8bd5"

    .line 94
    .line 95
    invoke-virtual {p1, v0, v1, v2}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->W(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    sget-object v3, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 99
    .line 100
    iget-object v4, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$b;->k:Ljava/lang/String;

    .line 101
    .line 102
    iget-object v5, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$b;->g:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 103
    .line 104
    iget-object p1, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$b;->f:Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;->t()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    sget-object p1, Lad/k;->a:Lad/k$a;

    .line 111
    .line 112
    invoke-virtual {p1}, Lad/k$a;->a()I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    const/4 v10, 0x4

    .line 121
    const/4 v11, 0x0

    .line 122
    const/4 v6, 0x0

    .line 123
    const-string v9, "SkuDetails is null"

    .line 124
    .line 125
    invoke-static/range {v3 .. v11}, Lcom/startshorts/androidplayer/manager/event/EventManager;->K0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    return-void
.end method
