.class final Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startForegroundTimerCheck$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SupersetEventLogger.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->z()V
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
    c = "com.startshorts.androidplayer.manager.event.SupersetEventLogger$startForegroundTimerCheck$1"
    f = "SupersetEventLogger.kt"
    l = {
        0xf7,
        0x103
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field private synthetic i:Ljava/lang/Object;

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
            "Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startForegroundTimerCheck$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startForegroundTimerCheck$1;->j:Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;

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
    new-instance v0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startForegroundTimerCheck$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startForegroundTimerCheck$1;->j:Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startForegroundTimerCheck$1;-><init>(Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;Lrs/c;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startForegroundTimerCheck$1;->i:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startForegroundTimerCheck$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startForegroundTimerCheck$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startForegroundTimerCheck$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startForegroundTimerCheck$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startForegroundTimerCheck$1;->h:I

    .line 6
    .line 7
    const-string v2, "SupersetEventLogger"

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, 0x1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    if-eq v1, v4, :cond_1

    .line 14
    .line 15
    if-ne v1, v3, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startForegroundTimerCheck$1;->i:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Lgt/g0;

    .line 20
    .line 21
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

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
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startForegroundTimerCheck$1;->i:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, Lgt/g0;

    .line 36
    .line 37
    :try_start_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :catch_0
    move-exception p1

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startForegroundTimerCheck$1;->i:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p1, Lgt/g0;

    .line 49
    .line 50
    move-object v1, p1

    .line 51
    :cond_3
    :goto_0
    invoke-static {v1}, Lkotlinx/coroutines/i;->h(Lgt/g0;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_5

    .line 56
    .line 57
    :try_start_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startForegroundTimerCheck$1;->j:Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;

    .line 58
    .line 59
    invoke-static {p1}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->h(Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;)J

    .line 60
    .line 61
    .line 62
    move-result-wide v5

    .line 63
    iput-object v1, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startForegroundTimerCheck$1;->i:Ljava/lang/Object;

    .line 64
    .line 65
    iput v4, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startForegroundTimerCheck$1;->h:I

    .line 66
    .line 67
    invoke-static {v5, v6, p0}, Lkotlinx/coroutines/DelayKt;->b(JLrs/c;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    if-ne p1, v0, :cond_4

    .line 72
    .line 73
    return-object v0

    .line 74
    :cond_4
    :goto_1
    sget-object p1, Lud/a;->a:Lud/a;

    .line 75
    .line 76
    invoke-virtual {p1}, Lud/a;->t()Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_3

    .line 81
    .line 82
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startForegroundTimerCheck$1;->j:Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;

    .line 83
    .line 84
    invoke-static {p1}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->k(Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;)V

    .line 85
    .line 86
    .line 87
    sget-object p1, Lcom/startshorts/androidplayer/db/repository/EventRepository;->b:Lcom/startshorts/androidplayer/db/repository/EventRepository;

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/db/repository/EventRepository;->E()I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-lez p1, :cond_3

    .line 94
    .line 95
    sget-object v5, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 96
    .line 97
    new-instance v6, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string v7, "Strategy: Timer trigger ("

    .line 103
    .line 104
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const/16 p1, 0x29

    .line 111
    .line 112
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {v5, v2, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startForegroundTimerCheck$1;->j:Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;

    .line 123
    .line 124
    invoke-static {p1}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->j(Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;)Ljt/d;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    new-instance v5, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$b$a;

    .line 129
    .line 130
    const-string v6, "Timer"

    .line 131
    .line 132
    invoke-direct {v5, v4, v6}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$b$a;-><init>(ZLjava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-interface {p1, v5}, Lkotlinx/coroutines/channels/h;->h(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :goto_2
    sget-object v5, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 140
    .line 141
    new-instance v6, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    const-string v7, "Timer loop error: "

    .line 147
    .line 148
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {v5, v2, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    iput-object v1, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startForegroundTimerCheck$1;->i:Ljava/lang/Object;

    .line 166
    .line 167
    iput v3, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startForegroundTimerCheck$1;->h:I

    .line 168
    .line 169
    const-wide/16 v5, 0x2710

    .line 170
    .line 171
    invoke-static {v5, v6, p0}, Lkotlinx/coroutines/DelayKt;->b(JLrs/c;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    if-ne p1, v0, :cond_3

    .line 176
    .line 177
    return-object v0

    .line 178
    :cond_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 179
    .line 180
    return-object p1
.end method
