.class final Lcom/startshorts/androidplayer/repo/push/PushRepo$reportFCMToken$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PushRepo.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/push/PushRepo;->C()V
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
    c = "com.startshorts.androidplayer.repo.push.PushRepo$reportFCMToken$1"
    f = "PushRepo.kt"
    l = {
        0x16c,
        0x173
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:Ljava/lang/Object;

.field j:I


# direct methods
.method constructor <init>(Lrs/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/repo/push/PushRepo$reportFCMToken$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 0
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
    new-instance p1, Lcom/startshorts/androidplayer/repo/push/PushRepo$reportFCMToken$1;

    .line 2
    .line 3
    invoke-direct {p1, p2}, Lcom/startshorts/androidplayer/repo/push/PushRepo$reportFCMToken$1;-><init>(Lrs/c;)V

    .line 4
    .line 5
    .line 6
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/push/PushRepo$reportFCMToken$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/repo/push/PushRepo$reportFCMToken$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/repo/push/PushRepo$reportFCMToken$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/push/PushRepo$reportFCMToken$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/repo/push/PushRepo$reportFCMToken$1;->j:I

    .line 6
    .line 7
    const-string v2, "PushRepo"

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, 0x1

    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    if-eq v1, v4, :cond_1

    .line 14
    .line 15
    if-ne v1, v3, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/push/PushRepo$reportFCMToken$1;->i:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Ljava/lang/String;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/push/PushRepo$reportFCMToken$1;->h:Ljava/lang/Object;

    .line 22
    .line 23
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    check-cast p1, Lkotlin/Result;

    .line 27
    .line 28
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    goto/16 :goto_2

    .line 33
    .line 34
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 37
    .line 38
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    check-cast p1, Lkotlin/Result;

    .line 46
    .line 47
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    :cond_2
    move-object v1, p1

    .line 52
    goto :goto_0

    .line 53
    :cond_3
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    sget-object p1, Lcom/startshorts/androidplayer/manager/push/PushHelper;->a:Lcom/startshorts/androidplayer/manager/push/PushHelper;

    .line 57
    .line 58
    iput v4, p0, Lcom/startshorts/androidplayer/repo/push/PushRepo$reportFCMToken$1;->j:I

    .line 59
    .line 60
    invoke-virtual {p1, p0}, Lcom/startshorts/androidplayer/manager/push/PushHelper;->a(Lrs/c;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-ne p1, v0, :cond_2

    .line 65
    .line 66
    return-object v0

    .line 67
    :goto_0
    invoke-static {v1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_8

    .line 72
    .line 73
    move-object p1, v1

    .line 74
    check-cast p1, Ljava/lang/String;

    .line 75
    .line 76
    sget-object v4, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 77
    .line 78
    new-instance v5, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v6, "queryFCMToken success -> "

    .line 84
    .line 85
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    invoke-virtual {v4, v2, v5}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    if-eqz p1, :cond_8

    .line 99
    .line 100
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-nez v4, :cond_4

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_4
    sget-object v4, Lud/b;->a:Lud/b;

    .line 108
    .line 109
    invoke-virtual {v4}, Lud/b;->w0()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    if-eqz v4, :cond_6

    .line 114
    .line 115
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    if-nez v5, :cond_5

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_5
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    if-nez v4, :cond_8

    .line 127
    .line 128
    :cond_6
    :goto_1
    sget-object v4, Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;->a:Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;

    .line 129
    .line 130
    invoke-virtual {v4, p1}, Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;->n(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    sget-object v4, Lcom/startshorts/androidplayer/repo/push/PushRepo;->a:Lcom/startshorts/androidplayer/repo/push/PushRepo;

    .line 134
    .line 135
    invoke-static {v4}, Lcom/startshorts/androidplayer/repo/push/PushRepo;->e(Lcom/startshorts/androidplayer/repo/push/PushRepo;)Lcom/startshorts/androidplayer/repo/push/PushRemoteDS;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    iput-object v1, p0, Lcom/startshorts/androidplayer/repo/push/PushRepo$reportFCMToken$1;->h:Ljava/lang/Object;

    .line 140
    .line 141
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/push/PushRepo$reportFCMToken$1;->i:Ljava/lang/Object;

    .line 142
    .line 143
    iput v3, p0, Lcom/startshorts/androidplayer/repo/push/PushRepo$reportFCMToken$1;->j:I

    .line 144
    .line 145
    invoke-virtual {v4, p1, p0}, Lcom/startshorts/androidplayer/repo/push/PushRemoteDS;->i(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    if-ne v3, v0, :cond_7

    .line 150
    .line 151
    return-object v0

    .line 152
    :cond_7
    move-object v0, p1

    .line 153
    move-object p1, v3

    .line 154
    :goto_2
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    if-eqz p1, :cond_8

    .line 159
    .line 160
    sget-object p1, Lud/b;->a:Lud/b;

    .line 161
    .line 162
    invoke-virtual {p1, v0}, Lud/b;->H3(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    :cond_8
    :goto_3
    invoke-static {v1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    if-eqz p1, :cond_9

    .line 170
    .line 171
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 172
    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    const-string v3, "queryFCMToken failed -> "

    .line 179
    .line 180
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-virtual {v0, v2, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    :cond_9
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 198
    .line 199
    return-object p1
.end method
