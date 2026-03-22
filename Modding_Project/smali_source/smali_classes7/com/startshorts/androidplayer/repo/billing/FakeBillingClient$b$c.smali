.class public final Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$c;
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

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Lorg/json/JSONObject;

.field final synthetic j:Ljava/lang/String;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$c;->e:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$c;->f:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$c;->g:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$c;->h:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$c;->i:Lorg/json/JSONObject;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$c;->j:Ljava/lang/String;

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    const/4 p2, 0x0

    .line 15
    const-wide/16 p3, 0x0

    .line 16
    .line 17
    invoke-direct {p0, p3, p4, p1, p2}, Lyd/d;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$c;->e:Lkotlin/jvm/internal/Ref$BooleanRef;

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
    new-instance v1, Lzc/f;

    .line 20
    .line 21
    invoke-direct {v1}, Lzc/f;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$c;->f:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lzc/f;->l(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$c;->g:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    filled-new-array {v2}, [Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v1, v2}, Lzc/f;->o(Ljava/util/List;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p1}, Lzc/f;->q(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$c;->h:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Lzc/f;->r(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v0}, Lzc/f;->s(I)V

    .line 55
    .line 56
    .line 57
    const-string v0, "00001111"

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Lzc/f;->t(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$c;->i:Lorg/json/JSONObject;

    .line 63
    .line 64
    const-string v2, "purchaseTime"

    .line 65
    .line 66
    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {v1, p1}, Lzc/f;->m(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    sget-object p1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 77
    .line 78
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$c;->j:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->J(Ljava/lang/String;Lzc/f;)Lkotlinx/coroutines/r;

    .line 81
    .line 82
    .line 83
    return-void
.end method
