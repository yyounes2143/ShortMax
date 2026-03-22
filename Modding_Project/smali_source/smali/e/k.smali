.class public final Le/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/f;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/t;

.field public final c:Le/k0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lca/a;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "config"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Le/k;->a:Landroid/content/Context;

    .line 15
    .line 16
    new-instance v0, Le/t;

    .line 17
    .line 18
    invoke-direct {v0, p1, p2}, Le/t;-><init>(Landroid/content/Context;Lca/a;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Le/k;->b:Le/t;

    .line 22
    .line 23
    new-instance p1, Le/k0;

    .line 24
    .line 25
    invoke-direct {p1, v0}, Le/k0;-><init>(Le/t;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Le/k;->c:Le/k0;

    .line 29
    .line 30
    return-void
.end method

.method public static final f(Le/k;Lca/e;JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-wide/from16 v9, p2

    move-object/from16 v0, p4

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    instance-of v1, v0, Lad-manager/d/u;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lad-manager/d/u;

    iget v2, v1, Lad-manager/d/u;->o:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lad-manager/d/u;->o:I

    :goto_0
    move-object v11, v1

    goto :goto_1

    :cond_0
    new-instance v1, Lad-manager/d/u;

    invoke-direct {v1, v7, v0}, Lad-manager/d/u;-><init>(Le/k;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    goto :goto_0

    :goto_1
    iget-object v0, v11, Lad-manager/d/u;->m:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    move-result-object v12

    .line 3
    iget v1, v11, Lad-manager/d/u;->o:I

    const-string v13, ""

    const/4 v14, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v14, :cond_1

    iget-wide v1, v11, Lad-manager/d/u;->l:J

    iget-wide v3, v11, Lad-manager/d/u;->k:J

    iget-object v5, v11, Lad-manager/d/u;->j:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, v11, Lad-manager/d/u;->i:Lca/e;

    iget-object v7, v11, Lad-manager/d/u;->h:Le/k;

    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    move-wide v9, v3

    move-object v4, v6

    goto/16 :goto_3

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 4
    new-instance v15, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v13, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 6
    sget-object v0, Lcom/hades/aar/admanager/core/AdAggregatedSdk;->ADMOB:Lcom/hades/aar/admanager/core/AdAggregatedSdk;

    invoke-virtual {v8, v0}, Lca/e;->k(Lcom/hades/aar/admanager/core/AdAggregatedSdk;)V

    const-wide/16 v0, 0x0

    cmp-long v0, v9, v0

    if-gtz v0, :cond_3

    const-wide/16 v0, 0x1

    move-wide v2, v0

    goto :goto_2

    :cond_3
    move-wide v2, v9

    .line 7
    :goto_2
    new-instance v6, Lad-manager/d/w;

    const/16 v16, 0x0

    move-object v0, v6

    move-object v1, v15

    move-wide/from16 v17, v2

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v19, v4

    move-wide/from16 v4, p2

    move-object/from16 v21, v6

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lad-manager/d/w;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Le/k;Lca/e;JLrs/c;)V

    iput-object v7, v11, Lad-manager/d/u;->h:Le/k;

    iput-object v8, v11, Lad-manager/d/u;->i:Lca/e;

    iput-object v15, v11, Lad-manager/d/u;->j:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-wide v9, v11, Lad-manager/d/u;->k:J

    move-wide/from16 v0, v19

    iput-wide v0, v11, Lad-manager/d/u;->l:J

    iput v14, v11, Lad-manager/d/u;->o:I

    move-wide/from16 v2, v17

    move-object/from16 v4, v21

    invoke-static {v2, v3, v4, v11}, Lkotlinx/coroutines/TimeoutKt;->e(JLkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v12, :cond_4

    goto/16 :goto_6

    :cond_4
    move-object v4, v8

    move-object v5, v15

    move-wide/from16 v22, v0

    move-object v0, v2

    move-wide/from16 v1, v22

    .line 8
    :goto_3
    move-object v12, v0

    check-cast v12, Ljava/lang/Boolean;

    if-nez v12, :cond_6

    .line 9
    iget-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    sget-object v3, Lga/a;->a:Lga/a;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "removeRequest -> requestId "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AdEventHandler"

    invoke-virtual {v3, v6, v5}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v3, v7, Le/k;->b:Le/t;

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    move-object v13, v0

    :goto_4
    invoke-virtual {v3, v13}, Lda/f;->O(Ljava/lang/String;)V

    .line 12
    :cond_6
    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "succeed"

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    .line 13
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "failed"

    goto :goto_5

    :cond_8
    if-nez v12, :cond_9

    .line 14
    const-string v0, "timeout"

    .line 15
    :goto_5
    sget-object v3, Lca/k;->a:Lca/k;

    .line 16
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "requestAd -> end,status="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",costTime="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v2, v0, 0x1

    .line 18
    invoke-static {v9, v10}, Lkotlin/coroutines/jvm/internal/a;->e(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, v3

    move-object v3, v6

    .line 19
    invoke-virtual/range {v0 .. v5}, Lca/k;->o(Ljava/lang/String;ZLca/f;Lca/e;Ljava/lang/Long;)V

    :goto_6
    return-object v12

    .line 20
    :cond_9
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public static final g(Landroid/content/Context;Lcom/google/android/gms/ads/AdInspectorError;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static final h(Le/k;)V
    .locals 14

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    invoke-static {p0}, Le/k;->i(Z)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    sget-object v0, Lca/k;->a:Lca/k;

    .line 9
    .line 10
    invoke-virtual {v0}, Lca/k;->e()Lha/a;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-interface {p0}, Lha/a;->b()V

    .line 17
    .line 18
    .line 19
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    const-string v1, "showLoadingAdDialog"

    .line 22
    .line 23
    const/16 v5, 0xe

    .line 24
    .line 25
    const/4 v6, 0x0

    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-static/range {v0 .. v6}, Lca/k;->p(Lca/k;Ljava/lang/String;Lca/f;Lca/e;Ljava/lang/Long;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    sget-object v0, Lca/k;->a:Lca/k;

    .line 35
    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v2, "showLoadingAdDialog exception -> "

    .line 39
    .line 40
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const/16 v5, 0xe

    .line 55
    .line 56
    const/4 v6, 0x0

    .line 57
    const/4 v2, 0x0

    .line 58
    const/4 v3, 0x0

    .line 59
    const/4 v4, 0x0

    .line 60
    invoke-static/range {v0 .. v6}, Lca/k;->m(Lca/k;Ljava/lang/String;Lca/f;Lca/e;Ljava/lang/Long;ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_1
    sget-object v7, Lca/k;->a:Lca/k;

    .line 65
    .line 66
    const/16 v12, 0xe

    .line 67
    .line 68
    const/4 v13, 0x0

    .line 69
    const-string v8, "showLoadingAdDialog -> Activity state invalid (onSaveInstanceState), skip show"

    .line 70
    .line 71
    const/4 v9, 0x0

    .line 72
    const/4 v10, 0x0

    .line 73
    const/4 v11, 0x0

    .line 74
    invoke-static/range {v7 .. v13}, Lca/k;->p(Lca/k;Ljava/lang/String;Lca/f;Lca/e;Ljava/lang/Long;ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :cond_0
    :goto_0
    return-void
.end method

.method public static i(Z)V
    .locals 1

    .line 1
    sget-object v0, Lca/k;->a:Lca/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lca/k;->e()Lha/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sget-object v0, Lg/c;->a:Landroid/os/Handler;

    .line 11
    .line 12
    new-instance v0, Le/h;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Le/h;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lg/c;->a(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static j(Ljava/util/List;Ljava/util/ArrayList;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

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
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    move-object v3, v2

    .line 29
    check-cast v3, Lca/e;

    .line 30
    .line 31
    invoke-virtual {v3}, Lca/e;->j()Lcom/hades/aar/admanager/core/AdPriority;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v3}, Lcom/hades/aar/admanager/core/AdPriority;->getValue()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    sget-object v4, Lcom/hades/aar/admanager/core/AdPriority;->PRIORITY_LOW:Lcom/hades/aar/admanager/core/AdPriority;

    .line 40
    .line 41
    invoke-virtual {v4}, Lcom/hades/aar/admanager/core/AdPriority;->getValue()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-le v3, v4, :cond_1

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_6

    .line 60
    .line 61
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Lca/e;

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_4

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_3

    .line 83
    .line 84
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    check-cast v3, Lca/d;

    .line 89
    .line 90
    invoke-virtual {v3}, Lca/d;->h()Lcom/hades/aar/admanager/core/AdFormat;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-virtual {v0}, Lca/e;->f()Lcom/hades/aar/admanager/core/AdFormat;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    if-ne v4, v5, :cond_5

    .line 99
    .line 100
    invoke-virtual {v3}, Lca/d;->l()Lcom/hades/aar/admanager/core/AdPriority;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-virtual {v3}, Lcom/hades/aar/admanager/core/AdPriority;->getValue()I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    sget-object v4, Lcom/hades/aar/admanager/core/AdPriority;->PRIORITY_LOW:Lcom/hades/aar/admanager/core/AdPriority;

    .line 109
    .line 110
    invoke-virtual {v4}, Lcom/hades/aar/admanager/core/AdPriority;->getValue()I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    if-le v3, v4, :cond_5

    .line 115
    .line 116
    const/4 p0, 0x1

    .line 117
    return p0

    .line 118
    :cond_6
    return v1
.end method

.method public static k(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    move-object v4, v3

    .line 26
    check-cast v4, Lca/e;

    .line 27
    .line 28
    invoke-virtual {v4}, Lca/e;->j()Lcom/hades/aar/admanager/core/AdPriority;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v4}, Lcom/hades/aar/admanager/core/AdPriority;->getValue()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    sget-object v5, Lcom/hades/aar/admanager/core/AdPriority;->PRIORITY_LOW:Lcom/hades/aar/admanager/core/AdPriority;

    .line 37
    .line 38
    invoke-virtual {v5}, Lcom/hades/aar/admanager/core/AdPriority;->getValue()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-le v4, v5, :cond_0

    .line 43
    .line 44
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    const/4 v3, 0x0

    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    move-object v1, v3

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    sget-object v2, Lkotlin/random/Random;->a:Lkotlin/random/Random$Default;

    .line 58
    .line 59
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->M0(Ljava/util/Collection;Lkotlin/random/Random;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Lca/e;

    .line 64
    .line 65
    :goto_1
    if-eqz v1, :cond_3

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_5

    .line 84
    .line 85
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    move-object v5, v4

    .line 90
    check-cast v5, Lca/e;

    .line 91
    .line 92
    invoke-virtual {v5}, Lca/e;->j()Lcom/hades/aar/admanager/core/AdPriority;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {v5}, Lcom/hades/aar/admanager/core/AdPriority;->getValue()I

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    sget-object v6, Lcom/hades/aar/admanager/core/AdPriority;->PRIORITY_LOW:Lcom/hades/aar/admanager/core/AdPriority;

    .line 101
    .line 102
    invoke-virtual {v6}, Lcom/hades/aar/admanager/core/AdPriority;->getValue()I

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    if-ne v5, v6, :cond_4

    .line 107
    .line 108
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    if-eqz p0, :cond_6

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_6
    sget-object p0, Lkotlin/random/Random;->a:Lkotlin/random/Random$Default;

    .line 120
    .line 121
    invoke-static {v2, p0}, Lkotlin/collections/CollectionsKt;->M0(Ljava/util/Collection;Lkotlin/random/Random;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    move-object v3, p0

    .line 126
    check-cast v3, Lca/e;

    .line 127
    .line 128
    :goto_3
    if-eqz v3, :cond_7

    .line 129
    .line 130
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result p0

    .line 134
    if-nez p0, :cond_7

    .line 135
    .line 136
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    :cond_7
    sget-object v4, Lca/k;->a:Lca/k;

    .line 140
    .line 141
    new-instance p0, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string v2, "createRandomAds ->"

    .line 144
    .line 145
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const/16 v1, 0x2c

    .line 152
    .line 153
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    const/16 v9, 0xe

    .line 164
    .line 165
    const/4 v10, 0x0

    .line 166
    const/4 v6, 0x0

    .line 167
    const/4 v7, 0x0

    .line 168
    const/4 v8, 0x0

    .line 169
    invoke-static/range {v4 .. v10}, Lca/k;->p(Lca/k;Ljava/lang/String;Lca/f;Lca/e;Ljava/lang/Long;ILjava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    return-object v0
.end method

.method public static final l(Z)V
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v8, Lca/k;->a:Lca/k;

    .line 3
    .line 4
    invoke-virtual {v8}, Lca/k;->e()Lha/a;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-interface {v1}, Lha/a;->a()V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    const-string v2, "hideLoadingAdDialog"

    .line 16
    .line 17
    const/16 v6, 0xe

    .line 18
    .line 19
    const/4 v7, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    move-object v1, v8

    .line 24
    invoke-static/range {v1 .. v7}, Lca/k;->p(Lca/k;Ljava/lang/String;Lca/f;Lca/e;Ljava/lang/Long;ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    .line 31
    .line 32
    invoke-virtual {v8, v0}, Lca/k;->t(Lha/a;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_2

    .line 36
    :goto_1
    sget-object v0, Lca/k;->a:Lca/k;

    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v2, "hideLoadingAdDialog exception -> "

    .line 41
    .line 42
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const/16 v5, 0xe

    .line 57
    .line 58
    const/4 v6, 0x0

    .line 59
    const/4 v2, 0x0

    .line 60
    const/4 v3, 0x0

    .line 61
    const/4 v4, 0x0

    .line 62
    invoke-static/range {v0 .. v6}, Lca/k;->m(Lca/k;Ljava/lang/String;Lca/f;Lca/e;Ljava/lang/Long;ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :catch_1
    sget-object v1, Lca/k;->a:Lca/k;

    .line 67
    .line 68
    const/16 v12, 0xe

    .line 69
    .line 70
    const/4 v13, 0x0

    .line 71
    const-string v8, "hideLoadingAdDialog -> Activity state invalid (onSaveInstanceState), skip dismiss"

    .line 72
    .line 73
    const/4 v9, 0x0

    .line 74
    const/4 v10, 0x0

    .line 75
    const/4 v11, 0x0

    .line 76
    move-object v7, v1

    .line 77
    invoke-static/range {v7 .. v13}, Lca/k;->p(Lca/k;Ljava/lang/String;Lca/f;Lca/e;Ljava/lang/Long;ILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    if-eqz p0, :cond_1

    .line 81
    .line 82
    invoke-virtual {v1, v0}, Lca/k;->t(Lha/a;)V

    .line 83
    .line 84
    .line 85
    :cond_1
    :goto_2
    return-void
.end method


# virtual methods
.method public final a()Lcom/hades/aar/admanager/core/AdAggregatedSdk;
    .locals 1

    .line 4
    sget-object v0, Lcom/hades/aar/admanager/core/AdAggregatedSdk;->ADMOB:Lcom/hades/aar/admanager/core/AdAggregatedSdk;

    return-object v0
.end method

.method public final varargs a([Lcom/hades/aar/admanager/core/AdFormat;)Ljava/util/List;
    .locals 1

    const-string v0, "format"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/k;->b:Le/t;

    invoke-static {p1}, Lkotlin/collections/n;->E1([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lda/f;->q(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object p1
.end method

.method public final a(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;-><init>()V

    sget-object v1, Lca/k;->a:Lca/k;

    invoke-virtual {v1, p1}, Lca/k;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTestDeviceIds(Ljava/util/List;)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->build()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/ads/MobileAds;->setRequestConfiguration(Lcom/google/android/gms/ads/RequestConfiguration;)V

    .line 10
    new-instance v0, Le/j;

    invoke-direct {v0, p1}, Le/j;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/google/android/gms/ads/MobileAds;->openAdInspector(Landroid/content/Context;Lcom/google/android/gms/ads/OnAdInspectorClosedListener;)V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget v0, Lba/a;->b:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/hades/aar/admanager/view/nativead/AdmobNativeAdView;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 3
    :goto_1
    sget-object v0, Lca/k;->a:Lca/k;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "destroyNativeAdView exception -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lca/k;->m(Lca/k;Ljava/lang/String;Lca/f;Lca/e;Ljava/lang/Long;ILjava/lang/Object;)V

    :cond_1
    :goto_2
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v0, Lga/a;->a:Lga/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AdDelegate logStatus -> action="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", currentActiveLoaderType = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    sget-object p1, Lcom/hades/aar/admanager/core/AdAggregatedSdk;->ADMOB:Lcom/hades/aar/admanager/core/AdAggregatedSdk;

    .line 7
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AdManagerAdUtil"

    invoke-virtual {v0, v1, p1}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/util/List;)Z
    .locals 2

    const-string v0, "formats"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hades/aar/admanager/core/AdFormat;

    .line 13
    iget-object v1, p0, Le/k;->b:Le/t;

    invoke-virtual {v1, v0}, Lda/f;->w(Lcom/hades/aar/admanager/core/AdFormat;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final b()Lda/f;
    .locals 1

    .line 4
    iget-object v0, p0, Le/k;->b:Le/t;

    return-object v0
.end method

.method public final b(Lca/f;Lgt/g0;)V
    .locals 7

    const-string v0, "adRequestParam"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Le/k;->e(Lca/f;)Le/v;

    move-result-object v0

    .line 2
    new-instance v4, Lad-manager/d/g0;

    const/4 v1, 0x0

    invoke-direct {v4, p0, p1, v0, v1}, Lad-manager/d/g0;-><init>(Le/k;Lca/f;Le/v;Lrs/c;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    move-result-object p2

    .line 3
    invoke-static {p2}, Lkotlinx/coroutines/t;->m(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/r;

    move-result-object p2

    new-instance v0, Lad-manager/d/s;

    invoke-direct {v0, p0, p1}, Lad-manager/d/s;-><init>(Le/k;Lca/f;)V

    invoke-interface {p2, v0}, Lkotlinx/coroutines/r;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lgt/s0;

    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/k;->b:Le/t;

    invoke-virtual {v0}, Lda/f;->L()V

    return-void
.end method

.method public final c(Ljava/util/List;ILda/c;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "adUnitIds"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v3, v0, Le/k;->b:Le/t;

    sget v4, Le/t;->q:I

    .line 3
    invoke-virtual {v3}, Lda/f;->s()Lca/a;

    move-result-object v3

    .line 4
    instance-of v4, v3, Lea/a;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    check-cast v3, Lea/a;

    goto :goto_0

    :cond_0
    move-object v3, v5

    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lea/a;->o()Lkotlin/jvm/functions/Function1;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    if-nez v3, :cond_4

    .line 5
    sget-object v6, Lca/k;->a:Lca/k;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "preloadAd admob failed -> isAdmobPreloader="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Le/k;->b:Le/t;

    .line 6
    invoke-virtual {v2}, Lda/f;->s()Lca/a;

    move-result-object v2

    .line 7
    instance-of v3, v2, Lea/a;

    if-eqz v3, :cond_2

    check-cast v2, Lea/a;

    goto :goto_2

    :cond_2
    move-object v2, v5

    :goto_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lea/a;->o()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 8
    :cond_3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v11, 0xe

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v6 .. v12}, Lca/k;->p(Lca/k;Ljava/lang/String;Lca/f;Lca/e;Ljava/lang/Long;ILjava/lang/Object;)V

    return-void

    .line 9
    :cond_4
    new-instance v3, Le/c0;

    move-object/from16 v4, p3

    invoke-direct {v3, v1, v0, v4, v2}, Le/c0;-><init>(Ljava/util/List;Le/k;Lda/c;I)V

    .line 10
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lca/e;

    .line 12
    invoke-virtual {v6}, Lca/e;->e()Ljava/lang/String;

    move-result-object v7

    .line 13
    invoke-virtual {v6}, Lca/e;->f()Lcom/hades/aar/admanager/core/AdFormat;

    move-result-object v8

    sget-object v9, Le/x;->a:[I

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v8, v9, v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_7

    const/4 v9, 0x3

    if-eq v8, v9, :cond_6

    const/4 v9, 0x4

    if-eq v8, v9, :cond_5

    .line 14
    sget-object v8, Lcom/google/android/gms/ads/AdFormat;->NATIVE:Lcom/google/android/gms/ads/AdFormat;

    goto :goto_4

    .line 15
    :cond_5
    sget-object v8, Lcom/google/android/gms/ads/AdFormat;->BANNER:Lcom/google/android/gms/ads/AdFormat;

    goto :goto_4

    .line 16
    :cond_6
    sget-object v8, Lcom/google/android/gms/ads/AdFormat;->REWARDED:Lcom/google/android/gms/ads/AdFormat;

    goto :goto_4

    .line 17
    :cond_7
    sget-object v8, Lcom/google/android/gms/ads/AdFormat;->INTERSTITIAL:Lcom/google/android/gms/ads/AdFormat;

    goto :goto_4

    .line 18
    :cond_8
    sget-object v8, Lcom/google/android/gms/ads/AdFormat;->APP_OPEN_AD:Lcom/google/android/gms/ads/AdFormat;

    .line 19
    :goto_4
    iget-object v9, v0, Le/k;->b:Le/t;

    invoke-virtual {v9}, Lda/f;->n()Ljava/lang/String;

    move-result-object v9

    .line 20
    iget-object v10, v0, Le/k;->b:Le/t;

    sget-object v11, Lad-manager/b/m;->LOADING:Lad-manager/b/m;

    invoke-virtual {v10, v9, v6, v11}, Lda/f;->m(Ljava/lang/String;Lca/e;Lad-manager/b/m;)Lca/d;

    move-result-object v13

    .line 21
    sget-object v6, Lca/d;->n:Lc/e;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    invoke-static {}, Lca/d;->a()Ljava/lang/String;

    move-result-object v6

    .line 23
    invoke-virtual {v13, v6}, Lca/d;->x(Ljava/lang/String;)V

    .line 24
    iget-object v12, v0, Le/k;->b:Le/t;

    const-string v16, "preloadAdmob"

    const/16 v17, 0x1

    const-wide/16 v14, 0x0

    invoke-virtual/range {v12 .. v17}, Lda/f;->J(Lca/d;JLjava/lang/String;Z)V

    .line 25
    new-instance v6, Lcom/google/android/gms/ads/preload/PreloadConfiguration$Builder;

    invoke-direct {v6, v7, v8}, Lcom/google/android/gms/ads/preload/PreloadConfiguration$Builder;-><init>(Ljava/lang/String;Lcom/google/android/gms/ads/AdFormat;)V

    invoke-virtual {v6, v2}, Lcom/google/android/gms/ads/preload/PreloadConfiguration$Builder;->setBufferSize(I)Lcom/google/android/gms/ads/preload/PreloadConfiguration$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/ads/preload/PreloadConfiguration$Builder;->build()Lcom/google/android/gms/ads/preload/PreloadConfiguration;

    move-result-object v6

    const-string v7, "Builder(adunitid, adForm\u2026rSize(bufferSize).build()"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 27
    :cond_9
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 28
    sget-object v5, Lca/k;->a:Lca/k;

    const/16 v10, 0xe

    const/4 v11, 0x0

    const-string v6, "preloadAd admob startPreload -> preloadConfigurations=null"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v11}, Lca/k;->p(Lca/k;Ljava/lang/String;Lca/f;Lca/e;Ljava/lang/Long;ILjava/lang/Object;)V

    return-void

    .line 29
    :cond_a
    sget-object v12, Lca/k;->a:Lca/k;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "preloadAd admob startPreload -> preloadConfigurations="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v17, 0xe

    const/16 v18, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v12 .. v18}, Lca/k;->p(Lca/k;Ljava/lang/String;Lca/f;Lca/e;Ljava/lang/Long;ILjava/lang/Object;)V

    .line 30
    iget-object v1, v0, Le/k;->a:Landroid/content/Context;

    invoke-static {v1, v4, v3}, Lcom/google/android/gms/ads/MobileAds;->startPreload(Landroid/content/Context;Ljava/util/List;Lcom/google/android/gms/ads/preload/PreloadCallback;)V

    return-void
.end method

.method public final d(Ljava/util/List;JLgt/g0;)V
    .locals 11

    const-string v0, "adUnitIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineScope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lca/f;

    invoke-direct {v0}, Lca/f;-><init>()V

    invoke-virtual {v0, p1}, Lca/f;->v(Ljava/util/List;)V

    .line 3
    invoke-virtual {p0, v0}, Le/k;->e(Lca/f;)Le/v;

    move-result-object v8

    .line 4
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lca/e;

    .line 6
    invoke-virtual {v2}, Lca/e;->f()Lcom/hades/aar/admanager/core/AdFormat;

    move-result-object v3

    sget-object v4, Lcom/hades/aar/admanager/core/AdFormat;->BANNER:Lcom/hades/aar/admanager/core/AdFormat;

    if-eq v3, v4, :cond_1

    invoke-virtual {v2}, Lca/e;->f()Lcom/hades/aar/admanager/core/AdFormat;

    move-result-object v2

    sget-object v3, Lcom/hades/aar/admanager/core/AdFormat;->NATIVE:Lcom/hades/aar/admanager/core/AdFormat;

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x1

    .line 7
    :goto_2
    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    if-eqz v1, :cond_4

    .line 8
    sget-object v1, Lca/k;->a:Lca/k;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "preloadAd BannerOrNative start \n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v0

    invoke-static/range {v1 .. v7}, Lca/k;->p(Lca/k;Ljava/lang/String;Lca/f;Lca/e;Ljava/lang/Long;ILjava/lang/Object;)V

    .line 9
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->g1(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Le/k;->k(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_3

    .line 10
    :cond_4
    iget-object v1, v8, Le/v;->a:Ljava/util/ArrayList;

    .line 11
    invoke-static {p1, v1}, Le/k;->j(Ljava/util/List;Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 12
    sget-object v1, Lca/k;->a:Lca/k;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "preloadAd succeed -> normalAd is cached\n"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v0

    invoke-static/range {v1 .. v7}, Lca/k;->p(Lca/k;Ljava/lang/String;Lca/f;Lca/e;Ljava/lang/Long;ILjava/lang/Object;)V

    return-void

    .line 13
    :cond_5
    iget-object p1, v8, Le/v;->b:Ljava/util/ArrayList;

    .line 14
    invoke-static {p1}, Le/k;->k(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 15
    :goto_3
    new-instance p1, Lad-manager/d/r;

    const/4 v10, 0x0

    move-object v1, p1

    move-object v2, v8

    move-object v3, v0

    move-object v4, v9

    move-object v5, p0

    move-wide v6, p2

    move-object v8, v10

    invoke-direct/range {v1 .. v8}, Lad-manager/d/r;-><init>(Le/v;Lca/f;Lkotlin/jvm/internal/Ref$ObjectRef;Le/k;JLrs/c;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p4

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    return-void
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/k;->b:Le/t;

    invoke-virtual {v0}, Lda/f;->x()Z

    move-result v0

    return v0
.end method

.method public final e(Lca/f;)Le/v;
    .locals 12

    .line 2
    new-instance v0, Le/v;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2}, Le/v;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p1}, Lca/f;->f()Ljava/util/List;

    move-result-object v2

    .line 5
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 8
    move-object v6, v5

    check-cast v6, Lca/e;

    .line 9
    invoke-virtual {v6}, Lca/e;->f()Lcom/hades/aar/admanager/core/AdFormat;

    move-result-object v6

    .line 10
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 11
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lca/e;

    .line 13
    iget-object v4, p0, Le/k;->b:Le/t;

    invoke-virtual {v3}, Lca/e;->f()Lcom/hades/aar/admanager/core/AdFormat;

    move-result-object v3

    filled-new-array {v3}, [Lcom/hades/aar/admanager/core/AdFormat;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v4, v3}, Lda/f;->q(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    goto :goto_2

    .line 14
    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    move-result-object v3

    :goto_2
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 15
    :cond_3
    invoke-virtual {p1}, Lca/f;->f()Ljava/util/List;

    move-result-object v2

    .line 16
    instance-of v3, v2, Ljava/util/Collection;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_4

    .line 17
    :cond_4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lca/e;

    .line 18
    invoke-virtual {v3}, Lca/e;->f()Lcom/hades/aar/admanager/core/AdFormat;

    move-result-object v3

    sget-object v6, Lcom/hades/aar/admanager/core/AdFormat;->NATIVE:Lcom/hades/aar/admanager/core/AdFormat;

    if-ne v3, v6, :cond_5

    goto :goto_3

    :cond_5
    move v2, v5

    goto :goto_5

    :cond_6
    :goto_4
    move v2, v4

    .line 19
    :goto_5
    invoke-virtual {p1}, Lca/f;->f()Ljava/util/List;

    move-result-object p1

    .line 20
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lca/e;

    .line 21
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 22
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lca/d;

    if-eqz v2, :cond_9

    .line 23
    invoke-virtual {v3}, Lca/e;->f()Lcom/hades/aar/admanager/core/AdFormat;

    move-result-object v10

    sget-object v11, Lcom/hades/aar/admanager/core/AdFormat;->NATIVE:Lcom/hades/aar/admanager/core/AdFormat;

    if-ne v10, v11, :cond_9

    invoke-virtual {v9}, Lca/d;->h()Lcom/hades/aar/admanager/core/AdFormat;

    move-result-object v10

    if-ne v10, v11, :cond_9

    goto :goto_8

    .line 24
    :cond_9
    invoke-virtual {v9}, Lca/d;->l()Lcom/hades/aar/admanager/core/AdPriority;

    move-result-object v10

    invoke-virtual {v3}, Lca/e;->j()Lcom/hades/aar/admanager/core/AdPriority;

    move-result-object v11

    if-eq v10, v11, :cond_a

    goto :goto_7

    .line 25
    :cond_a
    invoke-virtual {v9}, Lca/d;->l()Lcom/hades/aar/admanager/core/AdPriority;

    move-result-object v10

    sget-object v11, Lcom/hades/aar/admanager/core/AdPriority;->PRIORITY_LOW:Lcom/hades/aar/admanager/core/AdPriority;

    if-ne v10, v11, :cond_b

    goto :goto_8

    .line 26
    :cond_b
    invoke-virtual {v9}, Lca/d;->h()Lcom/hades/aar/admanager/core/AdFormat;

    move-result-object v9

    invoke-virtual {v3}, Lca/e;->f()Lcom/hades/aar/admanager/core/AdFormat;

    move-result-object v10

    if-ne v9, v10, :cond_8

    .line 27
    :goto_8
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 28
    :cond_c
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v5

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lca/d;

    .line 29
    iget-object v8, v0, Le/v;->a:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 31
    iget-object v8, v0, Le/v;->a:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    move v7, v4

    goto :goto_9

    :cond_e
    if-nez v7, :cond_7

    .line 33
    iget-object v6, v0, Le/v;->b:Ljava/util/ArrayList;

    .line 34
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_f
    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/MobileAds;->getVersion()Lcom/google/android/gms/ads/VersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/VersionInfo;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getVersion().toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final f()Ld/g;
    .locals 1

    .line 21
    iget-object v0, p0, Le/k;->c:Le/k0;

    return-object v0
.end method

.method public final m()V
    .locals 1

    .line 1
    sget-object v0, Lg/c;->a:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v0, Le/i;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Le/i;-><init>(Le/k;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lg/c;->a(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
