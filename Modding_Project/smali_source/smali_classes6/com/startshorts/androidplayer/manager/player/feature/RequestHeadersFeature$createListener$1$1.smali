.class final Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature$createListener$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RequestHeadersFeature.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature;->f()Lcom/ss/ttvideoengine/DataLoaderListener2;
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
    c = "com.startshorts.androidplayer.manager.player.feature.RequestHeadersFeature$createListener$1$1"
    f = "RequestHeadersFeature.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature$createListener$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature$createListener$1$1;->i:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature$createListener$1$1;->j:Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature;

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
    new-instance p1, Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature$createListener$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature$createListener$1$1;->i:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature$createListener$1$1;->j:Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature$createListener$1$1;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature;Lrs/c;)V

    .line 8
    .line 9
    .line 10
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature$createListener$1$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature$createListener$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature$createListener$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature$createListener$1$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature$createListener$1$1;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_b

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature$createListener$1$1;->i:Ljava/lang/String;

    .line 12
    .line 13
    const-class v0, Lcom/startshorts/androidplayer/bean/player/PlayerHeaderInfo;

    .line 14
    .line 15
    invoke-static {p1, v0}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/startshorts/androidplayer/bean/player/PlayerHeaderInfo;

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    .line 25
    return-object p1

    .line 26
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/player/PlayerHeaderInfo;->getFileKey()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_a

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    goto/16 :goto_2

    .line 39
    .line 40
    :cond_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/player/PlayerHeaderInfo;->getRawKey()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_a

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_2

    .line 51
    .line 52
    goto/16 :goto_2

    .line 53
    .line 54
    :cond_2
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/player/PlayerHeaderInfo;->getUrl()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-eqz v0, :cond_9

    .line 59
    .line 60
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_3

    .line 65
    .line 66
    goto/16 :goto_1

    .line 67
    .line 68
    :cond_3
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/player/PlayerHeaderInfo;->getRequestPriority()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    const/4 v2, 0x1

    .line 73
    if-ne v1, v2, :cond_8

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/player/PlayerHeaderInfo;->getStatusCode()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    const/16 v2, 0x12c

    .line 80
    .line 81
    if-ge v1, v2, :cond_4

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/player/PlayerHeaderInfo;->getErrorCode()J

    .line 84
    .line 85
    .line 86
    move-result-wide v1

    .line 87
    const-wide/16 v3, 0x0

    .line 88
    .line 89
    cmp-long v1, v1, v3

    .line 90
    .line 91
    if-eqz v1, :cond_8

    .line 92
    .line 93
    :cond_4
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/player/PlayerHeaderInfo;->getErrorCode()J

    .line 94
    .line 95
    .line 96
    move-result-wide v1

    .line 97
    const-wide/32 v3, -0x54495845

    .line 98
    .line 99
    .line 100
    cmp-long v1, v1, v3

    .line 101
    .line 102
    if-nez v1, :cond_5

    .line 103
    .line 104
    goto/16 :goto_0

    .line 105
    .line 106
    :cond_5
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature$createListener$1$1;->j:Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature;

    .line 107
    .line 108
    invoke-static {v1}, Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature;->e(Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature;)Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_6

    .line 117
    .line 118
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 119
    .line 120
    return-object p1

    .line 121
    :cond_6
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature$createListener$1$1;->j:Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature;

    .line 122
    .line 123
    invoke-static {v1}, Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature;->e(Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature;)Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature$createListener$1$1;->j:Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature;

    .line 131
    .line 132
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature;->h()Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature$a;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    if-eqz v1, :cond_7

    .line 137
    .line 138
    invoke-interface {v1, p1}, Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature$a;->a(Lcom/startshorts/androidplayer/bean/player/PlayerHeaderInfo;)V

    .line 139
    .line 140
    .line 141
    :cond_7
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 142
    .line 143
    new-instance v4, Landroid/os/Bundle;

    .line 144
    .line 145
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/player/PlayerHeaderInfo;->getStartTime()J

    .line 149
    .line 150
    .line 151
    move-result-wide v5

    .line 152
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    const-string/jumbo v3, "start_time"

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/player/PlayerHeaderInfo;->getEndTime()J

    .line 163
    .line 164
    .line 165
    move-result-wide v5

    .line 166
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    const-string v3, "end_time"

    .line 171
    .line 172
    invoke-virtual {v4, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    const-string/jumbo v1, "video_url"

    .line 176
    .line 177
    .line 178
    invoke-virtual {v4, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    const-string v0, "req_headers"

    .line 182
    .line 183
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/player/PlayerHeaderInfo;->getReqHeaders()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    const-string v0, "resp_headers"

    .line 191
    .line 192
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/player/PlayerHeaderInfo;->getRespHeaders()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/player/PlayerHeaderInfo;->getStatusCode()I

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    const-string/jumbo v1, "status_code"

    .line 208
    .line 209
    .line 210
    invoke-virtual {v4, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/player/PlayerHeaderInfo;->getErrorCode()J

    .line 214
    .line 215
    .line 216
    move-result-wide v0

    .line 217
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    const-string v0, "err_code"

    .line 222
    .line 223
    invoke-virtual {v4, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 227
    .line 228
    const/4 v7, 0x4

    .line 229
    const/4 v8, 0x0

    .line 230
    const-string v3, "player_error_headers"

    .line 231
    .line 232
    const-wide/16 v5, 0x0

    .line 233
    .line 234
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 238
    .line 239
    return-object p1

    .line 240
    :cond_8
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 241
    .line 242
    return-object p1

    .line 243
    :cond_9
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 244
    .line 245
    return-object p1

    .line 246
    :cond_a
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 247
    .line 248
    return-object p1

    .line 249
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 250
    .line 251
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 252
    .line 253
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    throw p1
.end method
