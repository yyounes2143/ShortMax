.class public final Lcom/inmobi/media/c1;
.super Lcom/inmobi/media/G3;
.source "SourceFile"


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:J

.field public final d:I

.field public final e:Landroid/app/ActivityManager;

.field public final f:Lcom/inmobi/media/C6;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/inmobi/media/H3;JI)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "listener"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p2}, Lcom/inmobi/media/G3;-><init>(Lcom/inmobi/media/H3;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/inmobi/media/c1;->b:Landroid/content/Context;

    .line 15
    .line 16
    iput-wide p3, p0, Lcom/inmobi/media/c1;->c:J

    .line 17
    .line 18
    iput p5, p0, Lcom/inmobi/media/c1;->d:I

    .line 19
    .line 20
    const-string p2, "activity"

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    const-string p3, "null cannot be cast to non-null type android.app.ActivityManager"

    .line 27
    .line 28
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    check-cast p2, Landroid/app/ActivityManager;

    .line 32
    .line 33
    iput-object p2, p0, Lcom/inmobi/media/c1;->e:Landroid/app/ActivityManager;

    .line 34
    .line 35
    sget-object p2, Lcom/inmobi/media/C6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    .line 37
    const-string p2, "appClose"

    .line 38
    .line 39
    invoke-static {p1, p2}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Lcom/inmobi/media/c1;->f:Lcom/inmobi/media/C6;

    .line 44
    .line 45
    return-void
.end method

.method public static final a(Lcom/inmobi/media/c1;)V
    .locals 11

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/inmobi/media/c1;->e:Landroid/app/ActivityManager;

    iget-object v1, p0, Lcom/inmobi/media/c1;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-static {v0, v1, v2, v3}, Landroidx/work/impl/utils/a;->a(Landroid/app/ActivityManager;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    const-string v1, "getHistoricalProcessExitReasons(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v1, p0, Lcom/inmobi/media/c1;->f:Lcom/inmobi/media/C6;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    const-string v2, "key"

    const-string v3, "exitReasonTimestamp"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v1, v1, Lcom/inmobi/media/C6;->a:Landroid/content/SharedPreferences;

    const-wide/16 v4, 0x0

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 30
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-wide v5, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Landroidx/work/impl/utils/b;->a(Ljava/lang/Object;)Landroid/app/ApplicationExitInfo;

    move-result-object v3

    .line 31
    invoke-static {v3}, Landroidx/work/impl/utils/d;->a(Landroid/app/ApplicationExitInfo;)J

    move-result-wide v7

    cmp-long v4, v7, v1

    if-lez v4, :cond_0

    .line 32
    iget-wide v7, p0, Lcom/inmobi/media/c1;->c:J

    new-instance v4, Lub/t3;

    invoke-direct {v4, p0, v3}, Lub/t3;-><init>(Lcom/inmobi/media/c1;Landroid/app/ApplicationExitInfo;)V

    sget-object v9, Lcom/inmobi/media/Ie;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 33
    const-string v9, "runnable"

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v9, Lcom/inmobi/media/Ie;->a:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v9, v4, v7, v8, v10}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 35
    invoke-static {v3}, Landroidx/work/impl/utils/d;->a(Landroid/app/ApplicationExitInfo;)J

    move-result-wide v7

    cmp-long v4, v7, v5

    if-lez v4, :cond_0

    .line 36
    invoke-static {v3}, Landroidx/work/impl/utils/d;->a(Landroid/app/ApplicationExitInfo;)J

    move-result-wide v5

    goto :goto_0

    .line 37
    :cond_1
    iget-object v3, p0, Lcom/inmobi/media/c1;->f:Lcom/inmobi/media/C6;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v4, "exitReasonTimestamp"

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lcom/inmobi/media/C6;->a(Lcom/inmobi/media/C6;Ljava/lang/String;JZILjava/lang/Object;)V

    return-void
.end method

.method public static final a(Lcom/inmobi/media/c1;Landroid/app/ApplicationExitInfo;)V
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, v0, Lcom/inmobi/media/G3;->a:Lcom/inmobi/media/H3;

    .line 2
    new-instance v2, Lcom/inmobi/media/d1;

    .line 3
    invoke-static/range {p1 .. p1}, Landroidx/work/impl/utils/c;->a(Landroid/app/ApplicationExitInfo;)I

    move-result v3

    .line 4
    invoke-static/range {p1 .. p1}, Lcom/applovin/impl/sdk/p1;->a(Landroid/app/ApplicationExitInfo;)Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-static/range {p1 .. p1}, Lcom/applovin/impl/sdk/s0;->a(Landroid/app/ApplicationExitInfo;)Ljava/io/InputStream;

    move-result-object v5

    iget v0, v0, Lcom/inmobi/media/c1;->d:I

    .line 6
    const-string v6, "startMarker"

    const-string v7, "\"main\""

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "endMarker"

    const-string v8, "ZygoteInit.java"

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v5, :cond_6

    .line 9
    :try_start_0
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    move v11, v0

    move v12, v5

    .line 10
    :goto_0
    :try_start_1
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v13, :cond_5

    const-string v14, "\n"

    if-lez v0, :cond_0

    if-nez v12, :cond_0

    .line 11
    :try_start_2
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_0
    :goto_1
    const/4 v15, 0x0

    move/from16 p0, v0

    const/4 v0, 0x2

    move/from16 p1, v12

    .line 12
    invoke-static {v13, v7, v5, v0, v15}, Lkotlin/text/StringsKt;->V(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v12

    const/4 v0, 0x1

    if-ne v12, v0, :cond_1

    .line 13
    invoke-static {v9}, Lkotlin/text/StringsKt;->q(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move v12, v0

    goto :goto_2

    :cond_1
    move/from16 v12, p1

    :goto_2
    if-eqz v12, :cond_2

    add-int/lit8 v11, v11, -0x1

    .line 14
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/4 v14, 0x2

    .line 15
    invoke-static {v13, v8, v5, v14, v15}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v13, v0, :cond_3

    goto :goto_3

    :cond_3
    if-gtz v11, :cond_4

    goto :goto_3

    :cond_4
    move/from16 v0, p0

    goto :goto_0

    .line 16
    :cond_5
    :goto_3
    :try_start_3
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_5

    :goto_4
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 17
    :goto_5
    const-string v5, "CommonExt"

    const-string v7, "Error reading from input stream"

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    :cond_6
    :goto_6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const-string v5, "toString(...)"

    if-nez v0, :cond_7

    .line 19
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_7

    .line 20
    :cond_7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    :goto_7
    invoke-direct {v2, v4, v3, v0}, Lcom/inmobi/media/d1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 22
    invoke-virtual {v1, v2}, Lcom/inmobi/media/H3;->a(Lcom/inmobi/media/T5;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 23
    new-instance v0, Lub/u3;

    invoke-direct {v0, p0}, Lub/u3;-><init>(Lcom/inmobi/media/c1;)V

    sget-object v1, Lcom/inmobi/media/Ie;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 24
    const-string v1, "runnable"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object v1, Lcom/inmobi/media/Ie;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()V
    .locals 0

    .line 1
    return-void
.end method
