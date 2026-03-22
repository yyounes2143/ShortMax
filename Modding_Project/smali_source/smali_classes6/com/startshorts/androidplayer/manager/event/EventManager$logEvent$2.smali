.class final Lcom/startshorts/androidplayer/manager/event/EventManager$logEvent$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EventManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/event/EventManager;->r0(Ljava/lang/String;Landroid/os/Bundle;[IJLkotlin/jvm/functions/Function0;)V
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
    c = "com.startshorts.androidplayer.manager.event.EventManager$logEvent$2"
    f = "EventManager.kt"
    l = {
        0xf0
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nEventManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventManager.kt\ncom/startshorts/androidplayer/manager/event/EventManager$logEvent$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1804:1\n1863#2,2:1805\n*S KotlinDebug\n*F\n+ 1 EventManager.kt\ncom/startshorts/androidplayer/manager/event/EventManager$logEvent$2\n*L\n238#1:1805,2\n*E\n"
    }
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:Ljava/lang/Object;

.field j:Ljava/lang/Object;

.field k:Ljava/lang/Object;

.field l:J

.field m:I

.field final synthetic n:Landroid/os/Bundle;

.field final synthetic o:Ljava/lang/String;

.field final synthetic p:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/bean/configure/RemoteConfigValue;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic q:[I

.field final synthetic r:J


# direct methods
.method constructor <init>(Landroid/os/Bundle;Ljava/lang/String;Lkotlin/jvm/functions/Function0;[IJLrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/bean/configure/RemoteConfigValue;",
            ">;>;[IJ",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/event/EventManager$logEvent$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvent$2;->n:Landroid/os/Bundle;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvent$2;->o:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvent$2;->p:Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvent$2;->q:[I

    .line 8
    .line 9
    iput-wide p5, p0, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvent$2;->r:J

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
    new-instance p1, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvent$2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvent$2;->n:Landroid/os/Bundle;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvent$2;->o:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvent$2;->p:Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvent$2;->q:[I

    .line 10
    .line 11
    iget-wide v5, p0, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvent$2;->r:J

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v7, p2

    .line 15
    invoke-direct/range {v0 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvent$2;-><init>(Landroid/os/Bundle;Ljava/lang/String;Lkotlin/jvm/functions/Function0;[IJLrs/c;)V

    .line 16
    .line 17
    .line 18
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvent$2;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvent$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvent$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvent$2;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvent$2;->m:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    iget-wide v3, p0, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvent$2;->l:J

    .line 13
    .line 14
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvent$2;->k:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Ljava/util/Iterator;

    .line 17
    .line 18
    iget-object v5, p0, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvent$2;->j:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v5, Ljava/lang/String;

    .line 21
    .line 22
    iget-object v6, p0, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvent$2;->i:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v6, [I

    .line 25
    .line 26
    iget-object v7, p0, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvent$2;->h:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 29
    .line 30
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto/16 :goto_5

    .line 34
    .line 35
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 36
    .line 37
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 38
    .line 39
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 47
    .line 48
    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvent$2;->n:Landroid/os/Bundle;

    .line 52
    .line 53
    iput-object v1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 54
    .line 55
    invoke-static {}, Lcom/startshorts/androidplayer/manager/event/EventManager;->g()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvent$2;->o:Ljava/lang/String;

    .line 60
    .line 61
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_3

    .line 66
    .line 67
    iget-object v1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 68
    .line 69
    if-nez v1, :cond_2

    .line 70
    .line 71
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 72
    .line 73
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvent$2;->p:Lkotlin/jvm/functions/Function0;

    .line 74
    .line 75
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/manager/event/EventManager;->t(Lkotlin/jvm/functions/Function0;)Landroid/os/Bundle;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iput-object v1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 83
    .line 84
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvent$2;->p:Lkotlin/jvm/functions/Function0;

    .line 85
    .line 86
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/manager/event/EventManager;->t(Lkotlin/jvm/functions/Function0;)Landroid/os/Bundle;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    if-eqz v1, :cond_3

    .line 91
    .line 92
    iget-object v3, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v3, Landroid/os/Bundle;

    .line 95
    .line 96
    if-eqz v3, :cond_3

    .line 97
    .line 98
    invoke-static {v3, v1}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 99
    .line 100
    .line 101
    :cond_3
    :goto_0
    invoke-static {}, Lcom/startshorts/androidplayer/manager/event/EventManager;->i()Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvent$2;->o:Ljava/lang/String;

    .line 106
    .line 107
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-eqz v1, :cond_5

    .line 112
    .line 113
    iget-object v1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 114
    .line 115
    if-nez v1, :cond_4

    .line 116
    .line 117
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 118
    .line 119
    invoke-static {v1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->f(Lcom/startshorts/androidplayer/manager/event/EventManager;)Landroid/os/Bundle;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    iput-object v1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_4
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 127
    .line 128
    invoke-static {v1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->f(Lcom/startshorts/androidplayer/manager/event/EventManager;)Landroid/os/Bundle;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    iget-object v3, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v3, Landroid/os/Bundle;

    .line 135
    .line 136
    if-eqz v3, :cond_5

    .line 137
    .line 138
    invoke-static {v3, v1}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 139
    .line 140
    .line 141
    :cond_5
    :goto_1
    invoke-static {}, Lcom/startshorts/androidplayer/manager/event/EventManager;->n()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-nez v1, :cond_7

    .line 150
    .line 151
    invoke-static {}, Lcom/startshorts/androidplayer/manager/event/EventManager;->l()Ljava/util/List;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvent$2;->o:Ljava/lang/String;

    .line 156
    .line 157
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-eqz v1, :cond_7

    .line 162
    .line 163
    iget-object v1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 164
    .line 165
    if-nez v1, :cond_6

    .line 166
    .line 167
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 168
    .line 169
    invoke-static {v1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->m(Lcom/startshorts/androidplayer/manager/event/EventManager;)Landroid/os/Bundle;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    iput-object v1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_6
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 177
    .line 178
    invoke-static {v1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->m(Lcom/startshorts/androidplayer/manager/event/EventManager;)Landroid/os/Bundle;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    iget-object v3, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast v3, Landroid/os/Bundle;

    .line 185
    .line 186
    if-eqz v3, :cond_7

    .line 187
    .line 188
    invoke-static {v3, v1}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 189
    .line 190
    .line 191
    :cond_7
    :goto_2
    invoke-static {}, Lcom/startshorts/androidplayer/manager/event/EventManager;->e()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-nez v1, :cond_9

    .line 200
    .line 201
    invoke-static {}, Lcom/startshorts/androidplayer/manager/event/EventManager;->h()Ljava/util/List;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvent$2;->o:Ljava/lang/String;

    .line 206
    .line 207
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    if-eqz v1, :cond_9

    .line 212
    .line 213
    iget-object v1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 214
    .line 215
    if-nez v1, :cond_8

    .line 216
    .line 217
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 218
    .line 219
    invoke-static {v1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->d(Lcom/startshorts/androidplayer/manager/event/EventManager;)Landroid/os/Bundle;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    iput-object v1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 224
    .line 225
    goto :goto_3

    .line 226
    :cond_8
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 227
    .line 228
    invoke-static {v1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->d(Lcom/startshorts/androidplayer/manager/event/EventManager;)Landroid/os/Bundle;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    iget-object v3, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 233
    .line 234
    check-cast v3, Landroid/os/Bundle;

    .line 235
    .line 236
    invoke-static {v3, v1}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 237
    .line 238
    .line 239
    :cond_9
    :goto_3
    invoke-static {}, Lcom/startshorts/androidplayer/manager/event/EventManager;->j()Ljava/util/List;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    check-cast v1, Ljava/lang/Iterable;

    .line 244
    .line 245
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvent$2;->q:[I

    .line 246
    .line 247
    iget-object v4, p0, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvent$2;->o:Ljava/lang/String;

    .line 248
    .line 249
    iget-wide v5, p0, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvent$2;->r:J

    .line 250
    .line 251
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    move-object v12, p1

    .line 256
    move-object v11, v3

    .line 257
    move-object p1, v4

    .line 258
    move-wide v9, v5

    .line 259
    :cond_a
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 260
    .line 261
    .line 262
    move-result v3

    .line 263
    if-eqz v3, :cond_c

    .line 264
    .line 265
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    check-cast v3, Laf/h;

    .line 270
    .line 271
    invoke-interface {v3}, Laf/h;->c()I

    .line 272
    .line 273
    .line 274
    move-result v4

    .line 275
    invoke-static {v11, v4}, Lkotlin/collections/n;->d0([II)Z

    .line 276
    .line 277
    .line 278
    move-result v4

    .line 279
    if-eqz v4, :cond_a

    .line 280
    .line 281
    iget-object v4, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 282
    .line 283
    move-object v5, v4

    .line 284
    check-cast v5, Landroid/os/Bundle;

    .line 285
    .line 286
    iput-object v12, p0, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvent$2;->h:Ljava/lang/Object;

    .line 287
    .line 288
    iput-object v11, p0, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvent$2;->i:Ljava/lang/Object;

    .line 289
    .line 290
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvent$2;->j:Ljava/lang/Object;

    .line 291
    .line 292
    iput-object v1, p0, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvent$2;->k:Ljava/lang/Object;

    .line 293
    .line 294
    iput-wide v9, p0, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvent$2;->l:J

    .line 295
    .line 296
    iput v2, p0, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvent$2;->m:I

    .line 297
    .line 298
    move-object v4, p1

    .line 299
    move-wide v6, v9

    .line 300
    move-object v8, p0

    .line 301
    invoke-interface/range {v3 .. v8}, Laf/h;->d(Ljava/lang/String;Landroid/os/Bundle;JLrs/c;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    if-ne v3, v0, :cond_b

    .line 306
    .line 307
    return-object v0

    .line 308
    :cond_b
    move-object v5, p1

    .line 309
    move-wide v3, v9

    .line 310
    move-object v6, v11

    .line 311
    move-object v7, v12

    .line 312
    :goto_5
    move-wide v9, v3

    .line 313
    move-object p1, v5

    .line 314
    move-object v11, v6

    .line 315
    move-object v12, v7

    .line 316
    goto :goto_4

    .line 317
    :cond_c
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 318
    .line 319
    return-object p1
.end method
