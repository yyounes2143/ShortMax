.class public final Lcom/inmobi/media/ub;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/inmobi/media/bb;

.field public b:Lcom/android/billingclient/api/BillingClient;

.field public final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final d:Lcom/inmobi/media/eb;

.field public final e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/inmobi/media/ub;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    .line 12
    new-instance v0, Lcom/inmobi/media/eb;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/inmobi/media/eb;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/inmobi/media/ub;->d:Lcom/inmobi/media/eb;

    .line 18
    .line 19
    const/4 v0, 0x2

    .line 20
    iput v0, p0, Lcom/inmobi/media/ub;->e:I

    .line 21
    .line 22
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient;
    .locals 2

    const-string v0, "event"

    .line 26
    :try_start_0
    invoke-static {p0}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p0

    .line 27
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases()Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p0

    new-instance v1, Lub/x6;

    invoke-direct {v1}, Lub/x6;-><init>()V

    .line 28
    invoke-virtual {p0, v1}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p0

    .line 29
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    .line 30
    :goto_0
    sget-object v1, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    new-instance v1, Lcom/inmobi/media/f2;

    invoke-direct {v1, p0}, Lcom/inmobi/media/f2;-><init>(Ljava/lang/Throwable;)V

    .line 31
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget-object p0, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {p0, v1}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    goto :goto_2

    .line 33
    :goto_1
    sget-object v1, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 34
    invoke-static {p0, v0}, Lcom/inmobi/media/w5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/f2;

    move-result-object p0

    .line 35
    sget-object v0, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {v0, p0}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    :goto_2
    const/4 p0, 0x0

    :goto_3
    return-object p0
.end method

