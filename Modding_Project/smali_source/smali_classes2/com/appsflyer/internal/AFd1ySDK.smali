.class public final Lcom/appsflyer/internal/AFd1ySDK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/AFc1cSDK;


# annotations
.annotation build Landroidx/annotation/WorkerThread;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nExceptionManageCacheImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExceptionManageCacheImpl.kt\ncom/appsflyer/internal/components/monitorsdk/exmanager/ExceptionManageCacheImpl\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,130:1\n11653#2,9:131\n13579#2:140\n11653#2,9:141\n13579#2:150\n13580#2:152\n11662#2:153\n13580#2:155\n11662#2:156\n4117#2:158\n4217#2,2:159\n4117#2:165\n4217#2,2:166\n1#3:151\n1#3:154\n1#3:157\n1549#4:161\n1620#4,3:162\n1549#4:168\n1620#4,3:169\n*S KotlinDebug\n*F\n+ 1 ExceptionManageCacheImpl.kt\ncom/appsflyer/internal/components/monitorsdk/exmanager/ExceptionManageCacheImpl\n*L\n69#1:131,9\n69#1:140\n71#1:141,9\n71#1:150\n71#1:152\n71#1:153\n69#1:155\n69#1:156\n101#1:158\n101#1:159,2\n119#1:165\n119#1:166,2\n71#1:151\n69#1:154\n101#1:161\n101#1:162,3\n120#1:168\n120#1:169,3\n*E\n"
    }
.end annotation


# instance fields
.field private final getMonetizationNetwork:Lcom/appsflyer/internal/AFc1hSDK;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFc1hSDK;)V
    .locals 1
    .param p1    # Lcom/appsflyer/internal/AFc1hSDK;
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/appsflyer/internal/AFd1ySDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1hSDK;

    .line 10
    .line 11
    return-void
.end method

