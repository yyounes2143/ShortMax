.class public final Lcom/facebook/appevents/iap/g;
.super Ljava/lang/Object;
.source "InAppPurchaseManager.kt"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/iap/g$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lcom/facebook/appevents/iap/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ly1/a;",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/Long;",
            "Lkotlin/Pair<",
            "Landroid/os/Bundle;",
            "Lcom/facebook/appevents/i0;",
            ">;>;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ly1/a;",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/Long;",
            "Lkotlin/Pair<",
            "Landroid/os/Bundle;",
            "Lcom/facebook/appevents/i0;",
            ">;>;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static final e:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/appevents/iap/g;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/facebook/appevents/iap/g;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/facebook/appevents/iap/g;->a:Lcom/facebook/appevents/iap/g;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/facebook/appevents/iap/g;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/facebook/appevents/iap/g;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 21
    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 26
    .line 27
    .line 28
    sput-object v0, Lcom/facebook/appevents/iap/g;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

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

.method public static final a()V
    .locals 3

    .line 1
    const-class v0, Lcom/facebook/appevents/iap/g;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    invoke-static {}, La2/i;->g()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/facebook/appevents/iap/f;->i()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    sget-object v1, Lcom/facebook/appevents/iap/g;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/facebook/appevents/iap/g;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :goto_0
    invoke-static {v1, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private final b()Lcom/facebook/appevents/iap/InAppPurchaseUtils$BillingClientVersion;
    .locals 9

    .line 1
    invoke-static {p0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/v;->l()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/16 v3, 0x80

    .line 22
    .line 23
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v2, "context.packageManager.g\u2026TA_DATA\n                )"

    .line 28
    .line 29
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 33
    .line 34
    const-string v2, "com.google.android.play.billingclient.version"

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    sget-object v0, Lcom/facebook/appevents/iap/InAppPurchaseUtils$BillingClientVersion;->NONE:Lcom/facebook/appevents/iap/InAppPurchaseUtils$BillingClientVersion;

    .line 43
    .line 44
    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const-string v2, "."

    .line 48
    .line 49
    filled-new-array {v2}, [Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    const/4 v7, 0x2

    .line 54
    const/4 v8, 0x0

    .line 55
    const/4 v5, 0x0

    .line 56
    const/4 v6, 0x3

    .line 57
    move-object v3, v0

    .line 58
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-nez v3, :cond_2

    .line 67
    .line 68
    sget-object v0, Lcom/facebook/appevents/iap/InAppPurchaseUtils$BillingClientVersion;->V5_V7:Lcom/facebook/appevents/iap/InAppPurchaseUtils$BillingClientVersion;

    .line 69
    .line 70
    return-object v0

    .line 71
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v4, "GPBL."

    .line 77
    .line 78
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v0}, Lcom/facebook/appevents/iap/g;->g(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const/4 v0, 0x0

    .line 92
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Ljava/lang/String;

    .line 97
    .line 98
    invoke-static {v0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    if-eqz v0, :cond_5

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    const/4 v2, 0x1

    .line 109
    if-ne v0, v2, :cond_3

    .line 110
    .line 111
    sget-object v0, Lcom/facebook/appevents/iap/InAppPurchaseUtils$BillingClientVersion;->V1:Lcom/facebook/appevents/iap/InAppPurchaseUtils$BillingClientVersion;

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_3
    const/4 v2, 0x5

    .line 115
    if-ge v0, v2, :cond_4

    .line 116
    .line 117
    sget-object v0, Lcom/facebook/appevents/iap/InAppPurchaseUtils$BillingClientVersion;->V2_V4:Lcom/facebook/appevents/iap/InAppPurchaseUtils$BillingClientVersion;

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_4
    sget-object v0, Lcom/facebook/appevents/iap/InAppPurchaseUtils$BillingClientVersion;->V5_V7:Lcom/facebook/appevents/iap/InAppPurchaseUtils$BillingClientVersion;

    .line 121
    .line 122
    :goto_0
    return-object v0

    .line 123
    :cond_5
    sget-object v0, Lcom/facebook/appevents/iap/InAppPurchaseUtils$BillingClientVersion;->V5_V7:Lcom/facebook/appevents/iap/InAppPurchaseUtils$BillingClientVersion;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .line 125
    return-object v0

    .line 126
    :catch_0
    :try_start_1
    sget-object v0, Lcom/facebook/appevents/iap/InAppPurchaseUtils$BillingClientVersion;->V5_V7:Lcom/facebook/appevents/iap/InAppPurchaseUtils$BillingClientVersion;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    .line 128
    return-object v0

    .line 129
    :goto_1
    invoke-static {v0, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    return-object v1
.end method

.method public static synthetic d(Lcom/facebook/appevents/iap/g;Landroid/os/Bundle;Lcom/facebook/appevents/i0;Landroid/os/Bundle;Lcom/facebook/appevents/i0;ZZILjava/lang/Object;)Ljava/lang/String;
    .locals 10

    .line 1
    const-class v1, Lcom/facebook/appevents/iap/g;

    .line 2
    .line 3
    invoke-static {v1}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    and-int/lit8 v0, p7, 0x20

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    move v9, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    move/from16 v9, p6

    .line 19
    .line 20
    :goto_0
    move-object v3, p0

    .line 21
    move-object v4, p1

    .line 22
    move-object v5, p2

    .line 23
    move-object v6, p3

    .line 24
    move-object v7, p4

    .line 25
    move v8, p5

    .line 26
    :try_start_0
    invoke-virtual/range {v3 .. v9}, Lcom/facebook/appevents/iap/g;->c(Landroid/os/Bundle;Lcom/facebook/appevents/i0;Landroid/os/Bundle;Lcom/facebook/appevents/i0;ZZ)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    move-object v3, v0

    .line 33
    invoke-static {v3, v1}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-object v2
.end method

.method public static final e()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-class v0, Lcom/facebook/appevents/iap/g;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    :try_start_0
    sget-object v0, Lcom/facebook/appevents/iap/g;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    invoke-static {v1, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-object v2
.end method

.method public static final declared-synchronized f(Ljava/util/List;JZLjava/util/List;)Landroid/os/Bundle;
    .locals 29
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ly1/a;",
            ">;JZ",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Landroid/os/Bundle;",
            "Lcom/facebook/appevents/i0;",
            ">;>;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    const-class v2, Lcom/facebook/appevents/iap/g;

    monitor-enter v2

    :try_start_0
    const-class v3, Lcom/facebook/appevents/iap/g;

    invoke-static {v3}, Lo4/a;->d(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    monitor-exit v2

    return-object v4

    :cond_0
    :try_start_1
    const-string v3, "purchases"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "purchaseParameters"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 2
    monitor-exit v2

    return-object v4

    .line 3
    :cond_1
    :try_start_2
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v5

    if-ne v3, v5, :cond_1d

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v5

    move-object v8, v4

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_14

    .line 6
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ly1/a;

    .line 7
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlin/Pair;

    invoke-virtual {v10}, Lkotlin/Pair;->b()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    invoke-virtual {v10}, Lkotlin/Pair;->d()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/facebook/appevents/i0;

    .line 8
    new-instance v15, Ly1/a;

    .line 9
    invoke-virtual {v9}, Ly1/a;->c()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/math/BigDecimal;

    .line 10
    invoke-virtual {v9}, Ly1/a;->a()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sget-object v14, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    const/4 v6, 0x2

    invoke-virtual {v13, v6, v14}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v13

    .line 11
    invoke-virtual {v9}, Ly1/a;->b()Ljava/util/Currency;

    move-result-object v6

    .line 12
    invoke-direct {v15, v12, v13, v14, v6}, Ly1/a;-><init>(Ljava/lang/String;DLjava/util/Currency;)V

    if-eqz p3, :cond_2

    .line 13
    sget-object v6, Lcom/facebook/appevents/iap/g;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v15}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    .line 14
    :cond_2
    sget-object v6, Lcom/facebook/appevents/iap/g;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v15}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 15
    :goto_1
    move-object v9, v6

    check-cast v9, Ljava/util/Collection;

    if-eqz v9, :cond_3

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    move-object v4, v15

    goto/16 :goto_4

    .line 16
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v9, v4

    move-object v12, v9

    move-object/from16 v21, v12

    const/16 v22, 0x0

    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lkotlin/Pair;

    .line 17
    invoke-virtual {v13}, Lkotlin/Pair;->e()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->longValue()J

    move-result-wide v23

    .line 18
    invoke-virtual {v13}, Lkotlin/Pair;->f()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lkotlin/Pair;

    invoke-virtual {v13}, Lkotlin/Pair;->b()Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v25, v14

    check-cast v25, Landroid/os/Bundle;

    invoke-virtual {v13}, Lkotlin/Pair;->d()Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v26, v13

    check-cast v26, Lcom/facebook/appevents/i0;

    sub-long v13, p1, v23

    .line 19
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    sget-object v16, Ly1/k;->a:Ly1/k;

    invoke-virtual/range {v16 .. v16}, Ly1/k;->e()J

    move-result-wide v16

    cmp-long v13, v13, v16

    if-lez v13, :cond_6

    goto :goto_2

    :cond_6
    if-eqz v21, :cond_7

    .line 20
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v13, v23, v13

    if-gez v13, :cond_5

    .line 21
    :cond_7
    sget-object v27, Lcom/facebook/appevents/iap/g;->a:Lcom/facebook/appevents/iap/g;

    const/16 v28, 0x1

    xor-int/lit8 v17, p3, 0x1

    const/16 v19, 0x20

    const/16 v20, 0x0

    const/16 v18, 0x0

    move-object/from16 v12, v27

    move-object v13, v11

    move-object v14, v10

    move-object v4, v15

    move-object/from16 v15, v25

    move-object/from16 v16, v26

    invoke-static/range {v12 .. v20}, Lcom/facebook/appevents/iap/g;->d(Lcom/facebook/appevents/iap/g;Landroid/os/Bundle;Lcom/facebook/appevents/i0;Landroid/os/Bundle;Lcom/facebook/appevents/i0;ZZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    xor-int/lit8 v17, p3, 0x1

    const/16 v18, 0x1

    move-object/from16 v12, v27

    move-object v13, v11

    move-object v14, v10

    move-object/from16 v15, v25

    move-object/from16 v16, v26

    .line 22
    invoke-virtual/range {v12 .. v18}, Lcom/facebook/appevents/iap/g;->c(Landroid/os/Bundle;Lcom/facebook/appevents/i0;Landroid/os/Bundle;Lcom/facebook/appevents/i0;ZZ)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_8

    move-object v9, v12

    :cond_8
    if-eqz v19, :cond_9

    .line 23
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    .line 24
    new-instance v12, Lkotlin/Pair;

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-direct {v12, v4, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v15, v4

    move-object/from16 v12, v19

    move/from16 v22, v28

    :goto_3
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_9
    move-object v15, v4

    move-object/from16 v12, v19

    goto :goto_3

    :cond_a
    move-object v4, v15

    goto :goto_5

    :goto_4
    const/4 v9, 0x0

    const/4 v12, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    :goto_5
    if-eqz v9, :cond_c

    if-nez v8, :cond_b

    .line 25
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 26
    :cond_b
    const-string v6, "fb_iap_test_dedup_result"

    const-string v13, "1"

    invoke-virtual {v8, v6, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v6, "fb_iap_test_dedup_key_used"

    .line 28
    invoke-virtual {v8, v6, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    if-eqz v22, :cond_f

    if-nez v8, :cond_d

    .line 29
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    :cond_d
    if-eqz v21, :cond_e

    .line 30
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const/16 v6, 0x3e8

    int-to-long v0, v6

    div-long/2addr v13, v0

    goto :goto_6

    :cond_e
    const-wide/16 v13, 0x0

    .line 31
    :goto_6
    const-string v0, "fb_iap_non_deduped_event_time"

    .line 32
    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-virtual {v8, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v0, "fb_iap_actual_dedup_result"

    .line 35
    const-string v1, "1"

    .line 36
    invoke-virtual {v8, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v0, "fb_iap_actual_dedup_key_used"

    .line 38
    invoke-virtual {v8, v0, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    if-eqz p3, :cond_11

    if-nez v22, :cond_11

    .line 39
    sget-object v0, Lcom/facebook/appevents/iap/g;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_10

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_10
    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_13

    .line 42
    new-instance v1, Lkotlin/Pair;

    .line 43
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 44
    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v11, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    invoke-direct {v1, v4, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_11
    if-nez p3, :cond_13

    if-nez v22, :cond_13

    .line 47
    sget-object v0, Lcom/facebook/appevents/iap/g;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_12

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_12
    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_13

    .line 50
    new-instance v1, Lkotlin/Pair;

    .line 51
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 52
    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v11, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    invoke-direct {v1, v4, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    :goto_7
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 55
    :cond_14
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    if-eqz p3, :cond_15

    .line 56
    sget-object v3, Lcom/facebook/appevents/iap/g;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lkotlin/Pair;->e()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    goto :goto_9

    .line 57
    :cond_15
    sget-object v3, Lcom/facebook/appevents/iap/g;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lkotlin/Pair;->e()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    :goto_9
    if-nez v3, :cond_16

    goto :goto_8

    .line 58
    :cond_16
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_18

    add-int/lit8 v6, v5, 0x1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/Pair;

    .line 59
    invoke-virtual {v7}, Lkotlin/Pair;->e()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    invoke-virtual {v1}, Lkotlin/Pair;->f()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    cmp-long v7, v9, v11

    if-nez v7, :cond_17

    .line 60
    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_b

    :cond_17
    move v5, v6

    goto :goto_a

    :cond_18
    :goto_b
    if-eqz p3, :cond_1a

    .line 61
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 62
    sget-object v3, Lcom/facebook/appevents/iap/g;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lkotlin/Pair;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 63
    :cond_19
    sget-object v4, Lcom/facebook/appevents/iap/g;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lkotlin/Pair;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 64
    :cond_1a
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 65
    sget-object v3, Lcom/facebook/appevents/iap/g;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lkotlin/Pair;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 66
    :cond_1b
    sget-object v4, Lcom/facebook/appevents/iap/g;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lkotlin/Pair;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_8

    .line 67
    :cond_1c
    monitor-exit v2

    return-object v8

    .line 68
    :cond_1d
    monitor-exit v2

    :goto_c
    const/4 v1, 0x0

    return-object v1

    .line 69
    :goto_d
    :try_start_3
    const-class v1, Lcom/facebook/appevents/iap/g;

    invoke-static {v0, v1}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v2

    goto :goto_c

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private static final g(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-class v0, Lcom/facebook/appevents/iap/g;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    sput-object p0, Lcom/facebook/appevents/iap/g;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    invoke-static {p0, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static final h()V
    .locals 4

    .line 1
    const-class v0, Lcom/facebook/appevents/iap/g;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/iap/g;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    sget-object v1, Lcom/facebook/appevents/iap/g;->a:Lcom/facebook/appevents/iap/g;

    .line 20
    .line 21
    invoke-direct {v1}, Lcom/facebook/appevents/iap/g;->b()Lcom/facebook/appevents/iap/InAppPurchaseUtils$BillingClientVersion;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    sget-object v2, Lcom/facebook/appevents/iap/g$a;->$EnumSwitchMapping$0:[I

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    aget v2, v2, v3

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    if-eq v2, v3, :cond_5

    .line 35
    .line 36
    const/4 v3, 0x3

    .line 37
    if-eq v2, v3, :cond_3

    .line 38
    .line 39
    const/4 v3, 0x4

    .line 40
    if-eq v2, v3, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    sget-object v2, Lcom/facebook/internal/FeatureManager$Feature;->IapLoggingLib5To7:Lcom/facebook/internal/FeatureManager$Feature;

    .line 44
    .line 45
    invoke-static {v2}, Lcom/facebook/internal/FeatureManager;->g(Lcom/facebook/internal/FeatureManager$Feature;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_6

    .line 50
    .line 51
    invoke-static {}, Lcom/facebook/v;->l()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-static {v2, v1}, Lcom/facebook/appevents/iap/b;->e(Landroid/content/Context;Lcom/facebook/appevents/iap/InAppPurchaseUtils$BillingClientVersion;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception v1

    .line 60
    goto :goto_1

    .line 61
    :cond_3
    sget-object v2, Lcom/facebook/internal/FeatureManager$Feature;->IapLoggingLib2:Lcom/facebook/internal/FeatureManager$Feature;

    .line 62
    .line 63
    invoke-static {v2}, Lcom/facebook/internal/FeatureManager;->g(Lcom/facebook/internal/FeatureManager$Feature;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_4

    .line 68
    .line 69
    invoke-static {}, Lcom/facebook/v;->l()Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-static {v2, v1}, Lcom/facebook/appevents/iap/b;->e(Landroid/content/Context;Lcom/facebook/appevents/iap/InAppPurchaseUtils$BillingClientVersion;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_4
    sget-object v1, Lcom/facebook/appevents/iap/InAppPurchaseUtils$BillingClientVersion;->V2_V4:Lcom/facebook/appevents/iap/InAppPurchaseUtils$BillingClientVersion;

    .line 78
    .line 79
    invoke-static {v1}, Lcom/facebook/appevents/iap/a;->g(Lcom/facebook/appevents/iap/InAppPurchaseUtils$BillingClientVersion;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_5
    sget-object v1, Lcom/facebook/appevents/iap/InAppPurchaseUtils$BillingClientVersion;->V1:Lcom/facebook/appevents/iap/InAppPurchaseUtils$BillingClientVersion;

    .line 84
    .line 85
    invoke-static {v1}, Lcom/facebook/appevents/iap/a;->g(Lcom/facebook/appevents/iap/InAppPurchaseUtils$BillingClientVersion;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .line 87
    .line 88
    :cond_6
    :goto_0
    return-void

    .line 89
    :goto_1
    invoke-static {v1, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method


# virtual methods
.method public final c(Landroid/os/Bundle;Lcom/facebook/appevents/i0;Landroid/os/Bundle;Lcom/facebook/appevents/i0;ZZ)Ljava/lang/String;
    .locals 7
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/appevents/i0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/appevents/i0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    if-eqz p6, :cond_1

    .line 10
    .line 11
    :try_start_0
    sget-object p6, Ly1/k;->a:Ly1/k;

    .line 12
    .line 13
    invoke-virtual {p6, p5}, Ly1/k;->f(Z)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p6

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto/16 :goto_5

    .line 20
    .line 21
    :cond_1
    sget-object p6, Ly1/k;->a:Ly1/k;

    .line 22
    .line 23
    invoke-virtual {p6, p5}, Ly1/k;->d(Z)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p6

    .line 27
    :goto_0
    if-nez p6, :cond_2

    .line 28
    .line 29
    return-object v1

    .line 30
    :cond_2
    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p6

    .line 34
    :cond_3
    :goto_1
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_a

    .line 39
    .line 40
    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lkotlin/Pair;

    .line 45
    .line 46
    sget-object v2, Lcom/facebook/appevents/i0;->b:Lcom/facebook/appevents/i0$a;

    .line 47
    .line 48
    sget-object v3, Lcom/facebook/appevents/OperationalDataEnum;->IAPParameters:Lcom/facebook/appevents/OperationalDataEnum;

    .line 49
    .line 50
    invoke-virtual {v0}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v2, v3, v4, p1, p2}, Lcom/facebook/appevents/i0$a;->c(Lcom/facebook/appevents/OperationalDataEnum;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/appevents/i0;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    instance-of v3, v2, Ljava/lang/String;

    .line 61
    .line 62
    if-eqz v3, :cond_4

    .line 63
    .line 64
    check-cast v2, Ljava/lang/String;

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_4
    move-object v2, v1

    .line 68
    :goto_2
    if-eqz v2, :cond_3

    .line 69
    .line 70
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-nez v3, :cond_5

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_5
    invoke-virtual {v0}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    check-cast v3, Ljava/util/List;

    .line 82
    .line 83
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-eqz v4, :cond_3

    .line 92
    .line 93
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    check-cast v4, Ljava/lang/String;

    .line 98
    .line 99
    sget-object v5, Lcom/facebook/appevents/i0;->b:Lcom/facebook/appevents/i0$a;

    .line 100
    .line 101
    sget-object v6, Lcom/facebook/appevents/OperationalDataEnum;->IAPParameters:Lcom/facebook/appevents/OperationalDataEnum;

    .line 102
    .line 103
    invoke-virtual {v5, v6, v4, p3, p4}, Lcom/facebook/appevents/i0$a;->c(Lcom/facebook/appevents/OperationalDataEnum;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/appevents/i0;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    instance-of v6, v5, Ljava/lang/String;

    .line 108
    .line 109
    if-eqz v6, :cond_7

    .line 110
    .line 111
    check-cast v5, Ljava/lang/String;

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_7
    move-object v5, v1

    .line 115
    :goto_4
    if-eqz v5, :cond_6

    .line 116
    .line 117
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    if-nez v6, :cond_8

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_8
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    if-eqz v5, :cond_6

    .line 129
    .line 130
    if-eqz p5, :cond_9

    .line 131
    .line 132
    invoke-virtual {v0}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    move-object v4, p1

    .line 137
    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    .line 139
    :cond_9
    return-object v4

    .line 140
    :cond_a
    return-object v1

    .line 141
    :goto_5
    invoke-static {p1, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    return-object v1
.end method
