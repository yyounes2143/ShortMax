.class final Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HomeCheckInDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->G0()V
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
    c = "com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog$requestCheckIn$1"
    f = "HomeCheckInDialog.kt"
    l = {
        0xd9,
        0xda,
        0xeb
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHomeCheckInDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HomeCheckInDialog.kt\ncom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,362:1\n295#2,2:363\n*S KotlinDebug\n*F\n+ 1 HomeCheckInDialog.kt\ncom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1\n*L\n216#1:363,2\n*E\n"
    }
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:Ljava/lang/Object;

.field j:I

.field final synthetic k:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1;->k:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

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
    new-instance p1, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1;->k:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1;->j:I

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    if-eq v1, v4, :cond_2

    .line 14
    .line 15
    if-eq v1, v3, :cond_1

    .line 16
    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    .line 19
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    goto/16 :goto_3

    .line 23
    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :cond_1
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1;->i:Ljava/lang/Object;

    .line 33
    .line 34
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1;->h:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v3, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_2

    .line 42
    .line 43
    :cond_2
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1;->i:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v1, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;

    .line 46
    .line 47
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1;->h:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v4, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

    .line 50
    .line 51
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    check-cast p1, Lkotlin/Result;

    .line 55
    .line 56
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    move-object v9, v1

    .line 61
    move-object v1, p1

    .line 62
    move-object p1, v9

    .line 63
    goto :goto_1

    .line 64
    :cond_3
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1;->k:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

    .line 68
    .line 69
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->c0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-eqz p1, :cond_9

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->getSignRecords()Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-eqz p1, :cond_9

    .line 80
    .line 81
    check-cast p1, Ljava/lang/Iterable;

    .line 82
    .line 83
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1;->k:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

    .line 84
    .line 85
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    if-eqz v6, :cond_5

    .line 94
    .line 95
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    move-object v7, v6

    .line 100
    check-cast v7, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;

    .line 101
    .line 102
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;->getDay()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->f0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    if-eqz v7, :cond_4

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_5
    move-object v6, v5

    .line 118
    :goto_0
    move-object v1, v6

    .line 119
    check-cast v1, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;

    .line 120
    .line 121
    if-eqz v1, :cond_9

    .line 122
    .line 123
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1;->k:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

    .line 124
    .line 125
    sget-object v6, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->a:Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;

    .line 126
    .line 127
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;->getDay()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1;->h:Ljava/lang/Object;

    .line 136
    .line 137
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1;->i:Ljava/lang/Object;

    .line 138
    .line 139
    iput v4, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1;->j:I

    .line 140
    .line 141
    const/4 v4, 0x0

    .line 142
    invoke-virtual {v6, v7, v8, v4, p0}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->e(Landroid/content/Context;Ljava/lang/String;ZLrs/c;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    if-ne v4, v0, :cond_6

    .line 147
    .line 148
    return-object v0

    .line 149
    :cond_6
    move-object v9, v4

    .line 150
    move-object v4, p1

    .line 151
    move-object p1, v1

    .line 152
    move-object v1, v9

    .line 153
    :goto_1
    invoke-static {v1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    if-eqz v6, :cond_8

    .line 158
    .line 159
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    new-instance v7, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1$2$1$1;

    .line 164
    .line 165
    invoke-direct {v7, v4, p1, v5}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1$2$1$1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;Lrs/c;)V

    .line 166
    .line 167
    .line 168
    iput-object v4, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1;->h:Ljava/lang/Object;

    .line 169
    .line 170
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1;->i:Ljava/lang/Object;

    .line 171
    .line 172
    iput v3, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1;->j:I

    .line 173
    .line 174
    invoke-static {v6, v7, p0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    if-ne p1, v0, :cond_7

    .line 179
    .line 180
    return-object v0

    .line 181
    :cond_7
    move-object v3, v4

    .line 182
    :goto_2
    move-object v4, v3

    .line 183
    :cond_8
    invoke-static {v1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    if-eqz p1, :cond_9

    .line 188
    .line 189
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    new-instance v6, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1$2$2$1;

    .line 194
    .line 195
    invoke-direct {v6, v4, p1, v5}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1$2$2$1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;Ljava/lang/Throwable;Lrs/c;)V

    .line 196
    .line 197
    .line 198
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1;->h:Ljava/lang/Object;

    .line 199
    .line 200
    iput-object v5, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1;->i:Ljava/lang/Object;

    .line 201
    .line 202
    iput v2, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1;->j:I

    .line 203
    .line 204
    invoke-static {v3, v6, p0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    if-ne p1, v0, :cond_9

    .line 209
    .line 210
    return-object v0

    .line 211
    :cond_9
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 212
    .line 213
    return-object p1
.end method
