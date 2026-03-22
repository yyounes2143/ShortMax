.class public final Lcom/appsflyer/internal/AFc1vSDK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/AFc1tSDK;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFileCacheManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileCacheManager.kt\ncom/appsflyer/internal/cache/FileCacheManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 5 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,335:1\n1855#2,2:336\n1855#2,2:339\n1855#2:341\n1856#2:344\n1855#2,2:346\n1855#2:348\n1856#2:351\n6442#3:338\n13579#3,2:349\n18#4:342\n26#5:343\n1#6:345\n*S KotlinDebug\n*F\n+ 1 FileCacheManager.kt\ncom/appsflyer/internal/cache/FileCacheManager\n*L\n106#1:336,2\n189#1:339,2\n207#1:341\n207#1:344\n263#1:346,2\n296#1:348\n296#1:351\n187#1:338\n299#1:349,2\n213#1:342\n213#1:343\n*E\n"
    }
.end annotation


# instance fields
.field private final AFAdRevenueData:Lcom/appsflyer/internal/AFc1hSDK;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final getMediationNetwork:Lcom/appsflyer/internal/AFc1qSDK;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final getMonetizationNetwork:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final getRevenue:Lcom/appsflyer/internal/AFc1rSDK;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFc1hSDK;Lcom/appsflyer/internal/AFc1qSDK;)V
    .locals 12
    .param p1    # Lcom/appsflyer/internal/AFc1hSDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/appsflyer/internal/AFc1qSDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/appsflyer/internal/AFc1vSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFc1hSDK;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/appsflyer/internal/AFc1vSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1qSDK;

    .line 15
    .line 16
    new-instance p1, Lcom/appsflyer/internal/AFc1rSDK;

    .line 17
    .line 18
    new-instance p2, Lcom/appsflyer/internal/AFc1sSDK;

    .line 19
    .line 20
    sget-object v0, Lcom/appsflyer/internal/AFe1pSDK;->getRevenue:Lcom/appsflyer/internal/AFe1pSDK;

    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "ConversionsCache"

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    invoke-direct {p2, v1, v0, v2}, Lcom/appsflyer/internal/AFc1sSDK;-><init>(Ljava/lang/String;Ljava/util/List;I)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Lcom/appsflyer/internal/AFc1sSDK;

    .line 33
    .line 34
    sget-object v3, Lcom/appsflyer/internal/AFe1pSDK;->hashCode:Lcom/appsflyer/internal/AFe1pSDK;

    .line 35
    .line 36
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const-string v4, "AttrCache"

    .line 41
    .line 42
    invoke-direct {v0, v4, v3, v2}, Lcom/appsflyer/internal/AFc1sSDK;-><init>(Ljava/lang/String;Ljava/util/List;I)V

    .line 43
    .line 44
    .line 45
    new-instance v2, Lcom/appsflyer/internal/AFc1sSDK;

    .line 46
    .line 47
    sget-object v5, Lcom/appsflyer/internal/AFe1pSDK;->copy:Lcom/appsflyer/internal/AFe1pSDK;

    .line 48
    .line 49
    sget-object v6, Lcom/appsflyer/internal/AFe1pSDK;->equals:Lcom/appsflyer/internal/AFe1pSDK;

    .line 50
    .line 51
    sget-object v7, Lcom/appsflyer/internal/AFe1pSDK;->d:Lcom/appsflyer/internal/AFe1pSDK;

    .line 52
    .line 53
    sget-object v8, Lcom/appsflyer/internal/AFe1pSDK;->registerClient:Lcom/appsflyer/internal/AFe1pSDK;

    .line 54
    .line 55
    sget-object v9, Lcom/appsflyer/internal/AFe1pSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1pSDK;

    .line 56
    .line 57
    sget-object v10, Lcom/appsflyer/internal/AFe1pSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFe1pSDK;

    .line 58
    .line 59
    sget-object v11, Lcom/appsflyer/internal/AFe1pSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFe1pSDK;

    .line 60
    .line 61
    filled-new-array/range {v5 .. v11}, [Lcom/appsflyer/internal/AFe1pSDK;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    const/16 v5, 0x28

    .line 70
    .line 71
    const-string v6, "OtherCache"

    .line 72
    .line 73
    invoke-direct {v2, v6, v3, v5}, Lcom/appsflyer/internal/AFc1sSDK;-><init>(Ljava/lang/String;Ljava/util/List;I)V

    .line 74
    .line 75
    .line 76
    filled-new-array {p2, v0, v2}, [Lcom/appsflyer/internal/AFc1sSDK;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-direct {p1, p2}, Lcom/appsflyer/internal/AFc1rSDK;-><init>(Ljava/util/List;)V

    .line 85
    .line 86
    .line 87
    iput-object p1, p0, Lcom/appsflyer/internal/AFc1vSDK;->getRevenue:Lcom/appsflyer/internal/AFc1rSDK;

    .line 88
    .line 89
    const/4 p1, 0x0

    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-static {v1, p1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-static {v4, p1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-static {v6, p1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    filled-new-array {p2, v0, p1}, [Lkotlin/Pair;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-static {p1}, Lkotlin/collections/p0;->o([Lkotlin/Pair;)Ljava/util/Map;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iput-object p1, p0, Lcom/appsflyer/internal/AFc1vSDK;->getMonetizationNetwork:Ljava/util/Map;

    .line 115
    .line 116
    return-void
.end method

.method private static AFAdRevenueData(Ljava/io/File;)Lcom/appsflyer/internal/AFc1uSDK;
    .locals 9

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v2, v2, [C

    .line 3
    invoke-virtual {v1, v2}, Ljava/io/Reader;->read([C)I

    .line 4
    new-instance v3, Lcom/appsflyer/internal/AFc1uSDK;

    invoke-direct {v3, v2}, Lcom/appsflyer/internal/AFc1uSDK;-><init>([C)V

    .line 5
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    .line 6
    iput-object p0, v3, Lcom/appsflyer/internal/AFc1uSDK;->getMediationNetwork:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    invoke-static {v1, v0}, Lws/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v3

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v4, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-static {v1, p0}, Lws/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 8
    :goto_0
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 9
    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->component2:Lcom/appsflyer/internal/AFg1cSDK;

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 10
    const-string v3, "Error while loading request from cache"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZZ)V

    :goto_1
    return-object v0
.end method

.method private final AFAdRevenueData(Lcom/appsflyer/internal/AFe1pSDK;)Ljava/lang/String;
    .locals 1

    .line 11
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFc1vSDK;->getMediationNetwork(Lcom/appsflyer/internal/AFe1pSDK;)Lcom/appsflyer/internal/AFc1sSDK;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 12
    iget-object p1, p1, Lcom/appsflyer/internal/AFc1sSDK;->AFAdRevenueData:Ljava/lang/String;

    if-eqz p1, :cond_0

    return-object p1

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cache do not support this type of events"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final getMediationNetwork(Lcom/appsflyer/internal/AFe1pSDK;)Lcom/appsflyer/internal/AFc1sSDK;
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1vSDK;->getRevenue:Lcom/appsflyer/internal/AFc1rSDK;

    .line 41
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1rSDK;->getMediationNetwork:Ljava/util/List;

    .line 42
    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/appsflyer/internal/AFc1sSDK;

    .line 43
    iget-object v2, v2, Lcom/appsflyer/internal/AFc1sSDK;->getMediationNetwork:Ljava/util/List;

    .line 44
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/appsflyer/internal/AFc1sSDK;

    return-object v1
.end method

.method private final getMediationNetwork(Ljava/io/File;)Z
    .locals 11

    .line 37
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 38
    invoke-direct {p0}, Lcom/appsflyer/internal/AFc1vSDK;->getMonetizationNetwork()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v4, v0

    .line 39
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->component2:Lcom/appsflyer/internal/AFg1cSDK;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not delete "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from cache"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v9, 0x78

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v10}, Lcom/appsflyer/internal/AFh1ySDK;->e$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final getMonetizationNetwork()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1vSDK;->getRevenue:Lcom/appsflyer/internal/AFc1rSDK;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1rSDK;->getMediationNetwork:Ljava/util/List;

    .line 4
    .line 5
    check-cast v0, Ljava/lang/Iterable;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/appsflyer/internal/AFc1sSDK;

    .line 22
    .line 23
    iget-object v2, v1, Lcom/appsflyer/internal/AFc1sSDK;->AFAdRevenueData:Ljava/lang/String;

    .line 24
    .line 25
    new-instance v3, Ljava/io/File;

    .line 26
    .line 27
    new-instance v4, Ljava/io/File;

    .line 28
    .line 29
    iget-object v5, p0, Lcom/appsflyer/internal/AFc1vSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFc1hSDK;

    .line 30
    .line 31
    iget-object v5, v5, Lcom/appsflyer/internal/AFc1hSDK;->getMonetizationNetwork:Landroid/content/Context;

    .line 32
    .line 33
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    const-string v6, "AFRequestCache"

    .line 41
    .line 42
    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    const/4 v4, 0x0

    .line 53
    if-nez v2, :cond_0

    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 56
    .line 57
    .line 58
    iget-object v2, p0, Lcom/appsflyer/internal/AFc1vSDK;->getMonetizationNetwork:Ljava/util/Map;

    .line 59
    .line 60
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1sSDK;->AFAdRevenueData:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    iget-object v2, p0, Lcom/appsflyer/internal/AFc1vSDK;->getMonetizationNetwork:Ljava/util/Map;

    .line 71
    .line 72
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1sSDK;->AFAdRevenueData:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    if-eqz v3, :cond_1

    .line 79
    .line 80
    array-length v4, v3

    .line 81
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    return-void
.end method


# virtual methods
.method public final getCurrencyIso4217Code()Ljava/util/List;
    .locals 20
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/appsflyer/internal/AFc1uSDK;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "AFRequestCache"

    .line 4
    .line 5
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 6
    .line 7
    sget-object v3, Lcom/appsflyer/internal/AFg1cSDK;->component2:Lcom/appsflyer/internal/AFg1cSDK;

    .line 8
    .line 9
    const/4 v6, 0x4

    .line 10
    const/4 v7, 0x0

    .line 11
    const-string v4, "Get Cached Requests"

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    invoke-static/range {v2 .. v7}, Lcom/appsflyer/internal/AFh1ySDK;->i$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v3, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    :try_start_0
    new-instance v4, Ljava/io/File;

    .line 28
    .line 29
    iget-object v5, v1, Lcom/appsflyer/internal/AFc1vSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFc1hSDK;

    .line 30
    .line 31
    iget-object v5, v5, Lcom/appsflyer/internal/AFc1hSDK;->getMonetizationNetwork:Landroid/content/Context;

    .line 32
    .line 33
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-direct {v4, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-nez v4, :cond_0

    .line 48
    .line 49
    new-instance v4, Ljava/io/File;

    .line 50
    .line 51
    iget-object v5, v1, Lcom/appsflyer/internal/AFc1vSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFc1hSDK;

    .line 52
    .line 53
    iget-object v5, v5, Lcom/appsflyer/internal/AFc1hSDK;->getMonetizationNetwork:Landroid/content/Context;

    .line 54
    .line 55
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-direct {v4, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    move-object v7, v0

    .line 71
    goto/16 :goto_3

    .line 72
    .line 73
    :cond_0
    :goto_0
    iget-object v4, v1, Lcom/appsflyer/internal/AFc1vSDK;->getRevenue:Lcom/appsflyer/internal/AFc1rSDK;

    .line 74
    .line 75
    iget-object v4, v4, Lcom/appsflyer/internal/AFc1rSDK;->getMediationNetwork:Ljava/util/List;

    .line 76
    .line 77
    check-cast v4, Ljava/lang/Iterable;

    .line 78
    .line 79
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-eqz v5, :cond_3

    .line 88
    .line 89
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    check-cast v5, Lcom/appsflyer/internal/AFc1sSDK;

    .line 94
    .line 95
    iget-object v5, v5, Lcom/appsflyer/internal/AFc1sSDK;->AFAdRevenueData:Ljava/lang/String;

    .line 96
    .line 97
    new-instance v6, Ljava/io/File;

    .line 98
    .line 99
    new-instance v7, Ljava/io/File;

    .line 100
    .line 101
    iget-object v8, v1, Lcom/appsflyer/internal/AFc1vSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFc1hSDK;

    .line 102
    .line 103
    iget-object v8, v8, Lcom/appsflyer/internal/AFc1hSDK;->getMonetizationNetwork:Landroid/content/Context;

    .line 104
    .line 105
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    invoke-direct {v7, v8, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-direct {v6, v7, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    if-nez v5, :cond_1

    .line 123
    .line 124
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 125
    .line 126
    .line 127
    :cond_1
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    if-nez v5, :cond_2

    .line 132
    .line 133
    const/4 v5, 0x0

    .line 134
    new-array v5, v5, [Ljava/io/File;

    .line 135
    .line 136
    :cond_2
    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->G(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    if-eqz v3, :cond_5

    .line 149
    .line 150
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    check-cast v3, Ljava/io/File;

    .line 155
    .line 156
    sget-object v4, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 157
    .line 158
    sget-object v5, Lcom/appsflyer/internal/AFg1cSDK;->component2:Lcom/appsflyer/internal/AFg1cSDK;

    .line 159
    .line 160
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    new-instance v7, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .line 168
    .line 169
    const-string v8, "Found cached request: "

    .line 170
    .line 171
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    const/4 v8, 0x4

    .line 182
    const/4 v9, 0x0

    .line 183
    const/4 v7, 0x0

    .line 184
    invoke-static/range {v4 .. v9}, Lcom/appsflyer/internal/AFh1ySDK;->i$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    invoke-static {v3}, Lcom/appsflyer/internal/AFc1vSDK;->AFAdRevenueData(Ljava/io/File;)Lcom/appsflyer/internal/AFc1uSDK;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    if-eqz v3, :cond_4

    .line 192
    .line 193
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .line 195
    .line 196
    goto :goto_2

    .line 197
    :goto_3
    sget-object v4, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 198
    .line 199
    sget-object v5, Lcom/appsflyer/internal/AFg1cSDK;->component2:Lcom/appsflyer/internal/AFg1cSDK;

    .line 200
    .line 201
    const/16 v12, 0x78

    .line 202
    .line 203
    const/4 v13, 0x0

    .line 204
    const-string v6, "Could not get cached requests"

    .line 205
    .line 206
    const/4 v8, 0x0

    .line 207
    const/4 v9, 0x0

    .line 208
    const/4 v10, 0x0

    .line 209
    const/4 v11, 0x0

    .line 210
    invoke-static/range {v4 .. v13}, Lcom/appsflyer/internal/AFh1ySDK;->e$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    :cond_5
    sget-object v14, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 214
    .line 215
    sget-object v15, Lcom/appsflyer/internal/AFg1cSDK;->component2:Lcom/appsflyer/internal/AFg1cSDK;

    .line 216
    .line 217
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    new-instance v3, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .line 225
    .line 226
    const-string v4, "Found "

    .line 227
    .line 228
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    const-string v0, " Cached Requests"

    .line 235
    .line 236
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v16

    .line 243
    const/16 v18, 0x4

    .line 244
    .line 245
    const/16 v19, 0x0

    .line 246
    .line 247
    const/16 v17, 0x0

    .line 248
    .line 249
    invoke-static/range {v14 .. v19}, Lcom/appsflyer/internal/AFh1ySDK;->i$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    return-object v2
.end method

.method public final getMediationNetwork(Lcom/appsflyer/internal/AFc1uSDK;)Ljava/lang/String;
    .locals 14
    .param p1    # Lcom/appsflyer/internal/AFc1uSDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "AFRequestCache"

    const-string v1, ""

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 45
    :try_start_0
    iget-object v3, p1, Lcom/appsflyer/internal/AFc1uSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFe1pSDK;

    .line 46
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v4, Ljava/io/File;

    .line 48
    new-instance v5, Ljava/io/File;

    .line 49
    iget-object v6, p0, Lcom/appsflyer/internal/AFc1vSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFc1hSDK;

    .line 50
    iget-object v6, v6, Lcom/appsflyer/internal/AFc1hSDK;->getMonetizationNetwork:Landroid/content/Context;

    .line 51
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 52
    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0, v3}, Lcom/appsflyer/internal/AFc1vSDK;->AFAdRevenueData(Lcom/appsflyer/internal/AFe1pSDK;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 55
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v6, p1

    move-object v10, v2

    goto/16 :goto_7

    .line 56
    :cond_0
    :goto_0
    sget-object v11, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v12, Lcom/appsflyer/internal/AFg1cSDK;->component2:Lcom/appsflyer/internal/AFg1cSDK;

    .line 57
    iget-object v3, p1, Lcom/appsflyer/internal/AFc1uSDK;->getRevenue:Ljava/lang/String;

    .line 58
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caching request with URL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v5, v11

    move-object v6, v12

    invoke-static/range {v5 .. v10}, Lcom/appsflyer/internal/AFh1ySDK;->i$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    .line 60
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v4, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :try_start_1
    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z

    .line 62
    new-instance v3, Ljava/io/OutputStreamWriter;

    .line 63
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/4 v13, 0x1

    invoke-direct {v4, v5, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 64
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    .line 65
    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 66
    :try_start_2
    const-string/jumbo v4, "version="

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 67
    iget-object v4, p1, Lcom/appsflyer/internal/AFc1uSDK;->getCurrencyIso4217Code:Ljava/lang/String;

    .line 68
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v4, 0xa

    .line 69
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    .line 70
    const-string/jumbo v5, "url="

    invoke-virtual {v3, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 71
    iget-object v5, p1, Lcom/appsflyer/internal/AFc1uSDK;->getRevenue:Ljava/lang/String;

    .line 72
    invoke-virtual {v3, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    .line 74
    const-string v5, "data="

    invoke-virtual {v3, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFc1uSDK;->getMediationNetwork()[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    .line 77
    iget-object v5, p1, Lcom/appsflyer/internal/AFc1uSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFe1pSDK;

    .line 78
    const-string/jumbo v7, "type="

    invoke-virtual {v3, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    .line 81
    iget-object v5, p1, Lcom/appsflyer/internal/AFc1uSDK;->getMonetizationNetwork:Ljava/util/Map;

    if-eqz v5, :cond_2

    .line 82
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 83
    :cond_1
    const-string v5, "headers="

    invoke-virtual {v3, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 84
    new-instance v5, Lorg/json/JSONObject;

    .line 85
    iget-object v7, p1, Lcom/appsflyer/internal/AFc1uSDK;->getMonetizationNetwork:Ljava/util/Map;

    .line 86
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v7}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    sget-object v7, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    .line 89
    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/io/Writer;->flush()V

    .line 90
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    :try_start_3
    invoke-static {v3, v2}, Lws/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cache request: done, cacheKey: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, v11

    move-object v4, v12

    invoke-static/range {v3 .. v8}, Lcom/appsflyer/internal/AFh1ySDK;->i$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 93
    iget-object p1, p1, Lcom/appsflyer/internal/AFc1uSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFe1pSDK;

    .line 94
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFc1vSDK;->getMediationNetwork(Lcom/appsflyer/internal/AFe1pSDK;)Lcom/appsflyer/internal/AFc1sSDK;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 96
    iget v1, v1, Lcom/appsflyer/internal/AFc1sSDK;->getMonetizationNetwork:I

    .line 97
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v6, p1

    goto/16 :goto_7

    :cond_3
    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_8

    .line 98
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 99
    iget-object v3, p0, Lcom/appsflyer/internal/AFc1vSDK;->getMonetizationNetwork:Ljava/util/Map;

    .line 100
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFc1vSDK;->getMediationNetwork(Lcom/appsflyer/internal/AFe1pSDK;)Lcom/appsflyer/internal/AFc1sSDK;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 101
    iget-object v4, v4, Lcom/appsflyer/internal/AFc1sSDK;->AFAdRevenueData:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 102
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    if-lt v3, v1, :cond_6

    add-int/2addr v3, v13

    sub-int v1, v3, v1

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cache overflown for type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", removing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " item(s)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, v11

    move-object v4, v12

    invoke-static/range {v3 .. v8}, Lcom/appsflyer/internal/AFh1ySDK;->i$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 104
    new-instance v3, Ljava/io/File;

    .line 105
    new-instance v4, Ljava/io/File;

    .line 106
    iget-object v5, p0, Lcom/appsflyer/internal/AFc1vSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFc1hSDK;

    .line 107
    iget-object v5, v5, Lcom/appsflyer/internal/AFc1hSDK;->getMonetizationNetwork:Landroid/content/Context;

    .line 108
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 109
    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFc1vSDK;->AFAdRevenueData(Lcom/appsflyer/internal/AFe1pSDK;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_5

    .line 112
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 113
    :cond_5
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 114
    new-instance v0, Lcom/appsflyer/internal/AFc1vSDK$4;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFc1vSDK$4;-><init>()V

    invoke-static {p1, v0}, Lkotlin/collections/n;->o1([Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 115
    check-cast p1, Ljava/lang/Iterable;

    .line 116
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->V0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    check-cast p1, Ljava/lang/Iterable;

    .line 117
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 118
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 119
    sget-object v3, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v4, Lcom/appsflyer/internal/AFg1cSDK;->component2:Lcom/appsflyer/internal/AFg1cSDK;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cache entry "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " removed"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/appsflyer/internal/AFh1ySDK;->i$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_4

    .line 120
    :cond_6
    invoke-direct {p0}, Lcom/appsflyer/internal/AFc1vSDK;->getMonetizationNetwork()V

    goto :goto_5

    .line 121
    :cond_7
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cache do not support this type of events"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_8
    :goto_5
    move-object v2, v9

    goto :goto_8

    .line 122
    :goto_6
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-static {v3, p1}, Lws/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :goto_7
    if-eqz v10, :cond_9

    .line 123
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 124
    :cond_9
    sget-object v3, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v4, Lcom/appsflyer/internal/AFg1cSDK;->component2:Lcom/appsflyer/internal/AFg1cSDK;

    const/16 v11, 0x78

    const/4 v12, 0x0

    const-string v5, "Could not cache request"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v3 .. v12}, Lcom/appsflyer/internal/AFh1ySDK;->e$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    :goto_8
    return-object v2
.end method

.method public final getMediationNetwork()V
    .locals 11
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    const-string v0, "AF_CACHE_VERSION"

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFc1vSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1qSDK;

    const/4 v2, -0x1

    invoke-interface {v1, v0, v2}, Lcom/appsflyer/internal/AFc1qSDK;->getRevenue(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x2

    .line 3
    const-string v3, "AFRequestCache"

    if-ne v1, v2, :cond_0

    .line 4
    :try_start_1
    new-instance v0, Ljava/io/File;

    .line 5
    iget-object v1, p0, Lcom/appsflyer/internal/AFc1vSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFc1hSDK;

    .line 6
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1hSDK;->getMonetizationNetwork:Landroid/content/Context;

    .line 7
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    new-instance v0, Ljava/io/File;

    .line 11
    iget-object v1, p0, Lcom/appsflyer/internal/AFc1vSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFc1hSDK;

    .line 12
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1hSDK;->getMonetizationNetwork:Landroid/content/Context;

    .line 13
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v4, v0

    goto :goto_1

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFc1vSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1qSDK;

    invoke-interface {v1, v0, v2}, Lcom/appsflyer/internal/AFc1qSDK;->getMediationNetwork(Ljava/lang/String;I)V

    .line 17
    new-instance v0, Ljava/io/File;

    .line 18
    iget-object v1, p0, Lcom/appsflyer/internal/AFc1vSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFc1hSDK;

    .line 19
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1hSDK;->getMonetizationNetwork:Landroid/content/Context;

    .line 20
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 21
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    new-instance v0, Ljava/io/File;

    .line 24
    iget-object v1, p0, Lcom/appsflyer/internal/AFc1vSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFc1hSDK;

    .line 25
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1hSDK;->getMonetizationNetwork:Landroid/content/Context;

    .line 26
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 27
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 28
    invoke-static {v0}, Lws/f;->w(Ljava/io/File;)Z

    .line 29
    new-instance v0, Ljava/io/File;

    .line 30
    iget-object v1, p0, Lcom/appsflyer/internal/AFc1vSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFc1hSDK;

    .line 31
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1hSDK;->getMonetizationNetwork:Landroid/content/Context;

    .line 32
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 33
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 35
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/appsflyer/internal/AFc1vSDK;->getMonetizationNetwork()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 36
    :goto_1
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->component2:Lcom/appsflyer/internal/AFg1cSDK;

    const/16 v9, 0x78

    const/4 v10, 0x0

    const-string v3, "Could not init cache"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v10}, Lcom/appsflyer/internal/AFh1ySDK;->e$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    return-void
.end method

.method public final getRevenue()V
    .locals 14
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    const-string v0, "AFRequestCache"

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 3
    iget-object v2, p0, Lcom/appsflyer/internal/AFc1vSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFc1hSDK;

    .line 4
    iget-object v2, v2, Lcom/appsflyer/internal/AFc1hSDK;->getMonetizationNetwork:Landroid/content/Context;

    .line 5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8
    new-instance v1, Ljava/io/File;

    .line 9
    iget-object v2, p0, Lcom/appsflyer/internal/AFc1vSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFc1hSDK;

    .line 10
    iget-object v2, v2, Lcom/appsflyer/internal/AFc1hSDK;->getMonetizationNetwork:Landroid/content/Context;

    .line 11
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    return-void

    :catch_0
    move-exception v0

    move-object v4, v0

    goto/16 :goto_1

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFc1vSDK;->getRevenue:Lcom/appsflyer/internal/AFc1rSDK;

    .line 15
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1rSDK;->getMediationNetwork:Ljava/util/List;

    .line 16
    check-cast v1, Ljava/lang/Iterable;

    .line 17
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appsflyer/internal/AFc1sSDK;

    .line 18
    iget-object v2, v2, Lcom/appsflyer/internal/AFc1sSDK;->AFAdRevenueData:Ljava/lang/String;

    .line 19
    new-instance v3, Ljava/io/File;

    .line 20
    new-instance v4, Ljava/io/File;

    .line 21
    iget-object v5, p0, Lcom/appsflyer/internal/AFc1vSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFc1hSDK;

    .line 22
    iget-object v5, v5, Lcom/appsflyer/internal/AFc1hSDK;->getMonetizationNetwork:Landroid/content/Context;

    .line 23
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 24
    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 27
    const-string v3, ""

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 29
    sget-object v12, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v13, Lcom/appsflyer/internal/AFg1cSDK;->component2:Lcom/appsflyer/internal/AFg1cSDK;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ClearCache : Found cached request "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v6, v12

    move-object v7, v13

    invoke-static/range {v6 .. v11}, Lcom/appsflyer/internal/AFh1ySDK;->i$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 30
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Deleting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from cache"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v6, v12

    move-object v7, v13

    invoke-static/range {v6 .. v11}, Lcom/appsflyer/internal/AFh1ySDK;->i$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 31
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 32
    :cond_2
    new-instance v1, Ljava/io/File;

    .line 33
    iget-object v2, p0, Lcom/appsflyer/internal/AFc1vSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFc1hSDK;

    .line 34
    iget-object v2, v2, Lcom/appsflyer/internal/AFc1hSDK;->getMonetizationNetwork:Landroid/content/Context;

    .line 35
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 36
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 37
    invoke-static {v1}, Lws/f;->w(Ljava/io/File;)Z

    .line 38
    invoke-direct {p0}, Lcom/appsflyer/internal/AFc1vSDK;->getMonetizationNetwork()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 39
    :goto_1
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->component2:Lcom/appsflyer/internal/AFg1cSDK;

    const/16 v9, 0x78

    const/4 v10, 0x0

    const-string v3, "Could not clearCache request"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v10}, Lcom/appsflyer/internal/AFh1ySDK;->e$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    return-void
.end method

.method public final getRevenue(Ljava/lang/String;)Z
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 40
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 41
    iget-object v1, p0, Lcom/appsflyer/internal/AFc1vSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFc1hSDK;

    .line 42
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1hSDK;->getMonetizationNetwork:Landroid/content/Context;

    .line 43
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 44
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "AFRequestCache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 46
    new-instance p1, Ljava/io/File;

    .line 47
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1vSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFc1hSDK;

    .line 48
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1hSDK;->getMonetizationNetwork:Landroid/content/Context;

    .line 49
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 50
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    return v1

    .line 52
    :cond_1
    sget-object v3, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v4, Lcom/appsflyer/internal/AFg1cSDK;->component2:Lcom/appsflyer/internal/AFg1cSDK;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleting "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from cache"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/appsflyer/internal/AFh1ySDK;->i$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1vSDK;->getRevenue:Lcom/appsflyer/internal/AFc1rSDK;

    .line 54
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1rSDK;->getMediationNetwork:Ljava/util/List;

    .line 55
    check-cast v0, Ljava/lang/Iterable;

    .line 56
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appsflyer/internal/AFc1sSDK;

    .line 57
    new-instance v4, Ljava/io/File;

    .line 58
    iget-object v3, v3, Lcom/appsflyer/internal/AFc1sSDK;->AFAdRevenueData:Ljava/lang/String;

    .line 59
    new-instance v5, Ljava/io/File;

    .line 60
    new-instance v6, Ljava/io/File;

    .line 61
    iget-object v7, p0, Lcom/appsflyer/internal/AFc1vSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFc1hSDK;

    .line 62
    iget-object v7, v7, Lcom/appsflyer/internal/AFc1hSDK;->getMonetizationNetwork:Landroid/content/Context;

    .line 63
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 64
    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 65
    invoke-direct {v5, v6, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 66
    invoke-direct {v4, v5, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 68
    invoke-direct {p0, v4}, Lcom/appsflyer/internal/AFc1vSDK;->getMediationNetwork(Ljava/io/File;)Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method
