.class public final Ly1/l;
.super Ljava/lang/Object;
.source "InAppPurchaseEventManager.kt"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Ly1/l;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final d:Ljava/lang/String;

.field private static final e:Landroid/content/SharedPreferences;

.field private static final f:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ly1/l;

    .line 2
    .line 3
    invoke-direct {v0}, Ly1/l;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ly1/l;->a:Ly1/l;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Ly1/l;->b:Ljava/util/HashMap;

    .line 14
    .line 15
    new-instance v0, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Ly1/l;->c:Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-static {}, Lcom/facebook/v;->l()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Ly1/l;->d:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {}, Lcom/facebook/v;->l()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "com.facebook.internal.SKU_DETAILS"

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Ly1/l;->e:Landroid/content/SharedPreferences;

    .line 44
    .line 45
    invoke-static {}, Lcom/facebook/v;->l()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v1, "com.facebook.internal.PURCHASE"

    .line 50
    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Ly1/l;->f:Landroid/content/SharedPreferences;

    .line 56
    .line 57
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

.method public static final a(Landroid/content/Context;Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 9
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/os/IBinder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-class v0, Ly1/l;

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
    const-string v1, "context"

    .line 12
    .line 13
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v8

    .line 20
    sget-object v3, Ly1/l;->a:Ly1/l;

    .line 21
    .line 22
    const-string v5, "com.android.vending.billing.IInAppBillingService$Stub"

    .line 23
    .line 24
    const-string v6, "asInterface"

    .line 25
    .line 26
    const/4 v7, 0x0

    .line 27
    move-object v4, p0

    .line 28
    invoke-direct/range {v3 .. v8}, Ly1/l;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    return-object p0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    invoke-static {p0, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    return-object v2
.end method

.method public static final b()V
    .locals 9

    .line 1
    const-string v0, "LAST_CLEARED_TIME"

    .line 2
    .line 3
    const-class v1, Ly1/l;

    .line 4
    .line 5
    invoke-static {v1}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    const-wide/16 v4, 0x3e8

    .line 17
    .line 18
    div-long/2addr v2, v4

    .line 19
    sget-object v4, Ly1/l;->e:Landroid/content/SharedPreferences;

    .line 20
    .line 21
    const-wide/16 v5, 0x0

    .line 22
    .line 23
    invoke-interface {v4, v0, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 24
    .line 25
    .line 26
    move-result-wide v7

    .line 27
    cmp-long v5, v7, v5

    .line 28
    .line 29
    if-nez v5, :cond_1

    .line 30
    .line 31
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-interface {v4, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    sub-long v5, v2, v7

    .line 46
    .line 47
    const-wide/32 v7, 0x93a80

    .line 48
    .line 49
    .line 50
    cmp-long v5, v5, v7

    .line 51
    .line 52
    if-lez v5, :cond_2

    .line 53
    .line 54
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-interface {v4, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    .line 69
    :cond_2
    :goto_0
    return-void

    .line 70
    :goto_1
    invoke-static {v0, v1}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method private final c(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
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
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    sget-object v2, Ly1/l;->f:Landroid/content/SharedPreferences;

    .line 15
    .line 16
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    const-wide/16 v5, 0x3e8

    .line 25
    .line 26
    div-long/2addr v3, v5

    .line 27
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :catch_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    if-eqz v7, :cond_3

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    check-cast v7, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    :try_start_1
    new-instance v8, Lorg/json/JSONObject;

    .line 44
    .line 45
    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v9, "productId"

    .line 49
    .line 50
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v9

    .line 54
    const-string v10, "purchaseTime"

    .line 55
    .line 56
    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 57
    .line 58
    .line 59
    move-result-wide v10

    .line 60
    const-string v12, "purchaseToken"

    .line 61
    .line 62
    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    div-long/2addr v10, v5

    .line 67
    sub-long v10, v3, v10

    .line 68
    .line 69
    const-wide/32 v12, 0x15180

    .line 70
    .line 71
    .line 72
    cmp-long v10, v10, v12

    .line 73
    .line 74
    if-lez v10, :cond_1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    sget-object v10, Ly1/l;->f:Landroid/content/SharedPreferences;

    .line 78
    .line 79
    const-string v11, ""

    .line 80
    .line 81
    invoke-interface {v10, v9, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v10

    .line 85
    invoke-static {v10, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v10

    .line 89
    if-eqz v10, :cond_2

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    invoke-interface {v2, v9, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :catchall_0
    move-exception p1

    .line 100
    goto :goto_1

    .line 101
    :cond_3
    :try_start_2
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    .line 103
    .line 104
    return-object v0

    .line 105
    :goto_1
    invoke-static {p1, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    return-object v1
.end method

.method private final d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
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
    :try_start_0
    sget-object v0, Ly1/l;->c:Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Ljava/lang/Class;

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    return-object v2

    .line 20
    :cond_1
    invoke-static {p1, p2}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    :goto_0
    return-object p1

    .line 33
    :goto_1
    invoke-static {p1, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-object v1
.end method

.method private final e(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
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
    :try_start_0
    sget-object v0, Ly1/l;->b:Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Ljava/lang/reflect/Method;

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    return-object v2

    .line 20
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    const-class v3, Landroid/os/Bundle;

    .line 25
    .line 26
    const-string v4, "TYPE"

    .line 27
    .line 28
    const-class v5, Ljava/lang/String;

    .line 29
    .line 30
    sparse-switch v2, :sswitch_data_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :sswitch_0
    :try_start_1
    const-string v2, "getSkuDetails"

    .line 35
    .line 36
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 44
    .line 45
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    filled-new-array {v2, v5, v5, v3}, [Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    goto :goto_1

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    goto/16 :goto_3

    .line 55
    .line 56
    :sswitch_1
    const-string v2, "getPurchaseHistory"

    .line 57
    .line 58
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-nez v2, :cond_3

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 66
    .line 67
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    filled-new-array {v2, v5, v5, v5, v3}, [Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    goto :goto_1

    .line 75
    :sswitch_2
    const-string v2, "asInterface"

    .line 76
    .line 77
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-nez v2, :cond_4

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_4
    const-class v2, Landroid/os/IBinder;

    .line 85
    .line 86
    filled-new-array {v2}, [Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    goto :goto_1

    .line 91
    :sswitch_3
    const-string v2, "isBillingSupported"

    .line 92
    .line 93
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-nez v2, :cond_5

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_5
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 101
    .line 102
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    filled-new-array {v2, v5, v5}, [Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    goto :goto_1

    .line 110
    :sswitch_4
    const-string v2, "getPurchases"

    .line 111
    .line 112
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-nez v2, :cond_6

    .line 117
    .line 118
    :goto_0
    move-object v2, v1

    .line 119
    goto :goto_1

    .line 120
    :cond_6
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 121
    .line 122
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    filled-new-array {v2, v5, v5, v5}, [Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    :goto_1
    if-nez v2, :cond_7

    .line 130
    .line 131
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-static {p1, p2, v2}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->c(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    goto :goto_2

    .line 140
    :cond_7
    array-length v3, v2

    .line 141
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    check-cast v2, [Ljava/lang/Class;

    .line 146
    .line 147
    invoke-static {p1, p2, v2}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->c(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    :goto_2
    if-eqz p1, :cond_8

    .line 152
    .line 153
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    .line 155
    .line 156
    :cond_8
    return-object p1

    .line 157
    :goto_3
    invoke-static {p1, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    return-object v1

    .line 161
    :sswitch_data_0
    .sparse-switch
        -0x6b5af324 -> :sswitch_4
        -0x5677d643 -> :sswitch_3
        -0x42f2e6d9 -> :sswitch_2
        -0x236d29e3 -> :sswitch_1
        -0x222c05a5 -> :sswitch_0
    .end sparse-switch
.end method

.method private final f(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static/range {p0 .. p0}, Lo4/a;->d(Ljava/lang/Object;)Z

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
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-direct/range {p0 .. p3}, Ly1/l;->o(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_6

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    move-object v4, v1

    .line 22
    move v3, v2

    .line 23
    :cond_1
    const/4 v5, 0x6

    .line 24
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    sget-object v6, Ly1/l;->d:Ljava/lang/String;

    .line 29
    .line 30
    new-instance v7, Landroid/os/Bundle;

    .line 31
    .line 32
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 33
    .line 34
    .line 35
    move-object/from16 v8, p3

    .line 36
    .line 37
    filled-new-array {v5, v6, v8, v4, v7}, [Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v14

    .line 41
    const-string v11, "com.android.vending.billing.IInAppBillingService"

    .line 42
    .line 43
    const-string v12, "getPurchaseHistory"

    .line 44
    .line 45
    move-object/from16 v9, p0

    .line 46
    .line 47
    move-object/from16 v10, p1

    .line 48
    .line 49
    move-object/from16 v13, p2

    .line 50
    .line 51
    invoke-direct/range {v9 .. v14}, Ly1/l;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    if-eqz v4, :cond_5

    .line 56
    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 58
    .line 59
    .line 60
    move-result-wide v5

    .line 61
    const-wide/16 v9, 0x3e8

    .line 62
    .line 63
    div-long/2addr v5, v9

    .line 64
    check-cast v4, Landroid/os/Bundle;

    .line 65
    .line 66
    const-string v7, "RESPONSE_CODE"

    .line 67
    .line 68
    invoke-virtual {v4, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-nez v7, :cond_5

    .line 73
    .line 74
    const-string v7, "INAPP_PURCHASE_DATA_LIST"

    .line 75
    .line 76
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    if-nez v7, :cond_2

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    :catch_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v11

    .line 91
    if-eqz v11, :cond_4

    .line 92
    .line 93
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v11

    .line 97
    check-cast v11, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .line 99
    :try_start_1
    new-instance v12, Lorg/json/JSONObject;

    .line 100
    .line 101
    invoke-direct {v12, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    const-string v13, "purchaseTime"

    .line 105
    .line 106
    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 107
    .line 108
    .line 109
    move-result-wide v12

    .line 110
    div-long/2addr v12, v9

    .line 111
    sub-long v12, v5, v12

    .line 112
    .line 113
    const-wide/16 v14, 0x4b0

    .line 114
    .line 115
    cmp-long v12, v12, v14

    .line 116
    .line 117
    if-lez v12, :cond_3

    .line 118
    .line 119
    const/4 v3, 0x1

    .line 120
    goto :goto_1

    .line 121
    :cond_3
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    .line 123
    .line 124
    add-int/lit8 v2, v2, 0x1

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :catchall_0
    move-exception v0

    .line 128
    move-object/from16 v2, p0

    .line 129
    .line 130
    goto :goto_4

    .line 131
    :cond_4
    :goto_1
    :try_start_2
    const-string v5, "INAPP_CONTINUATION_TOKEN"

    .line 132
    .line 133
    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    goto :goto_3

    .line 138
    :cond_5
    :goto_2
    move-object v4, v1

    .line 139
    :goto_3
    const/16 v5, 0x1e

    .line 140
    .line 141
    if-ge v2, v5, :cond_6

    .line 142
    .line 143
    if-eqz v4, :cond_6

    .line 144
    .line 145
    if-eqz v3, :cond_1

    .line 146
    .line 147
    :cond_6
    return-object v0

    .line 148
    :goto_4
    invoke-static {v0, v2}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    return-object v1
.end method

.method public static final g(Landroid/content/Context;Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-class v0, Ly1/l;

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
    const-string v1, "context"

    .line 12
    .line 13
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    return-object v1

    .line 24
    :cond_1
    sget-object v3, Ly1/l;->a:Ly1/l;

    .line 25
    .line 26
    const-string v4, "com.android.vending.billing.IInAppBillingService"

    .line 27
    .line 28
    invoke-direct {v3, p0, v4}, Ly1/l;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    if-nez v4, :cond_2

    .line 33
    .line 34
    return-object v1

    .line 35
    :cond_2
    const-string v5, "getPurchaseHistory"

    .line 36
    .line 37
    invoke-direct {v3, v4, v5}, Ly1/l;->e(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    if-nez v4, :cond_3

    .line 42
    .line 43
    return-object v1

    .line 44
    :cond_3
    const-string v1, "inapp"

    .line 45
    .line 46
    invoke-direct {v3, p0, p1, v1}, Ly1/l;->f(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-direct {v3, p0}, Ly1/l;->c(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 51
    .line 52
    .line 53
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    return-object p0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    invoke-static {p0, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    return-object v2
.end method

.method private final h(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
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
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    if-nez p2, :cond_1

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Ly1/l;->o(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_4

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    move-object v3, v1

    .line 25
    :cond_2
    const/4 v4, 0x3

    .line 26
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    sget-object v5, Ly1/l;->d:Ljava/lang/String;

    .line 31
    .line 32
    filled-new-array {v4, v5, p3, v3}, [Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v11

    .line 36
    const-string v8, "com.android.vending.billing.IInAppBillingService"

    .line 37
    .line 38
    const-string v9, "getPurchases"

    .line 39
    .line 40
    move-object v6, p0

    .line 41
    move-object v7, p1

    .line 42
    move-object v10, p2

    .line 43
    invoke-direct/range {v6 .. v11}, Ly1/l;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    if-eqz v3, :cond_3

    .line 48
    .line 49
    check-cast v3, Landroid/os/Bundle;

    .line 50
    .line 51
    const-string v4, "RESPONSE_CODE"

    .line 52
    .line 53
    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-nez v4, :cond_3

    .line 58
    .line 59
    const-string v4, "INAPP_PURCHASE_DATA_LIST"

    .line 60
    .line 61
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    if-eqz v4, :cond_4

    .line 66
    .line 67
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    add-int/2addr v2, v5

    .line 72
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 73
    .line 74
    .line 75
    const-string v4, "INAPP_CONTINUATION_TOKEN"

    .line 76
    .line 77
    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    goto :goto_0

    .line 82
    :catchall_0
    move-exception p1

    .line 83
    goto :goto_1

    .line 84
    :cond_3
    move-object v3, v1

    .line 85
    :goto_0
    const/16 v4, 0x1e

    .line 86
    .line 87
    if-ge v2, v4, :cond_4

    .line 88
    .line 89
    if-nez v3, :cond_2

    .line 90
    .line 91
    :cond_4
    return-object v0

    .line 92
    :goto_1
    invoke-static {p1, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    return-object v1
.end method

.method public static final i(Landroid/content/Context;Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-class v0, Ly1/l;

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
    const-string v1, "context"

    .line 12
    .line 13
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v1, Ly1/l;->a:Ly1/l;

    .line 17
    .line 18
    const-string v3, "inapp"

    .line 19
    .line 20
    invoke-direct {v1, p0, p1, v3}, Ly1/l;->h(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-direct {v1, p0}, Ly1/l;->c(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    return-object p0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    invoke-static {p0, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-object v2
.end method

.method public static final j(Landroid/content/Context;Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-class v0, Ly1/l;

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
    const-string v1, "context"

    .line 12
    .line 13
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v1, Ly1/l;->a:Ly1/l;

    .line 17
    .line 18
    const-string v3, "subs"

    .line 19
    .line 20
    invoke-direct {v1, p0, p1, v3}, Ly1/l;->h(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-direct {v1, p0}, Ly1/l;->c(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    return-object p0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    invoke-static {p0, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-object v2
.end method

.method public static final k(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/Map;
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-class v0, Ly1/l;

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
    const-string v1, "context"

    .line 12
    .line 13
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "skuList"

    .line 17
    .line 18
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object v1, Ly1/l;->a:Ly1/l;

    .line 22
    .line 23
    invoke-direct {v1, p1}, Ly1/l;->p(Ljava/util/ArrayList;)Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-instance v3, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_2

    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Ljava/lang/String;

    .line 47
    .line 48
    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-nez v5, :cond_1

    .line 53
    .line 54
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    sget-object p1, Ly1/l;->a:Ly1/l;

    .line 61
    .line 62
    invoke-direct {p1, p0, v3, p2, p3}, Ly1/l;->l(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/Map;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-interface {v1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    .line 69
    return-object v1

    .line 70
    :goto_1
    invoke-static {p0, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    return-object v2
.end method

.method private final l(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
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
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    if-eqz p3, :cond_4

    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    .line 24
    .line 25
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v3, "ITEM_ID_LIST"

    .line 29
    .line 30
    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 31
    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    sget-object v4, Ly1/l;->d:Ljava/lang/String;

    .line 39
    .line 40
    if-eqz p4, :cond_2

    .line 41
    .line 42
    const-string p4, "subs"

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto :goto_3

    .line 47
    :cond_2
    const-string p4, "inapp"

    .line 48
    .line 49
    :goto_0
    filled-new-array {v3, v4, p4, v2}, [Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v10

    .line 53
    const-string v7, "com.android.vending.billing.IInAppBillingService"

    .line 54
    .line 55
    const-string v8, "getSkuDetails"

    .line 56
    .line 57
    move-object v5, p0

    .line 58
    move-object v6, p1

    .line 59
    move-object v9, p3

    .line 60
    invoke-direct/range {v5 .. v10}, Ly1/l;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-eqz p1, :cond_4

    .line 65
    .line 66
    check-cast p1, Landroid/os/Bundle;

    .line 67
    .line 68
    const-string p3, "RESPONSE_CODE"

    .line 69
    .line 70
    invoke-virtual {p1, p3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result p3

    .line 74
    if-nez p3, :cond_4

    .line 75
    .line 76
    const-string p3, "DETAILS_LIST"

    .line 77
    .line 78
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-eqz p1, :cond_3

    .line 83
    .line 84
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 85
    .line 86
    .line 87
    move-result p3

    .line 88
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 89
    .line 90
    .line 91
    move-result p4

    .line 92
    if-ne p3, p4, :cond_3

    .line 93
    .line 94
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 95
    .line 96
    .line 97
    move-result p3

    .line 98
    const/4 p4, 0x0

    .line 99
    :goto_1
    if-ge p4, p3, :cond_3

    .line 100
    .line 101
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    const-string v3, "skuList[i]"

    .line 106
    .line 107
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    const-string v4, "skuDetailsList[i]"

    .line 115
    .line 116
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    add-int/lit8 p4, p4, 0x1

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_3
    invoke-direct {p0, v0}, Ly1/l;->q(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .line 127
    .line 128
    :cond_4
    :goto_2
    return-object v0

    .line 129
    :goto_3
    invoke-static {p1, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    return-object v1
.end method

.method private final n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

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
    invoke-direct {p0, p1, p2}, Ly1/l;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_1
    invoke-direct {p0, p1, p3}, Ly1/l;->e(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    if-nez p2, :cond_2

    .line 21
    .line 22
    return-object v1

    .line 23
    :cond_2
    array-length p3, p5

    .line 24
    invoke-static {p5, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    invoke-static {p1, p2, p4, p3}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->e(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    return-object p1

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    invoke-static {p1, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    return-object v1
.end method

.method private final o(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Z
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
    return v1

    .line 9
    :cond_0
    if-nez p2, :cond_1

    .line 10
    .line 11
    return v1

    .line 12
    :cond_1
    const/4 v0, 0x3

    .line 13
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v2, Ly1/l;->d:Ljava/lang/String;

    .line 18
    .line 19
    filled-new-array {v0, v2, p3}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v8

    .line 23
    const-string v5, "com.android.vending.billing.IInAppBillingService"

    .line 24
    .line 25
    const-string v6, "isBillingSupported"

    .line 26
    .line 27
    move-object v3, p0

    .line 28
    move-object v4, p1

    .line 29
    move-object v7, p2

    .line 30
    invoke-direct/range {v3 .. v8}, Ly1/l;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    check-cast p1, Ljava/lang/Integer;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    if-nez p1, :cond_2

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    :goto_0
    return v1

    .line 49
    :goto_1
    invoke-static {p1, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    return v1
.end method

.method private final p(Ljava/util/ArrayList;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
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
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    const-wide/16 v4, 0x3e8

    .line 19
    .line 20
    div-long/2addr v2, v4

    .line 21
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_2

    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Ljava/lang/String;

    .line 36
    .line 37
    sget-object v5, Ly1/l;->e:Landroid/content/SharedPreferences;

    .line 38
    .line 39
    invoke-interface {v5, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    if-eqz v6, :cond_1

    .line 44
    .line 45
    const-string v5, ";"

    .line 46
    .line 47
    filled-new-array {v5}, [Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    const/4 v10, 0x2

    .line 52
    const/4 v11, 0x0

    .line 53
    const/4 v8, 0x0

    .line 54
    const/4 v9, 0x2

    .line 55
    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    const/4 v6, 0x0

    .line 60
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    check-cast v6, Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 67
    .line 68
    .line 69
    move-result-wide v6

    .line 70
    sub-long v6, v2, v6

    .line 71
    .line 72
    const-wide/32 v8, 0xa8c0

    .line 73
    .line 74
    .line 75
    cmp-long v6, v6, v8

    .line 76
    .line 77
    if-gez v6, :cond_1

    .line 78
    .line 79
    const-string v6, "sku"

    .line 80
    .line 81
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const/4 v6, 0x1

    .line 85
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :catchall_0
    move-exception p1

    .line 94
    goto :goto_1

    .line 95
    :cond_2
    return-object v0

    .line 96
    :goto_1
    invoke-static {p1, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    return-object v1
.end method

.method private final q(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    const-wide/16 v2, 0x3e8

    .line 13
    .line 14
    div-long/2addr v0, v2

    .line 15
    sget-object v2, Ly1/l;->e:Landroid/content/SharedPreferences;

    .line 16
    .line 17
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Ljava/util/Map$Entry;

    .line 40
    .line 41
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Ljava/lang/String;

    .line 46
    .line 47
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Ljava/lang/String;

    .line 52
    .line 53
    new-instance v5, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const/16 v6, 0x3b

    .line 62
    .line 63
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catchall_0
    move-exception p1

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :goto_1
    invoke-static {p1, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method


# virtual methods
.method public final m(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

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
    return v1

    .line 9
    :cond_0
    :try_start_0
    const-string v0, "skuDetail"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string p1, "freeTrialPeriod"

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 28
    .line 29
    .line 30
    move-result p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    if-lez p1, :cond_1

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_1

    .line 37
    :catch_0
    :cond_1
    :goto_0
    return v1

    .line 38
    :goto_1
    invoke-static {p1, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return v1
.end method
