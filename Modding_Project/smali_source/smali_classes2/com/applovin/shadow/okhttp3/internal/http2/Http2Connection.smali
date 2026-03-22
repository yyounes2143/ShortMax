.class public final Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;
.super Ljava/lang/Object;
.source "Http2Connection.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$Builder;,
        Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$Companion;,
        Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$Listener;,
        Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$ReaderRunnable;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHttp2Connection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http2Connection.kt\nokhttp3/internal/http2/Http2Connection\n+ 2 TaskQueue.kt\nokhttp3/internal/concurrent/TaskQueue\n+ 3 Util.kt\nokhttp3/internal/Util\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 6 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,1006:1\n84#2,4:1007\n90#2,13:1014\n90#2,13:1027\n90#2,13:1069\n90#2,13:1082\n90#2,13:1095\n90#2,13:1108\n90#2,13:1121\n90#2,13:1134\n563#3:1011\n557#3:1013\n557#3:1040\n615#3,4:1041\n402#3,5:1045\n402#3,5:1053\n402#3,5:1059\n402#3,5:1064\n1#4:1012\n37#5,2:1050\n13309#6:1052\n13310#6:1058\n*S KotlinDebug\n*F\n+ 1 Http2Connection.kt\nokhttp3/internal/http2/Http2Connection\n*L\n152#1:1007,4\n340#1:1014,13\n361#1:1027,13\n506#1:1069,13\n554#1:1082,13\n893#1:1095,13\n911#1:1108,13\n938#1:1121,13\n952#1:1134,13\n183#1:1011\n319#1:1013\n402#1:1040\n446#1:1041,4\n448#1:1045,5\n461#1:1053,5\n467#1:1059,5\n472#1:1064,5\n455#1:1050,2\n460#1:1052\n460#1:1058\n*E\n"
    }
.end annotation


# static fields
.field public static final AWAIT_PING:I = 0x3

.field public static final Companion:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DEFAULT_SETTINGS:Lcom/applovin/shadow/okhttp3/internal/http2/Settings;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEGRADED_PING:I = 0x2

.field public static final DEGRADED_PONG_TIMEOUT_NS:I = 0x3b9aca00

.field public static final INTERVAL_PING:I = 0x1

.field public static final OKHTTP_CLIENT_WINDOW_SIZE:I = 0x1000000


# instance fields
.field private awaitPingsSent:J

.field private awaitPongsReceived:J

.field private final client:Z

.field private final connectionName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final currentPushRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private degradedPingsSent:J

.field private degradedPongDeadlineNs:J

.field private degradedPongsReceived:J

.field private intervalPingsSent:J

.field private intervalPongsReceived:J

.field private isShutdown:Z

.field private lastGoodStreamId:I

.field private final listener:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$Listener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private nextStreamId:I

.field private final okHttpSettings:Lcom/applovin/shadow/okhttp3/internal/http2/Settings;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private peerSettings:Lcom/applovin/shadow/okhttp3/internal/http2/Settings;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pushObserver:Lcom/applovin/shadow/okhttp3/internal/http2/PushObserver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pushQueue:Lcom/applovin/shadow/okhttp3/internal/concurrent/TaskQueue;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private readBytesAcknowledged:J

.field private readBytesTotal:J

.field private final readerRunnable:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$ReaderRunnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final settingsListenerQueue:Lcom/applovin/shadow/okhttp3/internal/concurrent/TaskQueue;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final socket:Ljava/net/Socket;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/applovin/shadow/okhttp3/internal/http2/Http2Stream;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final taskRunner:Lcom/applovin/shadow/okhttp3/internal/concurrent/TaskRunner;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private writeBytesMaximum:J

.field private writeBytesTotal:J

