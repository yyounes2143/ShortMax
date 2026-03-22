.class public abstract Lcom/inmobi/media/v4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lms/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/inmobi/media/u4;->a:Lcom/inmobi/media/u4;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/inmobi/media/v4;->a:Lms/i;

    .line 8
    .line 9
    return-void
.end method

.method public static final a(Lcom/inmobi/media/N9;Lcom/inmobi/media/t4;Lcom/inmobi/media/s4;ILjava/lang/String;IJLcom/inmobi/media/ue;Z)V
    .locals 9

    move-object v0, p0

    move-object v7, p1

    move-object v1, p2

    move v2, p3

    const-string v3, "$request"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$listener"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$eventPayload"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v3, "mRequest"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/inmobi/media/N9;->b()Lcom/inmobi/media/P9;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/inmobi/media/P9;->b()Z

    move-result v3

    const-string v4, "TAG"

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v3, :cond_4

    .line 4
    sget-boolean v3, Lcom/inmobi/media/T9;->a:Z

    .line 5
    iget-object v3, v0, Lcom/inmobi/media/P9;->d:Lcom/inmobi/media/I9;

    if-eqz v3, :cond_0

    .line 6
    iget-object v6, v3, Lcom/inmobi/media/I9;->a:Lcom/inmobi/media/o4;

    .line 7
    :cond_0
    sget-boolean v3, Lcom/inmobi/media/T9;->a:Z

    if-eqz v3, :cond_2

    .line 8
    sget-object v3, Lcom/inmobi/media/o4;->q:Lcom/inmobi/media/o4;

    if-eq v6, v3, :cond_1

    .line 9
    sget-object v3, Lcom/inmobi/media/o4;->p:Lcom/inmobi/media/o4;

    if-eq v6, v3, :cond_1

    .line 10
    sget-object v3, Lcom/inmobi/media/o4;->o:Lcom/inmobi/media/o4;

    if-eq v6, v3, :cond_1

    .line 11
    sget-object v3, Lcom/inmobi/media/o4;->n:Lcom/inmobi/media/o4;

    if-eq v6, v3, :cond_1

    .line 12
    sget-object v3, Lcom/inmobi/media/o4;->r:Lcom/inmobi/media/o4;

    if-ne v6, v3, :cond_2

    .line 13
    :cond_1
    invoke-virtual {p1, p2, v5}, Lcom/inmobi/media/t4;->a(Lcom/inmobi/media/s4;Z)V

    return-void

    :cond_2
    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    .line 14
    const-string v5, "v4"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/inmobi/media/P9;->a()Ljava/lang/String;

    add-int/lit8 v3, v2, -0x1

    move-object v0, p2

    move-object v1, p4

    move v2, p5

    move-wide v4, p6

    move-object/from16 v6, p8

    move-object v7, p1

    move/from16 v8, p9

    .line 15
    invoke-static/range {v0 .. v8}, Lcom/inmobi/media/v4;->a(Lcom/inmobi/media/s4;Ljava/lang/String;IIJLcom/inmobi/media/ue;Lcom/inmobi/media/t4;Z)V

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {p1, p2, v3}, Lcom/inmobi/media/t4;->a(Lcom/inmobi/media/s4;Z)V

    goto :goto_0

    .line 17
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    const-string v0, "eventPayload"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, v7, Lcom/inmobi/media/t4;->d:Ljava/lang/String;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v0, v7, Lcom/inmobi/media/t4;->a:Lcom/inmobi/media/r4;

    .line 21
    iget-object v2, v1, Lcom/inmobi/media/s4;->a:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v0, v2}, Lcom/inmobi/media/r4;->a(Ljava/util/ArrayList;)V

    .line 23
    iget-object v0, v7, Lcom/inmobi/media/t4;->a:Lcom/inmobi/media/r4;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/r4;->a(J)V

    .line 24
    iget-object v0, v7, Lcom/inmobi/media/t4;->c:Lcom/inmobi/media/Db;

    if-eqz v0, :cond_6

    .line 25
    iget-object v0, v1, Lcom/inmobi/media/s4;->a:Ljava/util/ArrayList;

    .line 26
    const-string v1, "eventIds"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object v1, Lcom/inmobi/media/Ud;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 28
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 30
    sput v0, Lcom/inmobi/media/Ud;->b:I

    .line 31
    sget-object v1, Lcom/inmobi/media/Ud;->a:Lcom/inmobi/media/C6;

    if-eqz v1, :cond_5

    const/4 v2, 0x4

    const/4 v3, 0x0

    const-string v4, "count"

    const/4 v8, 0x0

    move-object p2, v1

    move-object p3, v4

    move p4, v0

    move p5, v8

    move p6, v2

    move-object/from16 p7, v3

    invoke-static/range {p2 .. p7}, Lcom/inmobi/media/C6;->a(Lcom/inmobi/media/C6;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 32
    :cond_5
    sput-object v6, Lcom/inmobi/media/Ud;->c:Ljava/lang/Integer;

    .line 33
    :cond_6
    iget-object v0, v7, Lcom/inmobi/media/t4;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    return-void
.end method

.method public static a(Lcom/inmobi/media/s4;Ljava/lang/String;IIJLcom/inmobi/media/ue;Lcom/inmobi/media/t4;Z)V
    .locals 15

    move-object v3, p0

    move/from16 v6, p2

    move/from16 v4, p3

    .line 34
    const-string v0, "v4"

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 35
    invoke-static {v2}, Lcom/inmobi/media/T9;->a(Z)Lcom/inmobi/media/o4;

    move-result-object v5

    if-nez v5, :cond_5

    .line 36
    invoke-static {}, Lcom/inmobi/media/Uc;->m()Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_2

    .line 37
    :cond_0
    new-instance v1, Lcom/inmobi/media/N9;

    const/4 v13, 0x0

    const/16 v14, 0x68

    const-string v8, "POST"

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v1

    move-object/from16 v9, p1

    move-object/from16 v10, p6

    invoke-direct/range {v7 .. v14}, Lcom/inmobi/media/N9;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/ue;ZLcom/inmobi/media/z5;Ljava/lang/String;I)V

    .line 38
    iget-object v0, v3, Lcom/inmobi/media/s4;->b:Ljava/lang/String;

    .line 39
    const-string v5, "payload"

    invoke-static {v5, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    filled-new-array {v0}, [Lkotlin/Pair;

    move-result-object v0

    .line 40
    invoke-static {v0}, Lkotlin/collections/p0;->k([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 41
    iget-object v5, v1, Lcom/inmobi/media/N9;->k:Ljava/util/HashMap;

    if-eqz v5, :cond_1

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_1
    sub-int v0, v6, v4

    if-lez v0, :cond_2

    .line 42
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "X-im-retry-count"

    invoke-static {v7, v5}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    filled-new-array {v5}, [Lkotlin/Pair;

    move-result-object v5

    .line 43
    invoke-static {v5}, Lkotlin/collections/p0;->k([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 44
    iget-object v7, v1, Lcom/inmobi/media/N9;->i:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 45
    :cond_2
    iput-boolean v2, v1, Lcom/inmobi/media/N9;->x:Z

    .line 46
    iput-boolean v2, v1, Lcom/inmobi/media/N9;->t:Z

    .line 47
    iput-boolean v2, v1, Lcom/inmobi/media/N9;->u:Z

    if-eqz p8, :cond_3

    if-eq v4, v6, :cond_4

    int-to-double v7, v0

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    .line 48
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-long v7, v7

    mul-long v7, v7, p4

    :goto_0
    move-wide v11, v7

    goto :goto_1

    :cond_3
    if-eq v4, v6, :cond_4

    move-wide/from16 v11, p4

    goto :goto_1

    :cond_4
    const-wide/16 v7, 0x0

    goto :goto_0

    .line 49
    :goto_1
    sget-object v0, Lcom/inmobi/media/v4;->a:Lms/i;

    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "getValue(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, v0

    check-cast v13, Ljava/util/concurrent/ScheduledExecutorService;

    .line 50
    new-instance v14, Lub/y6;

    move-object v0, v14

    move-object/from16 v2, p7

    move-object v3, p0

    move/from16 v4, p3

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-wide/from16 v7, p4

    move-object/from16 v9, p6

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lub/y6;-><init>(Lcom/inmobi/media/N9;Lcom/inmobi/media/t4;Lcom/inmobi/media/s4;ILjava/lang/String;IJLcom/inmobi/media/ue;Z)V

    .line 51
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 52
    invoke-interface {v13, v14, v11, v12, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void

    .line 53
    :cond_5
    :goto_2
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p7

    .line 54
    invoke-virtual {v0, p0, v2}, Lcom/inmobi/media/t4;->a(Lcom/inmobi/media/s4;Z)V

    return-void
.end method
