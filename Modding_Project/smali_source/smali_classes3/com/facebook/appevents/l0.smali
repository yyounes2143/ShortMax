.class public final Lcom/facebook/appevents/l0;
.super Ljava/lang/Object;
.source "UserDataStore.kt"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nUserDataStore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserDataStore.kt\ncom/facebook/appevents/UserDataStore\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,275:1\n107#2:276\n79#2,22:277\n107#2:301\n79#2,22:302\n37#3,2:299\n*S KotlinDebug\n*F\n+ 1 UserDataStore.kt\ncom/facebook/appevents/UserDataStore\n*L\n216#1:276\n216#1:277,22\n247#1:301\n247#1:302,22\n219#1:299,2\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/facebook/appevents/l0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Ljava/lang/String;

.field private static c:Landroid/content/SharedPreferences;

.field private static final d:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final f:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/appevents/l0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/facebook/appevents/l0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/facebook/appevents/l0;->a:Lcom/facebook/appevents/l0;

    .line 7
    .line 8
    const-class v0, Lcom/facebook/appevents/l0;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/facebook/appevents/l0;->b:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/facebook/appevents/l0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/facebook/appevents/l0;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 30
    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lcom/facebook/appevents/l0;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    .line 38
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

.method public static synthetic a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/facebook/appevents/l0;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final b()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-class v0, Lcom/facebook/appevents/l0;

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
    sget-object v1, Lcom/facebook/appevents/l0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    sget-object v1, Lcom/facebook/appevents/l0;->a:Lcom/facebook/appevents/l0;

    .line 20
    .line 21
    invoke-direct {v1}, Lcom/facebook/appevents/l0;->d()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 30
    .line 31
    .line 32
    sget-object v3, Lcom/facebook/appevents/l0;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 33
    .line 34
    invoke-interface {v1, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 35
    .line 36
    .line 37
    sget-object v3, Lcom/facebook/appevents/l0;->a:Lcom/facebook/appevents/l0;

    .line 38
    .line 39
    invoke-direct {v3}, Lcom/facebook/appevents/l0;->c()Ljava/util/Map;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-interface {v1, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v1}, Lcom/facebook/internal/u0;->m0(Ljava/util/Map;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    return-object v0

    .line 51
    :goto_1
    invoke-static {v1, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    return-object v2
.end method

.method private final c()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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
    new-instance v0, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    sget-object v2, Lq1/d;->d:Lq1/d$a;

    .line 15
    .line 16
    invoke-virtual {v2}, Lq1/d$a;->b()Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    sget-object v3, Lcom/facebook/appevents/l0;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_2

    .line 35
    .line 36
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Ljava/lang/String;

    .line 41
    .line 42
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-eqz v5, :cond_1

    .line 47
    .line 48
    sget-object v5, Lcom/facebook/appevents/l0;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 49
    .line 50
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    return-object v0

    .line 61
    :goto_1
    invoke-static {v0, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    return-object v1
.end method

.method private final declared-synchronized d()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_1
    sget-object v0, Lcom/facebook/appevents/l0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 13
    .line 14
    .line 15
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/facebook/v;->l()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "getDefaultSharedPreferen\u2026.getApplicationContext())"

    .line 29
    .line 30
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sput-object v1, Lcom/facebook/appevents/l0;->c:Landroid/content/SharedPreferences;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    const-string v1, "sharedPreferences"

    .line 39
    .line 40
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    move-object v1, v2

    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    :goto_0
    const-string v3, "com.facebook.appevents.UserDataStore.userData"

    .line 48
    .line 49
    const-string v4, ""

    .line 50
    .line 51
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    if-nez v1, :cond_3

    .line 56
    .line 57
    const-string v1, ""

    .line 58
    .line 59
    :cond_3
    sget-object v3, Lcom/facebook/appevents/l0;->c:Landroid/content/SharedPreferences;

    .line 60
    .line 61
    if-nez v3, :cond_4

    .line 62
    .line 63
    const-string v3, "sharedPreferences"

    .line 64
    .line 65
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_4
    move-object v2, v3

    .line 70
    :goto_1
    const-string v3, "com.facebook.appevents.UserDataStore.internalUserData"

    .line 71
    .line 72
    const-string v4, ""

    .line 73
    .line 74
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    if-nez v2, :cond_5

    .line 79
    .line 80
    const-string v2, ""

    .line 81
    .line 82
    :cond_5
    sget-object v3, Lcom/facebook/appevents/l0;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 83
    .line 84
    invoke-static {v1}, Lcom/facebook/internal/u0;->i0(Ljava/lang/String;)Ljava/util/Map;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 89
    .line 90
    .line 91
    sget-object v1, Lcom/facebook/appevents/l0;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 92
    .line 93
    invoke-static {v2}, Lcom/facebook/internal/u0;->i0(Ljava/lang/String;)Ljava/util/Map;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 98
    .line 99
    .line 100
    const/4 v1, 0x1

    .line 101
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    .line 103
    .line 104
    monitor-exit p0

    .line 105
    return-void

    .line 106
    :goto_2
    :try_start_3
    invoke-static {v0, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 107
    .line 108
    .line 109
    monitor-exit p0

    .line 110
    return-void

    .line 111
    :catchall_1
    move-exception v0

    .line 112
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 113
    throw v0
.end method

.method public static final e()V
    .locals 2

    .line 1
    const-class v0, Lcom/facebook/appevents/l0;

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
    sget-object v1, Lcom/facebook/appevents/l0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    sget-object v1, Lcom/facebook/appevents/l0;->a:Lcom/facebook/appevents/l0;

    .line 20
    .line 21
    invoke-direct {v1}, Lcom/facebook/appevents/l0;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    invoke-static {v1, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private final f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

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
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x1

    .line 14
    sub-int/2addr v0, v2

    .line 15
    const/4 v3, 0x0

    .line 16
    move v4, v3

    .line 17
    move v5, v4

    .line 18
    :goto_0
    if-gt v4, v0, :cond_6

    .line 19
    .line 20
    if-nez v5, :cond_1

    .line 21
    .line 22
    move v6, v4

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v6, v0

    .line 25
    :goto_1
    invoke-interface {p2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    const/16 v7, 0x20

    .line 30
    .line 31
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    if-gtz v6, :cond_2

    .line 36
    .line 37
    move v6, v2

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    move v6, v3

    .line 40
    :goto_2
    if-nez v5, :cond_4

    .line 41
    .line 42
    if-nez v6, :cond_3

    .line 43
    .line 44
    move v5, v2

    .line 45
    goto :goto_0

    .line 46
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_4
    if-nez v6, :cond_5

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_5
    add-int/lit8 v0, v0, -0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    goto/16 :goto_8

    .line 57
    .line 58
    :cond_6
    :goto_3
    add-int/2addr v0, v2

    .line 59
    invoke-interface {p2, v4, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    const-string v0, "this as java.lang.String).toLowerCase()"

    .line 72
    .line 73
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const-string v0, "em"

    .line 77
    .line 78
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    const-string v4, ""

    .line 83
    .line 84
    if-eqz v0, :cond_8

    .line 85
    .line 86
    :try_start_1
    sget-object p1, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    .line 87
    .line 88
    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-eqz p1, :cond_7

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_7
    sget-object p1, Lcom/facebook/appevents/l0;->b:Ljava/lang/String;

    .line 100
    .line 101
    const-string p2, "Setting email failure: this is not a valid email address"

    .line 102
    .line 103
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    move-object p2, v4

    .line 107
    :goto_4
    return-object p2

    .line 108
    :cond_8
    const-string v0, "ph"

    .line 109
    .line 110
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_9

    .line 115
    .line 116
    new-instance p1, Lkotlin/text/Regex;

    .line 117
    .line 118
    const-string v0, "[^0-9]"

    .line 119
    .line 120
    invoke-direct {p1, v0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, p2, v4}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    return-object p1

    .line 128
    :cond_9
    const-string v0, "ge"

    .line 129
    .line 130
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-eqz p1, :cond_d

    .line 135
    .line 136
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    if-lez p1, :cond_a

    .line 141
    .line 142
    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    const-string p2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 147
    .line 148
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    goto :goto_5

    .line 152
    :cond_a
    move-object p1, v4

    .line 153
    :goto_5
    const-string p2, "f"

    .line 154
    .line 155
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result p2

    .line 159
    if-nez p2, :cond_c

    .line 160
    .line 161
    const-string p2, "m"

    .line 162
    .line 163
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result p2

    .line 167
    if-eqz p2, :cond_b

    .line 168
    .line 169
    goto :goto_6

    .line 170
    :cond_b
    sget-object p1, Lcom/facebook/appevents/l0;->b:Ljava/lang/String;

    .line 171
    .line 172
    const-string p2, "Setting gender failure: the supported value for gender is f or m"

    .line 173
    .line 174
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    .line 176
    .line 177
    goto :goto_7

    .line 178
    :cond_c
    :goto_6
    move-object v4, p1

    .line 179
    :goto_7
    return-object v4

    .line 180
    :cond_d
    return-object p2

    .line 181
    :goto_8
    invoke-static {p1, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    return-object v1
.end method

.method public static final g(Ljava/util/Map;)V
    .locals 12
    .param p0    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
    const-class v0, Lcom/facebook/appevents/l0;

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
    const-string v1, "ud"

    .line 11
    .line 12
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lcom/facebook/appevents/l0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    sget-object v1, Lcom/facebook/appevents/l0;->a:Lcom/facebook/appevents/l0;

    .line 24
    .line 25
    invoke-direct {v1}, Lcom/facebook/appevents/l0;->d()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto/16 :goto_8

    .line 31
    .line 32
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_f

    .line 45
    .line 46
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Ljava/util/Map$Entry;

    .line 51
    .line 52
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Ljava/lang/String;

    .line 57
    .line 58
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Ljava/lang/String;

    .line 63
    .line 64
    sget-object v3, Lcom/facebook/appevents/l0;->a:Lcom/facebook/appevents/l0;

    .line 65
    .line 66
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    const/4 v5, 0x1

    .line 71
    sub-int/2addr v4, v5

    .line 72
    const/4 v6, 0x0

    .line 73
    move v7, v6

    .line 74
    move v8, v7

    .line 75
    :goto_2
    if-gt v7, v4, :cond_7

    .line 76
    .line 77
    if-nez v8, :cond_2

    .line 78
    .line 79
    move v9, v7

    .line 80
    goto :goto_3

    .line 81
    :cond_2
    move v9, v4

    .line 82
    :goto_3
    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    .line 83
    .line 84
    .line 85
    move-result v9

    .line 86
    const/16 v10, 0x20

    .line 87
    .line 88
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    if-gtz v9, :cond_3

    .line 93
    .line 94
    move v9, v5

    .line 95
    goto :goto_4

    .line 96
    :cond_3
    move v9, v6

    .line 97
    :goto_4
    if-nez v8, :cond_5

    .line 98
    .line 99
    if-nez v9, :cond_4

    .line 100
    .line 101
    move v8, v5

    .line 102
    goto :goto_2

    .line 103
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_5
    if-nez v9, :cond_6

    .line 107
    .line 108
    goto :goto_5

    .line 109
    :cond_6
    add-int/lit8 v4, v4, -0x1

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_7
    :goto_5
    add-int/lit8 v4, v4, 0x1

    .line 113
    .line 114
    invoke-interface {v1, v7, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-direct {v3, v2, v1}, Lcom/facebook/appevents/l0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-static {v1}, Lcom/facebook/internal/u0;->G0(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    sget-object v3, Lcom/facebook/appevents/l0;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 131
    .line 132
    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    if-eqz v4, :cond_e

    .line 137
    .line 138
    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    .line 144
    const-string v4, ","

    .line 145
    .line 146
    if-eqz v3, :cond_8

    .line 147
    .line 148
    :try_start_1
    new-instance v7, Lkotlin/text/Regex;

    .line 149
    .line 150
    invoke-direct {v7, v4}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v7, v3, v6}, Lkotlin/text/Regex;->q(Ljava/lang/CharSequence;I)Ljava/util/List;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    if-eqz v7, :cond_8

    .line 158
    .line 159
    check-cast v7, Ljava/util/Collection;

    .line 160
    .line 161
    new-array v8, v6, [Ljava/lang/String;

    .line 162
    .line 163
    invoke-interface {v7, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v7

    .line 167
    check-cast v7, [Ljava/lang/String;

    .line 168
    .line 169
    if-nez v7, :cond_9

    .line 170
    .line 171
    :cond_8
    new-array v7, v6, [Ljava/lang/String;

    .line 172
    .line 173
    :cond_9
    array-length v8, v7

    .line 174
    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v8

    .line 178
    invoke-static {v8}, Lkotlin/collections/y0;->h([Ljava/lang/Object;)Ljava/util/Set;

    .line 179
    .line 180
    .line 181
    move-result-object v8

    .line 182
    invoke-interface {v8, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v9

    .line 186
    if-eqz v9, :cond_a

    .line 187
    .line 188
    return-void

    .line 189
    :cond_a
    new-instance v9, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    array-length v10, v7

    .line 195
    if-nez v10, :cond_b

    .line 196
    .line 197
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    goto :goto_7

    .line 201
    :cond_b
    array-length v10, v7

    .line 202
    const/4 v11, 0x5

    .line 203
    if-ge v10, v11, :cond_c

    .line 204
    .line 205
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    goto :goto_7

    .line 215
    :cond_c
    :goto_6
    if-ge v5, v11, :cond_d

    .line 216
    .line 217
    aget-object v3, v7, v5

    .line 218
    .line 219
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    add-int/lit8 v5, v5, 0x1

    .line 226
    .line 227
    goto :goto_6

    .line 228
    :cond_d
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    aget-object v1, v7, v6

    .line 232
    .line 233
    invoke-interface {v8, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    :goto_7
    sget-object v1, Lcom/facebook/appevents/l0;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 237
    .line 238
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    goto/16 :goto_1

    .line 246
    .line 247
    :cond_e
    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    goto/16 :goto_1

    .line 251
    .line 252
    :cond_f
    sget-object p0, Lcom/facebook/appevents/l0;->a:Lcom/facebook/appevents/l0;

    .line 253
    .line 254
    const-string v1, "com.facebook.appevents.UserDataStore.internalUserData"

    .line 255
    .line 256
    sget-object v2, Lcom/facebook/appevents/l0;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 257
    .line 258
    invoke-static {v2}, Lcom/facebook/internal/u0;->m0(Ljava/util/Map;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    invoke-direct {p0, v1, v2}, Lcom/facebook/appevents/l0;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    .line 264
    .line 265
    return-void

    .line 266
    :goto_8
    invoke-static {p0, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    return-void
.end method

.method private final h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

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
    invoke-static {}, Lcom/facebook/v;->u()Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lcom/facebook/appevents/k0;

    .line 13
    .line 14
    invoke-direct {v1, p1, p2}, Lcom/facebook/appevents/k0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    invoke-static {p1, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private static final i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-class v0, Lcom/facebook/appevents/l0;

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
    const-string v1, "$key"

    .line 11
    .line 12
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "$value"

    .line 16
    .line 17
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget-object v1, Lcom/facebook/appevents/l0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    sget-object v1, Lcom/facebook/appevents/l0;->a:Lcom/facebook/appevents/l0;

    .line 29
    .line 30
    invoke-direct {v1}, Lcom/facebook/appevents/l0;->d()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    sget-object v1, Lcom/facebook/appevents/l0;->c:Landroid/content/SharedPreferences;

    .line 37
    .line 38
    if-nez v1, :cond_2

    .line 39
    .line 40
    const-string v1, "sharedPreferences"

    .line 41
    .line 42
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    :cond_2
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-interface {v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :goto_1
    invoke-static {p0, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method
