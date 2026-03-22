.class public final Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$d;
.super Lyd/d;
.source "FakeBillingClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;->p(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;ILjava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic f:Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;

.field final synthetic g:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Lorg/json/JSONObject;

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:Ljava/lang/String;

.field final synthetic m:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

.field final synthetic n:Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;

.field final synthetic o:I


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$d;->e:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$d;->f:Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$d;->g:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$d;->h:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$d;->i:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$d;->j:Lorg/json/JSONObject;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$d;->k:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p8, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$d;->l:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p9, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$d;->m:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 18
    .line 19
    iput-object p10, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$d;->n:Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;

    .line 20
    .line 21
    iput p11, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$d;->o:I

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    const/4 p2, 0x0

    .line 25
    const-wide/16 p3, 0x0

    .line 26
    .line 27
    invoke-direct {p0, p3, p4, p1, p2}, Lyd/d;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 13

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$d;->e:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 10
    .line 11
    iget-object p1, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$d;->f:Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$d;->g:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$d;->h:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$d;->i:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$d;->j:Lorg/json/JSONObject;

    .line 24
    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v4

    .line 29
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    const-string v5, "purchaseTime"

    .line 34
    .line 35
    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    .line 37
    .line 38
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 39
    .line 40
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const-string v4, "toString(...)"

    .line 45
    .line 46
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    sget-object p1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 53
    .line 54
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$d;->k:Ljava/lang/String;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$d;->g:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const-string v2, "\u8ba2\u9605\u6389\u5355\u6d4b\u8bd5"

    .line 63
    .line 64
    invoke-virtual {p1, v0, v1, v2}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sget-object v3, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 68
    .line 69
    iget-object v4, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$d;->l:Ljava/lang/String;

    .line 70
    .line 71
    iget-object v5, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$d;->m:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 72
    .line 73
    iget-object p1, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$d;->n:Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;->t()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    iget v8, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$d;->o:I

    .line 80
    .line 81
    sget-object p1, Lad/k;->a:Lad/k$a;

    .line 82
    .line 83
    invoke-virtual {p1}, Lad/k$a;->a()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v9

    .line 91
    const/4 v11, 0x4

    .line 92
    const/4 v12, 0x0

    .line 93
    const/4 v6, 0x0

    .line 94
    const-string v10, "SkuDetails is null"

    .line 95
    .line 96
    invoke-static/range {v3 .. v12}, Lcom/startshorts/androidplayer/manager/event/EventManager;->L0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method
