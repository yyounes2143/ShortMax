.class final Lcom/unity3d/ads/core/data/manager/TransactionEventManager$onPurchasesReceived$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TransactionEventManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/data/manager/TransactionEventManager;->onPurchasesReceived(Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lgt/g0;",
        "Lrs/c<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.unity3d.ads.core.data.manager.TransactionEventManager$onPurchasesReceived$1"
    f = "TransactionEventManager.kt"
    l = {
        0x5c,
        0x6d,
        0x70
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTransactionEventManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransactionEventManager.kt\ncom/unity3d/ads/core/data/manager/TransactionEventManager$onPurchasesReceived$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,122:1\n1549#2:123\n1620#2,3:124\n1864#2,3:127\n1549#2:132\n1620#2,3:133\n37#3,2:130\n*S KotlinDebug\n*F\n+ 1 TransactionEventManager.kt\ncom/unity3d/ads/core/data/manager/TransactionEventManager$onPurchasesReceived$1\n*L\n89#1:123\n89#1:124,3\n90#1:127,3\n100#1:132\n100#1:133,3\n109#1:130,2\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $purchases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unity3d/services/store/gpbl/bridges/PurchaseBridge;",
            ">;"
        }
    .end annotation
.end field

.field I$0:I

.field I$1:I

.field J$0:J

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/data/manager/TransactionEventManager;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/unity3d/ads/core/data/manager/TransactionEventManager;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/unity3d/services/store/gpbl/bridges/PurchaseBridge;",
            ">;",
            "Lcom/unity3d/ads/core/data/manager/TransactionEventManager;",
            "Lrs/c<",
            "-",
            "Lcom/unity3d/ads/core/data/manager/TransactionEventManager$onPurchasesReceived$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager$onPurchasesReceived$1;->$purchases:Ljava/util/List;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager$onPurchasesReceived$1;->this$0:Lcom/unity3d/ads/core/data/manager/TransactionEventManager;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic i(Ljava/util/List;ILjava/util/List;Lcom/unity3d/ads/core/data/manager/TransactionEventManager;Lcom/unity3d/services/store/gpbl/bridges/PurchaseBridge;Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/unity3d/ads/core/data/manager/TransactionEventManager$onPurchasesReceived$1;->invokeSuspend$lambda$3$lambda$2(Ljava/util/List;ILjava/util/List;Lcom/unity3d/ads/core/data/manager/TransactionEventManager;Lcom/unity3d/services/store/gpbl/bridges/PurchaseBridge;Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final invokeSuspend$lambda$3$lambda$2(Ljava/util/List;ILjava/util/List;Lcom/unity3d/ads/core/data/manager/TransactionEventManager;Lcom/unity3d/services/store/gpbl/bridges/PurchaseBridge;Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;Ljava/util/List;)V
    .locals 2

    .line 1
    if-eqz p6, :cond_2

    .line 2
    .line 3
    invoke-virtual {p5}, Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;->getResponseCode()Lcom/unity3d/services/store/gpbl/BillingResultResponseCode;

    .line 4
    .line 5
    .line 6
    move-result-object p5

    .line 7
    sget-object v0, Lcom/unity3d/services/store/gpbl/BillingResultResponseCode;->OK:Lcom/unity3d/services/store/gpbl/BillingResultResponseCode;

    .line 8
    .line 9
    if-eq p5, v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    check-cast p6, Ljava/lang/Iterable;

    .line 13
    .line 14
    new-instance p5, Ljava/util/ArrayList;

    .line 15
    .line 16
    const/16 v0, 0xa

    .line 17
    .line 18
    invoke-static {p6, v0}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-direct {p5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p6

    .line 29
    :goto_0
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/unity3d/services/store/gpbl/bridges/SkuDetailsBridge;

    .line 40
    .line 41
    invoke-static {p3}, Lcom/unity3d/ads/core/data/manager/TransactionEventManager;->access$getGetTransactionData$p(Lcom/unity3d/ads/core/data/manager/TransactionEventManager;)Lcom/unity3d/ads/core/domain/events/GetTransactionData;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-interface {v1, p4, v0}, Lcom/unity3d/ads/core/domain/events/GetTransactionData;->invoke(Lcom/unity3d/services/store/gpbl/bridges/PurchaseBridge;Lcom/unity3d/services/store/gpbl/bridges/SkuDetailsBridge;)Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-interface {p5, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-interface {p2, p5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 54
    .line 55
    .line 56
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Lgt/p;

    .line 61
    .line 62
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 63
    .line 64
    invoke-interface {p0, p1}, Lgt/p;->i(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_2
    :goto_1
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    check-cast p0, Lgt/p;

    .line 73
    .line 74
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 75
    .line 76
    invoke-interface {p0, p1}, Lgt/p;->i(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance p1, Lcom/unity3d/ads/core/data/manager/TransactionEventManager$onPurchasesReceived$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager$onPurchasesReceived$1;->$purchases:Ljava/util/List;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager$onPurchasesReceived$1;->this$0:Lcom/unity3d/ads/core/data/manager/TransactionEventManager;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/unity3d/ads/core/data/manager/TransactionEventManager$onPurchasesReceived$1;-><init>(Ljava/util/List;Lcom/unity3d/ads/core/data/manager/TransactionEventManager;Lrs/c;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public final invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
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
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/data/manager/TransactionEventManager$onPurchasesReceived$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/data/manager/TransactionEventManager$onPurchasesReceived$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/data/manager/TransactionEventManager$onPurchasesReceived$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/data/manager/TransactionEventManager$onPurchasesReceived$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, v0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager$onPurchasesReceived$1;->label:I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x3

    .line 11
    const/4 v5, 0x2

    .line 12
    const/4 v6, 0x1

    .line 13
    const/4 v7, 0x0

    .line 14
    if-eqz v2, :cond_3

    .line 15
    .line 16
    if-eq v2, v6, :cond_2

    .line 17
    .line 18
    if-eq v2, v5, :cond_1

    .line 19
    .line 20
    if-ne v2, v4, :cond_0

    .line 21
    .line 22
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    move-object/from16 v2, p1

    .line 26
    .line 27
    goto/16 :goto_6

    .line 28
    .line 29
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 32
    .line 33
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v1

    .line 37
    :cond_1
    iget-object v2, v0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager$onPurchasesReceived$1;->L$0:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v2, Ljava/util/List;

    .line 40
    .line 41
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto/16 :goto_5

    .line 45
    .line 46
    :cond_2
    iget-wide v8, v0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager$onPurchasesReceived$1;->J$0:J

    .line 47
    .line 48
    iget v2, v0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager$onPurchasesReceived$1;->I$1:I

    .line 49
    .line 50
    iget v10, v0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager$onPurchasesReceived$1;->I$0:I

    .line 51
    .line 52
    iget-object v11, v0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager$onPurchasesReceived$1;->L$4:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v11, Lcom/unity3d/services/store/gpbl/bridges/PurchaseBridge;

    .line 55
    .line 56
    iget-object v12, v0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager$onPurchasesReceived$1;->L$3:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v12, Ljava/util/Iterator;

    .line 59
    .line 60
    iget-object v13, v0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager$onPurchasesReceived$1;->L$2:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v13, Lcom/unity3d/ads/core/data/manager/TransactionEventManager;

    .line 63
    .line 64
    iget-object v14, v0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager$onPurchasesReceived$1;->L$1:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v14, Ljava/util/List;

    .line 67
    .line 68
    iget-object v15, v0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager$onPurchasesReceived$1;->L$0:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v15, Ljava/util/List;

    .line 71
    .line 72
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    move-object/from16 v21, v11

    .line 76
    .line 77
    move-object v4, v15

    .line 78
    move-wide/from16 v22, v8

    .line 79
    .line 80
    move-object/from16 v9, p1

    .line 81
    .line 82
    :goto_0
    move v8, v10

    .line 83
    move-wide/from16 v10, v22

    .line 84
    .line 85
    goto/16 :goto_3

    .line 86
    .line 87
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    new-instance v2, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .line 94
    .line 95
    iget-object v8, v0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager$onPurchasesReceived$1;->$purchases:Ljava/util/List;

    .line 96
    .line 97
    check-cast v8, Ljava/lang/Iterable;

    .line 98
    .line 99
    new-instance v9, Ljava/util/ArrayList;

    .line 100
    .line 101
    const/16 v10, 0xa

    .line 102
    .line 103
    invoke-static {v8, v10}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 104
    .line 105
    .line 106
    move-result v10

    .line 107
    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 108
    .line 109
    .line 110
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    .line 116
    .line 117
    move-result v10

    .line 118
    if-eqz v10, :cond_4

    .line 119
    .line 120
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v10

    .line 124
    check-cast v10, Lcom/unity3d/services/store/gpbl/bridges/PurchaseBridge;

    .line 125
    .line 126
    invoke-static {v7, v6, v7}, Lgt/r;->b(Lkotlinx/coroutines/r;ILjava/lang/Object;)Lgt/p;

    .line 127
    .line 128
    .line 129
    move-result-object v10

    .line 130
    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_4
    iget-object v8, v0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager$onPurchasesReceived$1;->$purchases:Ljava/util/List;

    .line 135
    .line 136
    check-cast v8, Ljava/lang/Iterable;

    .line 137
    .line 138
    iget-object v10, v0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager$onPurchasesReceived$1;->this$0:Lcom/unity3d/ads/core/data/manager/TransactionEventManager;

    .line 139
    .line 140
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 141
    .line 142
    .line 143
    move-result-object v8

    .line 144
    move-object v12, v8

    .line 145
    move-object v14, v9

    .line 146
    move-object v13, v10

    .line 147
    move v8, v3

    .line 148
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 149
    .line 150
    .line 151
    move-result v9

    .line 152
    if-eqz v9, :cond_8

    .line 153
    .line 154
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v9

    .line 158
    add-int/lit8 v10, v8, 0x1

    .line 159
    .line 160
    if-gez v8, :cond_5

    .line 161
    .line 162
    invoke-static {}, Lkotlin/collections/CollectionsKt;->y()V

    .line 163
    .line 164
    .line 165
    :cond_5
    move-object v11, v9

    .line 166
    check-cast v11, Lcom/unity3d/services/store/gpbl/bridges/PurchaseBridge;

    .line 167
    .line 168
    invoke-virtual {v11}, Lcom/unity3d/services/store/gpbl/bridges/CommonJsonResponseBridge;->getOriginalJson()Lorg/json/JSONObject;

    .line 169
    .line 170
    .line 171
    move-result-object v9

    .line 172
    const-string v15, "purchaseTime"

    .line 173
    .line 174
    invoke-virtual {v9, v15}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v9

    .line 178
    const-string v15, "null cannot be cast to non-null type kotlin.Long"

    .line 179
    .line 180
    invoke-static {v9, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    check-cast v9, Ljava/lang/Long;

    .line 184
    .line 185
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 186
    .line 187
    .line 188
    move-result-wide v4

    .line 189
    invoke-static {v13}, Lcom/unity3d/ads/core/data/manager/TransactionEventManager;->access$getIapTransactionStore$p(Lcom/unity3d/ads/core/data/manager/TransactionEventManager;)Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;

    .line 190
    .line 191
    .line 192
    move-result-object v9

    .line 193
    iput-object v2, v0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager$onPurchasesReceived$1;->L$0:Ljava/lang/Object;

    .line 194
    .line 195
    iput-object v14, v0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager$onPurchasesReceived$1;->L$1:Ljava/lang/Object;

    .line 196
    .line 197
    iput-object v13, v0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager$onPurchasesReceived$1;->L$2:Ljava/lang/Object;

    .line 198
    .line 199
    iput-object v12, v0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager$onPurchasesReceived$1;->L$3:Ljava/lang/Object;

    .line 200
    .line 201
    iput-object v11, v0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager$onPurchasesReceived$1;->L$4:Ljava/lang/Object;

    .line 202
    .line 203
    iput v10, v0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager$onPurchasesReceived$1;->I$0:I

    .line 204
    .line 205
    iput v8, v0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager$onPurchasesReceived$1;->I$1:I

    .line 206
    .line 207
    iput-wide v4, v0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager$onPurchasesReceived$1;->J$0:J

    .line 208
    .line 209
    iput v6, v0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager$onPurchasesReceived$1;->label:I

    .line 210
    .line 211
    invoke-interface {v9, v0}, Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;->get(Lrs/c;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v9

    .line 215
    if-ne v9, v1, :cond_6

    .line 216
    .line 217
    return-object v1

    .line 218
    :cond_6
    move-object/from16 v21, v11

    .line 219
    .line 220
    move-wide/from16 v22, v4

    .line 221
    .line 222
    move-object v4, v2

    .line 223
    move v2, v8

    .line 224
    goto/16 :goto_0

    .line 225
    .line 226
    :goto_3
    check-cast v9, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;

    .line 227
    .line 228
    invoke-virtual {v9}, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;->getData()Lcom/google/protobuf/ByteString;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    invoke-static {v5}, Lcom/google/protobuf/Timestamp;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/Timestamp;

    .line 233
    .line 234
    .line 235
    move-result-object v5

    .line 236
    invoke-virtual {v5}, Lcom/google/protobuf/Timestamp;->getSeconds()J

    .line 237
    .line 238
    .line 239
    move-result-wide v6

    .line 240
    long-to-float v5, v6

    .line 241
    long-to-float v6, v10

    .line 242
    const/high16 v7, 0x447a0000    # 1000.0f

    .line 243
    .line 244
    div-float/2addr v6, v7

    .line 245
    cmpg-float v5, v5, v6

    .line 246
    .line 247
    if-gez v5, :cond_7

    .line 248
    .line 249
    invoke-static {v13}, Lcom/unity3d/ads/core/data/manager/TransactionEventManager;->access$getStoreMonitor$p(Lcom/unity3d/ads/core/data/manager/TransactionEventManager;)Lcom/unity3d/services/store/StoreMonitor;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    invoke-virtual/range {v21 .. v21}, Lcom/unity3d/services/store/gpbl/bridges/CommonJsonResponseBridge;->getOriginalJson()Lorg/json/JSONObject;

    .line 254
    .line 255
    .line 256
    move-result-object v6

    .line 257
    const-string v7, "productId"

    .line 258
    .line 259
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v6

    .line 263
    const-string v7, "null cannot be cast to non-null type kotlin.String"

    .line 264
    .line 265
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    check-cast v6, Ljava/lang/String;

    .line 269
    .line 270
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 271
    .line 272
    .line 273
    move-result-object v6

    .line 274
    new-instance v7, Lcom/unity3d/ads/core/data/manager/b;

    .line 275
    .line 276
    move-object/from16 v16, v7

    .line 277
    .line 278
    move-object/from16 v17, v14

    .line 279
    .line 280
    move/from16 v18, v2

    .line 281
    .line 282
    move-object/from16 v19, v4

    .line 283
    .line 284
    move-object/from16 v20, v13

    .line 285
    .line 286
    invoke-direct/range {v16 .. v21}, Lcom/unity3d/ads/core/data/manager/b;-><init>(Ljava/util/List;ILjava/util/List;Lcom/unity3d/ads/core/data/manager/TransactionEventManager;Lcom/unity3d/services/store/gpbl/bridges/PurchaseBridge;)V

    .line 287
    .line 288
    .line 289
    const/16 v2, 0x2a

    .line 290
    .line 291
    const-string v10, "inapp"

    .line 292
    .line 293
    invoke-virtual {v5, v2, v10, v6, v7}, Lcom/unity3d/services/store/StoreMonitor;->getSkuDetails(ILjava/lang/String;Ljava/util/List;Lcom/unity3d/services/store/gpbl/listeners/SkuDetailsResponseListener;)V

    .line 294
    .line 295
    .line 296
    goto :goto_4

    .line 297
    :cond_7
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    check-cast v2, Lgt/p;

    .line 302
    .line 303
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 304
    .line 305
    invoke-interface {v2, v5}, Lgt/p;->i(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    :goto_4
    move-object v2, v4

    .line 309
    const/4 v4, 0x3

    .line 310
    const/4 v5, 0x2

    .line 311
    const/4 v6, 0x1

    .line 312
    const/4 v7, 0x0

    .line 313
    goto/16 :goto_2

    .line 314
    .line 315
    :cond_8
    check-cast v14, Ljava/util/Collection;

    .line 316
    .line 317
    new-array v3, v3, [Lgt/p;

    .line 318
    .line 319
    invoke-interface {v14, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v3

    .line 323
    check-cast v3, [Lgt/p;

    .line 324
    .line 325
    array-length v4, v3

    .line 326
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v3

    .line 330
    check-cast v3, [Lgt/k0;

    .line 331
    .line 332
    iput-object v2, v0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager$onPurchasesReceived$1;->L$0:Ljava/lang/Object;

    .line 333
    .line 334
    const/4 v4, 0x0

    .line 335
    iput-object v4, v0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager$onPurchasesReceived$1;->L$1:Ljava/lang/Object;

    .line 336
    .line 337
    iput-object v4, v0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager$onPurchasesReceived$1;->L$2:Ljava/lang/Object;

    .line 338
    .line 339
    iput-object v4, v0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager$onPurchasesReceived$1;->L$3:Ljava/lang/Object;

    .line 340
    .line 341
    iput-object v4, v0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager$onPurchasesReceived$1;->L$4:Ljava/lang/Object;

    .line 342
    .line 343
    const/4 v4, 0x2

    .line 344
    iput v4, v0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager$onPurchasesReceived$1;->label:I

    .line 345
    .line 346
    invoke-static {v3, v0}, Lkotlinx/coroutines/AwaitKt;->b([Lgt/k0;Lrs/c;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    if-ne v3, v1, :cond_9

    .line 351
    .line 352
    return-object v1

    .line 353
    :cond_9
    :goto_5
    move-object v3, v2

    .line 354
    check-cast v3, Ljava/util/Collection;

    .line 355
    .line 356
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 357
    .line 358
    .line 359
    move-result v3

    .line 360
    if-nez v3, :cond_b

    .line 361
    .line 362
    iget-object v3, v0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager$onPurchasesReceived$1;->this$0:Lcom/unity3d/ads/core/data/manager/TransactionEventManager;

    .line 363
    .line 364
    invoke-static {v3}, Lcom/unity3d/ads/core/data/manager/TransactionEventManager;->access$getGetTransactionRequest$p(Lcom/unity3d/ads/core/data/manager/TransactionEventManager;)Lcom/unity3d/ads/core/domain/events/GetTransactionRequest;

    .line 365
    .line 366
    .line 367
    move-result-object v3

    .line 368
    const/4 v4, 0x0

    .line 369
    iput-object v4, v0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager$onPurchasesReceived$1;->L$0:Ljava/lang/Object;

    .line 370
    .line 371
    const/4 v4, 0x3

    .line 372
    iput v4, v0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager$onPurchasesReceived$1;->label:I

    .line 373
    .line 374
    invoke-interface {v3, v2, v0}, Lcom/unity3d/ads/core/domain/events/GetTransactionRequest;->invoke(Ljava/util/List;Lrs/c;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v2

    .line 378
    if-ne v2, v1, :cond_a

    .line 379
    .line 380
    return-object v1

    .line 381
    :cond_a
    :goto_6
    check-cast v2, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;

    .line 382
    .line 383
    iget-object v1, v0, Lcom/unity3d/ads/core/data/manager/TransactionEventManager$onPurchasesReceived$1;->this$0:Lcom/unity3d/ads/core/data/manager/TransactionEventManager;

    .line 384
    .line 385
    invoke-static {v1}, Lcom/unity3d/ads/core/data/manager/TransactionEventManager;->access$getTransactionEventRepository$p(Lcom/unity3d/ads/core/data/manager/TransactionEventManager;)Lcom/unity3d/ads/core/data/repository/TransactionEventRepository;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    invoke-interface {v1, v2}, Lcom/unity3d/ads/core/data/repository/TransactionEventRepository;->addTransactionEvent(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;)V

    .line 390
    .line 391
    .line 392
    :cond_b
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 393
    .line 394
    return-object v1
.end method
