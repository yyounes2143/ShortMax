.class public final Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$a;
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

.field final synthetic f:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

.field final synthetic g:Lorg/json/JSONObject;

.field final synthetic h:Ljava/lang/String;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$a;->e:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$a;->f:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$a;->g:Lorg/json/JSONObject;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$a;->h:Ljava/lang/String;

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    const/4 p2, 0x0

    .line 11
    const-wide/16 p3, 0x0

    .line 12
    .line 13
    invoke-direct {p0, p3, p4, p1, p2}, Lyd/d;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 4

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$a;->e:Lkotlin/jvm/internal/Ref$BooleanRef;

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
    move-result-wide v1

    .line 15
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v2, "PCN220513171445751001000014572350"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    new-instance v2, Lzc/f;

    .line 37
    .line 38
    invoke-direct {v2}, Lzc/f;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, p1}, Lzc/f;->l(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v3, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$a;->f:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 45
    .line 46
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGpSkuId()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    filled-new-array {v3}, [Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v2, v3}, Lzc/f;->o(Ljava/util/List;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, p1}, Lzc/f;->q(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v0}, Lzc/f;->s(I)V

    .line 65
    .line 66
    .line 67
    const-string v0, "00001111"

    .line 68
    .line 69
    invoke-virtual {v2, v0}, Lzc/f;->t(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v1}, Lzc/f;->r(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$a;->g:Lorg/json/JSONObject;

    .line 76
    .line 77
    const-string v3, "orderId"

    .line 78
    .line 79
    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    .line 81
    .line 82
    const-string v3, "purchaseTime"

    .line 83
    .line 84
    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    .line 86
    .line 87
    const-string p1, "purchaseToken"

    .line 88
    .line 89
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {v2, p1}, Lzc/f;->m(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    sget-object p1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 100
    .line 101
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$a;->h:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {p1, v0, v2}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->D(Ljava/lang/String;Lzc/f;)Lkotlinx/coroutines/r;

    .line 104
    .line 105
    .line 106
    return-void
.end method
