.class final Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;
.super Ljava/lang/Object;
.source "FakeBillingClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFakeBillingClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FakeBillingClient.kt\ncom/startshorts/androidplayer/repo/billing/FakeBillingClient$FakeBillingClientDS\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,591:1\n1#2:592\n1557#3:593\n1628#3,3:594\n1557#3:597\n1628#3,3:598\n295#3,2:601\n295#3,2:603\n295#3,2:605\n1557#3:607\n1628#3,3:608\n295#3,2:611\n1557#3:613\n1628#3,3:614\n*S KotlinDebug\n*F\n+ 1 FakeBillingClient.kt\ncom/startshorts/androidplayer/repo/billing/FakeBillingClient$FakeBillingClientDS\n*L\n239#1:593\n239#1:594,3\n262#1:597\n262#1:598,3\n281#1:601,2\n286#1:603,2\n321#1:605,2\n324#1:607\n324#1:608,3\n335#1:611,2\n338#1:613\n338#1:614,3\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;->a:Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;->r(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Landroid/content/DialogInterface;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;->l(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic c(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;->o(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Landroid/content/DialogInterface;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;->k(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final g()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ldd/k;->a:Ldd/k;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "fake_not_acknowledged_purchases_list"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    sget-object v2, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->t0()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-class v2, Ljava/lang/String;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-virtual {v0, v1, v2, v3}, Ldd/k;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :cond_0
    return-object v0
.end method

