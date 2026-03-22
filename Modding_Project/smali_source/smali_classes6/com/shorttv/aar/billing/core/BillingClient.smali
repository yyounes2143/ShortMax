.class public final Lcom/shorttv/aar/billing/core/BillingClient;
.super Ljava/lang/Object;
.source "BillingClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shorttv/aar/billing/core/BillingClient$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBillingClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BillingClient.kt\ncom/shorttv/aar/billing/core/BillingClient\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,617:1\n426#2,11:618\n426#2,9:629\n435#2,2:642\n426#2,11:644\n1863#3:638\n1863#3,2:639\n1864#3:641\n1557#3:655\n1628#3,3:656\n1863#3,2:659\n*S KotlinDebug\n*F\n+ 1 BillingClient.kt\ncom/shorttv/aar/billing/core/BillingClient\n*L\n303#1:618,11\n359#1:629,9\n359#1:642,2\n515#1:644,11\n362#1:638\n363#1:639,2\n362#1:641\n101#1:655\n101#1:656,3\n559#1:659,2\n*E\n"
    }
.end annotation


# static fields
.field public static final m:Lcom/shorttv/aar/billing/core/BillingClient$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:Lcom/android/billingclient/api/BillingClient;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private b:Lzc/j;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private volatile h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private volatile i:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private j:I

.field private k:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private l:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shorttv/aar/billing/core/BillingClient$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/shorttv/aar/billing/core/BillingClient$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/shorttv/aar/billing/core/BillingClient;->m:Lcom/shorttv/aar/billing/core/BillingClient$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/shorttv/aar/billing/core/BillingClient;->d:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/shorttv/aar/billing/core/BillingClient;->e:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/shorttv/aar/billing/core/BillingClient;->f:Z

    .line 10
    .line 11
    const-wide/16 v0, -0x1

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/shorttv/aar/billing/core/BillingClient;->l:J

    .line 14
    .line 15
    return-void
.end method