.field private final writer:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Writer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final writerQueue:Lcom/applovin/shadow/okhttp3/internal/concurrent/TaskQueue;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->Companion:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$Companion;

    .line 8
    .line 9
    new-instance v0, Lcom/applovin/shadow/okhttp3/internal/http2/Settings;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/applovin/shadow/okhttp3/internal/http2/Settings;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x7

    .line 15
    const v2, 0xffff

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/applovin/shadow/okhttp3/internal/http2/Settings;->set(II)Lcom/applovin/shadow/okhttp3/internal/http2/Settings;

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x5

    .line 22
    const/16 v2, 0x4000

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/applovin/shadow/okhttp3/internal/http2/Settings;->set(II)Lcom/applovin/shadow/okhttp3/internal/http2/Settings;

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->DEFAULT_SETTINGS:Lcom/applovin/shadow/okhttp3/internal/http2/Settings;

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$Builder;)V
    .locals 6
    .param p1    # Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "builder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$Builder;->getClient$okhttp()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput-boolean v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->client:Z

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$Builder;->getListener$okhttp()Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$Listener;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iput-object v1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->listener:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$Listener;

    .line 20
    .line 21
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$Builder;->getConnectionName$okhttp()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iput-object v1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$Builder;->getClient$okhttp()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    const/4 v2, 0x3

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v2, 0x2

    .line 43
    :goto_0
    iput v2, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->nextStreamId:I

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$Builder;->getTaskRunner$okhttp()Lcom/applovin/shadow/okhttp3/internal/concurrent/TaskRunner;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    iput-object v2, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->taskRunner:Lcom/applovin/shadow/okhttp3/internal/concurrent/TaskRunner;

    .line 50
    .line 51
    invoke-virtual {v2}, Lcom/applovin/shadow/okhttp3/internal/concurrent/TaskRunner;->newQueue()Lcom/applovin/shadow/okhttp3/internal/concurrent/TaskQueue;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    iput-object v3, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->writerQueue:Lcom/applovin/shadow/okhttp3/internal/concurrent/TaskQueue;

    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/applovin/shadow/okhttp3/internal/concurrent/TaskRunner;->newQueue()Lcom/applovin/shadow/okhttp3/internal/concurrent/TaskQueue;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    iput-object v4, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->pushQueue:Lcom/applovin/shadow/okhttp3/internal/concurrent/TaskQueue;

    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/applovin/shadow/okhttp3/internal/concurrent/TaskRunner;->newQueue()Lcom/applovin/shadow/okhttp3/internal/concurrent/TaskQueue;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    iput-object v2, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->settingsListenerQueue:Lcom/applovin/shadow/okhttp3/internal/concurrent/TaskQueue;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$Builder;->getPushObserver$okhttp()Lcom/applovin/shadow/okhttp3/internal/http2/PushObserver;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    iput-object v2, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->pushObserver:Lcom/applovin/shadow/okhttp3/internal/http2/PushObserver;

    .line 74
    .line 75
    new-instance v2, Lcom/applovin/shadow/okhttp3/internal/http2/Settings;

    .line 76
    .line 77
    invoke-direct {v2}, Lcom/applovin/shadow/okhttp3/internal/http2/Settings;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$Builder;->getClient$okhttp()Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_1

    .line 85
    .line 86
    const/4 v4, 0x7

    .line 87
    const/high16 v5, 0x1000000

    .line 88
    .line 89
    invoke-virtual {v2, v4, v5}, Lcom/applovin/shadow/okhttp3/internal/http2/Settings;->set(II)Lcom/applovin/shadow/okhttp3/internal/http2/Settings;

    .line 90
    .line 91
    .line 92
    :cond_1
    iput-object v2, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->okHttpSettings:Lcom/applovin/shadow/okhttp3/internal/http2/Settings;

    .line 93
    .line 94
    sget-object v2, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->DEFAULT_SETTINGS:Lcom/applovin/shadow/okhttp3/internal/http2/Settings;

    .line 95
    .line 96
    iput-object v2, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->peerSettings:Lcom/applovin/shadow/okhttp3/internal/http2/Settings;

    .line 97
    .line 98
    invoke-virtual {v2}, Lcom/applovin/shadow/okhttp3/internal/http2/Settings;->getInitialWindowSize()I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    int-to-long v4, v2

    .line 103
    iput-wide v4, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->writeBytesMaximum:J

    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$Builder;->getSocket$okhttp()Ljava/net/Socket;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    iput-object v2, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->socket:Ljava/net/Socket;

    .line 110
    .line 111
    new-instance v2, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Writer;

    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$Builder;->getSink$okhttp()Lcom/applovin/shadow/okio/BufferedSink;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-direct {v2, v4, v0}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Writer;-><init>(Lcom/applovin/shadow/okio/BufferedSink;Z)V

    .line 118
    .line 119
    .line 120
    iput-object v2, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->writer:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Writer;

    .line 121
    .line 122
    new-instance v2, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 123
    .line 124
    new-instance v4, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Reader;

    .line 125
    .line 126
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$Builder;->getSource$okhttp()Lcom/applovin/shadow/okio/BufferedSource;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    invoke-direct {v4, v5, v0}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Reader;-><init>(Lcom/applovin/shadow/okio/BufferedSource;Z)V

    .line 131
    .line 132
    .line 133
    invoke-direct {v2, p0, v4}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;Lcom/applovin/shadow/okhttp3/internal/http2/Http2Reader;)V

    .line 134
    .line 135
    .line 136
    iput-object v2, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->readerRunnable:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 137
    .line 138
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 139
    .line 140
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 141
    .line 142
    .line 143
    iput-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    .line 144
    .line 145
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$Builder;->getPingIntervalMillis$okhttp()I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_2

    .line 150
    .line 151
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 152
    .line 153
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$Builder;->getPingIntervalMillis$okhttp()I

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    int-to-long v4, p1

    .line 158
    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 159
    .line 160
    .line 161
    move-result-wide v4

    .line 162
    new-instance p1, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string v0, " ping"

    .line 171
    .line 172
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    new-instance v0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$special$$inlined$schedule$1;

    .line 180
    .line 181
    invoke-direct {v0, p1, p0, v4, v5}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$special$$inlined$schedule$1;-><init>(Ljava/lang/String;Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;J)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v3, v0, v4, v5}, Lcom/applovin/shadow/okhttp3/internal/concurrent/TaskQueue;->schedule(Lcom/applovin/shadow/okhttp3/internal/concurrent/Task;J)V

    .line 185
    .line 186
    .line 187
    :cond_2
    return-void
.end method

