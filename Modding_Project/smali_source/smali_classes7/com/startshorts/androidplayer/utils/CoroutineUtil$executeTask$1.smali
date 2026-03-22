.class final Lcom/startshorts/androidplayer/utils/CoroutineUtil$executeTask$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CoroutineUtil.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/utils/CoroutineUtil;->i(Lgt/g0;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.utils.CoroutineUtil$executeTask$1"
    f = "CoroutineUtil.kt"
    l = {
        0x39
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field private synthetic i:Ljava/lang/Object;

.field final synthetic j:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
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
.end field

.field final synthetic k:Z

.field final synthetic l:Lfk/p;

.field final synthetic m:Ljava/lang/String;

.field final synthetic n:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function2;ZLfk/p;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lgt/g0;",
            "-",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;Z",
            "Lfk/p;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/utils/CoroutineUtil$executeTask$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$executeTask$1;->j:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$executeTask$1;->k:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$executeTask$1;->l:Lfk/p;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$executeTask$1;->m:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$executeTask$1;->n:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
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
    new-instance v7, Lcom/startshorts/androidplayer/utils/CoroutineUtil$executeTask$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$executeTask$1;->j:Lkotlin/jvm/functions/Function2;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$executeTask$1;->k:Z

    .line 6
    .line 7
    iget-object v3, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$executeTask$1;->l:Lfk/p;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$executeTask$1;->m:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$executeTask$1;->n:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    move-object v0, v7

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/startshorts/androidplayer/utils/CoroutineUtil$executeTask$1;-><init>(Lkotlin/jvm/functions/Function2;ZLfk/p;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lrs/c;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, v7, Lcom/startshorts/androidplayer/utils/CoroutineUtil$executeTask$1;->i:Ljava/lang/Object;

    .line 19
    .line 20
    return-object v7
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/utils/CoroutineUtil$executeTask$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/utils/CoroutineUtil$executeTask$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/utils/CoroutineUtil$executeTask$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/utils/CoroutineUtil$executeTask$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$executeTask$1;->h:I

    .line 6
    .line 7
    const-string v2, "executeTask("

    .line 8
    .line 9
    const-string v3, "CoroutineUtil"

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    if-ne v1, v4, :cond_0

    .line 15
    .line 16
    :try_start_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_1

    .line 22
    :catch_0
    move-exception p1

    .line 23
    goto/16 :goto_3

    .line 24
    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1

    .line 33
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$executeTask$1;->i:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p1, Lgt/g0;

    .line 39
    .line 40
    :try_start_1
    iget-object v1, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$executeTask$1;->j:Lkotlin/jvm/functions/Function2;

    .line 41
    .line 42
    iput v4, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$executeTask$1;->h:I

    .line 43
    .line 44
    invoke-interface {v1, p1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-ne p1, v0, :cond_2

    .line 49
    .line 50
    return-object v0

    .line 51
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$executeTask$1;->k:Z

    .line 52
    .line 53
    if-nez p1, :cond_4

    .line 54
    .line 55
    iget-object p1, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$executeTask$1;->l:Lfk/p;

    .line 56
    .line 57
    invoke-virtual {p1}, Lfk/p;->c()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_4

    .line 62
    .line 63
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$executeTask$1;->m:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v1, ") costTime("

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$executeTask$1;->l:Lfk/p;

    .line 84
    .line 85
    invoke-virtual {v1}, Lfk/p;->b()J

    .line 86
    .line 87
    .line 88
    move-result-wide v4

    .line 89
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v1, "ms)"

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {p1, v3, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :goto_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$executeTask$1;->l:Lfk/p;

    .line 106
    .line 107
    invoke-virtual {v0}, Lfk/p;->c()Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-nez v0, :cond_3

    .line 112
    .line 113
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 114
    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    iget-object v2, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$executeTask$1;->m:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v2, ") failed cost("

    .line 129
    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    iget-object v2, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$executeTask$1;->l:Lfk/p;

    .line 134
    .line 135
    invoke-virtual {v2}, Lfk/p;->b()J

    .line 136
    .line 137
    .line 138
    move-result-wide v4

    .line 139
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v2, "ms) -> "

    .line 143
    .line 144
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {v0, v3, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    :cond_3
    iget-object v0, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$executeTask$1;->n:Lkotlin/jvm/functions/Function1;

    .line 162
    .line 163
    if-eqz v0, :cond_4

    .line 164
    .line 165
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    :cond_4
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 173
    .line 174
    return-object p1

    .line 175
    :goto_3
    throw p1
.end method
