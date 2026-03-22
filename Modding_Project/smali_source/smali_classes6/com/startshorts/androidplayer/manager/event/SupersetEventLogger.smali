.class public final Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;
.super Ljava/lang/Object;
.source "SupersetEventLogger.kt"

# interfaces
.implements Laf/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$a;,
        Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSupersetEventLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SupersetEventLogger.kt\ncom/startshorts/androidplayer/manager/event/SupersetEventLogger\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,407:1\n1628#2,3:408\n1557#2:411\n1628#2,3:412\n1557#2:419\n1628#2,3:420\n1557#2:423\n1628#2,3:424\n37#3:415\n36#3,3:416\n*S KotlinDebug\n*F\n+ 1 SupersetEventLogger.kt\ncom/startshorts/androidplayer/manager/event/SupersetEventLogger\n*L\n212#1:408,3\n311#1:411\n311#1:412,3\n322#1:419\n322#1:420,3\n334#1:423\n334#1:424,3\n320#1:415\n320#1:416,3\n*E\n"
    }
.end annotation


# static fields
.field public static final i:Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final j:Lms/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lms/i<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private b:J

.field private final c:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Ljt/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljt/d<",
            "Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Lgt/g0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile f:I

.field private volatile g:J

.field private volatile h:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->i:Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$a;

    .line 8
    .line 9
    new-instance v0, Laf/j;

    .line 10
    .line 11
    invoke-direct {v0}, Laf/j;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->j:Lms/i;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    .line 12
    const/4 v0, 0x6

    .line 13
    const v1, 0x7fffffff

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-static {v1, v2, v2, v0, v2}, Ljt/g;->b(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljt/d;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->d:Ljt/d;

    .line 22
    .line 23
    invoke-static {}, Lgt/q0;->b()Lgt/c0;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-static {v2, v1, v2}, Lgt/r1;->b(Lkotlinx/coroutines/r;ILjava/lang/Object;)Lgt/s;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Lkotlin/coroutines/a;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->e:Lgt/g0;

    .line 41
    .line 42
    const/16 v0, 0x32

    .line 43
    .line 44
    iput v0, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->f:I

    .line 45
    .line 46
    const-wide/16 v0, 0x2710

    .line 47
    .line 48
    iput-wide v0, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->g:J

    .line 49
    .line 50
    const-wide/16 v0, 0x1388

    .line 51
    .line 52
    iput-wide v0, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->h:J

    .line 53
    .line 54
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->v()V

    .line 55
    .line 56
    .line 57
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->A()V

    .line 58
    .line 59
    .line 60
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->z()V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method private final A()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->e:Lgt/g0;

    .line 2
    .line 3
    new-instance v3, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startUploadConsumer$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, p0, v1}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startUploadConsumer$1;-><init>(Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;Lrs/c;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x3

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static/range {v0 .. v5}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static synthetic a()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->g()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final g()Ljava/util/Map;
    .locals 25

    .line 1
    sget-object v0, Laf/d;->a:Laf/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Laf/d;->b()[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string/jumbo v2, "watch_ad_click"

    .line 8
    .line 9
    .line 10
    invoke-static {v2, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    const-string v1, "ad_real_impressions"

    .line 15
    .line 16
    invoke-virtual {v0}, Laf/d;->b()[Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v1, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    const-string v1, "ad_impressions"

    .line 25
    .line 26
    invoke-virtual {v0}, Laf/d;->b()[Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v1, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    const-string v1, "ad_impressions_duration"

    .line 35
    .line 36
    invoke-virtual {v0}, Laf/d;->b()[Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v1, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    const-string v1, "push_send"

    .line 45
    .line 46
    invoke-virtual {v0}, Laf/d;->f()[Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-static {v1, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    const-string v1, "push_open"

    .line 55
    .line 56
    invoke-virtual {v0}, Laf/d;->f()[Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-static {v1, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    const-string v1, "app_active_background"

    .line 65
    .line 66
    invoke-virtual {v0}, Laf/d;->a()[Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-static {v1, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    const-string v1, "active_user"

    .line 75
    .line 76
    invoke-virtual {v0}, Laf/d;->a()[Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-static {v1, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 81
    .line 82
    .line 83
    move-result-object v10

    .line 84
    const-string v1, "app_launch"

    .line 85
    .line 86
    invoke-virtual {v0}, Laf/d;->a()[Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-static {v1, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 91
    .line 92
    .line 93
    move-result-object v11

    .line 94
    const-string v1, "app_start"

    .line 95
    .line 96
    invoke-virtual {v0}, Laf/d;->a()[Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-static {v1, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 101
    .line 102
    .line 103
    move-result-object v12

    .line 104
    const-string v1, "order_create_fail"

    .line 105
    .line 106
    invoke-virtual {v0}, Laf/d;->e()[Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-static {v1, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 111
    .line 112
    .line 113
    move-result-object v13

    .line 114
    const-string v1, "order_create_cancel"

    .line 115
    .line 116
    invoke-virtual {v0}, Laf/d;->e()[Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-static {v1, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 121
    .line 122
    .line 123
    move-result-object v14

    .line 124
    const-string v1, "exchange_coins_success"

    .line 125
    .line 126
    invoke-virtual {v0}, Laf/d;->e()[Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-static {v1, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 131
    .line 132
    .line 133
    move-result-object v15

    .line 134
    const-string v1, "exchange_coins_failed"

    .line 135
    .line 136
    invoke-virtual {v0}, Laf/d;->e()[Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-static {v1, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 141
    .line 142
    .line 143
    move-result-object v16

    .line 144
    const-string v1, "exchange_premium_success"

    .line 145
    .line 146
    invoke-virtual {v0}, Laf/d;->e()[Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-static {v1, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 151
    .line 152
    .line 153
    move-result-object v17

    .line 154
    const-string v1, "exchange_premium_failed"

    .line 155
    .line 156
    invoke-virtual {v0}, Laf/d;->e()[Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-static {v1, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 161
    .line 162
    .line 163
    move-result-object v18

    .line 164
    const-string v1, "restore_result"

    .line 165
    .line 166
    invoke-virtual {v0}, Laf/d;->e()[Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-static {v1, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 171
    .line 172
    .line 173
    move-result-object v19

    .line 174
    const-string v1, "recharge_show"

    .line 175
    .line 176
    invoke-virtual {v0}, Laf/d;->e()[Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-static {v1, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 181
    .line 182
    .line 183
    move-result-object v20

    .line 184
    const-string v1, "episode_unlock_ad_success"

    .line 185
    .line 186
    invoke-virtual {v0}, Laf/d;->g()[Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    invoke-static {v1, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 191
    .line 192
    .line 193
    move-result-object v21

    .line 194
    const-string v1, "episode_unlock_success"

    .line 195
    .line 196
    invoke-virtual {v0}, Laf/d;->g()[Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    invoke-static {v1, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 201
    .line 202
    .line 203
    move-result-object v22

    .line 204
    const-string v1, "enter_reel_play"

    .line 205
    .line 206
    invoke-virtual {v0}, Laf/d;->d()[Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    invoke-static {v1, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 211
    .line 212
    .line 213
    move-result-object v23

    .line 214
    const-string v1, "reel_cut"

    .line 215
    .line 216
    invoke-virtual {v0}, Laf/d;->d()[Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 221
    .line 222
    .line 223
    move-result-object v24

    .line 224
    filled-new-array/range {v3 .. v24}, [Lkotlin/Pair;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-static {v0}, Lkotlin/collections/p0;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    return-object v0
.end method

.method public static final synthetic h(Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->g:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic i()Lms/i;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->j:Lms/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic j(Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;)Ljt/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->d:Ljt/d;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic k(Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->v()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic l(Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;ZLjava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->w(ZLjava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic m(Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;Ljava/util/List;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->x(Ljava/util/List;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic n(Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$b$c;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->y(Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$b$c;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final o(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sparse-switch v0, :sswitch_data_0

    .line 9
    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :sswitch_0
    const-string v0, "order_create_cancel"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    goto/16 :goto_1

    .line 22
    .line 23
    :sswitch_1
    const-string v0, "recharge_show"

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :sswitch_2
    const-string v0, "recharge_show_end"

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :sswitch_3
    const-string v0, "order_show"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :sswitch_4
    const-string v0, "order_create"

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-nez p1, :cond_1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :sswitch_5
    const-string v0, "pay_success"

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :sswitch_6
    const-string/jumbo v0, "unlocked_page_show"

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-nez p1, :cond_1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :sswitch_7
    const-string/jumbo v0, "unlocked_ep_button_click"

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-nez p1, :cond_1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :sswitch_8
    const-string v0, "order_create_fail"

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-nez p1, :cond_1

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_1
    :goto_0
    sget-object p1, Lfk/q;->a:Lfk/q;

    .line 98
    .line 99
    invoke-virtual {p1}, Lfk/q;->b()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {p1, v0}, Lfk/q;->c(Ljava/lang/String;)Landroid/os/Bundle;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    sget-object v0, Lae/a;->a:Lae/a;

    .line 108
    .line 109
    invoke-virtual {v0}, Lae/a;->a()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const-string v1, "payment_method_name"

    .line 114
    .line 115
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-nez v0, :cond_2

    .line 123
    .line 124
    invoke-static {p2, p1}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 125
    .line 126
    .line 127
    :cond_2
    :goto_1
    return-void

    .line 128
    nop

    .line 129
    :sswitch_data_0
    .sparse-switch
        -0x695a72f0 -> :sswitch_8
        -0x590a780d -> :sswitch_7
        -0x48c567af -> :sswitch_6
        -0x1a809094 -> :sswitch_5
        0x22a9e30d -> :sswitch_4
        0x2d156d4e -> :sswitch_3
        0x731c0b31 -> :sswitch_2
        0x7c562595 -> :sswitch_1
        0x7e5a2fec -> :sswitch_0
    .end sparse-switch
.end method

.method private final p(Ljava/lang/String;)Z
    .locals 7

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->i:Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$a;->a(Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$a;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, [Ljava/lang/String;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const-string v1, "reel_play"

    .line 16
    .line 17
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    sget-object p1, Lud/b;->a:Lud/b;

    .line 24
    .line 25
    invoke-virtual {p1}, Lud/b;->c0()J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    sget-object p1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    const-wide/16 v5, 0x0

    .line 36
    .line 37
    cmp-long p1, v1, v5

    .line 38
    .line 39
    if-lez p1, :cond_0

    .line 40
    .line 41
    sget-object p1, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 42
    .line 43
    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/startshorts/androidplayer/utils/TimeUtil;->o(JJ)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    sget-object p1, Laf/d;->a:Laf/d;

    .line 50
    .line 51
    invoke-virtual {p1}, Laf/d;->c()[Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    :cond_0
    if-eqz v0, :cond_1

    .line 56
    .line 57
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->d:Ljt/d;

    .line 58
    .line 59
    new-instance v1, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$b$b;

    .line 60
    .line 61
    invoke-static {v0}, Lkotlin/collections/n;->x1([Ljava/lang/Object;)Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-direct {v1, v0}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$b$b;-><init>(Ljava/util/List;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {p1, v1}, Lkotlinx/coroutines/channels/h;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    const/4 p1, 0x1

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    const/4 p1, 0x0

    .line 74
    :goto_0
    return p1
.end method

.method private final q(Lrs/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget p1, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->f:I

    .line 2
    .line 3
    sget-object v0, Lcom/startshorts/androidplayer/db/repository/EventRepository;->b:Lcom/startshorts/androidplayer/db/repository/EventRepository;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/db/repository/EventRepository;->E()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lt v0, p1, :cond_0

    .line 10
    .line 11
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v3, "Strategy: Threshold reached ("

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, " >= "

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const/16 p1, 0x29

    .line 35
    .line 36
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string v0, "SupersetEventLogger"

    .line 44
    .line 45
    invoke-virtual {v1, v0, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->d:Ljt/d;

    .line 49
    .line 50
    new-instance v0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$b$a;

    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    const-string v2, "Threshold"

    .line 54
    .line 55
    invoke-direct {v0, v1, v2}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$b$a;-><init>(ZLjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-interface {p1, v0}, Lkotlinx/coroutines/channels/h;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 62
    .line 63
    return-object p1
.end method

.method private final r(Lcom/startshorts/androidplayer/bean/event/EventInfo;)Lcom/startshorts/androidplayer/db/model/DbEvent;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/event/EventInfo;->getEventName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/event/EventInfo;->getExtras()Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/event/EventInfo;->getCreateTime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->s(Ljava/lang/String;Landroid/os/Bundle;J)Lcom/startshorts/androidplayer/db/model/DbEvent;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method private final s(Ljava/lang/String;Landroid/os/Bundle;J)Lcom/startshorts/androidplayer/db/model/DbEvent;
    .locals 7

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/db/model/DbEvent;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/db/model/DbEvent;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->t0()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/db/model/DbEvent;->setUid(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object v2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->V()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/db/model/DbEvent;->setAppVersion(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object v2, Lud/a;->a:Lud/a;

    .line 25
    .line 26
    invoke-virtual {v2}, Lud/a;->m()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v2}, Ljk/v;->h(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const/16 v4, 0x5f

    .line 35
    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->u()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 54
    .line 55
    .line 56
    move-result-wide v5

    .line 57
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/db/model/DbEvent;->setEventId(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 92
    .line 93
    .line 94
    move-result-wide v5

    .line 95
    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/db/model/DbEvent;->setEventId(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :goto_0
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/db/model/DbEvent;->setEventName(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    sget-object v2, Laf/i;->a:Laf/i;

    .line 121
    .line 122
    invoke-virtual {v2}, Laf/i;->e()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->z0()Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_1

    .line 131
    .line 132
    const-string v1, "1"

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_1
    const-string v1, "0"

    .line 136
    .line 137
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->o(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 138
    .line 139
    .line 140
    if-nez p2, :cond_2

    .line 141
    .line 142
    new-instance p2, Landroid/os/Bundle;

    .line 143
    .line 144
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 145
    .line 146
    .line 147
    :cond_2
    const-string p1, "is_vip"

    .line 148
    .line 149
    invoke-virtual {p2, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-direct {p0, p2, v2}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->t(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/db/model/DbEvent;->setEventExtra(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    const-wide/16 p1, -0x1

    .line 160
    .line 161
    cmp-long v1, p3, p1

    .line 162
    .line 163
    if-nez v1, :cond_3

    .line 164
    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 166
    .line 167
    .line 168
    move-result-wide p3

    .line 169
    :cond_3
    invoke-virtual {v0, p3, p4}, Lcom/startshorts/androidplayer/db/model/DbEvent;->setLocalTime(J)V

    .line 170
    .line 171
    .line 172
    sget-object p3, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 173
    .line 174
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/manager/event/EventManager;->E()Lcom/startshorts/androidplayer/bean/event/EventAdjustTime;

    .line 175
    .line 176
    .line 177
    move-result-object p4

    .line 178
    invoke-virtual {p4}, Lcom/startshorts/androidplayer/bean/event/EventAdjustTime;->getDiffTimeLong()J

    .line 179
    .line 180
    .line 181
    move-result-wide v1

    .line 182
    cmp-long p1, v1, p1

    .line 183
    .line 184
    if-eqz p1, :cond_4

    .line 185
    .line 186
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/db/model/DbEvent;->getLocalTime()J

    .line 187
    .line 188
    .line 189
    move-result-wide p1

    .line 190
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/manager/event/EventManager;->E()Lcom/startshorts/androidplayer/bean/event/EventAdjustTime;

    .line 191
    .line 192
    .line 193
    move-result-object p3

    .line 194
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/event/EventAdjustTime;->getDiffTimeLong()J

    .line 195
    .line 196
    .line 197
    move-result-wide p3

    .line 198
    add-long/2addr p1, p3

    .line 199
    invoke-virtual {v0, p1, p2}, Lcom/startshorts/androidplayer/db/model/DbEvent;->setCheckTime(J)V

    .line 200
    .line 201
    .line 202
    :cond_4
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/db/model/DbEvent;->getCheckTime()J

    .line 203
    .line 204
    .line 205
    move-result-wide p1

    .line 206
    const-wide p3, 0xe8d4a51000L

    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    cmp-long p1, p1, p3

    .line 212
    .line 213
    if-gez p1, :cond_5

    .line 214
    .line 215
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/db/model/DbEvent;->getLocalTime()J

    .line 216
    .line 217
    .line 218
    move-result-wide p1

    .line 219
    invoke-virtual {v0, p1, p2}, Lcom/startshorts/androidplayer/db/model/DbEvent;->setCheckTime(J)V

    .line 220
    .line 221
    .line 222
    :cond_5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/db/model/DbEvent;->getCheckTime()J

    .line 223
    .line 224
    .line 225
    move-result-wide p1

    .line 226
    const-wide/16 p3, 0x0

    .line 227
    .line 228
    cmp-long p1, p1, p3

    .line 229
    .line 230
    if-nez p1, :cond_6

    .line 231
    .line 232
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/db/model/DbEvent;->getLocalTime()J

    .line 233
    .line 234
    .line 235
    move-result-wide p1

    .line 236
    goto :goto_2

    .line 237
    :cond_6
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/db/model/DbEvent;->getCheckTime()J

    .line 238
    .line 239
    .line 240
    move-result-wide p1

    .line 241
    :goto_2
    invoke-virtual {v0, p1, p2}, Lcom/startshorts/androidplayer/db/model/DbEvent;->setEventTime(J)V

    .line 242
    .line 243
    .line 244
    const/4 p1, 0x0

    .line 245
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/db/model/DbEvent;->setStatus(I)V

    .line 246
    .line 247
    .line 248
    return-object v0
.end method

.method private final t(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v4, 0x1

    .line 20
    const-string v5, "session_id"

    .line 21
    .line 22
    const-string v6, "&"

    .line 23
    .line 24
    const-string v7, "="

    .line 25
    .line 26
    if-eqz v3, :cond_2

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Ljava/lang/String;

    .line 33
    .line 34
    const-string v8, "customShortsName"

    .line 35
    .line 36
    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v8

    .line 40
    if-nez v8, :cond_0

    .line 41
    .line 42
    const-string v8, "customSearchValue"

    .line 43
    .line 44
    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    if-eqz v8, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_0

    .line 72
    .line 73
    move v2, v4

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    if-eqz p2, :cond_4

    .line 76
    .line 77
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-nez p1, :cond_3

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    if-nez v2, :cond_4

    .line 85
    .line 86
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    :cond_4
    :goto_1
    const-string p1, "foreground"

    .line 99
    .line 100
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    sget-object p1, Lud/a;->a:Lud/a;

    .line 107
    .line 108
    invoke-virtual {p1}, Lud/a;->t()Z

    .line 109
    .line 110
    .line 111
    move-result p2

    .line 112
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string p2, "app_launched"

    .line 119
    .line 120
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Lud/a;->e()Z

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    xor-int/2addr p1, v4

    .line 131
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    const-string/jumbo p2, "toString(...)"

    .line 139
    .line 140
    .line 141
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    return-object p1
.end method

.method private final u()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->a:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->a:Ljava/lang/String;

    .line 20
    .line 21
    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method private final v()V
    .locals 13

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->g:J

    .line 2
    .line 3
    const-wide/16 v2, 0x2710

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_6

    .line 8
    .line 9
    iget v0, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->f:I

    .line 10
    .line 11
    const/16 v1, 0x32

    .line 12
    .line 13
    if-ne v0, v1, :cond_6

    .line 14
    .line 15
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 16
    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v5, "pre cachedTimerInterval: "

    .line 23
    .line 24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-wide v5, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->g:J

    .line 28
    .line 29
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v5, ",cachedBatchThreshold: "

    .line 33
    .line 34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget v6, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->f:I

    .line 38
    .line 39
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    const-string v6, "SupersetEventConfig"

    .line 47
    .line 48
    invoke-virtual {v0, v6, v4}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    sget-object v4, Lng/e;->a:Lng/e;

    .line 52
    .line 53
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    const-string v8, "eventReportTimerTime"

    .line 58
    .line 59
    invoke-virtual {v4, v8, v7}, Lng/e;->i(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    check-cast v7, Ljava/lang/Number;

    .line 64
    .line 65
    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    .line 66
    .line 67
    .line 68
    move-result-wide v7

    .line 69
    new-instance v9, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v10, "configTimer: "

    .line 75
    .line 76
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v9

    .line 86
    invoke-virtual {v0, v6, v9}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const-wide/16 v9, 0x3e8

    .line 90
    .line 91
    cmp-long v9, v7, v9

    .line 92
    .line 93
    if-lez v9, :cond_0

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_0
    move-wide v7, v2

    .line 97
    :goto_0
    iput-wide v7, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->g:J

    .line 98
    .line 99
    iget-wide v7, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->g:J

    .line 100
    .line 101
    const/4 v9, 0x2

    .line 102
    int-to-long v9, v9

    .line 103
    div-long/2addr v7, v9

    .line 104
    const-wide/16 v11, 0xbb8

    .line 105
    .line 106
    cmp-long v7, v7, v11

    .line 107
    .line 108
    if-gez v7, :cond_1

    .line 109
    .line 110
    move-wide v2, v11

    .line 111
    goto :goto_1

    .line 112
    :cond_1
    iget-wide v7, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->g:J

    .line 113
    .line 114
    div-long/2addr v7, v9

    .line 115
    cmp-long v7, v7, v2

    .line 116
    .line 117
    if-lez v7, :cond_2

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_2
    iget-wide v2, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->g:J

    .line 121
    .line 122
    div-long/2addr v2, v9

    .line 123
    :goto_1
    iput-wide v2, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->h:J

    .line 124
    .line 125
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    const-string v3, "eventReportMaxCount"

    .line 130
    .line 131
    invoke-virtual {v4, v3, v2}, Lng/e;->i(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    check-cast v2, Ljava/lang/Number;

    .line 136
    .line 137
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    const-string v4, "configThreshold: "

    .line 147
    .line 148
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-virtual {v0, v6, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    if-lez v2, :cond_3

    .line 162
    .line 163
    move v1, v2

    .line 164
    :cond_3
    const/16 v2, 0xa

    .line 165
    .line 166
    const/16 v3, 0xc8

    .line 167
    .line 168
    invoke-static {v1, v2, v3}, Lkotlin/ranges/e;->n(III)I

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    iput v4, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->f:I

    .line 173
    .line 174
    const-string v4, "SupersetEventLogger"

    .line 175
    .line 176
    if-le v1, v3, :cond_4

    .line 177
    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .line 182
    .line 183
    const-string v3, "eventReportMaxCount too large ("

    .line 184
    .line 185
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v1, "), capped to 200"

    .line 192
    .line 193
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-virtual {v0, v4, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_4
    if-ge v1, v2, :cond_5

    .line 205
    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .line 210
    .line 211
    const-string v3, "eventReportMaxCount too small ("

    .line 212
    .line 213
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    const-string v1, "), raised to 10"

    .line 220
    .line 221
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-virtual {v0, v4, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    :cond_5
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .line 235
    .line 236
    const-string v2, "after cachedTimerInterval: "

    .line 237
    .line 238
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    iget-wide v2, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->g:J

    .line 242
    .line 243
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    iget v2, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->f:I

    .line 250
    .line 251
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    const-string v2, ", reportInterval: "

    .line 255
    .line 256
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    iget-wide v2, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->h:J

    .line 260
    .line 261
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    invoke-virtual {v0, v6, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    :cond_6
    return-void
.end method

.method private final w(ZLjava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->h()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_6

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto/16 :goto_1

    .line 16
    .line 17
    :cond_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->L()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    iget-wide v2, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->b:J

    .line 22
    .line 23
    cmp-long v2, v0, v2

    .line 24
    .line 25
    if-gez v2, :cond_1

    .line 26
    .line 27
    const-wide/16 v2, -0x1

    .line 28
    .line 29
    iput-wide v2, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->b:J

    .line 30
    .line 31
    :cond_1
    if-nez p1, :cond_2

    .line 32
    .line 33
    iget-wide v2, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->h:J

    .line 34
    .line 35
    iget-wide v4, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->b:J

    .line 36
    .line 37
    sub-long v4, v0, v4

    .line 38
    .line 39
    cmp-long p1, v4, v2

    .line 40
    .line 41
    if-gez p1, :cond_2

    .line 42
    .line 43
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 44
    .line 45
    return-object p1

    .line 46
    :cond_2
    iput-wide v0, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->b:J

    .line 47
    .line 48
    iget p1, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->f:I

    .line 49
    .line 50
    sget-object v0, Lcom/startshorts/androidplayer/db/repository/EventRepository;->b:Lcom/startshorts/androidplayer/db/repository/EventRepository;

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/db/repository/EventRepository;->I(I)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    move-object v0, p1

    .line 57
    check-cast v0, Ljava/util/Collection;

    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_5

    .line 64
    .line 65
    move-object v0, p1

    .line 66
    check-cast v0, Ljava/lang/Iterable;

    .line 67
    .line 68
    new-instance v4, Ljava/util/ArrayList;

    .line 69
    .line 70
    const/16 v1, 0xa

    .line 71
    .line 72
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 77
    .line 78
    .line 79
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_3

    .line 88
    .line 89
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Lcom/startshorts/androidplayer/db/model/DbEvent;

    .line 94
    .line 95
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/db/model/DbEvent;->getLocalId()J

    .line 96
    .line 97
    .line 98
    move-result-wide v1

    .line 99
    invoke-static {v1, v2}, Lkotlin/coroutines/jvm/internal/a;->e(J)Ljava/lang/Long;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_3
    sget-object v1, Lcom/startshorts/androidplayer/repo/event/EventRepo;->a:Lcom/startshorts/androidplayer/repo/event/EventRepo;

    .line 108
    .line 109
    invoke-static {p1}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    const/16 v8, 0x18

    .line 114
    .line 115
    const/4 v9, 0x0

    .line 116
    const/4 v5, 0x0

    .line 117
    const/4 v6, 0x0

    .line 118
    move-object v2, p2

    .line 119
    move-object v7, p3

    .line 120
    invoke-static/range {v1 .. v9}, Lcom/startshorts/androidplayer/repo/event/EventRepo;->d(Lcom/startshorts/androidplayer/repo/event/EventRepo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    if-ne p1, p2, :cond_4

    .line 129
    .line 130
    return-object p1

    .line 131
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 132
    .line 133
    return-object p1

    .line 134
    :cond_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 135
    .line 136
    return-object p1

    .line 137
    :cond_6
    :goto_1
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 138
    .line 139
    const-string p2, "SupersetEventLogger"

    .line 140
    .line 141
    const-string p3, "Upload skipped: No Device ID"

    .line 142
    .line 143
    invoke-virtual {p1, p2, p3}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 147
    .line 148
    return-object p1
.end method

.method private final x(Ljava/util/List;Lrs/c;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->h()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/db/repository/EventRepository;->b:Lcom/startshorts/androidplayer/db/repository/EventRepository;

    .line 17
    .line 18
    check-cast p1, Ljava/util/Collection;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    new-array v1, v1, [Ljava/lang/String;

    .line 22
    .line 23
    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, [Ljava/lang/String;

    .line 28
    .line 29
    iget v1, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->f:I

    .line 30
    .line 31
    invoke-virtual {v0, p1, v1}, Lcom/startshorts/androidplayer/db/repository/EventRepository;->J([Ljava/lang/String;I)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    move-object v0, p1

    .line 36
    check-cast v0, Ljava/util/Collection;

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_3

    .line 43
    .line 44
    move-object v0, p1

    .line 45
    check-cast v0, Ljava/lang/Iterable;

    .line 46
    .line 47
    new-instance v4, Ljava/util/ArrayList;

    .line 48
    .line 49
    const/16 v1, 0xa

    .line 50
    .line 51
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    .line 57
    .line 58
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_1

    .line 67
    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Lcom/startshorts/androidplayer/db/model/DbEvent;

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/db/model/DbEvent;->getLocalId()J

    .line 75
    .line 76
    .line 77
    move-result-wide v1

    .line 78
    invoke-static {v1, v2}, Lkotlin/coroutines/jvm/internal/a;->e(J)Ljava/lang/Long;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    sget-object v1, Lcom/startshorts/androidplayer/repo/event/EventRepo;->a:Lcom/startshorts/androidplayer/repo/event/EventRepo;

    .line 87
    .line 88
    invoke-static {p1}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    const/16 v8, 0x18

    .line 93
    .line 94
    const/4 v9, 0x0

    .line 95
    const-string v2, ""

    .line 96
    .line 97
    const/4 v5, 0x0

    .line 98
    const/4 v6, 0x0

    .line 99
    move-object v7, p2

    .line 100
    invoke-static/range {v1 .. v9}, Lcom/startshorts/androidplayer/repo/event/EventRepo;->d(Lcom/startshorts/androidplayer/repo/event/EventRepo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    if-ne p1, p2, :cond_2

    .line 109
    .line 110
    return-object p1

    .line 111
    :cond_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 112
    .line 113
    return-object p1

    .line 114
    :cond_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 115
    .line 116
    return-object p1

    .line 117
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 118
    .line 119
    return-object p1
.end method

.method private final y(Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$b$c;Lrs/c;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$b$c;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->h()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/db/repository/EventRepository;->b:Lcom/startshorts/androidplayer/db/repository/EventRepository;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$b$c;->c()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/db/repository/EventRepository;->I(I)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$b$c;->b()Lkotlin/jvm/functions/Function1;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    const/4 p2, 0x0

    .line 39
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 47
    .line 48
    return-object p1

    .line 49
    :cond_2
    move-object v1, v0

    .line 50
    check-cast v1, Ljava/lang/Iterable;

    .line 51
    .line 52
    new-instance v5, Ljava/util/ArrayList;

    .line 53
    .line 54
    const/16 v2, 0xa

    .line 55
    .line 56
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    .line 62
    .line 63
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_3

    .line 72
    .line 73
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    check-cast v2, Lcom/startshorts/androidplayer/db/model/DbEvent;

    .line 78
    .line 79
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/db/model/DbEvent;->getLocalId()J

    .line 80
    .line 81
    .line 82
    move-result-wide v2

    .line 83
    invoke-static {v2, v3}, Lkotlin/coroutines/jvm/internal/a;->e(J)Ljava/lang/Long;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-interface {v5, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_3
    sget-object v2, Lcom/startshorts/androidplayer/repo/event/EventRepo;->a:Lcom/startshorts/androidplayer/repo/event/EventRepo;

    .line 92
    .line 93
    invoke-static {v0}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$b$c;->b()Lkotlin/jvm/functions/Function1;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$b$c;->a()Lkotlin/jvm/functions/Function0;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    const-string v3, ""

    .line 106
    .line 107
    move-object v8, p2

    .line 108
    invoke-virtual/range {v2 .. v8}, Lcom/startshorts/androidplayer/repo/event/EventRepo;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lrs/c;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    if-ne p1, p2, :cond_4

    .line 117
    .line 118
    return-object p1

    .line 119
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 120
    .line 121
    return-object p1

    .line 122
    :cond_5
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 123
    .line 124
    return-object p1
.end method

.method private final z()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->e:Lgt/g0;

    .line 2
    .line 3
    new-instance v3, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startForegroundTimerCheck$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, p0, v1}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$startForegroundTimerCheck$1;-><init>(Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;Lrs/c;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x3

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static/range {v0 .. v5}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public b(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->d:Ljt/d;

    .line 2
    .line 3
    new-instance v1, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$b$a;

    .line 4
    .line 5
    const-string v2, "External Flush"

    .line 6
    .line 7
    invoke-direct {v1, p1, v2}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$b$a;-><init>(ZLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Lkotlinx/coroutines/channels/h;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    return v0
.end method

.method public d(Ljava/lang/String;Landroid/os/Bundle;JLrs/c;)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "J",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p5, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$logEvent$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p5

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$logEvent$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$logEvent$1;->l:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$logEvent$1;->l:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$logEvent$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p5}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$logEvent$1;-><init>(Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p5, v0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$logEvent$1;->j:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$logEvent$1;->l:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    if-eq v2, v4, :cond_2

    .line 38
    .line 39
    if-ne v2, v3, :cond_1

    .line 40
    .line 41
    invoke-static {p5}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_2
    iget-object p1, v0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$logEvent$1;->i:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p1, Ljava/lang/String;

    .line 56
    .line 57
    iget-object p2, v0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$logEvent$1;->h:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p2, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;

    .line 60
    .line 61
    invoke-static {p5}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    invoke-static {p5}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    sget-object p5, Lcom/startshorts/androidplayer/db/repository/EventRepository;->b:Lcom/startshorts/androidplayer/db/repository/EventRepository;

    .line 69
    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->s(Ljava/lang/String;Landroid/os/Bundle;J)Lcom/startshorts/androidplayer/db/model/DbEvent;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    iput-object p0, v0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$logEvent$1;->h:Ljava/lang/Object;

    .line 75
    .line 76
    iput-object p1, v0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$logEvent$1;->i:Ljava/lang/Object;

    .line 77
    .line 78
    iput v4, v0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$logEvent$1;->l:I

    .line 79
    .line 80
    invoke-virtual {p5, p2, v0}, Lcom/startshorts/androidplayer/db/repository/EventRepository;->X(Lcom/startshorts/androidplayer/db/model/DbEvent;Lrs/c;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    if-ne p2, v1, :cond_4

    .line 85
    .line 86
    return-object v1

    .line 87
    :cond_4
    move-object p2, p0

    .line 88
    :goto_1
    invoke-direct {p2, p1}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->p(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-nez p1, :cond_6

    .line 93
    .line 94
    const/4 p1, 0x0

    .line 95
    iput-object p1, v0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$logEvent$1;->h:Ljava/lang/Object;

    .line 96
    .line 97
    iput-object p1, v0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$logEvent$1;->i:Ljava/lang/Object;

    .line 98
    .line 99
    iput v3, v0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$logEvent$1;->l:I

    .line 100
    .line 101
    invoke-direct {p2, v0}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->q(Lrs/c;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    if-ne p1, v1, :cond_5

    .line 106
    .line 107
    return-object v1

    .line 108
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 109
    .line 110
    return-object p1

    .line 111
    :cond_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 112
    .line 113
    return-object p1
.end method

.method public e(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->d:Ljt/d;

    .line 2
    .line 3
    new-instance v1, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$b$c;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2, p3}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$b$c;-><init>(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lkotlinx/coroutines/channels/h;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public f(Ljava/util/List;Lrs/c;)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/event/EventInfo;",
            ">;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$logEvents$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$logEvents$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$logEvents$1;->l:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$logEvents$1;->l:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$logEvents$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$logEvents$1;-><init>(Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$logEvents$1;->j:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$logEvents$1;->l:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    if-eq v2, v4, :cond_2

    .line 38
    .line 39
    if-ne v2, v3, :cond_1

    .line 40
    .line 41
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_2
    iget-object p1, v0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$logEvents$1;->i:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p1, Ljava/util/List;

    .line 56
    .line 57
    iget-object v2, v0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$logEvents$1;->h:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v2, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;

    .line 60
    .line 61
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_3
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    if-eqz p2, :cond_4

    .line 73
    .line 74
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 75
    .line 76
    return-object p1

    .line 77
    :cond_4
    move-object p2, p1

    .line 78
    check-cast p2, Ljava/lang/Iterable;

    .line 79
    .line 80
    new-instance v2, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    if-eqz v5, :cond_5

    .line 94
    .line 95
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    check-cast v5, Lcom/startshorts/androidplayer/bean/event/EventInfo;

    .line 100
    .line 101
    invoke-direct {p0, v5}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->r(Lcom/startshorts/androidplayer/bean/event/EventInfo;)Lcom/startshorts/androidplayer/db/model/DbEvent;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_5
    sget-object p2, Lcom/startshorts/androidplayer/db/repository/EventRepository;->b:Lcom/startshorts/androidplayer/db/repository/EventRepository;

    .line 110
    .line 111
    iput-object p0, v0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$logEvents$1;->h:Ljava/lang/Object;

    .line 112
    .line 113
    iput-object p1, v0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$logEvents$1;->i:Ljava/lang/Object;

    .line 114
    .line 115
    iput v4, v0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$logEvents$1;->l:I

    .line 116
    .line 117
    invoke-virtual {p2, v2, v0}, Lcom/startshorts/androidplayer/db/repository/EventRepository;->k0(Ljava/util/List;Lrs/c;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    if-ne p2, v1, :cond_6

    .line 122
    .line 123
    return-object v1

    .line 124
    :cond_6
    move-object v2, p0

    .line 125
    :goto_2
    const/4 p2, 0x0

    .line 126
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    check-cast p1, Lcom/startshorts/androidplayer/bean/event/EventInfo;

    .line 131
    .line 132
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/event/EventInfo;->getEventName()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-direct {v2, p1}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->p(Ljava/lang/String;)Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    if-nez p1, :cond_8

    .line 141
    .line 142
    const/4 p1, 0x0

    .line 143
    iput-object p1, v0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$logEvents$1;->h:Ljava/lang/Object;

    .line 144
    .line 145
    iput-object p1, v0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$logEvents$1;->i:Ljava/lang/Object;

    .line 146
    .line 147
    iput v3, v0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$logEvents$1;->l:I

    .line 148
    .line 149
    invoke-direct {v2, v0}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->q(Lrs/c;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    if-ne p1, v1, :cond_7

    .line 154
    .line 155
    return-object v1

    .line 156
    :cond_7
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 157
    .line 158
    return-object p1

    .line 159
    :cond_8
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 160
    .line 161
    return-object p1
.end method
