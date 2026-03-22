.class final Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startUploadConsumer$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SupersetEventLogger.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.startshorts.androidplayer.manager.event.SupersetEventLogger$startUploadConsumer$1"
    f = "SupersetEventLogger.kt"
    l = {
        0x91,
        0x94,
        0x95,
        0x96
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:I

.field final synthetic j:Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startUploadConsumer$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startUploadConsumer$1;->j:Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 1
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
    new-instance p1, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startUploadConsumer$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startUploadConsumer$1;->j:Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startUploadConsumer$1;-><init>(Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;Lrs/c;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public final invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startUploadConsumer$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startUploadConsumer$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startUploadConsumer$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startUploadConsumer$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startUploadConsumer$1;->i:I

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    const/4 v3, 0x3

    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x1

    .line 11
    if-eqz v1, :cond_4

    .line 12
    .line 13
    if-eq v1, v5, :cond_3

    .line 14
    .line 15
    if-eq v1, v4, :cond_2

    .line 16
    .line 17
    if-eq v1, v3, :cond_1

    .line 18
    .line 19
    if-ne v1, v2, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startUploadConsumer$1;->h:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Ljt/f;

    .line 24
    .line 25
    :goto_0
    :try_start_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    goto/16 :goto_4

    .line 29
    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto/16 :goto_3

    .line 32
    .line 33
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 36
    .line 37
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1

    .line 41
    :cond_1
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startUploadConsumer$1;->h:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v1, Ljt/f;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startUploadConsumer$1;->h:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v1, Ljt/f;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startUploadConsumer$1;->h:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v1, Ljt/f;

    .line 54
    .line 55
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_4
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startUploadConsumer$1;->j:Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;

    .line 63
    .line 64
    invoke-static {p1}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->j(Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;)Ljt/d;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-interface {p1}, Ljt/i;->iterator()Ljt/f;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    :goto_1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startUploadConsumer$1;->h:Ljava/lang/Object;

    .line 73
    .line 74
    iput v5, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startUploadConsumer$1;->i:I

    .line 75
    .line 76
    invoke-interface {p1, p0}, Ljt/f;->a(Lrs/c;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    if-ne v1, v0, :cond_5

    .line 81
    .line 82
    return-object v0

    .line 83
    :cond_5
    move-object v9, v1

    .line 84
    move-object v1, p1

    .line 85
    move-object p1, v9

    .line 86
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_a

    .line 93
    .line 94
    invoke-interface {v1}, Ljt/f;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$b;

    .line 99
    .line 100
    :try_start_1
    instance-of v6, p1, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$b$a;

    .line 101
    .line 102
    if-eqz v6, :cond_6

    .line 103
    .line 104
    iget-object v6, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startUploadConsumer$1;->j:Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;

    .line 105
    .line 106
    move-object v7, p1

    .line 107
    check-cast v7, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$b$a;

    .line 108
    .line 109
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$b$a;->a()Z

    .line 110
    .line 111
    .line 112
    move-result v7

    .line 113
    check-cast p1, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$b$a;

    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$b$a;->b()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    iput-object v1, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startUploadConsumer$1;->h:Ljava/lang/Object;

    .line 120
    .line 121
    iput v4, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startUploadConsumer$1;->i:I

    .line 122
    .line 123
    invoke-static {v6, v7, p1, p0}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->l(Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;ZLjava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    if-ne p1, v0, :cond_9

    .line 128
    .line 129
    return-object v0

    .line 130
    :cond_6
    instance-of v6, p1, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$b$b;

    .line 131
    .line 132
    if-eqz v6, :cond_7

    .line 133
    .line 134
    iget-object v6, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startUploadConsumer$1;->j:Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;

    .line 135
    .line 136
    check-cast p1, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$b$b;

    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$b$b;->a()Ljava/util/List;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    iput-object v1, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startUploadConsumer$1;->h:Ljava/lang/Object;

    .line 143
    .line 144
    iput v3, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startUploadConsumer$1;->i:I

    .line 145
    .line 146
    invoke-static {v6, p1, p0}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->m(Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;Ljava/util/List;Lrs/c;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    if-ne p1, v0, :cond_9

    .line 151
    .line 152
    return-object v0

    .line 153
    :cond_7
    instance-of v6, p1, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$b$c;

    .line 154
    .line 155
    if-eqz v6, :cond_8

    .line 156
    .line 157
    iget-object v6, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startUploadConsumer$1;->j:Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;

    .line 158
    .line 159
    check-cast p1, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$b$c;

    .line 160
    .line 161
    iput-object v1, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startUploadConsumer$1;->h:Ljava/lang/Object;

    .line 162
    .line 163
    iput v2, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startUploadConsumer$1;->i:I

    .line 164
    .line 165
    invoke-static {v6, p1, p0}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->n(Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$b$c;Lrs/c;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    if-ne p1, v0, :cond_9

    .line 170
    .line 171
    return-object v0

    .line 172
    :cond_8
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 173
    .line 174
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 175
    .line 176
    .line 177
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    :goto_3
    sget-object v6, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 179
    .line 180
    new-instance v7, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    const-string v8, "Error processing upload intent: "

    .line 186
    .line 187
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    const-string v7, "SupersetEventLogger"

    .line 202
    .line 203
    invoke-virtual {v6, v7, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    :cond_9
    :goto_4
    move-object p1, v1

    .line 207
    goto/16 :goto_1

    .line 208
    .line 209
    :cond_a
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 210
    .line 211
    return-object p1
.end method