.method public static final synthetic access$failConnection(Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;Ljava/io/IOException;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->failConnection(Ljava/io/IOException;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getAwaitPongsReceived$p(Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->awaitPongsReceived:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$getCurrentPushRequests$p(Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getDEFAULT_SETTINGS$cp()Lcom/applovin/shadow/okhttp3/internal/http2/Settings;
    .locals 1

    .line 1
    sget-object v0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->DEFAULT_SETTINGS:Lcom/applovin/shadow/okhttp3/internal/http2/Settings;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getDegradedPongsReceived$p(Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->degradedPongsReceived:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$getIntervalPingsSent$p(Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->intervalPingsSent:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$getIntervalPongsReceived$p(Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->intervalPongsReceived:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$getPushObserver$p(Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;)Lcom/applovin/shadow/okhttp3/internal/http2/PushObserver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->pushObserver:Lcom/applovin/shadow/okhttp3/internal/http2/PushObserver;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getSettingsListenerQueue$p(Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;)Lcom/applovin/shadow/okhttp3/internal/concurrent/TaskQueue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->settingsListenerQueue:Lcom/applovin/shadow/okhttp3/internal/concurrent/TaskQueue;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getTaskRunner$p(Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;)Lcom/applovin/shadow/okhttp3/internal/concurrent/TaskRunner;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->taskRunner:Lcom/applovin/shadow/okhttp3/internal/concurrent/TaskRunner;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getWriterQueue$p(Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;)Lcom/applovin/shadow/okhttp3/internal/concurrent/TaskQueue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->writerQueue:Lcom/applovin/shadow/okhttp3/internal/concurrent/TaskQueue;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$isShutdown$p(Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->isShutdown:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$setAwaitPongsReceived$p(Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->awaitPongsReceived:J

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setDegradedPongsReceived$p(Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->degradedPongsReceived:J

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setIntervalPingsSent$p(Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->intervalPingsSent:J

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setIntervalPongsReceived$p(Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->intervalPongsReceived:J

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setShutdown$p(Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->isShutdown:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setWriteBytesMaximum$p(Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->writeBytesMaximum:J

    .line 2
    .line 3
    return-void
.end method

.method private final failConnection(Ljava/io/IOException;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/applovin/shadow/okhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lcom/applovin/shadow/okhttp3/internal/http2/ErrorCode;

    .line 2
    .line 3
    invoke-virtual {p0, v0, v0, p1}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->close$okhttp(Lcom/applovin/shadow/okhttp3/internal/http2/ErrorCode;Lcom/applovin/shadow/okhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final newStream(ILjava/util/List;Z)Lcom/applovin/shadow/okhttp3/internal/http2/Http2Stream;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/applovin/shadow/okhttp3/internal/http2/Header;",
            ">;Z)",
            "Lcom/applovin/shadow/okhttp3/internal/http2/Http2Stream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    xor-int/lit8 v7, p3, 0x1

    .line 2
    iget-object v8, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->writer:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Writer;

    monitor-enter v8

    .line 3
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    iget v1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->nextStreamId:I

    const v2, 0x3fffffff    # 1.9999999f

    if-le v1, v2, :cond_0

    .line 5
    sget-object v1, Lcom/applovin/shadow/okhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lcom/applovin/shadow/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, v1}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->shutdown(Lcom/applovin/shadow/okhttp3/internal/http2/ErrorCode;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    .line 6
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->isShutdown:Z

    if-nez v1, :cond_7

    .line 7
    iget v9, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->nextStreamId:I

    add-int/lit8 v1, v9, 0x2

    .line 8
    iput v1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->nextStreamId:I

    .line 9
    new-instance v10, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Stream;

    const/4 v6, 0x0

    const/4 v5, 0x0

    move-object v1, v10

    move v2, v9

    move-object v3, p0

    move v4, v7

    invoke-direct/range {v1 .. v6}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Stream;-><init>(ILcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;ZZLcom/applovin/shadow/okhttp3/Headers;)V

    if-eqz p3, :cond_2

    .line 10
    iget-wide v1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->writeBytesTotal:J

    iget-wide v3, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->writeBytesMaximum:J

    cmp-long p3, v1, v3

    if-gez p3, :cond_2

    .line 11
    invoke-virtual {v10}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Stream;->getWriteBytesTotal()J

    move-result-wide v1

    invoke-virtual {v10}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Stream;->getWriteBytesMaximum()J

    move-result-wide v3

    cmp-long p3, v1, v3

    if-ltz p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 12
    :cond_2
    :goto_1
    invoke-virtual {v10}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Stream;->isOpen()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 13
    iget-object p3, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_3
    sget-object p3, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :try_start_2
    monitor-exit p0

    if-nez p1, :cond_4

    .line 16
    iget-object p1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->writer:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {p1, v7, v9, p2}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Writer;->headers(ZILjava/util/List;)V

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_4

    .line 17
    :cond_4
    iget-boolean p3, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->client:Z

    if-nez p3, :cond_6

    .line 18
    iget-object p3, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->writer:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {p3, p1, v9, p2}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Writer;->pushPromise(IILjava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 19
    :goto_2
    monitor-exit v8

    if-eqz v0, :cond_5

    .line 20
    iget-object p1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->writer:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Writer;->flush()V

    :cond_5
    return-object v10

    .line 21
    :cond_6
    :try_start_3
    const-string p1, "client streams shouldn\'t have associated stream IDs"

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 22
    :cond_7
    :try_start_4
    new-instance p1, Lcom/applovin/shadow/okhttp3/internal/http2/ConnectionShutdownException;

    invoke-direct {p1}, Lcom/applovin/shadow/okhttp3/internal/http2/ConnectionShutdownException;-><init>()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 23
    :goto_3
    :try_start_5
    monitor-exit p0

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 24
    :goto_4
    monitor-exit v8

    throw p1
.end method

.method public static synthetic start$default(Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;ZLcom/applovin/shadow/okhttp3/internal/concurrent/TaskRunner;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 7
    .line 8
    if-eqz p3, :cond_1

    .line 9
    .line 10
    sget-object p2, Lcom/applovin/shadow/okhttp3/internal/concurrent/TaskRunner;->INSTANCE:Lcom/applovin/shadow/okhttp3/internal/concurrent/TaskRunner;

    .line 11
    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->start(ZLcom/applovin/shadow/okhttp3/internal/concurrent/TaskRunner;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final declared-synchronized awaitPong()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :goto_0
    :try_start_0
    iget-wide v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->awaitPongsReceived:J

    .line 3
    .line 4
    iget-wide v2, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->awaitPingsSent:J

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    if-gez v0, :cond_0

    .line 9
    .line 10
    const-string v0, "null cannot be cast to non-null type java.lang.Object"

    .line 11
    .line 12
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw v0
.end method

.method public close()V
    .locals 3

    .line 1
    sget-object v0, Lcom/applovin/shadow/okhttp3/internal/http2/ErrorCode;->NO_ERROR:Lcom/applovin/shadow/okhttp3/internal/http2/ErrorCode;

    .line 2
    .line 3
    sget-object v1, Lcom/applovin/shadow/okhttp3/internal/http2/ErrorCode;->CANCEL:Lcom/applovin/shadow/okhttp3/internal/http2/ErrorCode;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->close$okhttp(Lcom/applovin/shadow/okhttp3/internal/http2/ErrorCode;Lcom/applovin/shadow/okhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final close$okhttp(Lcom/applovin/shadow/okhttp3/internal/http2/ErrorCode;Lcom/applovin/shadow/okhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V
    .locals 3
    .param p1    # Lcom/applovin/shadow/okhttp3/internal/http2/ErrorCode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/applovin/shadow/okhttp3/internal/http2/ErrorCode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "connectionCode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "streamCode"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-boolean v0, Lcom/applovin/shadow/okhttp3/internal/Util;->assertionsEnabled:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    .line 23
    .line 24
    new-instance p2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string p3, "Thread "

    .line 30
    .line 31
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    invoke-virtual {p3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p3, " MUST NOT hold lock on "

    .line 46
    .line 47
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    throw p1

    .line 61
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->shutdown(Lcom/applovin/shadow/okhttp3/internal/http2/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    :catch_0
    monitor-enter p0

    .line 65
    :try_start_1
    iget-object p1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    .line 66
    .line 67
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    const/4 v0, 0x0

    .line 72
    if-nez p1, :cond_2

    .line 73
    .line 74
    iget-object p1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    .line 75
    .line 76
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    new-array v1, v0, [Lcom/applovin/shadow/okhttp3/internal/http2/Http2Stream;

    .line 81
    .line 82
    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iget-object v1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    .line 87
    .line 88
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :catchall_0
    move-exception p1

    .line 93
    goto :goto_3

    .line 94
    :cond_2
    const/4 p1, 0x0

    .line 95
    :goto_1
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    .line 97
    monitor-exit p0

    .line 98
    check-cast p1, [Lcom/applovin/shadow/okhttp3/internal/http2/Http2Stream;

    .line 99
    .line 100
    if-eqz p1, :cond_3

    .line 101
    .line 102
    array-length v1, p1

    .line 103
    :goto_2
    if-ge v0, v1, :cond_3

    .line 104
    .line 105
    aget-object v2, p1, v0

    .line 106
    .line 107
    :try_start_2
    invoke-virtual {v2, p2, p3}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Stream;->close(Lcom/applovin/shadow/okhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 108
    .line 109
    .line 110
    :catch_1
    add-int/lit8 v0, v0, 0x1

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_3
    :try_start_3
    iget-object p1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->writer:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Writer;

    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Writer;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 116
    .line 117
    .line 118
    :catch_2
    :try_start_4
    iget-object p1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->socket:Ljava/net/Socket;

    .line 119
    .line 120
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 121
    .line 122
    .line 123
    :catch_3
    iget-object p1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->writerQueue:Lcom/applovin/shadow/okhttp3/internal/concurrent/TaskQueue;

    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/internal/concurrent/TaskQueue;->shutdown()V

    .line 126
    .line 127
    .line 128
    iget-object p1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->pushQueue:Lcom/applovin/shadow/okhttp3/internal/concurrent/TaskQueue;

    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/internal/concurrent/TaskQueue;->shutdown()V

    .line 131
    .line 132
    .line 133
    iget-object p1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->settingsListenerQueue:Lcom/applovin/shadow/okhttp3/internal/concurrent/TaskQueue;

    .line 134
    .line 135
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/internal/concurrent/TaskQueue;->shutdown()V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :goto_3
    monitor-exit p0

    .line 140
    throw p1
.end method

.method public final flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->writer:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Writer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Writer;->flush()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getClient$okhttp()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->client:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getConnectionName$okhttp()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLastGoodStreamId$okhttp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->lastGoodStreamId:I

    .line 2
    .line 3
    return v0
.end method

.method public final getListener$okhttp()Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$Listener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->listener:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$Listener;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNextStreamId$okhttp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->nextStreamId:I

    .line 2
    .line 3
    return v0
.end method

.method public final getOkHttpSettings()Lcom/applovin/shadow/okhttp3/internal/http2/Settings;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->okHttpSettings:Lcom/applovin/shadow/okhttp3/internal/http2/Settings;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPeerSettings()Lcom/applovin/shadow/okhttp3/internal/http2/Settings;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->peerSettings:Lcom/applovin/shadow/okhttp3/internal/http2/Settings;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getReadBytesAcknowledged()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->readBytesAcknowledged:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getReadBytesTotal()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->readBytesTotal:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getReaderRunnable()Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$ReaderRunnable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->readerRunnable:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSocket$okhttp()Ljava/net/Socket;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->socket:Ljava/net/Socket;

    .line 2
    .line 3
    return-object v0
.end method

.method public final declared-synchronized getStream(I)Lcom/applovin/shadow/okhttp3/internal/http2/Http2Stream;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    .line 3
    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Stream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-object p1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    throw p1
.end method

.method public final getStreams$okhttp()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/applovin/shadow/okhttp3/internal/http2/Http2Stream;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getWriteBytesMaximum()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->writeBytesMaximum:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getWriteBytesTotal()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->writeBytesTotal:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getWriter()Lcom/applovin/shadow/okhttp3/internal/http2/Http2Writer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->writer:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Writer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final declared-synchronized isHealthy(J)Z
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->isShutdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return v1

    .line 9
    :cond_0
    :try_start_1
    iget-wide v2, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->degradedPongsReceived:J

    .line 10
    .line 11
    iget-wide v4, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->degradedPingsSent:J

    .line 12
    .line 13
    cmp-long v0, v2, v4

    .line 14
    .line 15
    if-gez v0, :cond_1

    .line 16
    .line 17
    iget-wide v2, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->degradedPongDeadlineNs:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    .line 19
    cmp-long p1, p1, v2

    .line 20
    .line 21
    if-ltz p1, :cond_1

    .line 22
    .line 23
    monitor-exit p0

    .line 24
    return v1

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    monitor-exit p0

    .line 28
    const/4 p1, 0x1

    .line 29
    return p1

    .line 30
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    throw p1
.end method

.method public final newStream(Ljava/util/List;Z)Lcom/applovin/shadow/okhttp3/internal/http2/Http2Stream;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/applovin/shadow/okhttp3/internal/http2/Header;",
            ">;Z)",
            "Lcom/applovin/shadow/okhttp3/internal/http2/Http2Stream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "requestHeaders"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1, p2}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->newStream(ILjava/util/List;Z)Lcom/applovin/shadow/okhttp3/internal/http2/Http2Stream;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized openStreamCount()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    .line 3
    .line 4
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw v0
.end method

.method public final pushDataLater$okhttp(ILcom/applovin/shadow/okio/BufferedSource;IZ)V
    .locals 9
    .param p2    # Lcom/applovin/shadow/okio/BufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v6, Lcom/applovin/shadow/okio/Buffer;

    .line 7
    .line 8
    invoke-direct {v6}, Lcom/applovin/shadow/okio/Buffer;-><init>()V

    .line 9
    .line 10
    .line 11
    int-to-long v0, p3

    .line 12
    invoke-interface {p2, v0, v1}, Lcom/applovin/shadow/okio/BufferedSource;->require(J)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p2, v6, v0, v1}, Lcom/applovin/shadow/okio/Source;->read(Lcom/applovin/shadow/okio/Buffer;J)J

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->pushQueue:Lcom/applovin/shadow/okhttp3/internal/concurrent/TaskQueue;

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const/16 v1, 0x5b

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, "] onData"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    new-instance v0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$pushDataLater$$inlined$execute$default$1;

    .line 48
    .line 49
    const/4 v3, 0x1

    .line 50
    move-object v1, v0

    .line 51
    move-object v4, p0

    .line 52
    move v5, p1

    .line 53
    move v7, p3

    .line 54
    move v8, p4

    .line 55
    invoke-direct/range {v1 .. v8}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$pushDataLater$$inlined$execute$default$1;-><init>(Ljava/lang/String;ZLcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;ILcom/applovin/shadow/okio/Buffer;IZ)V

    .line 56
    .line 57
    .line 58
    const-wide/16 p3, 0x0

    .line 59
    .line 60
    invoke-virtual {p2, v0, p3, p4}, Lcom/applovin/shadow/okhttp3/internal/concurrent/TaskQueue;->schedule(Lcom/applovin/shadow/okhttp3/internal/concurrent/Task;J)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final pushHeadersLater$okhttp(ILjava/util/List;Z)V
    .locals 10
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/applovin/shadow/okhttp3/internal/http2/Header;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    const-string v0, "requestHeaders"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->pushQueue:Lcom/applovin/shadow/okhttp3/internal/concurrent/TaskQueue;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const/16 v2, 0x5b

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, "] onHeaders"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    new-instance v1, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$pushHeadersLater$$inlined$execute$default$1;

    .line 36
    .line 37
    const/4 v5, 0x1

    .line 38
    move-object v3, v1

    .line 39
    move-object v6, p0

    .line 40
    move v7, p1

    .line 41
    move-object v8, p2

    .line 42
    move v9, p3

    .line 43
    invoke-direct/range {v3 .. v9}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$pushHeadersLater$$inlined$execute$default$1;-><init>(Ljava/lang/String;ZLcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;ILjava/util/List;Z)V

    .line 44
    .line 45
    .line 46
    const-wide/16 p1, 0x0

    .line 47
    .line 48
    invoke-virtual {v0, v1, p1, p2}, Lcom/applovin/shadow/okhttp3/internal/concurrent/TaskQueue;->schedule(Lcom/applovin/shadow/okhttp3/internal/concurrent/Task;J)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final pushRequestLater$okhttp(ILjava/util/List;)V
    .locals 9
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/applovin/shadow/okhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "requestHeaders"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    sget-object p2, Lcom/applovin/shadow/okhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lcom/applovin/shadow/okhttp3/internal/http2/ErrorCode;

    .line 20
    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->writeSynResetLater$okhttp(ILcom/applovin/shadow/okhttp3/internal/http2/ErrorCode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    .line 29
    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    .line 37
    monitor-exit p0

    .line 38
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->pushQueue:Lcom/applovin/shadow/okhttp3/internal/concurrent/TaskQueue;

    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const/16 v2, 0x5b

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v2, "] onRequest"

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    new-instance v1, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$pushRequestLater$$inlined$execute$default$1;

    .line 68
    .line 69
    const/4 v5, 0x1

    .line 70
    move-object v3, v1

    .line 71
    move-object v6, p0

    .line 72
    move v7, p1

    .line 73
    move-object v8, p2

    .line 74
    invoke-direct/range {v3 .. v8}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$pushRequestLater$$inlined$execute$default$1;-><init>(Ljava/lang/String;ZLcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;ILjava/util/List;)V

    .line 75
    .line 76
    .line 77
    const-wide/16 p1, 0x0

    .line 78
    .line 79
    invoke-virtual {v0, v1, p1, p2}, Lcom/applovin/shadow/okhttp3/internal/concurrent/TaskQueue;->schedule(Lcom/applovin/shadow/okhttp3/internal/concurrent/Task;J)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :goto_0
    monitor-exit p0

    .line 84
    throw p1
.end method

.method public final pushResetLater$okhttp(ILcom/applovin/shadow/okhttp3/internal/http2/ErrorCode;)V
    .locals 9
    .param p2    # Lcom/applovin/shadow/okhttp3/internal/http2/ErrorCode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "errorCode"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->pushQueue:Lcom/applovin/shadow/okhttp3/internal/concurrent/TaskQueue;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const/16 v2, 0x5b

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, "] onReset"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    new-instance v1, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$pushResetLater$$inlined$execute$default$1;

    .line 36
    .line 37
    const/4 v5, 0x1

    .line 38
    move-object v3, v1

    .line 39
    move-object v6, p0

    .line 40
    move v7, p1

    .line 41
    move-object v8, p2

    .line 42
    invoke-direct/range {v3 .. v8}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$pushResetLater$$inlined$execute$default$1;-><init>(Ljava/lang/String;ZLcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;ILcom/applovin/shadow/okhttp3/internal/http2/ErrorCode;)V

    .line 43
    .line 44
    .line 45
    const-wide/16 p1, 0x0

    .line 46
    .line 47
    invoke-virtual {v0, v1, p1, p2}, Lcom/applovin/shadow/okhttp3/internal/concurrent/TaskQueue;->schedule(Lcom/applovin/shadow/okhttp3/internal/concurrent/Task;J)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final pushStream(ILjava/util/List;Z)Lcom/applovin/shadow/okhttp3/internal/http2/Http2Stream;
    .locals 1
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/applovin/shadow/okhttp3/internal/http2/Header;",
            ">;Z)",
            "Lcom/applovin/shadow/okhttp3/internal/http2/Http2Stream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "requestHeaders"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->client:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->newStream(ILjava/util/List;Z)Lcom/applovin/shadow/okhttp3/internal/http2/Http2Stream;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    const-string p2, "Client cannot push requests."

    .line 18
    .line 19
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1
.end method

.method public final pushedStream$okhttp(I)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    and-int/2addr p1, v0

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method

.method public final declared-synchronized removeStream$okhttp(I)Lcom/applovin/shadow/okhttp3/internal/http2/Http2Stream;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    .line 3
    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Stream;

    .line 13
    .line 14
    const-string v0, "null cannot be cast to non-null type java.lang.Object"

    .line 15
    .line 16
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    monitor-exit p0

    .line 23
    return-object p1

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw p1
.end method

.method public final sendDegradedPingLater$okhttp()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->degradedPongsReceived:J

    .line 3
    .line 4
    iget-wide v2, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->degradedPingsSent:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    if-gez v0, :cond_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :cond_0
    const-wide/16 v0, 0x1

    .line 13
    .line 14
    add-long/2addr v2, v0

    .line 15
    :try_start_1
    iput-wide v2, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->degradedPingsSent:J

    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    const v2, 0x3b9aca00

    .line 22
    .line 23
    .line 24
    int-to-long v2, v2

    .line 25
    add-long/2addr v0, v2

    .line 26
    iput-wide v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->degradedPongDeadlineNs:J

    .line 27
    .line 28
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .line 30
    monitor-exit p0

    .line 31
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->writerQueue:Lcom/applovin/shadow/okhttp3/internal/concurrent/TaskQueue;

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v2, " ping"

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    new-instance v2, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$sendDegradedPingLater$$inlined$execute$default$1;

    .line 53
    .line 54
    const/4 v3, 0x1

    .line 55
    invoke-direct {v2, v1, v3, p0}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$sendDegradedPingLater$$inlined$execute$default$1;-><init>(Ljava/lang/String;ZLcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;)V

    .line 56
    .line 57
    .line 58
    const-wide/16 v3, 0x0

    .line 59
    .line 60
    invoke-virtual {v0, v2, v3, v4}, Lcom/applovin/shadow/okhttp3/internal/concurrent/TaskQueue;->schedule(Lcom/applovin/shadow/okhttp3/internal/concurrent/Task;J)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :catchall_0
    move-exception v0

    .line 65
    monitor-exit p0

    .line 66
    throw v0
.end method

.method public final setLastGoodStreamId$okhttp(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->lastGoodStreamId:I

    .line 2
    .line 3
    return-void
.end method

.method public final setNextStreamId$okhttp(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->nextStreamId:I

    .line 2
    .line 3
    return-void
.end method

.method public final setPeerSettings(Lcom/applovin/shadow/okhttp3/internal/http2/Settings;)V
    .locals 1
    .param p1    # Lcom/applovin/shadow/okhttp3/internal/http2/Settings;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->peerSettings:Lcom/applovin/shadow/okhttp3/internal/http2/Settings;

    .line 7
    .line 8
    return-void
.end method

.method public final setSettings(Lcom/applovin/shadow/okhttp3/internal/http2/Settings;)V
    .locals 2
    .param p1    # Lcom/applovin/shadow/okhttp3/internal/http2/Settings;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "settings"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->writer:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Writer;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :try_start_1
    iget-boolean v1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->isShutdown:Z

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->okHttpSettings:Lcom/applovin/shadow/okhttp3/internal/http2/Settings;

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Lcom/applovin/shadow/okhttp3/internal/http2/Settings;->merge(Lcom/applovin/shadow/okhttp3/internal/http2/Settings;)V

    .line 17
    .line 18
    .line 19
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20
    .line 21
    :try_start_2
    monitor-exit p0

    .line 22
    iget-object v1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->writer:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Writer;

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Writer;->settings(Lcom/applovin/shadow/okhttp3/internal/http2/Settings;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    :catchall_1
    move-exception p1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    :try_start_3
    new-instance p1, Lcom/applovin/shadow/okhttp3/internal/http2/ConnectionShutdownException;

    .line 34
    .line 35
    invoke-direct {p1}, Lcom/applovin/shadow/okhttp3/internal/http2/ConnectionShutdownException;-><init>()V

    .line 36
    .line 37
    .line 38
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 39
    :goto_0
    :try_start_4
    monitor-exit p0

    .line 40
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 41
    :goto_1
    monitor-exit v0

    .line 42
    throw p1
.end method

.method public final shutdown(Lcom/applovin/shadow/okhttp3/internal/http2/ErrorCode;)V
    .locals 4
    .param p1    # Lcom/applovin/shadow/okhttp3/internal/http2/ErrorCode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "statusCode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->writer:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Writer;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    .line 10
    .line 11
    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 12
    .line 13
    .line 14
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :try_start_1
    iget-boolean v2, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->isShutdown:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v2, 0x1

    .line 25
    :try_start_3
    iput-boolean v2, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->isShutdown:Z

    .line 26
    .line 27
    iget v2, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->lastGoodStreamId:I

    .line 28
    .line 29
    iput v2, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 30
    .line 31
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 32
    .line 33
    :try_start_4
    monitor-exit p0

    .line 34
    iget-object v1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->writer:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Writer;

    .line 35
    .line 36
    sget-object v3, Lcom/applovin/shadow/okhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    .line 37
    .line 38
    invoke-virtual {v1, v2, p1, v3}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Writer;->goAway(ILcom/applovin/shadow/okhttp3/internal/http2/ErrorCode;[B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 39
    .line 40
    .line 41
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :catchall_1
    move-exception p1

    .line 44
    :try_start_5
    monitor-exit p0

    .line 45
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 46
    :goto_0
    monitor-exit v0

    .line 47
    throw p1
.end method

.method public final start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1, v0}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->start$default(Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;ZLcom/applovin/shadow/okhttp3/internal/concurrent/TaskRunner;ILjava/lang/Object;)V

    return-void
.end method

.method public final start(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->start$default(Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;ZLcom/applovin/shadow/okhttp3/internal/concurrent/TaskRunner;ILjava/lang/Object;)V

    return-void
.end method

.method public final start(ZLcom/applovin/shadow/okhttp3/internal/concurrent/TaskRunner;)V
    .locals 4
    .param p2    # Lcom/applovin/shadow/okhttp3/internal/concurrent/TaskRunner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "taskRunner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->writer:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Writer;->connectionPreface()V

    .line 4
    iget-object p1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->writer:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Writer;

    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->okHttpSettings:Lcom/applovin/shadow/okhttp3/internal/http2/Settings;

    invoke-virtual {p1, v0}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Writer;->settings(Lcom/applovin/shadow/okhttp3/internal/http2/Settings;)V

    .line 5
    iget-object p1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->okHttpSettings:Lcom/applovin/shadow/okhttp3/internal/http2/Settings;

    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result p1

    const v0, 0xffff

    if-eq p1, v0, :cond_0

    .line 6
    iget-object v1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->writer:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Writer;

    sub-int/2addr p1, v0

    int-to-long v2, p1

    const/4 p1, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Writer;->windowUpdate(IJ)V

    .line 7
    :cond_0
    invoke-virtual {p2}, Lcom/applovin/shadow/okhttp3/internal/concurrent/TaskRunner;->newQueue()Lcom/applovin/shadow/okhttp3/internal/concurrent/TaskQueue;

    move-result-object p1

    iget-object p2, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->readerRunnable:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 8
    new-instance v1, Lcom/applovin/shadow/okhttp3/internal/concurrent/TaskQueue$execute$1;

    const/4 v2, 0x1

    invoke-direct {v1, p2, v2, v0}, Lcom/applovin/shadow/okhttp3/internal/concurrent/TaskQueue$execute$1;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)V

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lcom/applovin/shadow/okhttp3/internal/concurrent/TaskQueue;->schedule(Lcom/applovin/shadow/okhttp3/internal/concurrent/Task;J)V

    return-void
.end method

.method public final declared-synchronized updateConnectionFlowControl$okhttp(J)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->readBytesTotal:J

    .line 3
    .line 4
    add-long/2addr v0, p1

    .line 5
    iput-wide v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->readBytesTotal:J

    .line 6
    .line 7
    iget-wide p1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->readBytesAcknowledged:J

    .line 8
    .line 9
    sub-long/2addr v0, p1

    .line 10
    iget-object p1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->okHttpSettings:Lcom/applovin/shadow/okhttp3/internal/http2/Settings;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/internal/http2/Settings;->getInitialWindowSize()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    div-int/lit8 p1, p1, 0x2

    .line 17
    .line 18
    int-to-long p1, p1

    .line 19
    cmp-long p1, v0, p1

    .line 20
    .line 21
    if-ltz p1, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    invoke-virtual {p0, p1, v0, v1}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->writeWindowUpdateLater$okhttp(IJ)V

    .line 25
    .line 26
    .line 27
    iget-wide p1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->readBytesAcknowledged:J

    .line 28
    .line 29
    add-long/2addr p1, v0

    .line 30
    iput-wide p1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->readBytesAcknowledged:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    :goto_0
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    throw p1
.end method

.method public final writeData(IZLcom/applovin/shadow/okio/Buffer;J)V
    .locals 8
    .param p3    # Lcom/applovin/shadow/okio/Buffer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p4, v0

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    if-nez v2, :cond_0

    .line 7
    .line 8
    iget-object p4, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->writer:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Writer;

    .line 9
    .line 10
    invoke-virtual {p4, p2, p1, p3, v3}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Writer;->data(ZILcom/applovin/shadow/okio/Buffer;I)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    :goto_0
    cmp-long v2, p4, v0

    .line 15
    .line 16
    if-lez v2, :cond_4

    .line 17
    .line 18
    monitor-enter p0

    .line 19
    :goto_1
    :try_start_0
    iget-wide v4, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->writeBytesTotal:J

    .line 20
    .line 21
    iget-wide v6, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->writeBytesMaximum:J

    .line 22
    .line 23
    cmp-long v2, v4, v6

    .line 24
    .line 25
    if-ltz v2, :cond_2

    .line 26
    .line 27
    iget-object v2, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    const-string v2, "null cannot be cast to non-null type java.lang.Object"

    .line 40
    .line 41
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    goto :goto_3

    .line 50
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 51
    .line 52
    const-string p2, "stream closed"

    .line 53
    .line 54
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_2
    sub-long/2addr v6, v4

    .line 59
    :try_start_1
    invoke-static {p4, p5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 60
    .line 61
    .line 62
    move-result-wide v4

    .line 63
    long-to-int v2, v4

    .line 64
    iget-object v4, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->writer:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Writer;

    .line 65
    .line 66
    invoke-virtual {v4}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Writer;->maxDataLength()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    iget-wide v4, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->writeBytesTotal:J

    .line 75
    .line 76
    int-to-long v6, v2

    .line 77
    add-long/2addr v4, v6

    .line 78
    iput-wide v4, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->writeBytesTotal:J

    .line 79
    .line 80
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .line 82
    monitor-exit p0

    .line 83
    sub-long/2addr p4, v6

    .line 84
    iget-object v4, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->writer:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Writer;

    .line 85
    .line 86
    if-eqz p2, :cond_3

    .line 87
    .line 88
    cmp-long v5, p4, v0

    .line 89
    .line 90
    if-nez v5, :cond_3

    .line 91
    .line 92
    const/4 v5, 0x1

    .line 93
    goto :goto_2

    .line 94
    :cond_3
    move v5, v3

    .line 95
    :goto_2
    invoke-virtual {v4, v5, p1, p3, v2}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Writer;->data(ZILcom/applovin/shadow/okio/Buffer;I)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 104
    .line 105
    .line 106
    new-instance p1, Ljava/io/InterruptedIOException;

    .line 107
    .line 108
    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    .line 109
    .line 110
    .line 111
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    :goto_3
    monitor-exit p0

    .line 113
    throw p1

    .line 114
    :cond_4
    return-void
.end method

.method public final writeHeaders$okhttp(IZLjava/util/List;)V
    .locals 1
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List<",
            "Lcom/applovin/shadow/okhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "alternating"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->writer:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Writer;

    .line 7
    .line 8
    invoke-virtual {v0, p2, p1, p3}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Writer;->headers(ZILjava/util/List;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final writePing()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->awaitPingsSent:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->awaitPingsSent:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    const/4 v0, 0x3

    const v1, 0x4f4b6f6b

    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0, v2, v0, v1}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->writePing(ZII)V

    return-void

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    throw v0
.end method

.method public final writePing(ZII)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->writer:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Writer;->ping(ZII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-direct {p0, p1}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->failConnection(Ljava/io/IOException;)V

    :goto_0
    return-void
.end method

.method public final writePingAndAwaitPong()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->writePing()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->awaitPong()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final writeSynReset$okhttp(ILcom/applovin/shadow/okhttp3/internal/http2/ErrorCode;)V
    .locals 1
    .param p2    # Lcom/applovin/shadow/okhttp3/internal/http2/ErrorCode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "statusCode"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->writer:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Writer;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Writer;->rstStream(ILcom/applovin/shadow/okhttp3/internal/http2/ErrorCode;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final writeSynResetLater$okhttp(ILcom/applovin/shadow/okhttp3/internal/http2/ErrorCode;)V
    .locals 9
    .param p2    # Lcom/applovin/shadow/okhttp3/internal/http2/ErrorCode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "errorCode"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->writerQueue:Lcom/applovin/shadow/okhttp3/internal/concurrent/TaskQueue;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const/16 v2, 0x5b

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, "] writeSynReset"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    new-instance v1, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$writeSynResetLater$$inlined$execute$default$1;

    .line 36
    .line 37
    const/4 v5, 0x1

    .line 38
    move-object v3, v1

    .line 39
    move-object v6, p0

    .line 40
    move v7, p1

    .line 41
    move-object v8, p2

    .line 42
    invoke-direct/range {v3 .. v8}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$writeSynResetLater$$inlined$execute$default$1;-><init>(Ljava/lang/String;ZLcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;ILcom/applovin/shadow/okhttp3/internal/http2/ErrorCode;)V

    .line 43
    .line 44
    .line 45
    const-wide/16 p1, 0x0

    .line 46
    .line 47
    invoke-virtual {v0, v1, p1, p2}, Lcom/applovin/shadow/okhttp3/internal/concurrent/TaskQueue;->schedule(Lcom/applovin/shadow/okhttp3/internal/concurrent/Task;J)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final writeWindowUpdateLater$okhttp(IJ)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->writerQueue:Lcom/applovin/shadow/okhttp3/internal/concurrent/TaskQueue;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v2, 0x5b

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, "] windowUpdate"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    new-instance v1, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$writeWindowUpdateLater$$inlined$execute$default$1;

    .line 31
    .line 32
    const/4 v5, 0x1

    .line 33
    move-object v3, v1

    .line 34
    move-object v6, p0

    .line 35
    move v7, p1

    .line 36
    move-wide v8, p2

    .line 37
    invoke-direct/range {v3 .. v9}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$writeWindowUpdateLater$$inlined$execute$default$1;-><init>(Ljava/lang/String;ZLcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;IJ)V

    .line 38
    .line 39
    .line 40
    const-wide/16 p1, 0x0

    .line 41
    .line 42
    invoke-virtual {v0, v1, p1, p2}, Lcom/applovin/shadow/okhttp3/internal/concurrent/TaskQueue;->schedule(Lcom/applovin/shadow/okhttp3/internal/concurrent/Task;J)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
