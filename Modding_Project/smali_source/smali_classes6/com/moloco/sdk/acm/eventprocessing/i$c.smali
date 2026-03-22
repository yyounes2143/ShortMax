.class public final Lcom/moloco/sdk/acm/eventprocessing/i$c;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/acm/eventprocessing/i;->e(Ljava/lang/String;Lcom/moloco/sdk/acm/db/c;JLjava/util/List;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lgt/g0;",
        "Lrs/c<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.moloco.sdk.acm.eventprocessing.EventProcessorImpl$processEvent$2"
    f = "EventProcessor.kt"
    l = {
        0x4f,
        0x50
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Lcom/moloco/sdk/acm/eventprocessing/i;

.field public final synthetic k:Lcom/moloco/sdk/acm/db/c;

.field public final synthetic l:J

.field public final synthetic m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/moloco/sdk/acm/eventprocessing/i;Lcom/moloco/sdk/acm/db/c;JLjava/util/List;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/moloco/sdk/acm/eventprocessing/i;",
            "Lcom/moloco/sdk/acm/db/c;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/acm/eventprocessing/i$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/acm/eventprocessing/i$c;->i:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/acm/eventprocessing/i$c;->j:Lcom/moloco/sdk/acm/eventprocessing/i;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/moloco/sdk/acm/eventprocessing/i$c;->k:Lcom/moloco/sdk/acm/db/c;

    .line 6
    .line 7
    iput-wide p4, p0, Lcom/moloco/sdk/acm/eventprocessing/i$c;->l:J

    .line 8
    .line 9
    iput-object p6, p0, Lcom/moloco/sdk/acm/eventprocessing/i$c;->m:Ljava/util/List;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/acm/eventprocessing/i$c;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/moloco/sdk/acm/eventprocessing/i$c;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/acm/eventprocessing/i$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/moloco/sdk/acm/eventprocessing/i$c;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/acm/eventprocessing/i$c;->i:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/moloco/sdk/acm/eventprocessing/i$c;->j:Lcom/moloco/sdk/acm/eventprocessing/i;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/moloco/sdk/acm/eventprocessing/i$c;->k:Lcom/moloco/sdk/acm/db/c;

    .line 8
    .line 9
    iget-wide v4, p0, Lcom/moloco/sdk/acm/eventprocessing/i$c;->l:J

    .line 10
    .line 11
    iget-object v6, p0, Lcom/moloco/sdk/acm/eventprocessing/i$c;->m:Ljava/util/List;

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v7, p2

    .line 15
    invoke-direct/range {v0 .. v7}, Lcom/moloco/sdk/acm/eventprocessing/i$c;-><init>(Ljava/lang/String;Lcom/moloco/sdk/acm/eventprocessing/i;Lcom/moloco/sdk/acm/db/c;JLjava/util/List;Lrs/c;)V

    .line 16
    .line 17
    .line 18
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lgt/g0;

    .line 2
    .line 3
    check-cast p2, Lrs/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/acm/eventprocessing/i$c;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v2, v1, Lcom/moloco/sdk/acm/eventprocessing/i$c;->h:I

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, 0x1

    .line 11
    if-eqz v2, :cond_2

    .line 12
    .line 13
    if-eq v2, v4, :cond_1

    .line 14
    .line 15
    if-ne v2, v3, :cond_0

    .line 16
    .line 17
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto/16 :goto_3

    .line 21
    .line 22
    :catch_0
    move-exception v0

    .line 23
    goto :goto_1

    .line 24
    :catch_1
    move-exception v0

    .line 25
    goto/16 :goto_2

    .line 26
    .line 27
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 30
    .line 31
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0

    .line 35
    :cond_1
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :try_start_2
    new-instance v2, Lcom/moloco/sdk/acm/db/b;

    .line 43
    .line 44
    iget-object v8, v1, Lcom/moloco/sdk/acm/eventprocessing/i$c;->i:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v5, v1, Lcom/moloco/sdk/acm/eventprocessing/i$c;->j:Lcom/moloco/sdk/acm/eventprocessing/i;

    .line 47
    .line 48
    invoke-static {v5}, Lcom/moloco/sdk/acm/eventprocessing/i;->h(Lcom/moloco/sdk/acm/eventprocessing/i;)Lcom/moloco/sdk/acm/services/f;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-interface {v5}, Lcom/moloco/sdk/acm/services/f;->invoke()J

    .line 53
    .line 54
    .line 55
    move-result-wide v9

    .line 56
    iget-object v11, v1, Lcom/moloco/sdk/acm/eventprocessing/i$c;->k:Lcom/moloco/sdk/acm/db/c;

    .line 57
    .line 58
    iget-wide v5, v1, Lcom/moloco/sdk/acm/eventprocessing/i$c;->l:J

    .line 59
    .line 60
    invoke-static {v5, v6}, Lkotlin/coroutines/jvm/internal/a;->e(J)Ljava/lang/Long;

    .line 61
    .line 62
    .line 63
    move-result-object v12

    .line 64
    iget-object v13, v1, Lcom/moloco/sdk/acm/eventprocessing/i$c;->m:Ljava/util/List;

    .line 65
    .line 66
    const/4 v14, 0x1

    .line 67
    const/4 v15, 0x0

    .line 68
    const-wide/16 v6, 0x0

    .line 69
    .line 70
    move-object v5, v2

    .line 71
    invoke-direct/range {v5 .. v15}, Lcom/moloco/sdk/acm/db/b;-><init>(JLjava/lang/String;JLcom/moloco/sdk/acm/db/c;Ljava/lang/Long;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 72
    .line 73
    .line 74
    iget-object v5, v1, Lcom/moloco/sdk/acm/eventprocessing/i$c;->j:Lcom/moloco/sdk/acm/eventprocessing/i;

    .line 75
    .line 76
    invoke-static {v5}, Lcom/moloco/sdk/acm/eventprocessing/i;->f(Lcom/moloco/sdk/acm/eventprocessing/i;)Lcom/moloco/sdk/acm/db/d;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-interface {v5, v2}, Lcom/moloco/sdk/acm/db/d;->b(Lcom/moloco/sdk/acm/db/b;)J

    .line 81
    .line 82
    .line 83
    iget-object v2, v1, Lcom/moloco/sdk/acm/eventprocessing/i$c;->j:Lcom/moloco/sdk/acm/eventprocessing/i;

    .line 84
    .line 85
    invoke-static {v2}, Lcom/moloco/sdk/acm/eventprocessing/i;->g(Lcom/moloco/sdk/acm/eventprocessing/i;)Lcom/moloco/sdk/acm/eventprocessing/g;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    iput v4, v1, Lcom/moloco/sdk/acm/eventprocessing/i$c;->h:I

    .line 90
    .line 91
    invoke-interface {v2, v1}, Lcom/moloco/sdk/acm/eventprocessing/g;->c(Lrs/c;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    if-ne v2, v0, :cond_3

    .line 96
    .line 97
    return-object v0

    .line 98
    :cond_3
    :goto_0
    iget-object v2, v1, Lcom/moloco/sdk/acm/eventprocessing/i$c;->j:Lcom/moloco/sdk/acm/eventprocessing/i;

    .line 99
    .line 100
    invoke-static {v2}, Lcom/moloco/sdk/acm/eventprocessing/i;->c(Lcom/moloco/sdk/acm/eventprocessing/i;)Lcom/moloco/sdk/acm/services/b;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    iput v3, v1, Lcom/moloco/sdk/acm/eventprocessing/i$c;->h:I

    .line 105
    .line 106
    invoke-interface {v2, v1}, Lcom/moloco/sdk/acm/services/b;->a(Lrs/c;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v2
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 110
    if-ne v2, v0, :cond_4

    .line 111
    .line 112
    return-object v0

    .line 113
    :goto_1
    sget-object v2, Lcom/moloco/sdk/acm/services/e;->a:Lcom/moloco/sdk/acm/services/e;

    .line 114
    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    const-string v4, "Unexpected error while processing event: "

    .line 121
    .line 122
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    const/4 v6, 0x4

    .line 137
    const/4 v7, 0x0

    .line 138
    const-string v3, "EventProcessor"

    .line 139
    .line 140
    const/4 v5, 0x0

    .line 141
    invoke-static/range {v2 .. v7}, Lcom/moloco/sdk/acm/services/e;->f(Lcom/moloco/sdk/acm/services/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    goto :goto_3

    .line 145
    :goto_2
    sget-object v2, Lcom/moloco/sdk/acm/services/e;->a:Lcom/moloco/sdk/acm/services/e;

    .line 146
    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    const-string v4, "Database error: "

    .line 153
    .line 154
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    const/4 v6, 0x4

    .line 169
    const/4 v7, 0x0

    .line 170
    const-string v3, "EventProcessor"

    .line 171
    .line 172
    const/4 v5, 0x0

    .line 173
    invoke-static/range {v2 .. v7}, Lcom/moloco/sdk/acm/services/e;->f(Lcom/moloco/sdk/acm/services/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    :cond_4
    :goto_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 177
    .line 178
    return-object v0
.end method
