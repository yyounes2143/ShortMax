.class public final Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;
.super Ljava/lang/Object;
.source "PurchaseRepo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPurchaseRepo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PurchaseRepo.kt\ncom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,344:1\n360#2,7:345\n360#2,7:352\n1863#2,2:359\n1863#2,2:361\n1863#2,2:363\n1872#2,3:365\n*S KotlinDebug\n*F\n+ 1 PurchaseRepo.kt\ncom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo\n*L\n120#1:345,7\n160#1:352,7\n263#1:359,2\n291#1:361,2\n299#1:363,2\n304#1:365,3\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->a:Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;

    .line 7
    .line 8
    new-instance v0, Lhg/b;

    .line 9
    .line 10
    invoke-direct {v0}, Lhg/b;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->b:Lms/i;

    .line 18
    .line 19
    new-instance v0, Lhg/c;

    .line 20
    .line 21
    invoke-direct {v0}, Lhg/c;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->c:Lms/i;

    .line 29
    .line 30
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a()Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->p()Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b()Lhg/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->o()Lhg/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic c(Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;ZLcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->g(ZLcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic d(Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;)Lhg/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->m()Lhg/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic e(Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;)Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->n()Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final g(ZLcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->C()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_6

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;->getSkuInfoResponses()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    check-cast v1, Ljava/util/Collection;

    .line 18
    .line 19
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->g1(Ljava/util/Collection;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    :cond_1
    if-eqz p2, :cond_2

    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;->getRetainSkuInfoResponses()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    :cond_2
    if-eqz p2, :cond_3

    .line 42
    .line 43
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;->getRewardSkuInfoResponses()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-eqz v2, :cond_3

    .line 48
    .line 49
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    :cond_3
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->h0(Ljava/util/List;)V

    .line 53
    .line 54
    .line 55
    if-eqz p2, :cond_4

    .line 56
    .line 57
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;->getSubscribeSkuResponses()Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    if-eqz v1, :cond_4

    .line 62
    .line 63
    check-cast v1, Ljava/util/Collection;

    .line 64
    .line 65
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->g1(Ljava/util/Collection;)Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    if-nez v1, :cond_5

    .line 70
    .line 71
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .line 75
    .line 76
    :cond_5
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->i0(Ljava/util/List;)V

    .line 77
    .line 78
    .line 79
    :cond_6
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->c1()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->isEnable()Lkotlin/jvm/functions/Function0;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Ljava/lang/Boolean;

    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_8

    .line 100
    .line 101
    if-eqz p2, :cond_7

    .line 102
    .line 103
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;->isLowPayScoreUser()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    goto :goto_0

    .line 108
    :cond_7
    const/4 v0, 0x0

    .line 109
    :goto_0
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->x(Z)V

    .line 110
    .line 111
    .line 112
    :cond_8
    const-string v0, "PurchaseRepo"

    .line 113
    .line 114
    if-eqz p1, :cond_9

    .line 115
    .line 116
    :try_start_0
    invoke-direct {p0, p2}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->w(Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :catch_0
    move-exception p1

    .line 121
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 122
    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    const-string v3, "tryAddExpansionSku exception -> "

    .line 129
    .line 130
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {v1, v0, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    :cond_9
    :goto_1
    :try_start_1
    invoke-direct {p0, p2}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->v(Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :catch_1
    move-exception p1

    .line 152
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 153
    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    const-string v2, "tryAddBlackFridaySku exception -> "

    .line 160
    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-virtual {p2, v0, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    :goto_2
    return-void
.end method

.method private final m()Lhg/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->c:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lhg/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final n()Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->b:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final o()Lhg/a;
    .locals 1

    .line 1
    new-instance v0, Lhg/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lhg/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final p()Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS;
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic t(Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;ZZLjava/lang/String;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x1

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    and-int/lit8 p5, p5, 0x2

    .line 7
    .line 8
    if-eqz p5, :cond_1

    .line 9
    .line 10
    const/4 p2, 0x1

    .line 11
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->s(ZZLjava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method private final v(Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;)V
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;->getRewardSkuInfoResponses()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v3, "tryAddBlackFridaySku -> rewardSkuPositionType("

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;->getRewardSkuPositionType()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const/16 v3, 0x29

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const-string v4, "PurchaseRepo"

    .line 40
    .line 41
    invoke-virtual {v1, v4, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;->getSkuInfoResponses()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const/4 v2, -0x1

    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const/4 v5, 0x0

    .line 56
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-eqz v6, :cond_3

    .line 61
    .line 62
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    check-cast v6, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 67
    .line 68
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuType()I

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;->getRewardSkuPositionType()I

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    if-ne v6, v7, :cond_2

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    move v5, v2

    .line 83
    :goto_1
    if-eq v5, v2, :cond_4

    .line 84
    .line 85
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 86
    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v6, "tryAddBlackFridaySku -> index("

    .line 93
    .line 94
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v1, v4, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;->getSkuInfoResponses()Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    if-eqz p1, :cond_4

    .line 115
    .line 116
    invoke-interface {p1, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    :cond_4
    return-void
.end method

.method private final w(Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;)V
    .locals 12

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;->getRetainSkuInfoResponses()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->k()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 19
    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v4, "tryAddExpansionSku -> skuPositionType("

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;->getSkuPositionType()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const/16 v4, 0x29

    .line 38
    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const-string v5, "PurchaseRepo"

    .line 47
    .line 48
    invoke-virtual {v2, v5, v3}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;->getSkuInfoResponses()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    const/4 v3, -0x1

    .line 56
    if-eqz v2, :cond_3

    .line 57
    .line 58
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    const/4 v6, 0x0

    .line 63
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    if-eqz v7, :cond_3

    .line 68
    .line 69
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    check-cast v7, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 74
    .line 75
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuType()I

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;->getSkuPositionType()I

    .line 80
    .line 81
    .line 82
    move-result v8

    .line 83
    if-ne v7, v8, :cond_2

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    move v6, v3

    .line 90
    :goto_1
    if-ne v6, v3, :cond_4

    .line 91
    .line 92
    return-void

    .line 93
    :cond_4
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 94
    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    const-string v7, "tryAddExpansionSku -> index("

    .line 101
    .line 102
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {v2, v5, v3}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuProductId()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuProductId()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-nez v2, :cond_5

    .line 131
    .line 132
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 133
    .line 134
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 135
    .line 136
    .line 137
    move-result-wide v2

    .line 138
    sget-object v7, Lud/b;->a:Lud/b;

    .line 139
    .line 140
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->t0()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v8

    .line 146
    new-instance v9, Lcom/startshorts/androidplayer/bean/purchase/AvailableExpansionSku;

    .line 147
    .line 148
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getRetentionSeconds()J

    .line 149
    .line 150
    .line 151
    move-result-wide v4

    .line 152
    const/16 v0, 0x3e8

    .line 153
    .line 154
    int-to-long v10, v0

    .line 155
    mul-long/2addr v4, v10

    .line 156
    add-long/2addr v4, v2

    .line 157
    move-object v0, v9

    .line 158
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/bean/purchase/AvailableExpansionSku;-><init>(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;JJ)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v7, v8, v9}, Lud/b;->a3(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/AvailableExpansionSku;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->k()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    goto :goto_2

    .line 169
    :cond_5
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getCoins()I

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setCoins(I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getKeepGiveCoins()Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setKeepGiveCoins(Ljava/lang/Integer;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getCoinsUnit()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setCoinsUnit(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGiveCoinsUnit()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setGiveCoinsUnit(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSubscript()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setSubscript(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    :goto_2
    if-eqz v0, :cond_6

    .line 205
    .line 206
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;->getSkuInfoResponses()Ljava/util/List;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    if-eqz p1, :cond_6

    .line 211
    .line 212
    invoke-interface {p1, v6, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    :cond_6
    :goto_3
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->m()Lhg/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lhg/a;->b(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final h(Landroid/content/Context;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;Lzc/f;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lrs/c;)Ljava/lang/Object;
    .locals 23
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lzc/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;",
            "Lzc/f;",
            "Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p7

    .line 2
    .line 3
    instance-of v1, v0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayBatchUnlockExchangeCoins$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayBatchUnlockExchangeCoins$1;

    .line 9
    .line 10
    iget v2, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayBatchUnlockExchangeCoins$1;->n:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayBatchUnlockExchangeCoins$1;->n:I

    .line 20
    .line 21
    move-object/from16 v2, p0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayBatchUnlockExchangeCoins$1;

    .line 25
    .line 26
    move-object/from16 v2, p0

    .line 27
    .line 28
    invoke-direct {v1, v2, v0}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayBatchUnlockExchangeCoins$1;-><init>(Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;Lrs/c;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v0, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayBatchUnlockExchangeCoins$1;->l:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v10

    .line 37
    iget v3, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayBatchUnlockExchangeCoins$1;->n:I

    .line 38
    .line 39
    const/4 v11, 0x0

    .line 40
    const/4 v12, 0x4

    .line 41
    const/4 v13, 0x3

    .line 42
    const/4 v14, 0x2

    .line 43
    const/4 v4, 0x1

    .line 44
    if-eqz v3, :cond_4

    .line 45
    .line 46
    if-eq v3, v4, :cond_3

    .line 47
    .line 48
    if-eq v3, v14, :cond_2

    .line 49
    .line 50
    if-eq v3, v13, :cond_2

    .line 51
    .line 52
    if-ne v3, v12, :cond_1

    .line 53
    .line 54
    iget-object v3, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayBatchUnlockExchangeCoins$1;->j:Ljava/lang/Object;

    .line 55
    .line 56
    iget-object v4, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayBatchUnlockExchangeCoins$1;->i:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v4, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;

    .line 59
    .line 60
    iget-object v1, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayBatchUnlockExchangeCoins$1;->h:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v1, Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_3

    .line 68
    .line 69
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 70
    .line 71
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 72
    .line 73
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw v0

    .line 77
    :cond_2
    iget-object v3, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayBatchUnlockExchangeCoins$1;->k:Ljava/lang/Object;

    .line 78
    .line 79
    iget-object v4, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayBatchUnlockExchangeCoins$1;->j:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v4, Lzc/f;

    .line 82
    .line 83
    iget-object v5, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayBatchUnlockExchangeCoins$1;->i:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v5, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;

    .line 86
    .line 87
    iget-object v6, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayBatchUnlockExchangeCoins$1;->h:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v6, Ljava/lang/String;

    .line 90
    .line 91
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    goto/16 :goto_2

    .line 95
    .line 96
    :cond_3
    iget-object v3, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayBatchUnlockExchangeCoins$1;->k:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v3, Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;

    .line 99
    .line 100
    iget-object v4, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayBatchUnlockExchangeCoins$1;->j:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v4, Lzc/f;

    .line 103
    .line 104
    iget-object v5, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayBatchUnlockExchangeCoins$1;->i:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v5, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;

    .line 107
    .line 108
    iget-object v6, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayBatchUnlockExchangeCoins$1;->h:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v6, Ljava/lang/String;

    .line 111
    .line 112
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    check-cast v0, Lkotlin/Result;

    .line 116
    .line 117
    invoke-virtual {v0}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    move-object v15, v5

    .line 122
    move-object v5, v0

    .line 123
    move-object v0, v6

    .line 124
    goto :goto_1

    .line 125
    :cond_4
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->n()Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    move-object/from16 v0, p2

    .line 133
    .line 134
    iput-object v0, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayBatchUnlockExchangeCoins$1;->h:Ljava/lang/Object;

    .line 135
    .line 136
    move-object/from16 v15, p3

    .line 137
    .line 138
    iput-object v15, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayBatchUnlockExchangeCoins$1;->i:Ljava/lang/Object;

    .line 139
    .line 140
    move-object/from16 v9, p4

    .line 141
    .line 142
    iput-object v9, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayBatchUnlockExchangeCoins$1;->j:Ljava/lang/Object;

    .line 143
    .line 144
    move-object/from16 v8, p5

    .line 145
    .line 146
    iput-object v8, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayBatchUnlockExchangeCoins$1;->k:Ljava/lang/Object;

    .line 147
    .line 148
    iput v4, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayBatchUnlockExchangeCoins$1;->n:I

    .line 149
    .line 150
    move-object/from16 v4, p1

    .line 151
    .line 152
    move-object/from16 v5, p3

    .line 153
    .line 154
    move-object/from16 v6, p4

    .line 155
    .line 156
    move-object/from16 v7, p5

    .line 157
    .line 158
    move-object/from16 v8, p6

    .line 159
    .line 160
    move-object v9, v1

    .line 161
    invoke-virtual/range {v3 .. v9}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS;->a(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;Lzc/f;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lrs/c;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    if-ne v3, v10, :cond_5

    .line 166
    .line 167
    return-object v10

    .line 168
    :cond_5
    move-object/from16 v4, p4

    .line 169
    .line 170
    move-object v5, v3

    .line 171
    move-object/from16 v3, p5

    .line 172
    .line 173
    :goto_1
    invoke-static {v5}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    if-eqz v6, :cond_a

    .line 178
    .line 179
    move-object v6, v5

    .line 180
    check-cast v6, Lcom/startshorts/androidplayer/bean/purchase/GPayExchangeCoinsResult;

    .line 181
    .line 182
    if-nez v6, :cond_6

    .line 183
    .line 184
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 185
    .line 186
    return-object v0

    .line 187
    :cond_6
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/purchase/GPayExchangeCoinsResult;->getCoins()I

    .line 188
    .line 189
    .line 190
    move-result v7

    .line 191
    if-lez v7, :cond_8

    .line 192
    .line 193
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/purchase/GPayExchangeCoinsResult;->getRechargeUserInfo()Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;

    .line 194
    .line 195
    .line 196
    move-result-object v7

    .line 197
    sget-object v8, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 198
    .line 199
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->t0()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v9

    .line 203
    if-eqz v7, :cond_7

    .line 204
    .line 205
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;->getUserCode()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v12

    .line 209
    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v12

    .line 213
    if-nez v12, :cond_7

    .line 214
    .line 215
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/purchase/GPayExchangeCoinsResult;->getUserCodeHaveRight()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v12

    .line 219
    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v9

    .line 223
    if-nez v9, :cond_7

    .line 224
    .line 225
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    new-instance v6, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayBatchUnlockExchangeCoins$2$1;

    .line 230
    .line 231
    invoke-direct {v6, v0, v7, v11}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayBatchUnlockExchangeCoins$2$1;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;Lrs/c;)V

    .line 232
    .line 233
    .line 234
    iput-object v0, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayBatchUnlockExchangeCoins$1;->h:Ljava/lang/Object;

    .line 235
    .line 236
    iput-object v15, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayBatchUnlockExchangeCoins$1;->i:Ljava/lang/Object;

    .line 237
    .line 238
    iput-object v4, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayBatchUnlockExchangeCoins$1;->j:Ljava/lang/Object;

    .line 239
    .line 240
    iput-object v5, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayBatchUnlockExchangeCoins$1;->k:Ljava/lang/Object;

    .line 241
    .line 242
    iput v14, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayBatchUnlockExchangeCoins$1;->n:I

    .line 243
    .line 244
    invoke-static {v3, v6, v1}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    if-ne v3, v10, :cond_8

    .line 249
    .line 250
    return-object v10

    .line 251
    :cond_7
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/purchase/GPayExchangeCoinsResult;->getCoins()I

    .line 252
    .line 253
    .line 254
    move-result v7

    .line 255
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/purchase/GPayExchangeCoinsResult;->getBonus()I

    .line 256
    .line 257
    .line 258
    move-result v6

    .line 259
    const/4 v9, 0x4

    .line 260
    const/4 v12, 0x0

    .line 261
    const/4 v14, 0x0

    .line 262
    move-object/from16 p1, v8

    .line 263
    .line 264
    move/from16 p2, v7

    .line 265
    .line 266
    move/from16 p3, v6

    .line 267
    .line 268
    move/from16 p4, v14

    .line 269
    .line 270
    move/from16 p5, v9

    .line 271
    .line 272
    move-object/from16 p6, v12

    .line 273
    .line 274
    invoke-static/range {p1 .. p6}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->w1(Lcom/startshorts/androidplayer/repo/account/AccountRepo;IIZILjava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    sget-object v6, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->a:Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;

    .line 278
    .line 279
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->u()V

    .line 280
    .line 281
    .line 282
    sget-object v16, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 283
    .line 284
    const/16 v21, 0x6

    .line 285
    .line 286
    const/16 v22, 0x0

    .line 287
    .line 288
    const-string v17, "exchange_coins_success"

    .line 289
    .line 290
    const/16 v18, 0x0

    .line 291
    .line 292
    const-wide/16 v19, 0x0

    .line 293
    .line 294
    invoke-static/range {v16 .. v22}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 298
    .line 299
    .line 300
    move-result-object v6

    .line 301
    new-instance v7, Lcom/startshorts/androidplayer/bean/eventbus/UserRechargedEvent;

    .line 302
    .line 303
    invoke-direct {v7}, Lcom/startshorts/androidplayer/bean/eventbus/UserRechargedEvent;-><init>()V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v6, v7}, Lau/c;->l(Ljava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 310
    .line 311
    .line 312
    move-result-object v6

    .line 313
    new-instance v7, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayBatchUnlockExchangeCoins$2$2;

    .line 314
    .line 315
    const/4 v8, 0x0

    .line 316
    move-object/from16 p1, v7

    .line 317
    .line 318
    move-object/from16 p2, v0

    .line 319
    .line 320
    move-object/from16 p3, v15

    .line 321
    .line 322
    move-object/from16 p4, v4

    .line 323
    .line 324
    move-object/from16 p5, v3

    .line 325
    .line 326
    move-object/from16 p6, v8

    .line 327
    .line 328
    invoke-direct/range {p1 .. p6}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayBatchUnlockExchangeCoins$2$2;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;Lzc/f;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Lrs/c;)V

    .line 329
    .line 330
    .line 331
    iput-object v0, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayBatchUnlockExchangeCoins$1;->h:Ljava/lang/Object;

    .line 332
    .line 333
    iput-object v15, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayBatchUnlockExchangeCoins$1;->i:Ljava/lang/Object;

    .line 334
    .line 335
    iput-object v4, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayBatchUnlockExchangeCoins$1;->j:Ljava/lang/Object;

    .line 336
    .line 337
    iput-object v5, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayBatchUnlockExchangeCoins$1;->k:Ljava/lang/Object;

    .line 338
    .line 339
    iput v13, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayBatchUnlockExchangeCoins$1;->n:I

    .line 340
    .line 341
    invoke-static {v6, v7, v1}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v3

    .line 345
    if-ne v3, v10, :cond_8

    .line 346
    .line 347
    return-object v10

    .line 348
    :cond_8
    move-object v6, v0

    .line 349
    move-object v3, v5

    .line 350
    move-object v5, v15

    .line 351
    :goto_2
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 352
    .line 353
    const/4 v7, 0x0

    .line 354
    invoke-virtual {v0, v7}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->h1(Z)V

    .line 355
    .line 356
    .line 357
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 358
    .line 359
    new-instance v7, Lcom/startshorts/androidplayer/bean/purchase/ConsumeData;

    .line 360
    .line 361
    sget-object v8, Lle/h;->a:Lle/h;

    .line 362
    .line 363
    invoke-virtual {v8}, Lle/h;->a()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v8

    .line 367
    invoke-virtual {v4}, Lzc/f;->f()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v4

    .line 371
    invoke-direct {v7, v8, v4}, Lcom/startshorts/androidplayer/bean/purchase/ConsumeData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    iput-object v6, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayBatchUnlockExchangeCoins$1;->h:Ljava/lang/Object;

    .line 375
    .line 376
    iput-object v5, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayBatchUnlockExchangeCoins$1;->i:Ljava/lang/Object;

    .line 377
    .line 378
    iput-object v3, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayBatchUnlockExchangeCoins$1;->j:Ljava/lang/Object;

    .line 379
    .line 380
    iput-object v11, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayBatchUnlockExchangeCoins$1;->k:Ljava/lang/Object;

    .line 381
    .line 382
    const/4 v4, 0x4

    .line 383
    iput v4, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayBatchUnlockExchangeCoins$1;->n:I

    .line 384
    .line 385
    invoke-virtual {v0, v7, v1}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->u(Lcom/startshorts/androidplayer/bean/purchase/ConsumeData;Lrs/c;)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    if-ne v0, v10, :cond_9

    .line 390
    .line 391
    return-object v10

    .line 392
    :cond_9
    move-object v4, v5

    .line 393
    move-object v1, v6

    .line 394
    :goto_3
    move-object v0, v1

    .line 395
    move-object v5, v3

    .line 396
    move-object v15, v4

    .line 397
    :cond_a
    invoke-static {v5}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    if-eqz v1, :cond_b

    .line 402
    .line 403
    sget-object v3, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 404
    .line 405
    invoke-virtual {v15}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGpSkuId()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v4

    .line 409
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v5

    .line 413
    invoke-virtual {v3, v0, v4, v5}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->W(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 417
    .line 418
    invoke-static {v1}, Ljk/z;->a(Ljava/lang/Throwable;)Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 419
    .line 420
    .line 421
    move-result-object v1

    .line 422
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->D(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)Landroid/os/Bundle;

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    const/4 v3, 0x4

    .line 427
    const/4 v4, 0x0

    .line 428
    const-string v5, "exchange_coins_failed"

    .line 429
    .line 430
    const-wide/16 v6, 0x0

    .line 431
    .line 432
    move-object/from16 p1, v0

    .line 433
    .line 434
    move-object/from16 p2, v5

    .line 435
    .line 436
    move-object/from16 p3, v1

    .line 437
    .line 438
    move-wide/from16 p4, v6

    .line 439
    .line 440
    move/from16 p6, v3

    .line 441
    .line 442
    move-object/from16 p7, v4

    .line 443
    .line 444
    invoke-static/range {p1 .. p7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 445
    .line 446
    .line 447
    :cond_b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 448
    .line 449
    return-object v0
.end method

.method public final i(ZLjava/lang/String;Ljava/util/List;Ljava/util/List;Lrs/c;)Ljava/lang/Object;
    .locals 30
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/purchase/GPayCoinsRecover;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lrs/c<",
            "-",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/purchase/GPayCoinsRecoverResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    const/4 v3, 0x1

    instance-of v4, v2, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayCoinsRecover$1;

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayCoinsRecover$1;

    iget v5, v4, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayCoinsRecover$1;->s:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayCoinsRecover$1;->s:I

    move-object/from16 v5, p0

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayCoinsRecover$1;

    move-object/from16 v5, p0

    invoke-direct {v4, v5, v2}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayCoinsRecover$1;-><init>(Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;Lrs/c;)V

    :goto_0
    iget-object v2, v4, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayCoinsRecover$1;->q:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    move-result-object v6

    .line 1
    iget v7, v4, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayCoinsRecover$1;->s:I

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v11, 0x0

    if-eqz v7, :cond_4

    if-eq v7, v3, :cond_3

    if-eq v7, v9, :cond_2

    if-ne v7, v8, :cond_1

    iget v0, v4, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayCoinsRecover$1;->p:I

    iget-object v1, v4, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayCoinsRecover$1;->m:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    iget-object v7, v4, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayCoinsRecover$1;->l:Ljava/lang/Object;

    iget-object v9, v4, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayCoinsRecover$1;->k:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    iget-object v10, v4, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayCoinsRecover$1;->j:Ljava/lang/Object;

    iget-object v12, v4, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayCoinsRecover$1;->i:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    move/from16 v29, v8

    move v8, v0

    move/from16 v0, v29

    goto/16 :goto_c

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v4, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayCoinsRecover$1;->o:Ljava/lang/Object;

    check-cast v0, Lcom/startshorts/androidplayer/bean/purchase/GPayCoinsRecover;

    iget-object v1, v4, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayCoinsRecover$1;->n:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    iget-object v7, v4, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayCoinsRecover$1;->m:Ljava/lang/Object;

    iget-object v12, v4, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayCoinsRecover$1;->l:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    iget-object v13, v4, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayCoinsRecover$1;->k:Ljava/lang/Object;

    iget-object v14, v4, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayCoinsRecover$1;->j:Ljava/lang/Object;

    check-cast v14, Ljava/util/List;

    iget-object v15, v4, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayCoinsRecover$1;->i:Ljava/lang/Object;

    check-cast v15, Ljava/util/List;

    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    check-cast v2, Lkotlin/Result;

    invoke-virtual {v2}, Lkotlin/Result;->n()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    move v2, v9

    goto/16 :goto_a

    :cond_3
    iget-boolean v0, v4, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayCoinsRecover$1;->h:Z

    iget-object v1, v4, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayCoinsRecover$1;->k:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v7, v4, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayCoinsRecover$1;->j:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    iget-object v12, v4, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayCoinsRecover$1;->i:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    check-cast v2, Lkotlin/Result;

    invoke-virtual {v2}, Lkotlin/Result;->n()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v29, v2

    move-object v2, v1

    move-object v1, v7

    move-object/from16 v7, v29

    goto :goto_1

    :cond_4
    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 2
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->n()Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS;

    move-result-object v2

    move-object/from16 v7, p2

    iput-object v7, v4, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayCoinsRecover$1;->i:Ljava/lang/Object;

    iput-object v1, v4, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayCoinsRecover$1;->j:Ljava/lang/Object;

    move-object/from16 v12, p4

    iput-object v12, v4, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayCoinsRecover$1;->k:Ljava/lang/Object;

    iput-boolean v0, v4, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayCoinsRecover$1;->h:Z

    iput v3, v4, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayCoinsRecover$1;->s:I

    invoke-virtual {v2, v0, v1, v4}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS;->b(ZLjava/util/List;Lrs/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v6, :cond_5

    return-object v6

    :cond_5
    move-object/from16 v29, v7

    move-object v7, v2

    move-object v2, v12

    move-object/from16 v12, v29

    .line 3
    :goto_1
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-static {v7}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_18

    move-object v14, v7

    check-cast v14, Lcom/startshorts/androidplayer/bean/purchase/GPayCoinsRecoverResponse;

    if-nez v14, :cond_6

    return-object v11

    .line 5
    :cond_6
    sget-object v15, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    invoke-virtual {v14}, Lcom/startshorts/androidplayer/bean/purchase/GPayCoinsRecoverResponse;->getCoinsCurrent()I

    move-result v16

    invoke-virtual {v14}, Lcom/startshorts/androidplayer/bean/purchase/GPayCoinsRecoverResponse;->getBonusCurrent()I

    move-result v17

    const/16 v19, 0x4

    const/16 v20, 0x0

    const/16 v18, 0x0

    invoke-static/range {v15 .. v20}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->w1(Lcom/startshorts/androidplayer/repo/account/AccountRepo;IIZILjava/lang/Object;)V

    .line 6
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-virtual {v14}, Lcom/startshorts/androidplayer/bean/purchase/GPayCoinsRecoverResponse;->getPayRecoverAndroidInfoResponses()Ljava/util/List;

    move-result-object v14

    check-cast v14, Ljava/lang/Iterable;

    .line 9
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_e

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Lcom/startshorts/androidplayer/bean/purchase/GPayCoinsRecoverResult;

    .line 10
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/purchase/GPayCoinsRecoverResult;->getCoinsRecover()I

    move-result v16

    if-lez v16, :cond_7

    .line 11
    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_7
    move-object/from16 v16, v1

    check-cast v16, Ljava/lang/Iterable;

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v18

    check-cast v19, Lcom/startshorts/androidplayer/bean/purchase/GPayCoinsRecover;

    .line 13
    sget-object v20, Lid/a;->a:Lid/a;

    invoke-virtual/range {v20 .. v20}, Lid/a;->c()Z

    move-result v20

    if-eqz v20, :cond_9

    .line 14
    invoke-virtual/range {v19 .. v19}, Lcom/startshorts/androidplayer/bean/purchase/GPayCoinsRecover;->getSkuId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/purchase/GPayCoinsRecoverResult;->getSkuId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual/range {v19 .. v19}, Lcom/startshorts/androidplayer/bean/purchase/GPayCoinsRecover;->getShortPlayId()I

    move-result v9

    if-lez v9, :cond_8

    move-object/from16 p1, v2

    move-object/from16 v21, v4

    goto :goto_5

    :cond_8
    move-object/from16 p1, v2

    move-object/from16 v21, v4

    goto :goto_4

    .line 15
    :cond_9
    invoke-virtual/range {v19 .. v19}, Lcom/startshorts/androidplayer/bean/purchase/GPayCoinsRecover;->getSkuId()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    invoke-virtual {v10}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->w()Ljava/lang/String;

    move-result-object v10

    move-object/from16 p1, v2

    move-object/from16 v21, v4

    const/4 v2, 0x2

    const/4 v4, 0x0

    invoke-static {v9, v10, v4, v2, v11}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual/range {v19 .. v19}, Lcom/startshorts/androidplayer/bean/purchase/GPayCoinsRecover;->getSkuId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/purchase/GPayCoinsRecoverResult;->getSkuId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual/range {v19 .. v19}, Lcom/startshorts/androidplayer/bean/purchase/GPayCoinsRecover;->getShortPlayId()I

    move-result v2

    if-lez v2, :cond_a

    goto :goto_5

    :cond_a
    :goto_4
    move-object/from16 v2, p1

    move-object/from16 v4, v21

    const/4 v9, 0x2

    goto :goto_3

    :cond_b
    move-object/from16 p1, v2

    move-object/from16 v21, v4

    move-object/from16 v18, v11

    .line 16
    :goto_5
    move-object/from16 v2, v18

    check-cast v2, Lcom/startshorts/androidplayer/bean/purchase/GPayCoinsRecover;

    if-eqz v2, :cond_c

    .line 17
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 18
    :cond_c
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    if-eqz v0, :cond_d

    .line 19
    const-string v4, "auto"

    goto :goto_6

    :cond_d
    const-string v4, "manual"

    :goto_6
    const-string v9, "type"

    invoke-virtual {v2, v9, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const-string v4, "genre"

    const-string v9, "in_app_purchase"

    invoke-virtual {v2, v4, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string v4, "result"

    const-string v9, "1"

    invoke-virtual {v2, v4, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const-string v4, "coins"

    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/purchase/GPayCoinsRecoverResult;->getCoinsRecover()I

    move-result v9

    invoke-virtual {v2, v4, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 23
    const-string v4, "tickets"

    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/purchase/GPayCoinsRecoverResult;->getBonusRecover()I

    move-result v3

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 24
    const-string v3, "scene"

    invoke-virtual {v2, v3, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 26
    new-instance v3, Lcom/startshorts/androidplayer/bean/event/EventInfo;

    const-string v23, "restore_result"

    const-wide/16 v25, 0x0

    const/16 v27, 0x4

    const/16 v28, 0x0

    move-object/from16 v22, v3

    move-object/from16 v24, v2

    invoke-direct/range {v22 .. v28}, Lcom/startshorts/androidplayer/bean/event/EventInfo;-><init>(Ljava/lang/String;Landroid/os/Bundle;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 27
    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, p1

    move-object/from16 v4, v21

    const/4 v3, 0x1

    const/4 v9, 0x2

    goto/16 :goto_2

    :cond_e
    move-object/from16 p1, v2

    move-object/from16 v21, v4

    .line 28
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    invoke-virtual {v0, v15}, Lcom/startshorts/androidplayer/manager/event/EventManager;->v0(Ljava/util/List;)V

    .line 29
    move-object v0, v1

    check-cast v0, Ljava/lang/Iterable;

    .line 30
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startshorts/androidplayer/bean/purchase/GPayCoinsRecover;

    .line 31
    sget-object v3, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->a:Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;

    invoke-virtual {v3}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->k()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 32
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuProductId()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    :cond_10
    move-object v4, v11

    :goto_8
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/purchase/GPayCoinsRecover;->getSkuProductId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/purchase/GPayCoinsRecover;->isExpansion()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 33
    invoke-direct {v3}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->m()Lhg/a;

    move-result-object v2

    invoke-virtual {v2}, Lhg/a;->a()V

    goto :goto_7

    .line 34
    :cond_11
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object/from16 v14, p1

    move-object v15, v1

    move-object v12, v13

    move-object/from16 v4, v21

    move-object v1, v0

    move-object v13, v7

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startshorts/androidplayer/bean/purchase/GPayCoinsRecover;

    .line 35
    sget-object v21, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->a:Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;

    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/purchase/GPayCoinsRecover;->getShortPlayId()I

    move-result v23

    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/purchase/GPayCoinsRecover;->getOrderNo()Ljava/lang/String;

    move-result-object v24

    iput-object v15, v4, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayCoinsRecover$1;->i:Ljava/lang/Object;

    iput-object v14, v4, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayCoinsRecover$1;->j:Ljava/lang/Object;

    iput-object v13, v4, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayCoinsRecover$1;->k:Ljava/lang/Object;

    iput-object v12, v4, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayCoinsRecover$1;->l:Ljava/lang/Object;

    iput-object v7, v4, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayCoinsRecover$1;->m:Ljava/lang/Object;

    iput-object v1, v4, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayCoinsRecover$1;->n:Ljava/lang/Object;

    iput-object v0, v4, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayCoinsRecover$1;->o:Ljava/lang/Object;

    const/4 v2, 0x2

    iput v2, v4, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayCoinsRecover$1;->s:I

    const/16 v22, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x0

    move-object/from16 v25, v4

    invoke-static/range {v21 .. v27}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->u(Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;Landroid/content/Context;ILjava/lang/String;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v6, :cond_12

    return-object v6

    :cond_12
    :goto_a
    invoke-static {v3}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 36
    new-instance v3, Lcom/startshorts/androidplayer/bean/purchase/GPayCoinsRecoverResult;

    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/purchase/GPayCoinsRecover;->getSkuId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/purchase/GPayCoinsRecover;->getShortPlayId()I

    move-result v0

    const/4 v9, 0x0

    invoke-direct {v3, v8, v9, v9, v0}, Lcom/startshorts/androidplayer/bean/purchase/GPayCoinsRecoverResult;-><init>(Ljava/lang/String;III)V

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_13
    const/4 v9, 0x0

    goto :goto_9

    :cond_14
    const/4 v9, 0x0

    .line 37
    check-cast v15, Ljava/lang/Iterable;

    .line 38
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, v0

    move v0, v9

    move-object v9, v12

    move-object v10, v13

    move-object v12, v14

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    add-int/lit8 v8, v0, 0x1

    if-gez v0, :cond_15

    invoke-static {}, Lkotlin/collections/CollectionsKt;->y()V

    :cond_15
    check-cast v2, Lcom/startshorts/androidplayer/bean/purchase/GPayCoinsRecover;

    .line 39
    sget-object v2, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    new-instance v13, Lcom/startshorts/androidplayer/bean/purchase/ConsumeData;

    sget-object v14, Lle/h;->a:Lle/h;

    invoke-virtual {v14}, Lle/h;->a()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v13, v14, v0}, Lcom/startshorts/androidplayer/bean/purchase/ConsumeData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v12, v4, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayCoinsRecover$1;->i:Ljava/lang/Object;

    iput-object v10, v4, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayCoinsRecover$1;->j:Ljava/lang/Object;

    iput-object v9, v4, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayCoinsRecover$1;->k:Ljava/lang/Object;

    iput-object v7, v4, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayCoinsRecover$1;->l:Ljava/lang/Object;

    iput-object v1, v4, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayCoinsRecover$1;->m:Ljava/lang/Object;

    iput-object v11, v4, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayCoinsRecover$1;->n:Ljava/lang/Object;

    iput-object v11, v4, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayCoinsRecover$1;->o:Ljava/lang/Object;

    iput v8, v4, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayCoinsRecover$1;->p:I

    const/4 v0, 0x3

    iput v0, v4, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayCoinsRecover$1;->s:I

    invoke-virtual {v2, v13, v4}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->u(Lcom/startshorts/androidplayer/bean/purchase/ConsumeData;Lrs/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v6, :cond_16

    return-object v6

    :cond_16
    :goto_c
    move v0, v8

    goto :goto_b

    :cond_17
    move-object v13, v9

    move-object v7, v10

    .line 40
    :cond_18
    invoke-static {v7}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_d

    .line 41
    :cond_19
    invoke-static {}, Lau/c;->d()Lau/c;

    move-result-object v0

    new-instance v1, Lcom/startshorts/androidplayer/bean/eventbus/UserRechargedEvent;

    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/eventbus/UserRechargedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lau/c;->l(Ljava/lang/Object;)V

    return-object v13

    :cond_1a
    :goto_d
    return-object v11
.end method

.method public final j(Landroid/content/Context;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lzc/f;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lrs/c;)Ljava/lang/Object;
    .locals 18
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    .param p4    # Lzc/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/bean/purchase/CoinSku;",
            "Lzc/f;",
            "Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p7

    .line 2
    .line 3
    instance-of v1, v0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$1;

    .line 9
    .line 10
    iget v2, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$1;->n:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$1;->n:I

    .line 20
    .line 21
    move-object/from16 v2, p0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$1;

    .line 25
    .line 26
    move-object/from16 v2, p0

    .line 27
    .line 28
    invoke-direct {v1, v2, v0}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$1;-><init>(Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;Lrs/c;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v0, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$1;->l:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v10

    .line 37
    iget v3, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$1;->n:I

    .line 38
    .line 39
    const/4 v11, 0x2

    .line 40
    const/4 v12, 0x0

    .line 41
    packed-switch v3, :pswitch_data_0

    .line 42
    .line 43
    .line 44
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0

    .line 52
    :pswitch_0
    iget-object v1, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$1;->i:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v1, Ljava/lang/Throwable;

    .line 55
    .line 56
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_6

    .line 60
    .line 61
    :pswitch_1
    iget-object v3, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$1;->j:Ljava/lang/Object;

    .line 62
    .line 63
    iget-object v4, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$1;->i:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v4, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 66
    .line 67
    iget-object v5, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$1;->h:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v5, Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    goto/16 :goto_5

    .line 75
    .line 76
    :pswitch_2
    iget-object v3, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$1;->k:Ljava/lang/Object;

    .line 77
    .line 78
    iget-object v4, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$1;->j:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v4, Lzc/f;

    .line 81
    .line 82
    iget-object v5, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$1;->i:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v5, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 85
    .line 86
    iget-object v6, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$1;->h:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v6, Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    goto/16 :goto_2

    .line 94
    .line 95
    :pswitch_3
    iget-object v3, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$1;->k:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v3, Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;

    .line 98
    .line 99
    iget-object v4, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$1;->j:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v4, Lzc/f;

    .line 102
    .line 103
    iget-object v5, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$1;->i:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v5, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 106
    .line 107
    iget-object v6, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$1;->h:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v6, Ljava/lang/String;

    .line 110
    .line 111
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    check-cast v0, Lkotlin/Result;

    .line 115
    .line 116
    invoke-virtual {v0}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    move-object v15, v3

    .line 121
    move-object v14, v4

    .line 122
    move-object v13, v5

    .line 123
    move-object v3, v0

    .line 124
    move-object v0, v6

    .line 125
    goto :goto_1

    .line 126
    :pswitch_4
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->n()Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    move-object/from16 v0, p2

    .line 134
    .line 135
    iput-object v0, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$1;->h:Ljava/lang/Object;

    .line 136
    .line 137
    move-object/from16 v13, p3

    .line 138
    .line 139
    iput-object v13, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$1;->i:Ljava/lang/Object;

    .line 140
    .line 141
    move-object/from16 v14, p4

    .line 142
    .line 143
    iput-object v14, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$1;->j:Ljava/lang/Object;

    .line 144
    .line 145
    move-object/from16 v15, p5

    .line 146
    .line 147
    iput-object v15, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$1;->k:Ljava/lang/Object;

    .line 148
    .line 149
    const/4 v4, 0x1

    .line 150
    iput v4, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$1;->n:I

    .line 151
    .line 152
    move-object/from16 v4, p1

    .line 153
    .line 154
    move-object/from16 v5, p3

    .line 155
    .line 156
    move-object/from16 v6, p4

    .line 157
    .line 158
    move-object/from16 v7, p5

    .line 159
    .line 160
    move-object/from16 v8, p6

    .line 161
    .line 162
    move-object v9, v1

    .line 163
    invoke-virtual/range {v3 .. v9}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS;->c(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lzc/f;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lrs/c;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    if-ne v3, v10, :cond_1

    .line 168
    .line 169
    return-object v10

    .line 170
    :cond_1
    :goto_1
    invoke-static {v3}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    if-eqz v4, :cond_a

    .line 175
    .line 176
    move-object v4, v3

    .line 177
    check-cast v4, Lcom/startshorts/androidplayer/bean/purchase/GPayExchangeCoinsResult;

    .line 178
    .line 179
    if-nez v4, :cond_2

    .line 180
    .line 181
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 182
    .line 183
    return-object v0

    .line 184
    :cond_2
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/GPayExchangeCoinsResult;->getRechargeUserInfo()Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    sget-object v6, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 189
    .line 190
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->t0()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v7

    .line 194
    if-eqz v5, :cond_4

    .line 195
    .line 196
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;->getUserCode()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v8

    .line 200
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v8

    .line 204
    if-nez v8, :cond_4

    .line 205
    .line 206
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/GPayExchangeCoinsResult;->getUserCodeHaveRight()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v8

    .line 210
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v7

    .line 214
    if-nez v7, :cond_4

    .line 215
    .line 216
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    new-instance v6, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$2$1;

    .line 221
    .line 222
    invoke-direct {v6, v0, v5, v12}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$2$1;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;Lrs/c;)V

    .line 223
    .line 224
    .line 225
    iput-object v0, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$1;->h:Ljava/lang/Object;

    .line 226
    .line 227
    iput-object v13, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$1;->i:Ljava/lang/Object;

    .line 228
    .line 229
    iput-object v14, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$1;->j:Ljava/lang/Object;

    .line 230
    .line 231
    iput-object v3, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$1;->k:Ljava/lang/Object;

    .line 232
    .line 233
    iput v11, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$1;->n:I

    .line 234
    .line 235
    invoke-static {v4, v6, v1}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v4

    .line 239
    if-ne v4, v10, :cond_3

    .line 240
    .line 241
    return-object v10

    .line 242
    :cond_3
    move-object v6, v0

    .line 243
    move-object v5, v13

    .line 244
    move-object v4, v14

    .line 245
    :goto_2
    move-object v14, v4

    .line 246
    move-object v4, v5

    .line 247
    move-object v5, v6

    .line 248
    goto/16 :goto_4

    .line 249
    .line 250
    :cond_4
    invoke-virtual {v13}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuType()I

    .line 251
    .line 252
    .line 253
    move-result v5

    .line 254
    const/16 v7, 0xc

    .line 255
    .line 256
    if-ne v5, v7, :cond_5

    .line 257
    .line 258
    sget-object v4, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->a:Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;

    .line 259
    .line 260
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->u()V

    .line 261
    .line 262
    .line 263
    sget-object v4, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 264
    .line 265
    const/4 v5, 0x6

    .line 266
    const/4 v6, 0x0

    .line 267
    const-string v7, "exchange_coins_success"

    .line 268
    .line 269
    const/4 v8, 0x0

    .line 270
    const-wide/16 v16, 0x0

    .line 271
    .line 272
    move-object/from16 p1, v4

    .line 273
    .line 274
    move-object/from16 p2, v7

    .line 275
    .line 276
    move-object/from16 p3, v8

    .line 277
    .line 278
    move-wide/from16 p4, v16

    .line 279
    .line 280
    move/from16 p6, v5

    .line 281
    .line 282
    move-object/from16 p7, v6

    .line 283
    .line 284
    invoke-static/range {p1 .. p7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 288
    .line 289
    .line 290
    move-result-object v4

    .line 291
    new-instance v5, Lcom/startshorts/androidplayer/bean/eventbus/UserRechargedEvent;

    .line 292
    .line 293
    invoke-direct {v5}, Lcom/startshorts/androidplayer/bean/eventbus/UserRechargedEvent;-><init>()V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v4, v5}, Lau/c;->l(Ljava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 300
    .line 301
    .line 302
    move-result-object v4

    .line 303
    new-instance v5, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$2$2;

    .line 304
    .line 305
    move-object/from16 p1, v5

    .line 306
    .line 307
    move-object/from16 p2, v0

    .line 308
    .line 309
    move-object/from16 p3, v13

    .line 310
    .line 311
    move-object/from16 p4, v14

    .line 312
    .line 313
    move-object/from16 p5, v15

    .line 314
    .line 315
    move-object/from16 p6, v6

    .line 316
    .line 317
    invoke-direct/range {p1 .. p6}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$2$2;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lzc/f;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Lrs/c;)V

    .line 318
    .line 319
    .line 320
    iput-object v0, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$1;->h:Ljava/lang/Object;

    .line 321
    .line 322
    iput-object v13, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$1;->i:Ljava/lang/Object;

    .line 323
    .line 324
    iput-object v14, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$1;->j:Ljava/lang/Object;

    .line 325
    .line 326
    iput-object v3, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$1;->k:Ljava/lang/Object;

    .line 327
    .line 328
    const/4 v6, 0x3

    .line 329
    iput v6, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$1;->n:I

    .line 330
    .line 331
    invoke-static {v4, v5, v1}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v4

    .line 335
    if-ne v4, v10, :cond_3

    .line 336
    .line 337
    return-object v10

    .line 338
    :cond_5
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/GPayExchangeCoinsResult;->getCoins()I

    .line 339
    .line 340
    .line 341
    move-result v5

    .line 342
    if-lez v5, :cond_8

    .line 343
    .line 344
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/GPayExchangeCoinsResult;->getCoins()I

    .line 345
    .line 346
    .line 347
    move-result v5

    .line 348
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/GPayExchangeCoinsResult;->getBonus()I

    .line 349
    .line 350
    .line 351
    move-result v4

    .line 352
    const/4 v7, 0x4

    .line 353
    const/4 v8, 0x0

    .line 354
    const/4 v9, 0x0

    .line 355
    move-object/from16 p1, v6

    .line 356
    .line 357
    move/from16 p2, v5

    .line 358
    .line 359
    move/from16 p3, v4

    .line 360
    .line 361
    move/from16 p4, v9

    .line 362
    .line 363
    move/from16 p5, v7

    .line 364
    .line 365
    move-object/from16 p6, v8

    .line 366
    .line 367
    invoke-static/range {p1 .. p6}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->w1(Lcom/startshorts/androidplayer/repo/account/AccountRepo;IIZILjava/lang/Object;)V

    .line 368
    .line 369
    .line 370
    sget-object v4, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->a:Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;

    .line 371
    .line 372
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->u()V

    .line 373
    .line 374
    .line 375
    sget-object v5, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 376
    .line 377
    const/4 v6, 0x6

    .line 378
    const/4 v7, 0x0

    .line 379
    const-string v8, "exchange_coins_success"

    .line 380
    .line 381
    const/4 v9, 0x0

    .line 382
    const-wide/16 v16, 0x0

    .line 383
    .line 384
    move-object/from16 p1, v5

    .line 385
    .line 386
    move-object/from16 p2, v8

    .line 387
    .line 388
    move-object/from16 p3, v9

    .line 389
    .line 390
    move-wide/from16 p4, v16

    .line 391
    .line 392
    move/from16 p6, v6

    .line 393
    .line 394
    move-object/from16 p7, v7

    .line 395
    .line 396
    invoke-static/range {p1 .. p7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->k()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 400
    .line 401
    .line 402
    move-result-object v5

    .line 403
    if-eqz v5, :cond_6

    .line 404
    .line 405
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuProductId()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v5

    .line 409
    goto :goto_3

    .line 410
    :cond_6
    move-object v5, v12

    .line 411
    :goto_3
    invoke-virtual {v13}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuProductId()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v6

    .line 415
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    move-result v5

    .line 419
    if-eqz v5, :cond_7

    .line 420
    .line 421
    invoke-virtual {v13}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->isExpansion()Z

    .line 422
    .line 423
    .line 424
    move-result v5

    .line 425
    if-eqz v5, :cond_7

    .line 426
    .line 427
    invoke-direct {v4}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->m()Lhg/a;

    .line 428
    .line 429
    .line 430
    move-result-object v4

    .line 431
    invoke-virtual {v4}, Lhg/a;->a()V

    .line 432
    .line 433
    .line 434
    :cond_7
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 435
    .line 436
    .line 437
    move-result-object v4

    .line 438
    new-instance v5, Lcom/startshorts/androidplayer/bean/eventbus/UserRechargedEvent;

    .line 439
    .line 440
    invoke-direct {v5}, Lcom/startshorts/androidplayer/bean/eventbus/UserRechargedEvent;-><init>()V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v4, v5}, Lau/c;->l(Ljava/lang/Object;)V

    .line 444
    .line 445
    .line 446
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 447
    .line 448
    .line 449
    move-result-object v4

    .line 450
    new-instance v5, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$2$3;

    .line 451
    .line 452
    const/4 v6, 0x0

    .line 453
    move-object/from16 p1, v5

    .line 454
    .line 455
    move-object/from16 p2, v0

    .line 456
    .line 457
    move-object/from16 p3, v13

    .line 458
    .line 459
    move-object/from16 p4, v14

    .line 460
    .line 461
    move-object/from16 p5, v15

    .line 462
    .line 463
    move-object/from16 p6, v6

    .line 464
    .line 465
    invoke-direct/range {p1 .. p6}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$2$3;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lzc/f;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Lrs/c;)V

    .line 466
    .line 467
    .line 468
    iput-object v0, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$1;->h:Ljava/lang/Object;

    .line 469
    .line 470
    iput-object v13, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$1;->i:Ljava/lang/Object;

    .line 471
    .line 472
    iput-object v14, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$1;->j:Ljava/lang/Object;

    .line 473
    .line 474
    iput-object v3, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$1;->k:Ljava/lang/Object;

    .line 475
    .line 476
    const/4 v6, 0x4

    .line 477
    iput v6, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$1;->n:I

    .line 478
    .line 479
    invoke-static {v4, v5, v1}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v4

    .line 483
    if-ne v4, v10, :cond_3

    .line 484
    .line 485
    return-object v10

    .line 486
    :cond_8
    move-object v5, v0

    .line 487
    move-object v4, v13

    .line 488
    :goto_4
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 489
    .line 490
    const/4 v6, 0x0

    .line 491
    invoke-virtual {v0, v6}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->h1(Z)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGpSkuId()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    sget-object v7, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 499
    .line 500
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->w()Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v8

    .line 504
    invoke-static {v0, v8, v6, v11, v12}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 505
    .line 506
    .line 507
    move-result v0

    .line 508
    if-nez v0, :cond_9

    .line 509
    .line 510
    new-instance v0, Lcom/startshorts/androidplayer/bean/purchase/ConsumeData;

    .line 511
    .line 512
    sget-object v6, Lle/h;->a:Lle/h;

    .line 513
    .line 514
    invoke-virtual {v6}, Lle/h;->a()Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v6

    .line 518
    invoke-virtual {v14}, Lzc/f;->f()Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v8

    .line 522
    invoke-direct {v0, v6, v8}, Lcom/startshorts/androidplayer/bean/purchase/ConsumeData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    iput-object v5, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$1;->h:Ljava/lang/Object;

    .line 526
    .line 527
    iput-object v4, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$1;->i:Ljava/lang/Object;

    .line 528
    .line 529
    iput-object v3, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$1;->j:Ljava/lang/Object;

    .line 530
    .line 531
    iput-object v12, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$1;->k:Ljava/lang/Object;

    .line 532
    .line 533
    const/4 v6, 0x5

    .line 534
    iput v6, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$1;->n:I

    .line 535
    .line 536
    invoke-virtual {v7, v0, v1}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->u(Lcom/startshorts/androidplayer/bean/purchase/ConsumeData;Lrs/c;)Ljava/lang/Object;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    if-ne v0, v10, :cond_9

    .line 541
    .line 542
    return-object v10

    .line 543
    :cond_9
    :goto_5
    move-object v13, v4

    .line 544
    move-object v0, v5

    .line 545
    :cond_a
    invoke-static {v3}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 546
    .line 547
    .line 548
    move-result-object v4

    .line 549
    if-eqz v4, :cond_c

    .line 550
    .line 551
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 552
    .line 553
    .line 554
    move-result-object v5

    .line 555
    new-instance v6, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$3$1;

    .line 556
    .line 557
    invoke-direct {v6, v0, v13, v4, v12}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$3$1;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Ljava/lang/Throwable;Lrs/c;)V

    .line 558
    .line 559
    .line 560
    iput-object v3, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$1;->h:Ljava/lang/Object;

    .line 561
    .line 562
    iput-object v4, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$1;->i:Ljava/lang/Object;

    .line 563
    .line 564
    iput-object v12, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$1;->j:Ljava/lang/Object;

    .line 565
    .line 566
    iput-object v12, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$1;->k:Ljava/lang/Object;

    .line 567
    .line 568
    const/4 v0, 0x6

    .line 569
    iput v0, v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$1;->n:I

    .line 570
    .line 571
    invoke-static {v5, v6, v1}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    if-ne v0, v10, :cond_b

    .line 576
    .line 577
    return-object v10

    .line 578
    :cond_b
    move-object v1, v4

    .line 579
    :goto_6
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 580
    .line 581
    invoke-static {v1}, Ljk/z;->a(Ljava/lang/Throwable;)Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 582
    .line 583
    .line 584
    move-result-object v1

    .line 585
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->D(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)Landroid/os/Bundle;

    .line 586
    .line 587
    .line 588
    move-result-object v1

    .line 589
    const/4 v3, 0x4

    .line 590
    const/4 v4, 0x0

    .line 591
    const-string v5, "exchange_coins_failed"

    .line 592
    .line 593
    const-wide/16 v6, 0x0

    .line 594
    .line 595
    move-object/from16 p1, v0

    .line 596
    .line 597
    move-object/from16 p2, v5

    .line 598
    .line 599
    move-object/from16 p3, v1

    .line 600
    .line 601
    move-wide/from16 p4, v6

    .line 602
    .line 603
    move/from16 p6, v3

    .line 604
    .line 605
    move-object/from16 p7, v4

    .line 606
    .line 607
    invoke-static/range {p1 .. p7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 608
    .line 609
    .line 610
    :cond_c
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 611
    .line 612
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final k()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->m()Lhg/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lhg/a;->c()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final l()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->m()Lhg/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lhg/a;->d()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final q()Lkotlinx/coroutines/r;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    new-instance v3, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$notifyThirdPartyPayEnable$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, v1}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$notifyThirdPartyPayEnable$1;-><init>(Lrs/c;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v1, "notifyThirdPartyPayEnable(2)"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public final r(Lrs/c;)Ljava/lang/Object;
    .locals 4
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/purchase/QueryBlackFridayCoinSkuResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$queryBlackFridayCoinSkuList$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$queryBlackFridayCoinSkuList$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$queryBlackFridayCoinSkuList$1;->j:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$queryBlackFridayCoinSkuList$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$queryBlackFridayCoinSkuList$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$queryBlackFridayCoinSkuList$1;-><init>(Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$queryBlackFridayCoinSkuList$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$queryBlackFridayCoinSkuList$1;->j:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    check-cast p1, Lkotlin/Result;

    .line 42
    .line 43
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->n()Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iput v3, v0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$queryBlackFridayCoinSkuList$1;->j:I

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS;->d(Lrs/c;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-ne p1, v1, :cond_3

    .line 70
    .line 71
    return-object v1

    .line 72
    :cond_3
    :goto_1
    return-object p1
.end method

.method public final s(ZZLjava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 10
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p4, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$queryNormalCoinSkuList$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$queryNormalCoinSkuList$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$queryNormalCoinSkuList$1;->l:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$queryNormalCoinSkuList$1;->l:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$queryNormalCoinSkuList$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$queryNormalCoinSkuList$1;-><init>(Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$queryNormalCoinSkuList$1;->j:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$queryNormalCoinSkuList$1;->l:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-boolean p2, v0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$queryNormalCoinSkuList$1;->h:Z

    .line 39
    .line 40
    iget-object p1, v0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$queryNormalCoinSkuList$1;->i:Ljava/lang/Object;

    .line 41
    .line 42
    move-object p3, p1

    .line 43
    check-cast p3, Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    check-cast p4, Lkotlin/Result;

    .line 49
    .line 50
    invoke-virtual {p4}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    goto :goto_2

    .line 55
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 58
    .line 59
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1

    .line 63
    :cond_2
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->m()Lhg/a;

    .line 67
    .line 68
    .line 69
    move-result-object p4

    .line 70
    invoke-virtual {p4, p3}, Lhg/a;->e(Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p4

    .line 74
    invoke-static {p4}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_4

    .line 79
    .line 80
    sget-object v4, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 81
    .line 82
    new-instance v7, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$queryNormalCoinSkuList$2;

    .line 83
    .line 84
    const/4 v0, 0x0

    .line 85
    invoke-direct {v7, p1, p3, p2, v0}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$queryNormalCoinSkuList$2;-><init>(ZLjava/lang/String;ZLrs/c;)V

    .line 86
    .line 87
    .line 88
    const/4 v8, 0x2

    .line 89
    const/4 v9, 0x0

    .line 90
    const-string v5, "preQueryNormalCoinSkuList"

    .line 91
    .line 92
    const/4 v6, 0x0

    .line 93
    invoke-static/range {v4 .. v9}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 94
    .line 95
    .line 96
    invoke-static {p4}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_3

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_3
    move-object v0, p4

    .line 104
    :goto_1
    check-cast v0, Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;

    .line 105
    .line 106
    invoke-direct {p0, p2, v0}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->g(ZLcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;)V

    .line 107
    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->n()Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS;

    .line 111
    .line 112
    .line 113
    move-result-object p4

    .line 114
    iput-object p3, v0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$queryNormalCoinSkuList$1;->i:Ljava/lang/Object;

    .line 115
    .line 116
    iput-boolean p2, v0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$queryNormalCoinSkuList$1;->h:Z

    .line 117
    .line 118
    iput v3, v0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$queryNormalCoinSkuList$1;->l:I

    .line 119
    .line 120
    invoke-virtual {p4, p1, p3, v0}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS;->e(ZLjava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    if-ne p1, v1, :cond_5

    .line 125
    .line 126
    return-object v1

    .line 127
    :cond_5
    :goto_2
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result p4

    .line 131
    if-eqz p4, :cond_6

    .line 132
    .line 133
    move-object p4, p1

    .line 134
    check-cast p4, Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;

    .line 135
    .line 136
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->a:Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;

    .line 137
    .line 138
    invoke-direct {v0}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->m()Lhg/a;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v1, p3, p4}, Lhg/a;->g(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;)V

    .line 143
    .line 144
    .line 145
    invoke-direct {v0, p2, p4}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->g(ZLcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;)V

    .line 146
    .line 147
    .line 148
    :cond_6
    move-object p4, p1

    .line 149
    :goto_3
    return-object p4
.end method

.method public final u()V
    .locals 7

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->c1()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

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
    if-nez v0, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    sget-object v1, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 25
    .line 26
    new-instance v4, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$refreshPayScore$1;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-direct {v4, v0}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$refreshPayScore$1;-><init>(Lrs/c;)V

    .line 30
    .line 31
    .line 32
    const/4 v5, 0x2

    .line 33
    const/4 v6, 0x0

    .line 34
    const-string v2, "refreshPayScore"

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-static/range {v1 .. v6}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final x(Z)V
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->c1()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

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
    if-nez v0, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->m()Lhg/a;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, p1}, Lhg/a;->f(Z)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