.method private final AFAdRevenueData()Ljava/io/File;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1ySDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1hSDK;

    .line 2
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1hSDK;->getMonetizationNetwork:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 3
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v2, "AFExceptionsCache"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final AFAdRevenueData(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1ySDK;->AFAdRevenueData()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 8
    new-instance v2, Ljava/io/File;

    const-string v3, "6.17.5"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_0
    move-object v2, v1

    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    .line 11
    :try_start_1
    invoke-static {p1, p2}, Lcom/appsflyer/internal/AFd1sSDK;->getRevenue(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/appsflyer/internal/AFc1aSDK;

    move-result-object p1

    .line 12
    iget-object p2, p1, Lcom/appsflyer/internal/AFc1aSDK;->AFAdRevenueData:Ljava/lang/String;

    .line 13
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 15
    sget-object v2, Lcom/appsflyer/internal/AFc1aSDK;->AFa1zSDK:Lcom/appsflyer/internal/AFc1aSDK$AFa1zSDK;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lws/f;->m(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/internal/AFc1aSDK$AFa1zSDK;->getMediationNetwork(Ljava/lang/String;)Lcom/appsflyer/internal/AFc1aSDK;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 16
    iget p1, v3, Lcom/appsflyer/internal/AFc1aSDK;->getMediationNetwork:I

    add-int/2addr p1, v2

    .line 17
    iput p1, v3, Lcom/appsflyer/internal/AFc1aSDK;->getMediationNetwork:I

    move-object p1, v3

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    .line 18
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFc1aSDK;->getMonetizationNetwork()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lws/f;->p(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, p2

    goto :goto_3

    .line 19
    :goto_2
    :try_start_2
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v3, Lcom/appsflyer/internal/AFg1cSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFg1cSDK;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not cache exception\n "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/appsflyer/internal/AFh1ySDK;->v$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    :cond_3
    :goto_3
    monitor-exit p0

    return-object v1

    :goto_4
    monitor-exit p0

    throw p1
.end method

.method public final getCurrencyIso4217Code(II)V
    .locals 7

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1ySDK;->AFAdRevenueData()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 7
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/appsflyer/internal/AFk1xSDK;->getMediationNetwork(Ljava/lang/String;)I

    move-result v5

    if-gt p1, v5, :cond_0

    if-gt v5, p2, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 9
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-static {v1, p2}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 11
    check-cast v0, Ljava/io/File;

    .line 12
    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lws/f;->w(Ljava/io/File;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 13
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 14
    :cond_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public final getCurrencyIso4217Code()Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/appsflyer/internal/AFd1ySDK;->getMonetizationNetwork([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final getMediationNetwork()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1ySDK;->getRevenue()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

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
    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/appsflyer/internal/AFc1aSDK;

    .line 23
    .line 24
    iget v2, v2, Lcom/appsflyer/internal/AFc1aSDK;->getMediationNetwork:I

    .line 25
    .line 26
    add-int/2addr v1, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return v1
.end method

.method public final varargs getMonetizationNetwork([Ljava/lang/String;)Z
    .locals 13
    .param p1    # [Ljava/lang/String;
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
    monitor-enter p0

    .line 7
    :try_start_0
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1ySDK;->AFAdRevenueData()Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_6

    .line 13
    .line 14
    array-length v2, p1

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    sget-object v3, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 18
    .line 19
    sget-object v4, Lcom/appsflyer/internal/AFg1cSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFg1cSDK;

    .line 20
    .line 21
    const-string v5, "delete all exceptions"

    .line 22
    .line 23
    const/4 v7, 0x4

    .line 24
    const/4 v8, 0x0

    .line 25
    const/4 v6, 0x0

    .line 26
    invoke-static/range {v3 .. v8}, Lcom/appsflyer/internal/AFh1ySDK;->v$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lws/f;->w(Ljava/io/File;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    goto/16 :goto_2

    .line 34
    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto/16 :goto_3

    .line 37
    .line 38
    :cond_0
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 39
    .line 40
    sget-object v3, Lcom/appsflyer/internal/AFg1cSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFg1cSDK;

    .line 41
    .line 42
    const-string v5, ", "

    .line 43
    .line 44
    const/16 v11, 0x3e

    .line 45
    .line 46
    const/4 v12, 0x0

    .line 47
    const/4 v6, 0x0

    .line 48
    const/4 v7, 0x0

    .line 49
    const/4 v8, 0x0

    .line 50
    const/4 v9, 0x0

    .line 51
    const/4 v10, 0x0

    .line 52
    move-object v4, p1

    .line 53
    invoke-static/range {v4 .. v12}, Lkotlin/collections/n;->U0([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    new-instance v5, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v6, "delete all exceptions except for: "

    .line 63
    .line 64
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    const/4 v6, 0x4

    .line 75
    const/4 v7, 0x0

    .line 76
    const/4 v5, 0x0

    .line 77
    invoke-static/range {v2 .. v7}, Lcom/appsflyer/internal/AFh1ySDK;->v$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    if-eqz v0, :cond_6

    .line 85
    .line 86
    const-string v2, ""

    .line 87
    .line 88
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    new-instance v2, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .line 95
    .line 96
    array-length v3, v0

    .line 97
    const/4 v4, 0x0

    .line 98
    move v5, v4

    .line 99
    :goto_0
    if-ge v5, v3, :cond_2

    .line 100
    .line 101
    aget-object v6, v0, v5

    .line 102
    .line 103
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    invoke-static {p1, v7}, Lkotlin/collections/n;->f0([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    if-nez v7, :cond_1

    .line 112
    .line 113
    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    .line 120
    .line 121
    const/16 v0, 0xa

    .line 122
    .line 123
    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 128
    .line 129
    .line 130
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-eqz v2, :cond_3

    .line 139
    .line 140
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    check-cast v2, Ljava/io/File;

    .line 145
    .line 146
    const-string v3, ""

    .line 147
    .line 148
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-static {v2}, Lws/f;->w(Ljava/io/File;)Z

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_3
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->i1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    check-cast p1, Ljava/util/Collection;

    .line 168
    .line 169
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-eqz v0, :cond_4

    .line 174
    .line 175
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 176
    .line 177
    invoke-static {p1}, Lkotlin/collections/y0;->d(Ljava/lang/Object;)Ljava/util/Set;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    :cond_4
    check-cast p1, Ljava/util/Set;

    .line 182
    .line 183
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    if-ne v0, v1, :cond_5

    .line 188
    .line 189
    check-cast p1, Ljava/lang/Iterable;

    .line 190
    .line 191
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->q0(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    check-cast p1, Ljava/lang/Boolean;

    .line 196
    .line 197
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 198
    .line 199
    .line 200
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    if-eqz p1, :cond_5

    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_5
    move v1, v4

    .line 205
    :cond_6
    :goto_2
    monitor-exit p0

    .line 206
    return v1

    .line 207
    :goto_3
    monitor-exit p0

    .line 208
    throw p1
.end method

.method public final getRevenue()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/appsflyer/internal/AFc1aSDK;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1ySDK;->AFAdRevenueData()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_5

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_5

    .line 15
    .line 16
    new-instance v3, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    array-length v4, v1

    .line 22
    const/4 v5, 0x0

    .line 23
    move v6, v5

    .line 24
    :goto_0
    if-ge v6, v4, :cond_4

    .line 25
    .line 26
    aget-object v7, v1, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    .line 28
    :try_start_1
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    if-eqz v7, :cond_1

    .line 33
    .line 34
    const-string v8, ""

    .line 35
    .line 36
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance v8, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    array-length v9, v7

    .line 45
    move v10, v5

    .line 46
    :goto_1
    if-ge v10, v9, :cond_2

    .line 47
    .line 48
    aget-object v11, v7, v10

    .line 49
    .line 50
    sget-object v12, Lcom/appsflyer/internal/AFc1aSDK;->AFa1zSDK:Lcom/appsflyer/internal/AFc1aSDK$AFa1zSDK;

    .line 51
    .line 52
    const-string v12, ""

    .line 53
    .line 54
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v11, v2, v0, v2}, Lws/f;->m(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v11

    .line 61
    invoke-static {v11}, Lcom/appsflyer/internal/AFc1aSDK$AFa1zSDK;->getMediationNetwork(Ljava/lang/String;)Lcom/appsflyer/internal/AFc1aSDK;

    .line 62
    .line 63
    .line 64
    move-result-object v11

    .line 65
    if-eqz v11, :cond_0

    .line 66
    .line 67
    invoke-interface {v8, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :catchall_0
    move-exception v7

    .line 72
    goto :goto_3

    .line 73
    :cond_0
    :goto_2
    add-int/2addr v10, v0

    .line 74
    goto :goto_1

    .line 75
    :goto_3
    :try_start_2
    sget-object v8, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 76
    .line 77
    sget-object v9, Lcom/appsflyer/internal/AFg1cSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFg1cSDK;

    .line 78
    .line 79
    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    new-instance v10, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v11, "Could not get stored exceptions\n "

    .line 89
    .line 90
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v10

    .line 100
    const/4 v12, 0x4

    .line 101
    const/4 v13, 0x0

    .line 102
    const/4 v11, 0x0

    .line 103
    invoke-static/range {v8 .. v13}, Lcom/appsflyer/internal/AFh1ySDK;->v$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    :cond_1
    move-object v8, v2

    .line 107
    :cond_2
    if-eqz v8, :cond_3

    .line 108
    .line 109
    invoke-interface {v3, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    goto :goto_4

    .line 113
    :catchall_1
    move-exception v0

    .line 114
    goto :goto_5

    .line 115
    :cond_3
    :goto_4
    add-int/2addr v6, v0

    .line 116
    goto :goto_0

    .line 117
    :cond_4
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->B(Ljava/lang/Iterable;)Ljava/util/List;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    :cond_5
    if-nez v2, :cond_6

    .line 122
    .line 123
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 127
    :cond_6
    monitor-exit p0

    .line 128
    return-object v2

    .line 129
    :goto_5
    monitor-exit p0

    .line 130
    throw v0
.end method