.method public static final a(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    .line 1
    const-string p1, "<anonymous parameter 0>"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static final a(Lcom/inmobi/media/ub;Lkotlin/jvm/functions/Function1;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$onComplete"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "purchasesResult"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object p2, p0, Lcom/inmobi/media/ub;->d:Lcom/inmobi/media/eb;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/billingclient/api/Purchase;

    .line 49
    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 51
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    .line 52
    iput p3, p2, Lcom/inmobi/media/eb;->a:I

    .line 53
    new-instance p2, Lub/v6;

    invoke-direct {p2, p1, p0}, Lub/v6;-><init>(Lkotlin/jvm/functions/Function1;Lcom/inmobi/media/ub;)V

    invoke-static {p2}, Lcom/inmobi/media/Uc;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final a(Lkotlin/jvm/functions/Function1;Lcom/inmobi/media/ub;)V
    .locals 1

    const-string v0, "$onComplete"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object p1, p1, Lcom/inmobi/media/ub;->d:Lcom/inmobi/media/eb;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient;
    .locals 2

    const-string v0, "event"

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p0

    .line 3
    invoke-static {}, Lcom/android/billingclient/api/PendingPurchasesParams;->newBuilder()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->enableOneTimeProducts()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->build()Lcom/android/billingclient/api/PendingPurchasesParams;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases(Lcom/android/billingclient/api/PendingPurchasesParams;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p0

    new-instance v1, Lub/u6;

    invoke-direct {v1}, Lub/u6;-><init>()V

    .line 4
    invoke-virtual {p0, v1}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    .line 6
    :goto_0
    sget-object v1, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    new-instance v1, Lcom/inmobi/media/f2;

    invoke-direct {v1, p0}, Lcom/inmobi/media/f2;-><init>(Ljava/lang/Throwable;)V

    .line 7
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object p0, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {p0, v1}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    goto :goto_2

    .line 9
    :goto_1
    sget-object v1, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 10
    invoke-static {p0, v0}, Lcom/inmobi/media/w5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/f2;

    move-result-object p0

    .line 11
    sget-object v0, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {v0, p0}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    :goto_2
    const/4 p0, 0x0

    :goto_3
    return-object p0
.end method

.method public static final b(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    .line 1
    const-string p1, "<anonymous parameter 0>"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static final b(Lcom/inmobi/media/ub;Lkotlin/jvm/functions/Function1;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$onComplete"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "purchasesResult"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object p2, p0, Lcom/inmobi/media/ub;->d:Lcom/inmobi/media/eb;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/billingclient/api/Purchase;

    .line 15
    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 16
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    .line 18
    iput p3, p2, Lcom/inmobi/media/eb;->b:I

    .line 19
    new-instance p2, Lub/w6;

    invoke-direct {p2, p1, p0}, Lub/w6;-><init>(Lkotlin/jvm/functions/Function1;Lcom/inmobi/media/ub;)V

    invoke-static {p2}, Lcom/inmobi/media/Uc;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final b(Lkotlin/jvm/functions/Function1;Lcom/inmobi/media/ub;)V
    .locals 1

    const-string v0, "$onComplete"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object p1, p1, Lcom/inmobi/media/ub;->d:Lcom/inmobi/media/eb;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/inmobi/media/bb;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onComplete"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iput-object p2, p0, Lcom/inmobi/media/ub;->a:Lcom/inmobi/media/bb;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    .line 5
    invoke-virtual {p2, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    const-string v2, "getApplicationInfo(...)"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p2, :cond_0

    const-string v2, "com.google.android.play.billingclient.version"

    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    move-object p2, v1

    :goto_0
    if-nez p2, :cond_1

    .line 7
    new-instance p1, Lcom/inmobi/media/gb;

    const/16 p2, 0x8bc

    invoke-direct {p1, p2}, Lcom/inmobi/media/gb;-><init>(S)V

    .line 8
    invoke-virtual {p0, p1, v1}, Lcom/inmobi/media/ub;->a(Lcom/inmobi/media/jb;Lcom/inmobi/media/eb;)V

    return-void

    .line 9
    :cond_1
    const-string v2, "6"

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {p2, v2, v4, v3, v1}, Lkotlin/text/StringsKt;->V(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    new-instance p2, Lcom/inmobi/media/rb;

    invoke-direct {p2, p0}, Lcom/inmobi/media/rb;-><init>(Lcom/inmobi/media/ub;)V

    goto :goto_1

    .line 11
    :cond_2
    const-string v2, "7"

    invoke-static {p2, v2, v4, v3, v1}, Lkotlin/text/StringsKt;->V(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 12
    new-instance p2, Lcom/inmobi/media/sb;

    invoke-direct {p2, p0}, Lcom/inmobi/media/sb;-><init>(Lcom/inmobi/media/ub;)V

    goto :goto_1

    .line 13
    :cond_3
    new-instance p2, Lcom/inmobi/media/tb;

    invoke-direct {p2, p0}, Lcom/inmobi/media/tb;-><init>(Lcom/inmobi/media/ub;)V

    .line 14
    :goto_1
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/billingclient/api/BillingClient;

    if-nez p1, :cond_4

    .line 15
    new-instance p1, Lcom/inmobi/media/gb;

    const/16 p2, 0x8b9

    invoke-direct {p1, p2}, Lcom/inmobi/media/gb;-><init>(S)V

    .line 16
    invoke-virtual {p0, p1, v1}, Lcom/inmobi/media/ub;->a(Lcom/inmobi/media/jb;Lcom/inmobi/media/eb;)V

    return-void

    :cond_4
    iput-object p1, p0, Lcom/inmobi/media/ub;->b:Lcom/android/billingclient/api/BillingClient;

    .line 17
    new-instance p1, Lcom/inmobi/media/qb;

    invoke-direct {p1, p0}, Lcom/inmobi/media/qb;-><init>(Lcom/inmobi/media/ub;)V

    .line 18
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object p2, p0, Lcom/inmobi/media/ub;->b:Lcom/android/billingclient/api/BillingClient;

    if-eqz p2, :cond_5

    new-instance v0, Lcom/inmobi/media/ob;

    invoke-direct {v0, p0, p1}, Lcom/inmobi/media/ob;-><init>(Lcom/inmobi/media/ub;Lcom/inmobi/media/qb;)V

    invoke-virtual {p2, v0}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 20
    :goto_2
    sget-object p2, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 21
    const-string p2, "event"

    invoke-static {p1, p2}, Lcom/inmobi/media/w5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/f2;

    move-result-object p1

    .line 22
    sget-object p2, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {p2, p1}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    .line 23
    new-instance p1, Lcom/inmobi/media/gb;

    const/16 p2, 0x8bd

    invoke-direct {p1, p2}, Lcom/inmobi/media/gb;-><init>(S)V

    invoke-virtual {p0, p1, v1}, Lcom/inmobi/media/ub;->a(Lcom/inmobi/media/jb;Lcom/inmobi/media/eb;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public final a(Lcom/inmobi/media/jb;Lcom/inmobi/media/eb;)V
    .locals 0

    .line 24
    invoke-static {p1}, Lcom/inmobi/media/kb;->a(Lcom/inmobi/media/jb;)V

    .line 25
    iget-object p1, p0, Lcom/inmobi/media/ub;->a:Lcom/inmobi/media/bb;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/inmobi/media/bb;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final a(Lcom/inmobi/media/pb;)V
    .locals 4

    const-string v0, "onComplete"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v0

    const-string v1, "newBuilder(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    const-string v2, "inapp"

    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    .line 38
    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    const-string v1, "subs"

    invoke-virtual {v2, v1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    .line 40
    iget-object v1, p0, Lcom/inmobi/media/ub;->b:Lcom/android/billingclient/api/BillingClient;

    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {v0}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object v0

    .line 42
    new-instance v3, Lub/s6;

    invoke-direct {v3, p0, p1}, Lub/s6;-><init>(Lcom/inmobi/media/ub;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v0, v3}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/ub;->b:Lcom/android/billingclient/api/BillingClient;

    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {v2}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object v1

    .line 45
    new-instance v2, Lub/t6;

    invoke-direct {v2, p0, p1}, Lub/t6;-><init>(Lcom/inmobi/media/ub;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    :cond_1
    return-void
.end method