.method public static final synthetic A(Lcom/shorttv/aar/billing/core/BillingClient;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/shorttv/aar/billing/core/BillingClient;->f:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic B(Lcom/shorttv/aar/billing/core/BillingClient;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/shorttv/aar/billing/core/BillingClient;->e:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic C(Lcom/shorttv/aar/billing/core/BillingClient;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shorttv/aar/billing/core/BillingClient;->p0(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final D()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shorttv/aar/billing/core/BillingClient;->k:Lkotlinx/coroutines/r;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iput-object v1, p0, Lcom/shorttv/aar/billing/core/BillingClient;->k:Lkotlinx/coroutines/r;

    .line 11
    .line 12
    return-void
.end method

.method private final E()V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shorttv/aar/billing/core/BillingClient;->d:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/shorttv/aar/billing/core/BillingClient;->e:Z

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/shorttv/aar/billing/core/BillingClient;->f:Z

    .line 7
    .line 8
    sget-object v1, Lcom/shorttv/aar/billing/util/CoroutineUtil;->a:Lcom/shorttv/aar/billing/util/CoroutineUtil;

    .line 9
    .line 10
    new-instance v4, Lcom/shorttv/aar/billing/core/BillingClient$checkFeatureSupport$1;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {v4, p0, v0}, Lcom/shorttv/aar/billing/core/BillingClient$checkFeatureSupport$1;-><init>(Lcom/shorttv/aar/billing/core/BillingClient;Lrs/c;)V

    .line 14
    .line 15
    .line 16
    const/4 v5, 0x2

    .line 17
    const/4 v6, 0x0

    .line 18
    const-string v2, "checkFeatureSupport"

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-static/range {v1 .. v6}, Lcom/shorttv/aar/billing/util/CoroutineUtil;->i(Lcom/shorttv/aar/billing/util/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private final H()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shorttv/aar/billing/core/BillingClient;->a:Lcom/android/billingclient/api/BillingClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->endConnection()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/shorttv/aar/billing/core/BillingClient;->a:Lcom/android/billingclient/api/BillingClient;

    .line 10
    .line 11
    return-void
.end method

.method private final declared-synchronized J(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lbd/b;->a:Lbd/b;

    .line 3
    .line 4
    const-string v1, "BillingClient"

    .line 5
    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v3, "createBillingClient -> opId("

    .line 12
    .line 13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const/16 v3, 0x29

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0, v1, v2}, Lbd/b;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    :try_start_1
    invoke-static {p1}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {}, Lcom/android/billingclient/api/PendingPurchasesParams;->newBuilder()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->enablePrepaidPlans()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->enableOneTimeProducts()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->build()Lcom/android/billingclient/api/PendingPurchasesParams;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases(Lcom/android/billingclient/api/PendingPurchasesParams;)Lcom/android/billingclient/api/BillingClient$Builder;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    new-instance v0, Lad/f;

    .line 56
    .line 57
    invoke-direct {v0, p0}, Lad/f;-><init>(Lcom/shorttv/aar/billing/core/BillingClient;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    const-string/jumbo v0, "setListener(...)"

    .line 65
    .line 66
    .line 67
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/shorttv/aar/billing/core/BillingClient;->b:Lzc/j;

    .line 71
    .line 72
    const/4 v1, 0x1

    .line 73
    if-eqz v0, :cond_0

    .line 74
    .line 75
    invoke-virtual {v0}, Lzc/j;->a()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-ne v0, v1, :cond_0

    .line 80
    .line 81
    new-instance v0, Lad/g;

    .line 82
    .line 83
    invoke-direct {v0, p0}, Lad/g;-><init>(Lcom/shorttv/aar/billing/core/BillingClient;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/BillingClient$Builder;->enableUserChoiceBilling(Lcom/android/billingclient/api/UserChoiceBillingListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :catchall_0
    move-exception p1

    .line 91
    goto :goto_2

    .line 92
    :catch_0
    move-exception p1

    .line 93
    goto :goto_1

    .line 94
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    iput-object p1, p0, Lcom/shorttv/aar/billing/core/BillingClient;->a:Lcom/android/billingclient/api/BillingClient;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    .line 100
    monitor-exit p0

    .line 101
    return v1

    .line 102
    :goto_1
    :try_start_2
    new-instance v0, Lzc/a;

    .line 103
    .line 104
    sget-object v1, Lcom/shorttv/aar/billing/bean/ErrorType;->CREATE_FAILED:Lcom/shorttv/aar/billing/bean/ErrorType;

    .line 105
    .line 106
    sget-object v2, Lcom/shorttv/aar/billing/bean/ErrorCode;->UNKNOWN:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-direct {v0, v1, v2, p1}, Lzc/a;-><init>(Lcom/shorttv/aar/billing/bean/ErrorType;Lcom/shorttv/aar/billing/bean/ErrorCode;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-direct {p0, p2, v0}, Lcom/shorttv/aar/billing/core/BillingClient;->a0(Ljava/lang/String;Lzc/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    .line 117
    .line 118
    monitor-exit p0

    .line 119
    const/4 p1, 0x0

    .line 120
    return p1

    .line 121
    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 122
    throw p1
.end method

.method private static final K(Lcom/shorttv/aar/billing/core/BillingClient;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 4

    .line 1
    const-string v0, "billingResult"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lbd/b;->a:Lbd/b;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "onPurchasesUpdated -> result("

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, ") list("

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const/16 v2, 0x29

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "BillingClient"

    .line 39
    .line 40
    invoke-virtual {v0, v2, v1}, Lbd/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lcd/g;->a(Lcom/android/billingclient/api/BillingResult;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const-string v1, ""

    .line 48
    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    if-eqz p2, :cond_0

    .line 53
    .line 54
    check-cast p2, Ljava/lang/Iterable;

    .line 55
    .line 56
    new-instance v0, Ljava/util/ArrayList;

    .line 57
    .line 58
    const/16 v2, 0xa

    .line 59
    .line 60
    invoke-static {p2, v2}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 65
    .line 66
    .line 67
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_1

    .line 76
    .line 77
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    check-cast v2, Lcom/android/billingclient/api/Purchase;

    .line 82
    .line 83
    sget-object v3, Lzc/f;->m:Lzc/f$a;

    .line 84
    .line 85
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v2}, Lzc/f$a;->a(Lcom/android/billingclient/api/Purchase;)Lzc/f;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_0
    move-object v0, p1

    .line 97
    :cond_1
    iget-object p2, p0, Lcom/shorttv/aar/billing/core/BillingClient;->h:Ljava/lang/String;

    .line 98
    .line 99
    if-nez p2, :cond_2

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_2
    move-object v1, p2

    .line 103
    :goto_1
    if-eqz v0, :cond_3

    .line 104
    .line 105
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->g1(Ljava/util/Collection;)Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    :cond_3
    invoke-direct {p0, v1, p1}, Lcom/shorttv/aar/billing/core/BillingClient;->g0(Ljava/lang/String;Ljava/util/List;)V

    .line 110
    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_4
    iget-object p2, p0, Lcom/shorttv/aar/billing/core/BillingClient;->h:Ljava/lang/String;

    .line 114
    .line 115
    if-nez p2, :cond_5

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_5
    move-object v1, p2

    .line 119
    :goto_2
    new-instance p2, Lzc/a;

    .line 120
    .line 121
    sget-object v0, Lcom/shorttv/aar/billing/bean/ErrorType;->PURCHASE_FAILED:Lcom/shorttv/aar/billing/bean/ErrorType;

    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    invoke-static {v2}, Lcd/g;->c(I)Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-direct {p2, v0, v2, p1}, Lzc/a;-><init>(Lcom/shorttv/aar/billing/bean/ErrorType;Lcom/shorttv/aar/billing/bean/ErrorCode;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-direct {p0, v1, p2}, Lcom/shorttv/aar/billing/core/BillingClient;->a0(Ljava/lang/String;Lzc/a;)V

    .line 139
    .line 140
    .line 141
    :goto_3
    return-void
.end method

.method private static final L(Lcom/shorttv/aar/billing/core/BillingClient;Lcom/android/billingclient/api/UserChoiceDetails;)V
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/shorttv/aar/billing/core/BillingClient;->b:Lzc/j;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lzc/j;->b()Lad/m;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    sget-object v0, Lzc/d;->b:Lzc/d$a;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lzc/d$a;->a(Lcom/android/billingclient/api/UserChoiceDetails;)Lzc/d;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Lad/m;->g(Lzc/d;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method private final declared-synchronized M()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/shorttv/aar/billing/core/BillingClient;->c:Landroid/os/Handler;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroid/os/Handler;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/shorttv/aar/billing/core/BillingClient;->c:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw v0
.end method

.method private final N()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shorttv/aar/billing/core/BillingClient;->a:Lcom/android/billingclient/api/BillingClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->getConnectionState()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x3

    .line 11
    :goto_0
    return v0
.end method

.method private final Q()J
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method private final T(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lzc/e;Lzc/k;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p2}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedAccountId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const-string/jumbo v0, "setObfuscatedAccountId(...)"

    .line 10
    .line 11
    .line 12
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p4}, Lzc/e;->a()Lcom/shorttv/aar/billing/bean/ProductDataType;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Lcom/shorttv/aar/billing/bean/ProductDataType;->GOOGLE_PRODUCT:Lcom/shorttv/aar/billing/bean/ProductDataType;

    .line 20
    .line 21
    const-string v2, "BillingClient"

    .line 22
    .line 23
    if-ne v0, v1, :cond_1

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p4}, Lzc/e;->c()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p4

    .line 38
    const-string v3, "null cannot be cast to non-null type com.android.billingclient.api.ProductDetails"

    .line 39
    .line 40
    invoke-static {p4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    check-cast p4, Lcom/android/billingclient/api/ProductDetails;

    .line 44
    .line 45
    invoke-virtual {v1, p4}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    .line 46
    .line 47
    .line 48
    move-result-object p4

    .line 49
    const-string/jumbo v1, "setProductDetails(...)"

    .line 50
    .line 51
    .line 52
    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-lez v1, :cond_0

    .line 60
    .line 61
    invoke-virtual {p4, p3}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setOfferToken(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    .line 62
    .line 63
    .line 64
    :cond_0
    invoke-virtual {p4}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    const-string p4, "build(...)"

    .line 69
    .line 70
    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setProductDetailsParamsList(Ljava/util/List;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p4}, Lzc/e;->a()Lcom/shorttv/aar/billing/bean/ProductDataType;

    .line 81
    .line 82
    .line 83
    move-result-object p3

    .line 84
    sget-object v0, Lcom/shorttv/aar/billing/bean/ProductDataType;->GOOGLE_SKU:Lcom/shorttv/aar/billing/bean/ProductDataType;

    .line 85
    .line 86
    if-ne p3, v0, :cond_2

    .line 87
    .line 88
    sget-object p3, Lbd/b;->a:Lbd/b;

    .line 89
    .line 90
    const-string v0, "launchBillingFlow -> GOOGLE_SKU \u7c7b\u578b\u5df2\u5e9f\u5f03\uff0c\u8bf7\u8fc1\u79fb\u5230 GOOGLE_PRODUCT"

    .line 91
    .line 92
    invoke-virtual {p3, v2, v0}, Lbd/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p4}, Lzc/e;->c()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    const-string p4, "null cannot be cast to non-null type com.android.billingclient.api.SkuDetails"

    .line 100
    .line 101
    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    check-cast p3, Lcom/android/billingclient/api/SkuDetails;

    .line 105
    .line 106
    invoke-virtual {p2, p3}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setSkuDetails(Lcom/android/billingclient/api/SkuDetails;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    .line 107
    .line 108
    .line 109
    :cond_2
    :goto_0
    if-eqz p5, :cond_4

    .line 110
    .line 111
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    .line 112
    .line 113
    .line 114
    move-result-object p3

    .line 115
    invoke-virtual {p5}, Lzc/k;->a()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p4

    .line 119
    if-nez p4, :cond_3

    .line 120
    .line 121
    const-string p4, ""

    .line 122
    .line 123
    :cond_3
    invoke-virtual {p3, p4}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;->setOldPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    .line 124
    .line 125
    .line 126
    move-result-object p3

    .line 127
    invoke-virtual {p5}, Lzc/k;->b()Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;

    .line 128
    .line 129
    .line 130
    move-result-object p4

    .line 131
    invoke-virtual {p4}, Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;->covertToGoogleMode()I

    .line 132
    .line 133
    .line 134
    move-result p4

    .line 135
    invoke-virtual {p3, p4}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;->setSubscriptionReplacementMode(I)Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    .line 136
    .line 137
    .line 138
    move-result-object p3

    .line 139
    invoke-virtual {p3}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;

    .line 140
    .line 141
    .line 142
    move-result-object p3

    .line 143
    invoke-virtual {p2, p3}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setSubscriptionUpdateParams(Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    .line 144
    .line 145
    .line 146
    :cond_4
    iget-object p3, p0, Lcom/shorttv/aar/billing/core/BillingClient;->a:Lcom/android/billingclient/api/BillingClient;

    .line 147
    .line 148
    if-eqz p3, :cond_5

    .line 149
    .line 150
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    invoke-virtual {p3, p1, p2}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    goto :goto_1

    .line 159
    :cond_5
    const/4 p1, 0x0

    .line 160
    :goto_1
    sget-object p2, Lbd/b;->a:Lbd/b;

    .line 161
    .line 162
    new-instance p3, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    const-string p4, "launchBillingFlow -> result("

    .line 168
    .line 169
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const/16 p1, 0x29

    .line 176
    .line 177
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-virtual {p2, v2, p1}, Lbd/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    return-void
.end method

.method private static final V(Ljava/lang/Object;Lcom/shorttv/aar/billing/core/BillingClient;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lzc/k;)V
    .locals 7

    .line 1
    instance-of v0, p0, Lzc/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v5, p0

    .line 6
    check-cast v5, Lzc/e;

    .line 7
    .line 8
    invoke-virtual {v5}, Lzc/e;->d()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    iput-object p0, p1, Lcom/shorttv/aar/billing/core/BillingClient;->i:Ljava/lang/String;

    .line 13
    .line 14
    move-object v1, p1

    .line 15
    move-object v2, p2

    .line 16
    move-object v3, p3

    .line 17
    move-object v4, p4

    .line 18
    move-object v6, p5

    .line 19
    invoke-direct/range {v1 .. v6}, Lcom/shorttv/aar/billing/core/BillingClient;->T(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lzc/e;Lzc/k;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private final W(Ljava/util/List;Lrs/c;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzc/g;",
            ">;",
            "Lrs/c<",
            "-",
            "Lzc/i;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/e;

    .line 2
    .line 3
    invoke-static {p2}, Lkotlin/coroutines/intrinsics/a;->c(Lrs/c;)Lrs/c;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/e;-><init>(Lrs/c;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lkotlinx/coroutines/e;->H()V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "newBuilder(...)"

    .line 19
    .line 20
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    check-cast p1, Ljava/lang/Iterable;

    .line 29
    .line 30
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lzc/g;

    .line 45
    .line 46
    invoke-virtual {v3}, Lzc/g;->a()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Ljava/lang/Iterable;

    .line 51
    .line 52
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-eqz v5, :cond_0

    .line 61
    .line 62
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    check-cast v5, Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-virtual {v3}, Lzc/g;->b()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    invoke-virtual {v6, v7}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    invoke-virtual {v6, v5}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    const-string/jumbo v6, "setProductId(...)"

    .line 85
    .line 86
    .line 87
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->setProductList(Ljava/util/List;)Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    .line 99
    .line 100
    .line 101
    invoke-static {p0}, Lcom/shorttv/aar/billing/core/BillingClient;->m(Lcom/shorttv/aar/billing/core/BillingClient;)Lcom/android/billingclient/api/BillingClient;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    if-nez p1, :cond_2

    .line 106
    .line 107
    new-instance p1, Lzc/i;

    .line 108
    .line 109
    sget-object v1, Lcom/shorttv/aar/billing/bean/ErrorCode;->UNKNOWN:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 110
    .line 111
    const/4 v2, 0x0

    .line 112
    invoke-direct {p1, v1, v2}, Lzc/i;-><init>(Lcom/shorttv/aar/billing/bean/ErrorCode;Ljava/util/List;)V

    .line 113
    .line 114
    .line 115
    invoke-static {v0, p1}, Lcd/b;->a(Lgt/i;Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_2
    invoke-virtual {v1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    new-instance v2, Lcom/shorttv/aar/billing/core/BillingClient$e;

    .line 124
    .line 125
    invoke-direct {v2, v0}, Lcom/shorttv/aar/billing/core/BillingClient$e;-><init>(Lgt/i;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v1, v2}, Lcom/android/billingclient/api/BillingClient;->queryProductDetailsAsync(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    .line 129
    .line 130
    .line 131
    :goto_1
    invoke-virtual {v0}, Lkotlinx/coroutines/e;->B()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    if-ne p1, v0, :cond_3

    .line 140
    .line 141
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/f;->c(Lrs/c;)V

    .line 142
    .line 143
    .line 144
    :cond_3
    return-object p1
.end method

.method private final Y()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shorttv/aar/billing/core/BillingClient;->c:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lad/h;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lad/h;-><init>(Lcom/shorttv/aar/billing/core/BillingClient;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private static final Z(Lcom/shorttv/aar/billing/core/BillingClient;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/shorttv/aar/billing/core/BillingClient;->b:Lzc/j;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lzc/j;->b()Lad/m;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lad/m;->a()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/shorttv/aar/billing/core/BillingClient;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/shorttv/aar/billing/core/BillingClient;->h0(Lcom/shorttv/aar/billing/core/BillingClient;Ljava/lang/String;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final a0(Ljava/lang/String;Lzc/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shorttv/aar/billing/core/BillingClient;->c:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lad/i;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p2}, Lad/i;-><init>(Lcom/shorttv/aar/billing/core/BillingClient;Ljava/lang/String;Lzc/a;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/shorttv/aar/billing/core/BillingClient;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/shorttv/aar/billing/core/BillingClient;->f0(Lcom/shorttv/aar/billing/core/BillingClient;Ljava/lang/String;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final b0(Lcom/shorttv/aar/billing/core/BillingClient;Ljava/lang/String;Lzc/a;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shorttv/aar/billing/core/BillingClient;->b:Lzc/j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lzc/j;->b()Lad/m;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/shorttv/aar/billing/core/BillingClient;->i:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, p1, v1, p2}, Lad/m;->b(Ljava/lang/String;Ljava/lang/String;Lzc/a;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p2}, Lzc/a;->b()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const/4 v0, 0x0

    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    const-string v2, "There is already a pending purchase for the requested item"

    .line 25
    .line 26
    const/4 v3, 0x2

    .line 27
    invoke-static {p1, v2, v0, v3, v1}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    :cond_1
    invoke-virtual {p2}, Lzc/a;->c()Lcom/shorttv/aar/billing/bean/ErrorType;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    sget-object p2, Lcom/shorttv/aar/billing/bean/ErrorType;->PURCHASE_FAILED:Lcom/shorttv/aar/billing/bean/ErrorType;

    .line 36
    .line 37
    if-ne p1, p2, :cond_2

    .line 38
    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    iput-object v1, p0, Lcom/shorttv/aar/billing/core/BillingClient;->h:Ljava/lang/String;

    .line 42
    .line 43
    iput-object v1, p0, Lcom/shorttv/aar/billing/core/BillingClient;->i:Ljava/lang/String;

    .line 44
    .line 45
    :cond_2
    return-void
.end method

.method public static synthetic c(Lcom/shorttv/aar/billing/core/BillingClient;Lcom/android/billingclient/api/UserChoiceDetails;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/shorttv/aar/billing/core/BillingClient;->L(Lcom/shorttv/aar/billing/core/BillingClient;Lcom/android/billingclient/api/UserChoiceDetails;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final c0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzc/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shorttv/aar/billing/core/BillingClient;->c:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lad/d;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lad/d;-><init>(Lcom/shorttv/aar/billing/core/BillingClient;Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/shorttv/aar/billing/core/BillingClient;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/shorttv/aar/billing/core/BillingClient;->d0(Lcom/shorttv/aar/billing/core/BillingClient;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final d0(Lcom/shorttv/aar/billing/core/BillingClient;Ljava/util/List;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/shorttv/aar/billing/core/BillingClient;->b:Lzc/j;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lzc/j;->b()Lad/m;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lad/m;->c(Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public static synthetic e(Lcom/shorttv/aar/billing/core/BillingClient;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/shorttv/aar/billing/core/BillingClient;->K(Lcom/shorttv/aar/billing/core/BillingClient;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final e0(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lzc/h;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shorttv/aar/billing/core/BillingClient;->c:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lad/c;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p2}, Lad/c;-><init>(Lcom/shorttv/aar/billing/core/BillingClient;Ljava/lang/String;Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public static synthetic f(Ljava/lang/Object;Lcom/shorttv/aar/billing/core/BillingClient;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lzc/k;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/shorttv/aar/billing/core/BillingClient;->V(Ljava/lang/Object;Lcom/shorttv/aar/billing/core/BillingClient;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lzc/k;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final f0(Lcom/shorttv/aar/billing/core/BillingClient;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/shorttv/aar/billing/core/BillingClient;->b:Lzc/j;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lzc/j;->b()Lad/m;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Lad/m;->d(Ljava/lang/String;Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public static synthetic g(Lcom/shorttv/aar/billing/core/BillingClient;Landroid/content/Context;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/shorttv/aar/billing/core/BillingClient;->o0(Lcom/shorttv/aar/billing/core/BillingClient;Landroid/content/Context;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final g0(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lzc/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shorttv/aar/billing/core/BillingClient;->c:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lad/j;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p2}, Lad/j;-><init>(Lcom/shorttv/aar/billing/core/BillingClient;Ljava/lang/String;Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public static synthetic h(Lcom/shorttv/aar/billing/core/BillingClient;Ljava/lang/String;Lzc/a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/shorttv/aar/billing/core/BillingClient;->b0(Lcom/shorttv/aar/billing/core/BillingClient;Ljava/lang/String;Lzc/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final h0(Lcom/shorttv/aar/billing/core/BillingClient;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shorttv/aar/billing/core/BillingClient;->b:Lzc/j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lzc/j;->b()Lad/m;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Lad/m;->e(Ljava/lang/String;Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    if-eqz p2, :cond_2

    .line 15
    .line 16
    check-cast p2, Ljava/lang/Iterable;

    .line 17
    .line 18
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-eqz p2, :cond_2

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    check-cast p2, Lzc/f;

    .line 33
    .line 34
    invoke-virtual {p2}, Lzc/f;->e()I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    const/4 v0, 0x1

    .line 39
    if-ne p2, v0, :cond_1

    .line 40
    .line 41
    const/4 p2, 0x0

    .line 42
    iput-object p2, p0, Lcom/shorttv/aar/billing/core/BillingClient;->h:Ljava/lang/String;

    .line 43
    .line 44
    iput-object p2, p0, Lcom/shorttv/aar/billing/core/BillingClient;->i:Ljava/lang/String;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    return-void
.end method

.method public static synthetic i(Lcom/shorttv/aar/billing/core/BillingClient;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/shorttv/aar/billing/core/BillingClient;->j0(Lcom/shorttv/aar/billing/core/BillingClient;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final i0(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shorttv/aar/billing/core/BillingClient;->c:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lad/a;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lad/a;-><init>(Lcom/shorttv/aar/billing/core/BillingClient;Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public static synthetic j(Lcom/shorttv/aar/billing/core/BillingClient;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/shorttv/aar/billing/core/BillingClient;->Z(Lcom/shorttv/aar/billing/core/BillingClient;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final j0(Lcom/shorttv/aar/billing/core/BillingClient;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/shorttv/aar/billing/core/BillingClient;->b:Lzc/j;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lzc/j;->b()Lad/m;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lad/m;->f(Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public static final synthetic k(Lcom/shorttv/aar/billing/core/BillingClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shorttv/aar/billing/core/BillingClient;->E()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic l(Lcom/shorttv/aar/billing/core/BillingClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shorttv/aar/billing/core/BillingClient;->H()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic m(Lcom/shorttv/aar/billing/core/BillingClient;)Lcom/android/billingclient/api/BillingClient;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/shorttv/aar/billing/core/BillingClient;->a:Lcom/android/billingclient/api/BillingClient;

    .line 2
    .line 3
    return-object p0
.end method

.method private final m0(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shorttv/aar/billing/core/BillingClient;->Q()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/shorttv/aar/billing/core/BillingClient;->l:J

    .line 6
    .line 7
    iget-object v0, p0, Lcom/shorttv/aar/billing/core/BillingClient;->a:Lcom/android/billingclient/api/BillingClient;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v1, Lcom/shorttv/aar/billing/core/BillingClient$f;

    .line 12
    .line 13
    invoke-direct {v1, p0, p2, p1}, Lcom/shorttv/aar/billing/core/BillingClient$f;-><init>(Lcom/shorttv/aar/billing/core/BillingClient;Ljava/lang/String;Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public static final synthetic n(Lcom/shorttv/aar/billing/core/BillingClient;)Lzc/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/shorttv/aar/billing/core/BillingClient;->b:Lzc/j;

    .line 2
    .line 3
    return-object p0
.end method

.method private final n0(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/shorttv/aar/billing/core/BillingClient;->D()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/shorttv/aar/billing/util/CoroutineUtil;->a:Lcom/shorttv/aar/billing/util/CoroutineUtil;

    .line 5
    .line 6
    new-instance v4, Lad/b;

    .line 7
    .line 8
    invoke-direct {v4, p0, p1}, Lad/b;-><init>(Lcom/shorttv/aar/billing/core/BillingClient;Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    const/4 v5, 0x2

    .line 12
    const/4 v6, 0x0

    .line 13
    const-wide/16 v1, 0x7d0

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static/range {v0 .. v6}, Lcom/shorttv/aar/billing/util/CoroutineUtil;->e(Lcom/shorttv/aar/billing/util/CoroutineUtil;JLkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/shorttv/aar/billing/core/BillingClient;->k:Lkotlinx/coroutines/r;

    .line 21
    .line 22
    return-void
.end method

.method public static final synthetic o(Lcom/shorttv/aar/billing/core/BillingClient;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/shorttv/aar/billing/core/BillingClient;->g:Z

    .line 2
    .line 3
    return p0
.end method

.method private static final o0(Lcom/shorttv/aar/billing/core/BillingClient;Landroid/content/Context;)Lkotlin/Unit;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shorttv/aar/billing/core/BillingClient;->a:Lcom/android/billingclient/api/BillingClient;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    const-string/jumbo v2, "try reconnect"

    .line 6
    .line 7
    .line 8
    const-string v3, "BillingClient"

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Lbd/b;->a:Lbd/b;

    .line 13
    .line 14
    invoke-virtual {v0, v3, v2}, Lbd/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget v0, p0, Lcom/shorttv/aar/billing/core/BillingClient;->j:I

    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    iput v0, p0, Lcom/shorttv/aar/billing/core/BillingClient;->j:I

    .line 22
    .line 23
    iget-object v0, p0, Lcom/shorttv/aar/billing/core/BillingClient;->b:Lzc/j;

    .line 24
    .line 25
    invoke-virtual {p0, p1, v1, v0}, Lcom/shorttv/aar/billing/core/BillingClient;->k0(Landroid/content/Context;Ljava/lang/String;Lzc/j;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-boolean v0, p0, Lcom/shorttv/aar/billing/core/BillingClient;->g:Z

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    sget-object v0, Lbd/b;->a:Lbd/b;

    .line 34
    .line 35
    invoke-virtual {v0, v3, v2}, Lbd/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget v0, p0, Lcom/shorttv/aar/billing/core/BillingClient;->j:I

    .line 39
    .line 40
    add-int/lit8 v0, v0, 0x1

    .line 41
    .line 42
    iput v0, p0, Lcom/shorttv/aar/billing/core/BillingClient;->j:I

    .line 43
    .line 44
    invoke-virtual {p0, p1, v1}, Lcom/shorttv/aar/billing/core/BillingClient;->l0(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 48
    .line 49
    return-object p0
.end method

.method public static final synthetic p(Lcom/shorttv/aar/billing/core/BillingClient;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/shorttv/aar/billing/core/BillingClient;->d:Z

    .line 2
    .line 3
    return p0
.end method

.method private final p0(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/shorttv/aar/billing/core/BillingClient;->j:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-lt v0, v1, :cond_0

    .line 5
    .line 6
    sget-object p1, Lbd/b;->a:Lbd/b;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v1, "try reconnect failed -> mTryReconnectCount("

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget v1, p0, Lcom/shorttv/aar/billing/core/BillingClient;->j:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, ")>=3"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "BillingClient"

    .line 34
    .line 35
    invoke-virtual {p1, v1, v0}, Lbd/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-direct {p0, p1}, Lcom/shorttv/aar/billing/core/BillingClient;->n0(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method

.method public static final synthetic q(Lcom/shorttv/aar/billing/core/BillingClient;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/shorttv/aar/billing/core/BillingClient;->f:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic r(Lcom/shorttv/aar/billing/core/BillingClient;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/shorttv/aar/billing/core/BillingClient;->e:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic s(Lcom/shorttv/aar/billing/core/BillingClient;Ljava/util/List;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/shorttv/aar/billing/core/BillingClient;->W(Ljava/util/List;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic t(Lcom/shorttv/aar/billing/core/BillingClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shorttv/aar/billing/core/BillingClient;->Y()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic u(Lcom/shorttv/aar/billing/core/BillingClient;Ljava/lang/String;Lzc/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/shorttv/aar/billing/core/BillingClient;->a0(Ljava/lang/String;Lzc/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic v(Lcom/shorttv/aar/billing/core/BillingClient;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shorttv/aar/billing/core/BillingClient;->c0(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic w(Lcom/shorttv/aar/billing/core/BillingClient;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/shorttv/aar/billing/core/BillingClient;->e0(Ljava/lang/String;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic x(Lcom/shorttv/aar/billing/core/BillingClient;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shorttv/aar/billing/core/BillingClient;->i0(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic y(Lcom/shorttv/aar/billing/core/BillingClient;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/shorttv/aar/billing/core/BillingClient;->g:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic z(Lcom/shorttv/aar/billing/core/BillingClient;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/shorttv/aar/billing/core/BillingClient;->d:Z

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final F(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Ljava/util/List<",
            "Lzc/f;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/e;

    .line 2
    .line 3
    invoke-static {p2}, Lkotlin/coroutines/intrinsics/a;->c(Lrs/c;)Lrs/c;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/e;-><init>(Lrs/c;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lkotlinx/coroutines/e;->H()V

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Lcom/shorttv/aar/billing/core/BillingClient;->m(Lcom/shorttv/aar/billing/core/BillingClient;)Lcom/android/billingclient/api/BillingClient;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    invoke-static {v0, p1}, Lcd/b;->a(Lgt/i;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2, p1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const-string v3, "build(...)"

    .line 38
    .line 39
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    new-instance v3, Lcom/shorttv/aar/billing/core/BillingClient$b;

    .line 43
    .line 44
    invoke-direct {v3, p1, v0}, Lcom/shorttv/aar/billing/core/BillingClient$b;-><init>(Ljava/lang/String;Lgt/i;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2, v3}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/e;->B()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-ne p1, v0, :cond_1

    .line 59
    .line 60
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/f;->c(Lrs/c;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    return-object p1
.end method

.method public final G()V
    .locals 6

    .line 1
    sget-object v0, Lcom/shorttv/aar/billing/util/CoroutineUtil;->a:Lcom/shorttv/aar/billing/util/CoroutineUtil;

    .line 2
    .line 3
    new-instance v3, Lcom/shorttv/aar/billing/core/BillingClient$checkNotAcknowledgedPurchases$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, p0, v1}, Lcom/shorttv/aar/billing/core/BillingClient$checkNotAcknowledgedPurchases$1;-><init>(Lcom/shorttv/aar/billing/core/BillingClient;Lrs/c;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v1, "checkNotAcknowledgedPurchases"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/shorttv/aar/billing/util/CoroutineUtil;->i(Lcom/shorttv/aar/billing/util/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final I(Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/e;

    .line 2
    .line 3
    invoke-static {p3}, Lkotlin/coroutines/intrinsics/a;->c(Lrs/c;)Lrs/c;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/e;-><init>(Lrs/c;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lkotlinx/coroutines/e;->H()V

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Lcom/shorttv/aar/billing/core/BillingClient;->m(Lcom/shorttv/aar/billing/core/BillingClient;)Lcom/android/billingclient/api/BillingClient;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    invoke-static {v0, p1}, Lcd/b;->a(Lgt/i;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string v2, "inapp"

    .line 26
    .line 27
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const-string v3, "build(...)"

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    invoke-static {}, Lcom/android/billingclient/api/ConsumeParams;->newBuilder()Lcom/android/billingclient/api/ConsumeParams$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2, p2}, Lcom/android/billingclient/api/ConsumeParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/ConsumeParams$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {p2}, Lcom/android/billingclient/api/ConsumeParams$Builder;->build()Lcom/android/billingclient/api/ConsumeParams;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    new-instance v2, Lcom/shorttv/aar/billing/core/BillingClient$c;

    .line 51
    .line 52
    invoke-direct {v2, p1, v0}, Lcom/shorttv/aar/billing/core/BillingClient$c;-><init>(Ljava/lang/String;Lgt/i;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, p2, v2}, Lcom/android/billingclient/api/BillingClient;->consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-static {}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->newBuilder()Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v2, p2}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p2}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->build()Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    new-instance v2, Lcom/shorttv/aar/billing/core/BillingClient$d;

    .line 75
    .line 76
    invoke-direct {v2, p1, v0}, Lcom/shorttv/aar/billing/core/BillingClient$d;-><init>(Ljava/lang/String;Lgt/i;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, p2, v2}, Lcom/android/billingclient/api/BillingClient;->acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    .line 80
    .line 81
    .line 82
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/e;->B()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    if-ne p1, p2, :cond_2

    .line 91
    .line 92
    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/f;->c(Lrs/c;)V

    .line 93
    .line 94
    .line 95
    :cond_2
    return-object p1
.end method

.method public final O()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shorttv/aar/billing/core/BillingClient;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public final P()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shorttv/aar/billing/core/BillingClient;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public final R()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shorttv/aar/billing/core/BillingClient;->N()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public final S()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shorttv/aar/billing/core/BillingClient;->a:Lcom/android/billingclient/api/BillingClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public final U(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lzc/k;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lzc/k;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "opId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "activity"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "obfuscatedAccountId"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "obfuscatedProfileId"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string p4, "offerToken"

    .line 22
    .line 23
    invoke-static {p5, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string p4, "productDetails"

    .line 27
    .line 28
    invoke-static {p6, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/shorttv/aar/billing/core/BillingClient;->h:Ljava/lang/String;

    .line 32
    .line 33
    iget-object p1, p0, Lcom/shorttv/aar/billing/core/BillingClient;->c:Landroid/os/Handler;

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    new-instance p4, Lad/e;

    .line 38
    .line 39
    move-object v0, p4

    .line 40
    move-object v1, p6

    .line 41
    move-object v2, p0

    .line 42
    move-object v3, p2

    .line 43
    move-object v4, p3

    .line 44
    move-object v5, p5

    .line 45
    move-object v6, p7

    .line 46
    invoke-direct/range {v0 .. v6}, Lad/e;-><init>(Ljava/lang/Object;Lcom/shorttv/aar/billing/core/BillingClient;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lzc/k;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method

.method public final X(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lzc/g;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    const-string p3, "opId"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p3, "products"

    .line 7
    .line 8
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/shorttv/aar/billing/util/CoroutineUtil;->a:Lcom/shorttv/aar/billing/util/CoroutineUtil;

    .line 12
    .line 13
    new-instance p3, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "queryProductDetails("

    .line 19
    .line 20
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x29

    .line 27
    .line 28
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    new-instance v3, Lcom/shorttv/aar/billing/core/BillingClient$queryProductDetails$1;

    .line 36
    .line 37
    const/4 p3, 0x0

    .line 38
    invoke-direct {v3, p2, p0, p1, p3}, Lcom/shorttv/aar/billing/core/BillingClient$queryProductDetails$1;-><init>(Ljava/util/List;Lcom/shorttv/aar/billing/core/BillingClient;Ljava/lang/String;Lrs/c;)V

    .line 39
    .line 40
    .line 41
    const/4 v4, 0x2

    .line 42
    const/4 v5, 0x0

    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-static/range {v0 .. v5}, Lcom/shorttv/aar/billing/util/CoroutineUtil;->i(Lcom/shorttv/aar/billing/util/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final k0(Landroid/content/Context;Ljava/lang/String;Lzc/j;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lzc/j;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "opId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/shorttv/aar/billing/core/BillingClient;->a:Lcom/android/billingclient/api/BillingClient;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance p1, Lzc/a;

    .line 16
    .line 17
    sget-object p3, Lcom/shorttv/aar/billing/bean/ErrorType;->CREATE_FAILED:Lcom/shorttv/aar/billing/bean/ErrorType;

    .line 18
    .line 19
    sget-object v0, Lcom/shorttv/aar/billing/bean/ErrorCode;->UNKNOWN:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 20
    .line 21
    const-string v1, "already setup"

    .line 22
    .line 23
    invoke-direct {p1, p3, v0, v1}, Lzc/a;-><init>(Lcom/shorttv/aar/billing/bean/ErrorType;Lcom/shorttv/aar/billing/bean/ErrorCode;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p2, p1}, Lcom/shorttv/aar/billing/core/BillingClient;->a0(Ljava/lang/String;Lzc/a;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    sget-object v0, Lbd/b;->a:Lbd/b;

    .line 31
    .line 32
    const-string v1, "BillingClient"

    .line 33
    .line 34
    const-string/jumbo v2, "setup"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Lbd/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iput-object p3, p0, Lcom/shorttv/aar/billing/core/BillingClient;->b:Lzc/j;

    .line 41
    .line 42
    invoke-direct {p0}, Lcom/shorttv/aar/billing/core/BillingClient;->M()V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/shorttv/aar/billing/core/BillingClient;->J(Landroid/content/Context;Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    if-eqz p3, :cond_1

    .line 50
    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/shorttv/aar/billing/core/BillingClient;->l0(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    return-void
.end method

.method public final declared-synchronized l0(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "context"

    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "opId"

    .line 8
    .line 9
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/shorttv/aar/billing/core/BillingClient;->a:Lcom/android/billingclient/api/BillingClient;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/shorttv/aar/billing/core/BillingClient;->D()V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/shorttv/aar/billing/core/BillingClient;->J(Landroid/content/Context;Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto/16 :goto_2

    .line 25
    .line 26
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/shorttv/aar/billing/core/BillingClient;->N()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v1, 0x1

    .line 31
    if-eq v0, v1, :cond_1

    .line 32
    .line 33
    const/4 v2, 0x2

    .line 34
    if-eq v0, v2, :cond_1

    .line 35
    .line 36
    sget-object v0, Lbd/b;->a:Lbd/b;

    .line 37
    .line 38
    const-string v1, "BillingClient"

    .line 39
    .line 40
    const-string/jumbo v2, "startConnection"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Lbd/b;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/shorttv/aar/billing/core/BillingClient;->m0(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :catch_0
    move-exception p1

    .line 51
    :try_start_2
    new-instance v0, Lzc/a;

    .line 52
    .line 53
    sget-object v1, Lcom/shorttv/aar/billing/bean/ErrorType;->CONNECT_FAILED:Lcom/shorttv/aar/billing/bean/ErrorType;

    .line 54
    .line 55
    sget-object v2, Lcom/shorttv/aar/billing/bean/ErrorCode;->UNKNOWN:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-direct {v0, v1, v2, p1}, Lzc/a;-><init>(Lcom/shorttv/aar/billing/bean/ErrorType;Lcom/shorttv/aar/billing/bean/ErrorCode;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, p2, v0}, Lcom/shorttv/aar/billing/core/BillingClient;->a0(Ljava/lang/String;Lzc/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    .line 66
    .line 67
    :goto_1
    monitor-exit p0

    .line 68
    return-void

    .line 69
    :cond_1
    :try_start_3
    sget-object p2, Lbd/b;->a:Lbd/b;

    .line 70
    .line 71
    const-string v2, "BillingClient"

    .line 72
    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string/jumbo v4, "startConnection failed -> current connectionState("

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const/16 v4, 0x29

    .line 88
    .line 89
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {p2, v2, v3}, Lbd/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    if-ne v0, v1, :cond_2

    .line 100
    .line 101
    invoke-direct {p0}, Lcom/shorttv/aar/billing/core/BillingClient;->Q()J

    .line 102
    .line 103
    .line 104
    move-result-wide v2

    .line 105
    iget-wide v5, p0, Lcom/shorttv/aar/billing/core/BillingClient;->l:J

    .line 106
    .line 107
    sub-long v5, v2, v5

    .line 108
    .line 109
    const-wide/32 v7, 0xea60

    .line 110
    .line 111
    .line 112
    cmp-long v0, v5, v7

    .line 113
    .line 114
    if-lez v0, :cond_2

    .line 115
    .line 116
    const-string v0, "BillingClient"

    .line 117
    .line 118
    new-instance v5, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    const-string v6, "connecting timeout -> systemElapsedTime("

    .line 124
    .line 125
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v6, ") mLastConnectionTime("

    .line 132
    .line 133
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    iget-wide v6, p0, Lcom/shorttv/aar/billing/core/BillingClient;->l:J

    .line 137
    .line 138
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    invoke-virtual {p2, v0, v4}, Lbd/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    iput-wide v2, p0, Lcom/shorttv/aar/billing/core/BillingClient;->l:J

    .line 152
    .line 153
    iget-object p2, p0, Lcom/shorttv/aar/billing/core/BillingClient;->a:Lcom/android/billingclient/api/BillingClient;

    .line 154
    .line 155
    const/4 v0, 0x0

    .line 156
    iput-object v0, p0, Lcom/shorttv/aar/billing/core/BillingClient;->a:Lcom/android/billingclient/api/BillingClient;

    .line 157
    .line 158
    sget-object v2, Lcom/shorttv/aar/billing/util/CoroutineUtil;->a:Lcom/shorttv/aar/billing/util/CoroutineUtil;

    .line 159
    .line 160
    const-string v3, "clearBillingClient"

    .line 161
    .line 162
    new-instance v4, Lcom/shorttv/aar/billing/core/BillingClient$startConnection$1;

    .line 163
    .line 164
    invoke-direct {v4, p2, v0}, Lcom/shorttv/aar/billing/core/BillingClient$startConnection$1;-><init>(Lcom/android/billingclient/api/BillingClient;Lrs/c;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2, v3, v1, v4}, Lcom/shorttv/aar/billing/util/CoroutineUtil;->g(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    .line 168
    .line 169
    .line 170
    const-string p2, ""

    .line 171
    .line 172
    iget-object v0, p0, Lcom/shorttv/aar/billing/core/BillingClient;->b:Lzc/j;

    .line 173
    .line 174
    invoke-virtual {p0, p1, p2, v0}, Lcom/shorttv/aar/billing/core/BillingClient;->k0(Landroid/content/Context;Ljava/lang/String;Lzc/j;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 175
    .line 176
    .line 177
    :cond_2
    monitor-exit p0

    .line 178
    return-void

    .line 179
    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 180
    throw p1
.end method
