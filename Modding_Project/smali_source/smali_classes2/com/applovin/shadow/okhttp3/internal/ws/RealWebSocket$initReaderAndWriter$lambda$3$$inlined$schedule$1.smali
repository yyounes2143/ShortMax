.class public final Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket$initReaderAndWriter$lambda$3$$inlined$schedule$1;
.super Lcom/applovin/shadow/okhttp3/internal/concurrent/Task;
.source "TaskQueue.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;->initReaderAndWriter(Ljava/lang/String;Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket$Streams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTaskQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskQueue.kt\nokhttp3/internal/concurrent/TaskQueue$schedule$2\n+ 2 RealWebSocket.kt\nokhttp3/internal/ws/RealWebSocket\n*L\n1#1,218:1\n270#2,2:219\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $pingIntervalNanos$inlined:J

.field final synthetic this$0:Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;J)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket$initReaderAndWriter$lambda$3$$inlined$schedule$1;->this$0:Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;

    .line 2
    .line 3
    iput-wide p3, p0, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket$initReaderAndWriter$lambda$3$$inlined$schedule$1;->$pingIntervalNanos$inlined:J

    .line 4
    .line 5
    const/4 p2, 0x2

    .line 6
    const/4 p3, 0x0

    .line 7
    const/4 p4, 0x0

    .line 8
    invoke-direct {p0, p1, p4, p2, p3}, Lcom/applovin/shadow/okhttp3/internal/concurrent/Task;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public runOnce()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket$initReaderAndWriter$lambda$3$$inlined$schedule$1;->this$0:Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;->writePingFrame$okhttp()V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket$initReaderAndWriter$lambda$3$$inlined$schedule$1;->$pingIntervalNanos$inlined:J

    .line 7
    .line 8
    return-wide v0
.end method