.method private static final k(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "purchaseToken"

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method private static final l(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private final m(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Ldd/k;->a:Ldd/k;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "fake_not_acknowledged_purchases_list"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    sget-object v2, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->t0()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1, p1}, Ldd/k;->e(Ljava/lang/String;Ljava/util/List;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private static final o(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-boolean p0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;->r(Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;)Lzc/j;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lzc/j;->b()Lad/m;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGpSkuId()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance p3, Lzc/a;

    .line 22
    .line 23
    sget-object p4, Lcom/shorttv/aar/billing/bean/ErrorType;->PURCHASE_FAILED:Lcom/shorttv/aar/billing/bean/ErrorType;

    .line 24
    .line 25
    sget-object v0, Lcom/shorttv/aar/billing/bean/ErrorCode;->USER_CANCELED:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 26
    .line 27
    const-string v1, "User Cancelled"

    .line 28
    .line 29
    invoke-direct {p3, p4, v0, v1}, Lzc/a;-><init>(Lcom/shorttv/aar/billing/bean/ErrorType;Lcom/shorttv/aar/billing/bean/ErrorCode;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p2, p1, p3}, Lad/m;->b(Ljava/lang/String;Ljava/lang/String;Lzc/a;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public static synthetic q(Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;ILjava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;ILjava/lang/Object;)V
    .locals 12

    .line 1
    move/from16 v0, p9

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x8

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    move-object v7, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object/from16 v7, p4

    .line 11
    .line 12
    :goto_0
    and-int/lit8 v1, v0, 0x40

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    move-object v10, v2

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move-object/from16 v10, p7

    .line 19
    .line 20
    :goto_1
    and-int/lit16 v0, v0, 0x80

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    move-object v11, v2

    .line 25
    goto :goto_2

    .line 26
    :cond_2
    move-object/from16 v11, p8

    .line 27
    .line 28
    :goto_2
    move-object v3, p0

    .line 29
    move-object v4, p1

    .line 30
    move-object v5, p2

    .line 31
    move-object v6, p3

    .line 32
    move-object/from16 v8, p5

    .line 33
    .line 34
    move/from16 v9, p6

    .line 35
    .line 36
    invoke-virtual/range {v3 .. v11}, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;->p(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;ILjava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private static final r(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-boolean p0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;->r(Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;)Lzc/j;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lzc/j;->b()Lad/m;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance p3, Lzc/a;

    .line 22
    .line 23
    sget-object p4, Lcom/shorttv/aar/billing/bean/ErrorType;->PURCHASE_FAILED:Lcom/shorttv/aar/billing/bean/ErrorType;

    .line 24
    .line 25
    sget-object v0, Lcom/shorttv/aar/billing/bean/ErrorCode;->USER_CANCELED:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 26
    .line 27
    const-string v1, "User Cancelled"

    .line 28
    .line 29
    invoke-direct {p3, p4, v0, v1}, Lzc/a;-><init>(Lcom/shorttv/aar/billing/bean/ErrorType;Lcom/shorttv/aar/billing/bean/ErrorCode;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p2, p1, p3}, Lad/m;->b(Ljava/lang/String;Ljava/lang/String;Lzc/a;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "productId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "obfuscatedAccountId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "originalJson"

    .line 12
    .line 13
    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 17
    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v4, "addNotAcknowledgedPurchases -> productId="

    .line 24
    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v4, ",obfuscatedAccountId="

    .line 32
    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const-string v4, "FakeBillingClient"

    .line 44
    .line 45
    invoke-virtual {v2, v4, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    new-instance v3, Lorg/json/JSONObject;

    .line 49
    .line 50
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 51
    .line 52
    .line 53
    new-instance v5, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v6, "GPA."

    .line 59
    .line 60
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 64
    .line 65
    .line 66
    move-result-wide v6

    .line 67
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    const-string v6, "orderId"

    .line 75
    .line 76
    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    .line 78
    .line 79
    sget-object v5, Lfk/u;->a:Lfk/u;

    .line 80
    .line 81
    invoke-virtual {v5}, Lfk/u;->b()Landroid/content/Context;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    const-string v6, "packageName"

    .line 90
    .line 91
    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    .line 93
    .line 94
    new-instance v5, Lorg/json/JSONArray;

    .line 95
    .line 96
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    check-cast p1, Ljava/util/Collection;

    .line 101
    .line 102
    invoke-direct {v5, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 103
    .line 104
    .line 105
    const-string p1, "products"

    .line 106
    .line 107
    invoke-virtual {v3, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    .line 109
    .line 110
    const-string p1, "purchaseTime"

    .line 111
    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 113
    .line 114
    .line 115
    move-result-wide v5

    .line 116
    invoke-virtual {v3, p1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 117
    .line 118
    .line 119
    const-string p1, "purchaseState"

    .line 120
    .line 121
    const/4 v5, 0x0

    .line 122
    invoke-virtual {v3, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 123
    .line 124
    .line 125
    const-string p1, "purchaseToken"

    .line 126
    .line 127
    invoke-virtual {v3, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    .line 129
    .line 130
    const-string p1, "quantity"

    .line 131
    .line 132
    const/4 p3, 0x1

    .line 133
    invoke-virtual {v3, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 134
    .line 135
    .line 136
    const-string p1, "acknowledged"

    .line 137
    .line 138
    invoke-virtual {v3, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    .line 143
    .line 144
    new-instance p1, Lorg/json/JSONObject;

    .line 145
    .line 146
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    const-string p2, "accountIdentifiers"

    .line 154
    .line 155
    invoke-virtual {v3, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    .line 157
    .line 158
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;->g()Ljava/util/List;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    check-cast p1, Ljava/util/Collection;

    .line 163
    .line 164
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->g1(Ljava/util/Collection;)Ljava/util/List;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    const-string p3, "toString(...)"

    .line 173
    .line 174
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;->m(Ljava/util/List;)V

    .line 181
    .line 182
    .line 183
    new-instance p1, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    const-string p2, "addNotAcknowledgedPurchases -> \n"

    .line 189
    .line 190
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;->g()Ljava/util/List;

    .line 194
    .line 195
    .line 196
    move-result-object p2

    .line 197
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 198
    .line 199
    .line 200
    move-result p2

    .line 201
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string p2, " \nsku="

    .line 205
    .line 206
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    invoke-virtual {v2, v4, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    return-void
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;)Lzc/e;
    .locals 33
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    move-object/from16 v4, p2

    .line 6
    .line 7
    const-string v1, "productId"

    .line 8
    .line 9
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "productType"

    .line 13
    .line 14
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-object v1, Lle/h;->a:Lle/h;

    .line 18
    .line 19
    invoke-virtual {v1}, Lle/h;->a()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/16 v2, 0x24

    .line 28
    .line 29
    const v5, 0xf4240

    .line 30
    .line 31
    .line 32
    const-string v6, "<get-values>(...)"

    .line 33
    .line 34
    const/4 v7, 0x0

    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    iget-object v1, v0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;->a:Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;

    .line 38
    .line 39
    invoke-static {v1}, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;->p(Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;)Ljava/util/HashMap;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    check-cast v1, Ljava/lang/Iterable;

    .line 51
    .line 52
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    if-eqz v8, :cond_1

    .line 61
    .line 62
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    move-object v9, v8

    .line 67
    check-cast v9, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 68
    .line 69
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGpSkuId()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v9

    .line 73
    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    if-eqz v9, :cond_0

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    move-object v8, v7

    .line 81
    :goto_0
    check-cast v8, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 82
    .line 83
    if-eqz v8, :cond_2

    .line 84
    .line 85
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getRecharge()F

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    new-instance v16, Lzc/e$a;

    .line 90
    .line 91
    new-instance v8, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v9

    .line 106
    int-to-float v2, v5

    .line 107
    mul-float/2addr v1, v2

    .line 108
    float-to-long v10, v1

    .line 109
    const-string v13, ""

    .line 110
    .line 111
    const-wide/16 v14, 0x0

    .line 112
    .line 113
    const-string v12, "usd"

    .line 114
    .line 115
    move-object/from16 v8, v16

    .line 116
    .line 117
    invoke-direct/range {v8 .. v15}, Lzc/e$a;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;J)V

    .line 118
    .line 119
    .line 120
    move-object v8, v7

    .line 121
    move-object/from16 v9, v16

    .line 122
    .line 123
    goto/16 :goto_2

    .line 124
    .line 125
    :cond_2
    move-object v8, v7

    .line 126
    move-object v9, v8

    .line 127
    goto/16 :goto_2

    .line 128
    .line 129
    :cond_3
    iget-object v1, v0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;->a:Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;

    .line 130
    .line 131
    invoke-static {v1}, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;->s(Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;)Ljava/util/HashMap;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    check-cast v1, Ljava/lang/Iterable;

    .line 143
    .line 144
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 149
    .line 150
    .line 151
    move-result v8

    .line 152
    if-eqz v8, :cond_5

    .line 153
    .line 154
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    move-object v9, v8

    .line 159
    check-cast v9, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 160
    .line 161
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v9

    .line 165
    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v9

    .line 169
    if-eqz v9, :cond_4

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_5
    move-object v8, v7

    .line 173
    :goto_1
    check-cast v8, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 174
    .line 175
    if-nez v8, :cond_6

    .line 176
    .line 177
    return-object v7

    .line 178
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    .line 179
    .line 180
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .line 182
    .line 183
    new-instance v15, Lzc/e$b;

    .line 184
    .line 185
    new-instance v12, Ljava/util/ArrayList;

    .line 186
    .line 187
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .line 189
    .line 190
    new-instance v14, Lzc/e$b$a;

    .line 191
    .line 192
    new-instance v9, Lzc/e$b$a$a;

    .line 193
    .line 194
    new-instance v10, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getPayAmount()F

    .line 203
    .line 204
    .line 205
    move-result v11

    .line 206
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v17

    .line 213
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getPayAmount()F

    .line 214
    .line 215
    .line 216
    move-result v10

    .line 217
    int-to-float v13, v5

    .line 218
    mul-float/2addr v10, v13

    .line 219
    float-to-long v10, v10

    .line 220
    const/16 v25, 0x1

    .line 221
    .line 222
    const/16 v26, 0x1

    .line 223
    .line 224
    const-string v20, ""

    .line 225
    .line 226
    const-wide/16 v21, 0x0

    .line 227
    .line 228
    const-string v23, "USD"

    .line 229
    .line 230
    const-string v24, "P1M"

    .line 231
    .line 232
    move-object/from16 v16, v9

    .line 233
    .line 234
    move-wide/from16 v18, v10

    .line 235
    .line 236
    invoke-direct/range {v16 .. v26}, Lzc/e$b$a$a;-><init>(Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;II)V

    .line 237
    .line 238
    .line 239
    filled-new-array {v9}, [Lzc/e$b$a$a;

    .line 240
    .line 241
    .line 242
    move-result-object v9

    .line 243
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 244
    .line 245
    .line 246
    move-result-object v9

    .line 247
    invoke-direct {v14, v9}, Lzc/e$b$a;-><init>(Ljava/util/List;)V

    .line 248
    .line 249
    .line 250
    const/4 v10, 0x0

    .line 251
    const-string v11, "AdogOgHKZoPdjoe8luXLJgi2qCRnid0pweEGNhxQKt2tsvxvbkIaq51UwDgwwdP0ZGvepuKqQbNe2xwXGd0edaRk81hR+2HXrq7i1JHIVjlyYL\\/oY\\/SKy+RwY0dbAxTS18Y="

    .line 252
    .line 253
    const-string v16, "live-shorttv-subs-free-month-39-99"

    .line 254
    .line 255
    move-object v9, v15

    .line 256
    move/from16 v17, v13

    .line 257
    .line 258
    move-object/from16 v13, v16

    .line 259
    .line 260
    invoke-direct/range {v9 .. v14}, Lzc/e$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lzc/e$b$a;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    new-instance v9, Lzc/e$b;

    .line 267
    .line 268
    new-instance v21, Ljava/util/ArrayList;

    .line 269
    .line 270
    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .line 272
    .line 273
    new-instance v10, Lzc/e$b$a;

    .line 274
    .line 275
    new-instance v11, Lzc/e$b$a$a;

    .line 276
    .line 277
    new-instance v12, Ljava/lang/StringBuilder;

    .line 278
    .line 279
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getFirstAmount()F

    .line 286
    .line 287
    .line 288
    move-result v2

    .line 289
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v23

    .line 296
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getFirstAmount()F

    .line 297
    .line 298
    .line 299
    move-result v2

    .line 300
    mul-float v2, v2, v17

    .line 301
    .line 302
    float-to-long v12, v2

    .line 303
    const/16 v31, 0x1

    .line 304
    .line 305
    const/16 v32, 0x1

    .line 306
    .line 307
    const-string v26, ""

    .line 308
    .line 309
    const-wide/16 v27, 0x0

    .line 310
    .line 311
    const-string v29, "USD"

    .line 312
    .line 313
    const-string v30, "P1M"

    .line 314
    .line 315
    move-object/from16 v22, v11

    .line 316
    .line 317
    move-wide/from16 v24, v12

    .line 318
    .line 319
    invoke-direct/range {v22 .. v32}, Lzc/e$b$a$a;-><init>(Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;II)V

    .line 320
    .line 321
    .line 322
    filled-new-array {v11}, [Lzc/e$b$a$a;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    invoke-direct {v10, v2}, Lzc/e$b$a;-><init>(Ljava/util/List;)V

    .line 331
    .line 332
    .line 333
    const-string v19, "1"

    .line 334
    .line 335
    const-string v20, "AdogOgHKZoPdjoe8luXLJgi2qCRnid0pweEGNhxQKt2tsvxvbkIaq51UwDgwwdP0ZGvepuKqQbNe2xwXGd0edaRk81hR+2HXrq7i1JHIVjlyYL\\/oY\\/SKy+RwY0dbAxTS18Y="

    .line 336
    .line 337
    const-string v22, "live-shorttv-subs-free-month-39-99"

    .line 338
    .line 339
    move-object/from16 v18, v9

    .line 340
    .line 341
    move-object/from16 v23, v10

    .line 342
    .line 343
    invoke-direct/range {v18 .. v23}, Lzc/e$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lzc/e$b$a;)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-object v8, v1

    .line 350
    move-object v9, v7

    .line 351
    :goto_2
    sget-object v1, Lle/h;->a:Lle/h;

    .line 352
    .line 353
    invoke-virtual {v1}, Lle/h;->a()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    move-result v1

    .line 361
    const/16 v2, 0xa

    .line 362
    .line 363
    const-string v10, ",productType="

    .line 364
    .line 365
    const-string v11, "createProductDetailsInstance -> productId="

    .line 366
    .line 367
    const-string v12, "FakeBillingClient"

    .line 368
    .line 369
    if-eqz v1, :cond_b

    .line 370
    .line 371
    iget-object v1, v0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;->a:Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;

    .line 372
    .line 373
    invoke-static {v1}, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;->p(Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;)Ljava/util/HashMap;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    check-cast v1, Ljava/lang/Iterable;

    .line 385
    .line 386
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 391
    .line 392
    .line 393
    move-result v13

    .line 394
    if-eqz v13, :cond_8

    .line 395
    .line 396
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v13

    .line 400
    move-object v14, v13

    .line 401
    check-cast v14, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 402
    .line 403
    invoke-virtual {v14}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGpSkuId()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v14

    .line 407
    invoke-static {v14, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 408
    .line 409
    .line 410
    move-result v14

    .line 411
    if-eqz v14, :cond_7

    .line 412
    .line 413
    move-object v7, v13

    .line 414
    :cond_8
    check-cast v7, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 415
    .line 416
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 417
    .line 418
    new-instance v13, Ljava/lang/StringBuilder;

    .line 419
    .line 420
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    const-string v10, ",coinSku="

    .line 436
    .line 437
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    const-string v10, ",coinSkuListCached="

    .line 444
    .line 445
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    iget-object v10, v0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;->a:Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;

    .line 449
    .line 450
    invoke-static {v10}, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;->p(Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;)Ljava/util/HashMap;

    .line 451
    .line 452
    .line 453
    move-result-object v10

    .line 454
    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 455
    .line 456
    .line 457
    move-result-object v10

    .line 458
    invoke-static {v10, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    check-cast v10, Ljava/lang/Iterable;

    .line 462
    .line 463
    new-instance v6, Ljava/util/ArrayList;

    .line 464
    .line 465
    invoke-static {v10, v2}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 466
    .line 467
    .line 468
    move-result v2

    .line 469
    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 470
    .line 471
    .line 472
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 473
    .line 474
    .line 475
    move-result-object v2

    .line 476
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 477
    .line 478
    .line 479
    move-result v10

    .line 480
    if-eqz v10, :cond_9

    .line 481
    .line 482
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v10

    .line 486
    check-cast v10, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 487
    .line 488
    invoke-virtual {v10}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGpSkuId()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v10

    .line 492
    invoke-interface {v6, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 493
    .line 494
    .line 495
    goto :goto_3

    .line 496
    :cond_9
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v2

    .line 503
    invoke-virtual {v1, v12, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    if-eqz v7, :cond_a

    .line 507
    .line 508
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getRecharge()F

    .line 509
    .line 510
    .line 511
    move-result v1

    .line 512
    new-instance v2, Ljava/lang/StringBuilder;

    .line 513
    .line 514
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 515
    .line 516
    .line 517
    const-string v6, ",\"oneTimePurchaseOfferDetailsList\": [{\n                  \"formattedPrice\":\"$"

    .line 518
    .line 519
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    const-string v6, "\",\n                  \"priceAmountMicros\": "

    .line 526
    .line 527
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    int-to-float v5, v5

    .line 531
    mul-float/2addr v1, v5

    .line 532
    float-to-long v5, v1

    .line 533
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    const-string v1, ",\n                  \"priceCurrencyCode\": \"usd\"\n                  }]\n                "

    .line 537
    .line 538
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v1

    .line 545
    invoke-static {v1}, Lkotlin/text/StringsKt;->n(Ljava/lang/String;)Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v1

    .line 549
    if-nez v1, :cond_10

    .line 550
    .line 551
    :cond_a
    const-string v1, ""

    .line 552
    .line 553
    goto/16 :goto_6

    .line 554
    .line 555
    :cond_b
    iget-object v1, v0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;->a:Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;

    .line 556
    .line 557
    invoke-static {v1}, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;->s(Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;)Ljava/util/HashMap;

    .line 558
    .line 559
    .line 560
    move-result-object v1

    .line 561
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 562
    .line 563
    .line 564
    move-result-object v1

    .line 565
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    check-cast v1, Ljava/lang/Iterable;

    .line 569
    .line 570
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 571
    .line 572
    .line 573
    move-result-object v1

    .line 574
    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 575
    .line 576
    .line 577
    move-result v13

    .line 578
    if-eqz v13, :cond_d

    .line 579
    .line 580
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 581
    .line 582
    .line 583
    move-result-object v13

    .line 584
    move-object v14, v13

    .line 585
    check-cast v14, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 586
    .line 587
    invoke-virtual {v14}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v14

    .line 591
    invoke-static {v14, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 592
    .line 593
    .line 594
    move-result v14

    .line 595
    if-eqz v14, :cond_c

    .line 596
    .line 597
    goto :goto_4

    .line 598
    :cond_d
    move-object v13, v7

    .line 599
    :goto_4
    check-cast v13, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 600
    .line 601
    if-nez v13, :cond_e

    .line 602
    .line 603
    return-object v7

    .line 604
    :cond_e
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 605
    .line 606
    new-instance v7, Ljava/lang/StringBuilder;

    .line 607
    .line 608
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 609
    .line 610
    .line 611
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    .line 613
    .line 614
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    const-string v10, ",subsSku="

    .line 624
    .line 625
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 629
    .line 630
    .line 631
    const-string v10, ",subsSkuListCached="

    .line 632
    .line 633
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    .line 635
    .line 636
    iget-object v10, v0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;->a:Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;

    .line 637
    .line 638
    invoke-static {v10}, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;->s(Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;)Ljava/util/HashMap;

    .line 639
    .line 640
    .line 641
    move-result-object v10

    .line 642
    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 643
    .line 644
    .line 645
    move-result-object v10

    .line 646
    invoke-static {v10, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 647
    .line 648
    .line 649
    check-cast v10, Ljava/lang/Iterable;

    .line 650
    .line 651
    new-instance v6, Ljava/util/ArrayList;

    .line 652
    .line 653
    invoke-static {v10, v2}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 654
    .line 655
    .line 656
    move-result v2

    .line 657
    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 658
    .line 659
    .line 660
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 661
    .line 662
    .line 663
    move-result-object v2

    .line 664
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 665
    .line 666
    .line 667
    move-result v10

    .line 668
    if-eqz v10, :cond_f

    .line 669
    .line 670
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 671
    .line 672
    .line 673
    move-result-object v10

    .line 674
    check-cast v10, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 675
    .line 676
    invoke-virtual {v10}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 677
    .line 678
    .line 679
    move-result-object v10

    .line 680
    invoke-interface {v6, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 681
    .line 682
    .line 683
    goto :goto_5

    .line 684
    :cond_f
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 685
    .line 686
    .line 687
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 688
    .line 689
    .line 690
    move-result-object v2

    .line 691
    invoke-virtual {v1, v12, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    .line 693
    .line 694
    new-instance v1, Ljava/lang/StringBuilder;

    .line 695
    .line 696
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 697
    .line 698
    .line 699
    const-string v2, ",\"subscriptionOfferDetails\": [{\n\t\"offerIdToken\": \"AdogOgHKZoPdjoe8luXLJgi2qCRnid0pweEGNhxQKt2tsvxvbkIaq51UwDgwwdP0ZGvepuKqQbNe2xwXGd0edaRk81hR+2HXrq7i1JHIVjlyYL\\/oY\\/SKy+RwY0dbAxTS18Y=\",\n\t\"basePlanId\": \"live-shorttv-subs-free-month-39-99\",\n\t\"pricingPhases\": [{\n\t\t\"priceAmountMicros\": "

    .line 700
    .line 701
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    .line 703
    .line 704
    invoke-virtual {v13}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getPayAmount()F

    .line 705
    .line 706
    .line 707
    move-result v2

    .line 708
    int-to-float v5, v5

    .line 709
    mul-float/2addr v2, v5

    .line 710
    float-to-long v6, v2

    .line 711
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 712
    .line 713
    .line 714
    const-string v2, ",\n\t\t\"priceCurrencyCode\": \"USD\",\n\t\t\"formattedPrice\": \"$"

    .line 715
    .line 716
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    .line 718
    .line 719
    invoke-virtual {v13}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getPayAmount()F

    .line 720
    .line 721
    .line 722
    move-result v6

    .line 723
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 724
    .line 725
    .line 726
    const-string v6, "\",\n\t\t\"billingPeriod\": \"P1M\",\n\t\t\"recurrenceMode\": 1\n\t}]\n},{\n                          \"offerId\":\"1\",\n\t\"offerIdToken\": \"AdogOgHKZoPdjoe8luXLJgi2qCRnid0pweEGNhxQKt2tsvxvbkIaq51UwDgwwdP0ZGvepuKqQbNe2xwXGd0edaRk81hR+2HXrq7i1JHIVjlyYL\\/oY\\/SKy+RwY0dbAxTS18Y=\",\n\t\"basePlanId\": \"live-shorttv-subs-free-month-39-99\",\n\t\"pricingPhases\": [{\n\t\t\"priceAmountMicros\": "

    .line 727
    .line 728
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    .line 730
    .line 731
    invoke-virtual {v13}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getFirstAmount()F

    .line 732
    .line 733
    .line 734
    move-result v6

    .line 735
    mul-float/2addr v6, v5

    .line 736
    float-to-long v5, v6

    .line 737
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 738
    .line 739
    .line 740
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    .line 742
    .line 743
    invoke-virtual {v13}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getFirstAmount()F

    .line 744
    .line 745
    .line 746
    move-result v2

    .line 747
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 748
    .line 749
    .line 750
    const-string v2, "\",\n\t\t\"billingPeriod\": \"P1M\",\n\t\t\"recurrenceMode\": 1\n\t}]\n}]\n                "

    .line 751
    .line 752
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    .line 754
    .line 755
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 756
    .line 757
    .line 758
    move-result-object v1

    .line 759
    invoke-static {v1}, Lkotlin/text/StringsKt;->n(Ljava/lang/String;)Ljava/lang/String;

    .line 760
    .line 761
    .line 762
    move-result-object v1

    .line 763
    :cond_10
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 764
    .line 765
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 766
    .line 767
    .line 768
    const-string v5, "\n                {\n                  \"productId\": \""

    .line 769
    .line 770
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    .line 772
    .line 773
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    .line 775
    .line 776
    const-string v5, "\",\n                  \"type\": \""

    .line 777
    .line 778
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    .line 780
    .line 781
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    .line 783
    .line 784
    const-string v5, "\",\n                  \"title\": \"Example Product Title\",\n                  \"name\": \"Example Product\",\n                  \"description\": \"This is an example product for demonstration purposes.\",\n                  \"packageDisplayName\": \"Example Package\",\n                  \"iconUrl\": \"https://example.com/icon.png\",\n                  \"skuDetailsToken\": \""

    .line 785
    .line 786
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    .line 788
    .line 789
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 790
    .line 791
    .line 792
    move-result-wide v5

    .line 793
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 794
    .line 795
    .line 796
    const-string v5, "\",\n                  \"serializedDocid\": \"serialized_doc_id_example\"\n                  "

    .line 797
    .line 798
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    .line 800
    .line 801
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    .line 803
    .line 804
    const-string v1, "\n                }"

    .line 805
    .line 806
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    .line 808
    .line 809
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 810
    .line 811
    .line 812
    move-result-object v1

    .line 813
    invoke-static {v1}, Lkotlin/text/StringsKt;->n(Ljava/lang/String;)Ljava/lang/String;

    .line 814
    .line 815
    .line 816
    move-result-object v1

    .line 817
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 818
    .line 819
    new-instance v5, Ljava/lang/StringBuilder;

    .line 820
    .line 821
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 822
    .line 823
    .line 824
    const-string v6, "createProductDetailsInstance -> jsonString="

    .line 825
    .line 826
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    .line 828
    .line 829
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    .line 831
    .line 832
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 833
    .line 834
    .line 835
    move-result-object v5

    .line 836
    invoke-virtual {v2, v12, v5}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    .line 838
    .line 839
    new-instance v11, Lzc/e;

    .line 840
    .line 841
    sget-object v2, Lcom/shorttv/aar/billing/bean/ProductDataType;->GOOGLE_PRODUCT:Lcom/shorttv/aar/billing/bean/ProductDataType;

    .line 842
    .line 843
    sget-object v5, Lzc/e;->j:Lzc/e$c;

    .line 844
    .line 845
    invoke-virtual {v5, v1}, Lzc/e$c;->b(Ljava/lang/String;)Lzc/e;

    .line 846
    .line 847
    .line 848
    move-result-object v10

    .line 849
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 850
    .line 851
    .line 852
    const-string v5, "Example Product"

    .line 853
    .line 854
    const-string v6, "This is an example product for demonstration purposes."

    .line 855
    .line 856
    const-string v7, "Example Product Title"

    .line 857
    .line 858
    move-object v1, v11

    .line 859
    move-object/from16 v3, p1

    .line 860
    .line 861
    move-object/from16 v4, p2

    .line 862
    .line 863
    invoke-direct/range {v1 .. v10}, Lzc/e;-><init>(Lcom/shorttv/aar/billing/bean/ProductDataType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lzc/e$a;Ljava/lang/Object;)V

    .line 864
    .line 865
    .line 866
    return-object v11
.end method

.method public final h()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzc/f;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;->g()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Iterable;

    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    const/16 v2, 0xa

    .line 10
    .line 11
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_3

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Ljava/lang/String;

    .line 33
    .line 34
    new-instance v4, Lorg/json/JSONObject;

    .line 35
    .line 36
    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v3, "accountIdentifiers"

    .line 40
    .line 41
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    new-instance v5, Lzc/f;

    .line 46
    .line 47
    invoke-direct {v5}, Lzc/f;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v6, "orderId"

    .line 51
    .line 52
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    invoke-virtual {v5, v6}, Lzc/f;->l(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string v6, "packageName"

    .line 60
    .line 61
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    invoke-virtual {v5, v6}, Lzc/f;->n(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string v6, "products"

    .line 69
    .line 70
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    const/4 v7, 0x0

    .line 75
    if-eqz v6, :cond_0

    .line 76
    .line 77
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    .line 78
    .line 79
    .line 80
    move-result v8

    .line 81
    new-instance v9, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    .line 85
    .line 86
    move v10, v7

    .line 87
    :goto_1
    if-ge v10, v8, :cond_1

    .line 88
    .line 89
    invoke-virtual {v6, v10}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v11

    .line 93
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    add-int/lit8 v10, v10, 0x1

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    :cond_1
    invoke-virtual {v5, v9}, Lzc/f;->o(Ljava/util/List;)V

    .line 104
    .line 105
    .line 106
    const-string v6, "purchaseTime"

    .line 107
    .line 108
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    invoke-virtual {v5, v6}, Lzc/f;->q(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const-string v6, "purchaseState"

    .line 116
    .line 117
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    invoke-virtual {v5, v6}, Lzc/f;->p(I)V

    .line 122
    .line 123
    .line 124
    const-string v6, "purchaseToken"

    .line 125
    .line 126
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    invoke-virtual {v5, v6}, Lzc/f;->r(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const-string v6, "quantity"

    .line 134
    .line 135
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    invoke-virtual {v5, v6}, Lzc/f;->s(I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v5, v7}, Lzc/f;->k(Z)V

    .line 143
    .line 144
    .line 145
    const-string v6, "originalJson"

    .line 146
    .line 147
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    invoke-virtual {v5, v4}, Lzc/f;->m(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    const-string v4, "A"

    .line 155
    .line 156
    invoke-virtual {v5, v4}, Lzc/f;->t(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    new-instance v4, Lzc/c;

    .line 160
    .line 161
    const/4 v6, 0x0

    .line 162
    if-eqz v3, :cond_2

    .line 163
    .line 164
    const-string v7, "obfuscatedAccountId"

    .line 165
    .line 166
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    goto :goto_2

    .line 171
    :cond_2
    move-object v3, v6

    .line 172
    :goto_2
    invoke-direct {v4, v3, v6}, Lzc/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v5, v4}, Lzc/f;->j(Lzc/c;)V

    .line 176
    .line 177
    .line 178
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    goto/16 :goto_0

    .line 182
    .line 183
    :cond_3
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 184
    .line 185
    new-instance v3, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .line 189
    .line 190
    const-string v4, "getNotAcknowledgedPurchases -> "

    .line 191
    .line 192
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    new-instance v4, Ljava/util/ArrayList;

    .line 196
    .line 197
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 202
    .line 203
    .line 204
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 209
    .line 210
    .line 211
    move-result v5

    .line 212
    if-eqz v5, :cond_4

    .line 213
    .line 214
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    check-cast v5, Lzc/f;

    .line 219
    .line 220
    new-instance v6, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .line 224
    .line 225
    const-string v7, "products="

    .line 226
    .line 227
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v5}, Lzc/f;->d()Ljava/util/List;

    .line 231
    .line 232
    .line 233
    move-result-object v7

    .line 234
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    const/16 v7, 0x2c

    .line 238
    .line 239
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v5}, Lzc/f;->a()Lzc/c;

    .line 243
    .line 244
    .line 245
    move-result-object v5

    .line 246
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    goto :goto_3

    .line 257
    :cond_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    const-string v3, "FakeBillingClient"

    .line 265
    .line 266
    invoke-virtual {v0, v3, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    return-object v1
.end method

.method public final i(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object v0, v1

    .line 11
    :goto_0
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_4

    .line 18
    .line 19
    :cond_1
    instance-of v0, p1, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    move-object v1, p1

    .line 24
    check-cast v1, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 25
    .line 26
    :cond_2
    if-eqz v1, :cond_3

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGpSkuId()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    goto :goto_1

    .line 33
    :cond_3
    const-string v0, ""

    .line 34
    .line 35
    :cond_4
    :goto_1
    return-object v0
.end method

.method public final j(Ljava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "purchaseToken"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "removeNotAcknowledgedPurchases before -> purchaseToken="

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v3, ",size="

    .line 22
    .line 23
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;->g()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v4, "FakeBillingClient"

    .line 42
    .line 43
    invoke-virtual {v0, v4, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;->g()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Ljava/util/Collection;

    .line 51
    .line 52
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->g1(Ljava/util/Collection;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    new-instance v5, Lcom/startshorts/androidplayer/repo/billing/a;

    .line 57
    .line 58
    invoke-direct {v5, p1}, Lcom/startshorts/androidplayer/repo/billing/a;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    new-instance v6, Lcom/startshorts/androidplayer/repo/billing/b;

    .line 62
    .line 63
    invoke-direct {v6, v5}, Lcom/startshorts/androidplayer/repo/billing/b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {v1, v6}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 67
    .line 68
    .line 69
    invoke-direct {p0, v1}, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;->m(Ljava/util/List;)V

    .line 70
    .line 71
    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;->g()Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {v0, v4, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method public final n(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Ljava/lang/String;)V
    .locals 16
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v8, p1

    .line 2
    .line 3
    move-object/from16 v7, p2

    .line 4
    .line 5
    move-object/from16 v9, p3

    .line 6
    .line 7
    move-object/from16 v4, p4

    .line 8
    .line 9
    const-string v0, "opId"

    .line 10
    .line 11
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "scene"

    .line 15
    .line 16
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v0, "coinSku"

    .line 20
    .line 21
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v0, "obfuscatedAccountId"

    .line 25
    .line 26
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v2, "showTestPurchaseDialog -> opId="

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v2, ",scene="

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v2, ",coinSku="

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v2, ",obfuscatedAccountId="

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const-string v2, "FakeBillingClient"

    .line 73
    .line 74
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGpSkuId()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    sget-object v1, Lgg/p;->a:Lgg/p;

    .line 82
    .line 83
    invoke-virtual {v1, v0}, Lgg/p;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    sget-object v0, Laa/a;->a:Laa/a;

    .line 88
    .line 89
    invoke-virtual {v0}, Laa/a;->d()Ljava/lang/ref/WeakReference;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    move-object/from16 v10, p0

    .line 94
    .line 95
    if-eqz v0, :cond_0

    .line 96
    .line 97
    iget-object v11, v10, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;->a:Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;

    .line 98
    .line 99
    new-instance v12, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 100
    .line 101
    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    move-object v13, v0

    .line 112
    check-cast v13, Landroid/content/Context;

    .line 113
    .line 114
    new-instance v14, Lcom/startshorts/androidplayer/bean/tip/Builder;

    .line 115
    .line 116
    invoke-direct {v14}, Lcom/startshorts/androidplayer/bean/tip/Builder;-><init>()V

    .line 117
    .line 118
    .line 119
    const-string v0, "\u5f53\u524d\u4e3a\u6d4b\u8bd5\u5185\u8d2d\u6a21\u5f0f\uff0c\u70b9\u51fb\u5373\u53ef\u652f\u4ed8\u6210\u529f"

    .line 120
    .line 121
    invoke-virtual {v14, v0}, Lcom/startshorts/androidplayer/bean/tip/Builder;->setContent(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    const-string v0, "\u786e\u5b9a\u652f\u4ed8"

    .line 125
    .line 126
    invoke-virtual {v14, v0}, Lcom/startshorts/androidplayer/bean/tip/Builder;->setPositiveButtonText(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    new-instance v0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$a;

    .line 130
    .line 131
    invoke-direct {v0, v12, v9, v5, v8}, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$a;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v14, v0}, Lcom/startshorts/androidplayer/bean/tip/Builder;->setPositiveButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    .line 136
    .line 137
    const-string v0, "\u6389\u5355\u6d4b\u8bd5"

    .line 138
    .line 139
    invoke-virtual {v14, v0}, Lcom/startshorts/androidplayer/bean/tip/Builder;->setNegativeButtonText(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    new-instance v15, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$b;

    .line 143
    .line 144
    move-object v0, v15

    .line 145
    move-object v1, v12

    .line 146
    move-object v2, v11

    .line 147
    move-object/from16 v3, p3

    .line 148
    .line 149
    move-object/from16 v4, p4

    .line 150
    .line 151
    move-object/from16 v6, p1

    .line 152
    .line 153
    move-object/from16 v7, p2

    .line 154
    .line 155
    invoke-direct/range {v0 .. v7}, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$b;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v14, v15}, Lcom/startshorts/androidplayer/bean/tip/Builder;->setNegativeButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    .line 160
    .line 161
    new-instance v0, Lli/c;

    .line 162
    .line 163
    invoke-direct {v0, v13, v14}, Lli/c;-><init>(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/tip/Builder;)V

    .line 164
    .line 165
    .line 166
    new-instance v1, Lcom/startshorts/androidplayer/repo/billing/c;

    .line 167
    .line 168
    invoke-direct {v1, v12, v11, v8, v9}, Lcom/startshorts/androidplayer/repo/billing/c;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0}, Lfi/a;->show()V

    .line 175
    .line 176
    .line 177
    :cond_0
    return-void
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;ILjava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 16
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v12, p1

    .line 2
    .line 3
    move-object/from16 v8, p2

    .line 4
    .line 5
    move-object/from16 v13, p3

    .line 6
    .line 7
    move-object/from16 v7, p5

    .line 8
    .line 9
    const-string v0, "opId"

    .line 10
    .line 11
    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "scene"

    .line 15
    .line 16
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v0, "clickedSku"

    .line 20
    .line 21
    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v0, "obfuscatedAccountId"

    .line 25
    .line 26
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v2, "showTestSubsDialog -> opId="

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v2, ",scene="

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v2, ",sku="

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v2, ",episode="

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    move-object/from16 v2, p4

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v2, ",obfuscatedAccountId="

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    const-string v2, "FakeBillingClient"

    .line 83
    .line 84
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 88
    .line 89
    .line 90
    move-result-wide v3

    .line 91
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    if-nez p6, :cond_0

    .line 96
    .line 97
    move-object/from16 v9, p8

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_0
    move-object v9, v13

    .line 101
    :goto_0
    if-nez v9, :cond_1

    .line 102
    .line 103
    const-string v1, "showTestSubsDialog finalSku is null"

    .line 104
    .line 105
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscount()Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_2

    .line 114
    .line 115
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getFirstAmount()F

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    goto :goto_1

    .line 120
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getPayAmount()F

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    :goto_1
    const v1, 0xf4240

    .line 125
    .line 126
    .line 127
    int-to-float v1, v1

    .line 128
    mul-float/2addr v0, v1

    .line 129
    float-to-long v0, v0

    .line 130
    sget-object v2, Lae/a;->a:Lae/a;

    .line 131
    .line 132
    invoke-virtual {v2}, Lae/a;->d()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    const-string v4, "xiaomi"

    .line 137
    .line 138
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    const-string v4, "orderId"

    .line 143
    .line 144
    const/4 v5, 0x1

    .line 145
    if-eqz v2, :cond_3

    .line 146
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    const-string v1, "PCN220513171445751001000014572350"

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    :goto_2
    move-object v10, v0

    .line 165
    goto :goto_3

    .line 166
    :cond_3
    new-instance v2, Lorg/json/JSONObject;

    .line 167
    .line 168
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 169
    .line 170
    .line 171
    const-string v6, "linkedPurchaseToken"

    .line 172
    .line 173
    move-object/from16 v10, p7

    .line 174
    .line 175
    invoke-virtual {v2, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    .line 177
    .line 178
    sget-object v6, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 179
    .line 180
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 181
    .line 182
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    const-string v1, "%d"

    .line 195
    .line 196
    invoke-static {v6, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    const-string v1, "format(...)"

    .line 201
    .line 202
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    const-string v1, "priceAmountMicros"

    .line 206
    .line 207
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    .line 209
    .line 210
    const-string v0, "priceCurrencyCode"

    .line 211
    .line 212
    const-string v1, "USD"

    .line 213
    .line 214
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    .line 216
    .line 217
    const-string v0, "mode"

    .line 218
    .line 219
    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    .line 225
    .line 226
    const-string v0, "obfuscatedExternalAccountId"

    .line 227
    .line 228
    invoke-virtual {v2, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    .line 233
    .line 234
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 235
    .line 236
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->h0()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    const-string v1, "countryCode"

    .line 241
    .line 242
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    .line 244
    .line 245
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 246
    .line 247
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->V()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    const-string v1, "appVersion"

    .line 252
    .line 253
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    goto :goto_2

    .line 264
    :goto_3
    new-instance v11, Lorg/json/JSONObject;

    .line 265
    .line 266
    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v11, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    .line 271
    .line 272
    new-instance v0, Lorg/json/JSONArray;

    .line 273
    .line 274
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    check-cast v1, Ljava/util/Collection;

    .line 283
    .line 284
    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 285
    .line 286
    .line 287
    const-string v1, "productId"

    .line 288
    .line 289
    invoke-virtual {v11, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 290
    .line 291
    .line 292
    const-string v0, "quantity"

    .line 293
    .line 294
    invoke-virtual {v11, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 295
    .line 296
    .line 297
    const-string v0, "signature"

    .line 298
    .line 299
    const-string v1, "00001111"

    .line 300
    .line 301
    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 302
    .line 303
    .line 304
    const-string v0, "purchaseToken"

    .line 305
    .line 306
    invoke-virtual {v11, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 307
    .line 308
    .line 309
    sget-object v0, Laa/a;->a:Laa/a;

    .line 310
    .line 311
    invoke-virtual {v0}, Laa/a;->d()Ljava/lang/ref/WeakReference;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    if-eqz v0, :cond_4

    .line 316
    .line 317
    move-object/from16 v14, p0

    .line 318
    .line 319
    iget-object v15, v14, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;->a:Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;

    .line 320
    .line 321
    new-instance v6, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 322
    .line 323
    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 331
    .line 332
    .line 333
    move-object v5, v0

    .line 334
    check-cast v5, Landroid/content/Context;

    .line 335
    .line 336
    new-instance v4, Lcom/startshorts/androidplayer/bean/tip/Builder;

    .line 337
    .line 338
    invoke-direct {v4}, Lcom/startshorts/androidplayer/bean/tip/Builder;-><init>()V

    .line 339
    .line 340
    .line 341
    const-string v0, "\u5f53\u524d\u4e3a\u6d4b\u8bd5\u8ba2\u9605\u6a21\u5f0f\uff0c\u70b9\u51fb\u5373\u53ef\u8ba2\u9605\u6210\u529f"

    .line 342
    .line 343
    invoke-virtual {v4, v0}, Lcom/startshorts/androidplayer/bean/tip/Builder;->setContent(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    const-string v0, "\u786e\u5b9a\u8ba2\u9605"

    .line 347
    .line 348
    invoke-virtual {v4, v0}, Lcom/startshorts/androidplayer/bean/tip/Builder;->setPositiveButtonText(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    new-instance v2, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$c;

    .line 352
    .line 353
    move-object v0, v2

    .line 354
    move-object v1, v6

    .line 355
    move-object v7, v2

    .line 356
    move-object v2, v3

    .line 357
    move-object v3, v9

    .line 358
    move-object v14, v4

    .line 359
    move-object v4, v10

    .line 360
    move-object v12, v5

    .line 361
    move-object v5, v11

    .line 362
    move-object/from16 p4, v6

    .line 363
    .line 364
    move-object/from16 v6, p1

    .line 365
    .line 366
    invoke-direct/range {v0 .. v6}, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$c;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v14, v7}, Lcom/startshorts/androidplayer/bean/tip/Builder;->setPositiveButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    .line 371
    .line 372
    const-string v0, "\u6389\u5355\u6d4b\u8bd5"

    .line 373
    .line 374
    invoke-virtual {v14, v0}, Lcom/startshorts/androidplayer/bean/tip/Builder;->setNegativeButtonText(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    new-instance v7, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$d;

    .line 378
    .line 379
    move-object v0, v7

    .line 380
    move-object/from16 v1, p4

    .line 381
    .line 382
    move-object/from16 v2, p0

    .line 383
    .line 384
    move-object/from16 v4, p5

    .line 385
    .line 386
    move-object v5, v10

    .line 387
    move-object v6, v11

    .line 388
    move-object v11, v7

    .line 389
    move-object/from16 v7, p1

    .line 390
    .line 391
    move-object/from16 v8, p2

    .line 392
    .line 393
    move-object/from16 v9, p3

    .line 394
    .line 395
    move-object v10, v15

    .line 396
    move-object v13, v11

    .line 397
    move/from16 v11, p6

    .line 398
    .line 399
    invoke-direct/range {v0 .. v11}, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b$d;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;I)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v14, v13}, Lcom/startshorts/androidplayer/bean/tip/Builder;->setNegativeButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    .line 404
    .line 405
    new-instance v0, Lli/c;

    .line 406
    .line 407
    invoke-direct {v0, v12, v14}, Lli/c;-><init>(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/tip/Builder;)V

    .line 408
    .line 409
    .line 410
    new-instance v1, Lcom/startshorts/androidplayer/repo/billing/d;

    .line 411
    .line 412
    move-object/from16 v2, p1

    .line 413
    .line 414
    move-object/from16 v3, p3

    .line 415
    .line 416
    move-object/from16 v4, p4

    .line 417
    .line 418
    invoke-direct {v1, v4, v15, v2, v3}, Lcom/startshorts/androidplayer/repo/billing/d;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v0}, Lfi/a;->show()V

    .line 425
    .line 426
    .line 427
    :cond_4
    return-void
.end method
