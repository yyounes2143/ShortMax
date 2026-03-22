.class public final Lcom/moloco/sdk/acm/eventprocessing/i$d;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/acm/eventprocessing/i;->b(Lcom/moloco/sdk/acm/e;Lrs/c;)Ljava/lang/Object;
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
    c = "com.moloco.sdk.acm.eventprocessing.EventProcessorImpl$processTimerEvent$2"
    f = "EventProcessor.kt"
    l = {
        0x3a,
        0x3c
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nEventProcessor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventProcessor.kt\ncom/moloco/sdk/acm/eventprocessing/EventProcessorImpl$processTimerEvent$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,94:1\n1557#2:95\n1628#2,3:96\n1557#2:99\n1628#2,3:100\n*S KotlinDebug\n*F\n+ 1 EventProcessor.kt\ncom/moloco/sdk/acm/eventprocessing/EventProcessorImpl$processTimerEvent$2\n*L\n58#1:95\n58#1:96,3\n60#1:99\n60#1:100,3\n*E\n"
    }
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Lcom/moloco/sdk/acm/e;

.field public final synthetic j:Lcom/moloco/sdk/acm/eventprocessing/i;


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/acm/e;Lcom/moloco/sdk/acm/eventprocessing/i;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/acm/e;",
            "Lcom/moloco/sdk/acm/eventprocessing/i;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/acm/eventprocessing/i$d;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/acm/eventprocessing/i$d;->i:Lcom/moloco/sdk/acm/e;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/acm/eventprocessing/i$d;->j:Lcom/moloco/sdk/acm/eventprocessing/i;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 7
    .line 8
    .line 9
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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/acm/eventprocessing/i$d;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/moloco/sdk/acm/eventprocessing/i$d;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/acm/eventprocessing/i$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 2
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
    new-instance p1, Lcom/moloco/sdk/acm/eventprocessing/i$d;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/moloco/sdk/acm/eventprocessing/i$d;->i:Lcom/moloco/sdk/acm/e;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/moloco/sdk/acm/eventprocessing/i$d;->j:Lcom/moloco/sdk/acm/eventprocessing/i;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/moloco/sdk/acm/eventprocessing/i$d;-><init>(Lcom/moloco/sdk/acm/e;Lcom/moloco/sdk/acm/eventprocessing/i;Lrs/c;)V

    .line 8
    .line 9
    .line 10
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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/acm/eventprocessing/i$d;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/moloco/sdk/acm/eventprocessing/i$d;->h:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    :goto_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto/16 :goto_3

    .line 28
    .line 29
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/moloco/sdk/acm/eventprocessing/i$d;->i:Lcom/moloco/sdk/acm/e;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/moloco/sdk/acm/e;->c()J

    .line 35
    .line 36
    .line 37
    move-result-wide v4

    .line 38
    const-wide/16 v6, 0x0

    .line 39
    .line 40
    cmp-long p1, v4, v6

    .line 41
    .line 42
    const/16 v1, 0xa

    .line 43
    .line 44
    if-lez p1, :cond_4

    .line 45
    .line 46
    iget-object v4, p0, Lcom/moloco/sdk/acm/eventprocessing/i$d;->j:Lcom/moloco/sdk/acm/eventprocessing/i;

    .line 47
    .line 48
    iget-object p1, p0, Lcom/moloco/sdk/acm/eventprocessing/i$d;->i:Lcom/moloco/sdk/acm/e;

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/moloco/sdk/acm/e;->b()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    sget-object v6, Lcom/moloco/sdk/acm/db/c;->a:Lcom/moloco/sdk/acm/db/c;

    .line 55
    .line 56
    iget-object p1, p0, Lcom/moloco/sdk/acm/eventprocessing/i$d;->i:Lcom/moloco/sdk/acm/e;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/moloco/sdk/acm/e;->c()J

    .line 59
    .line 60
    .line 61
    move-result-wide v7

    .line 62
    iget-object p1, p0, Lcom/moloco/sdk/acm/eventprocessing/i$d;->i:Lcom/moloco/sdk/acm/e;

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/moloco/sdk/acm/e;->a()Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    new-instance v9, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 75
    .line 76
    .line 77
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_3

    .line 86
    .line 87
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Lcom/moloco/sdk/acm/c;

    .line 92
    .line 93
    invoke-static {v1}, Lcom/moloco/sdk/acm/i;->a(Lcom/moloco/sdk/acm/c;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-interface {v9, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    iput v3, p0, Lcom/moloco/sdk/acm/eventprocessing/i$d;->h:I

    .line 102
    .line 103
    move-object v10, p0

    .line 104
    invoke-static/range {v4 .. v10}, Lcom/moloco/sdk/acm/eventprocessing/i;->d(Lcom/moloco/sdk/acm/eventprocessing/i;Ljava/lang/String;Lcom/moloco/sdk/acm/db/c;JLjava/util/List;Lrs/c;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    if-ne p1, v0, :cond_6

    .line 109
    .line 110
    return-object v0

    .line 111
    :cond_4
    iget-object p1, p0, Lcom/moloco/sdk/acm/eventprocessing/i$d;->j:Lcom/moloco/sdk/acm/eventprocessing/i;

    .line 112
    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    const-string v4, "negative_time_"

    .line 119
    .line 120
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    iget-object v4, p0, Lcom/moloco/sdk/acm/eventprocessing/i$d;->i:Lcom/moloco/sdk/acm/e;

    .line 124
    .line 125
    invoke-virtual {v4}, Lcom/moloco/sdk/acm/e;->b()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    sget-object v4, Lcom/moloco/sdk/acm/db/c;->a:Lcom/moloco/sdk/acm/db/c;

    .line 137
    .line 138
    iget-object v5, p0, Lcom/moloco/sdk/acm/eventprocessing/i$d;->i:Lcom/moloco/sdk/acm/e;

    .line 139
    .line 140
    invoke-virtual {v5}, Lcom/moloco/sdk/acm/e;->c()J

    .line 141
    .line 142
    .line 143
    move-result-wide v5

    .line 144
    iget-object v7, p0, Lcom/moloco/sdk/acm/eventprocessing/i$d;->i:Lcom/moloco/sdk/acm/e;

    .line 145
    .line 146
    invoke-virtual {v7}, Lcom/moloco/sdk/acm/e;->a()Ljava/util/List;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    new-instance v8, Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-static {v7, v1}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 157
    .line 158
    .line 159
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 164
    .line 165
    .line 166
    move-result v7

    .line 167
    if-eqz v7, :cond_5

    .line 168
    .line 169
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v7

    .line 173
    check-cast v7, Lcom/moloco/sdk/acm/c;

    .line 174
    .line 175
    invoke-static {v7}, Lcom/moloco/sdk/acm/i;->a(Lcom/moloco/sdk/acm/c;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    invoke-interface {v8, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_5
    iput v2, p0, Lcom/moloco/sdk/acm/eventprocessing/i$d;->h:I

    .line 184
    .line 185
    move-object v1, p1

    .line 186
    move-object v2, v3

    .line 187
    move-object v3, v4

    .line 188
    move-wide v4, v5

    .line 189
    move-object v6, v8

    .line 190
    move-object v7, p0

    .line 191
    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/acm/eventprocessing/i;->d(Lcom/moloco/sdk/acm/eventprocessing/i;Ljava/lang/String;Lcom/moloco/sdk/acm/db/c;JLjava/util/List;Lrs/c;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    if-ne p1, v0, :cond_6

    .line 196
    .line 197
    return-object v0

    .line 198
    :cond_6
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 199
    .line 200
    return-object p1
.end method
