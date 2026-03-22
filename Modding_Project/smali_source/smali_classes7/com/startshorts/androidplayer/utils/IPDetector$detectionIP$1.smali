.class final Lcom/startshorts/androidplayer/utils/IPDetector$detectionIP$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "IPDetector.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/utils/IPDetector;->a()V
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
    c = "com.startshorts.androidplayer.utils.IPDetector$detectionIP$1"
    f = "IPDetector.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nIPDetector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IPDetector.kt\ncom/startshorts/androidplayer/utils/IPDetector$detectionIP$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,65:1\n1611#2,9:66\n1863#2:75\n1864#2:77\n1620#2:78\n1#3:76\n37#4:79\n36#4,3:80\n*S KotlinDebug\n*F\n+ 1 IPDetector.kt\ncom/startshorts/androidplayer/utils/IPDetector$detectionIP$1\n*L\n50#1:66,9\n50#1:75\n50#1:77\n50#1:78\n50#1:76\n51#1:79\n51#1:80,3\n*E\n"
    }
.end annotation


# instance fields
.field h:I


# direct methods
.method constructor <init>(Lrs/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/utils/IPDetector$detectionIP$1;",
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
    new-instance p1, Lcom/startshorts/androidplayer/utils/IPDetector$detectionIP$1;

    .line 2
    .line 3
    invoke-direct {p1, p2}, Lcom/startshorts/androidplayer/utils/IPDetector$detectionIP$1;-><init>(Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/utils/IPDetector$detectionIP$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/utils/IPDetector$detectionIP$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/utils/IPDetector$detectionIP$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/utils/IPDetector$detectionIP$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    const-string v0, "IPDetector"

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/startshorts/androidplayer/utils/IPDetector$detectionIP$1;->h:I

    .line 7
    .line 8
    if-nez v1, :cond_3

    .line 9
    .line 10
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    new-instance p1, Ljava/net/DatagramSocket;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    const/16 v1, 0x1388

    .line 19
    .line 20
    :try_start_1
    invoke-virtual {p1, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 21
    .line 22
    .line 23
    const/16 v1, 0x14

    .line 24
    .line 25
    new-array v2, v1, [B

    .line 26
    .line 27
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const/4 v4, 0x1

    .line 32
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 33
    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 37
    .line 38
    .line 39
    const v5, 0x2112a442

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 43
    .line 44
    .line 45
    const/16 v5, 0xc

    .line 46
    .line 47
    new-array v5, v5, [B

    .line 48
    .line 49
    new-instance v6, Ljava/util/Random;

    .line 50
    .line 51
    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v6, v5}, Ljava/util/Random;->nextBytes([B)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 58
    .line 59
    .line 60
    const-string v3, "stun.shorttv.live"

    .line 61
    .line 62
    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    new-instance v5, Ljava/net/DatagramPacket;

    .line 67
    .line 68
    const/16 v6, 0x14e5

    .line 69
    .line 70
    invoke-direct {v5, v2, v1, v3, v6}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v5}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 74
    .line 75
    .line 76
    const/16 v1, 0x400

    .line 77
    .line 78
    new-array v2, v1, [B

    .line 79
    .line 80
    new-instance v3, Ljava/net/DatagramPacket;

    .line 81
    .line 82
    invoke-direct {v3, v2, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v3}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 86
    .line 87
    .line 88
    sget-object v1, Lfk/e0;->a:Lfk/e0;

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Lfk/e0;->a([B)Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Ljava/lang/Iterable;

    .line 95
    .line 96
    new-instance v2, Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-eqz v3, :cond_1

    .line 110
    .line 111
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    check-cast v3, Lkotlin/Pair;

    .line 116
    .line 117
    invoke-virtual {v3}, Lkotlin/Pair;->b()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    check-cast v3, Ljava/lang/String;

    .line 122
    .line 123
    if-eqz v3, :cond_0

    .line 124
    .line 125
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :catchall_0
    move-exception v1

    .line 130
    goto :goto_1

    .line 131
    :cond_1
    new-array v1, v4, [Ljava/lang/String;

    .line 132
    .line 133
    invoke-interface {v2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    move-object v2, v1

    .line 138
    check-cast v2, [Ljava/lang/String;

    .line 139
    .line 140
    const-string v3, ","

    .line 141
    .line 142
    const/16 v9, 0x3e

    .line 143
    .line 144
    const/4 v10, 0x0

    .line 145
    const/4 v4, 0x0

    .line 146
    const/4 v5, 0x0

    .line 147
    const/4 v6, 0x0

    .line 148
    const/4 v7, 0x0

    .line 149
    const/4 v8, 0x0

    .line 150
    invoke-static/range {v2 .. v10}, Lkotlin/collections/n;->U0([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 155
    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    const-string v4, "ips : "

    .line 162
    .line 163
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-virtual {v2, v0, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    if-nez v2, :cond_2

    .line 181
    .line 182
    new-instance v2, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 183
    .line 184
    invoke-direct {v2}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;-><init>()V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2, v1}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->R(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    :cond_2
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    .line 192
    const/4 v1, 0x0

    .line 193
    :try_start_2
    invoke-static {p1, v1}, Lws/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 194
    .line 195
    .line 196
    goto :goto_3

    .line 197
    :catch_0
    move-exception p1

    .line 198
    goto :goto_2

    .line 199
    :goto_1
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 200
    :catchall_1
    move-exception v2

    .line 201
    :try_start_4
    invoke-static {p1, v1}, Lws/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 202
    .line 203
    .line 204
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 205
    :goto_2
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 206
    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    const-string v3, "STUN request failed: "

    .line 213
    .line 214
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    invoke-virtual {v1, v0, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 232
    .line 233
    return-object p1

    .line 234
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 235
    .line 236
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 237
    .line 238
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    throw p1
.end method
