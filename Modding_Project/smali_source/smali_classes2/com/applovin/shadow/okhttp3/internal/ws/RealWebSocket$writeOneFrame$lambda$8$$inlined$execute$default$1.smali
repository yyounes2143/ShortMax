.class public final Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket$writeOneFrame$lambda$8$$inlined$execute$default$1;
.super Lcom/applovin/shadow/okhttp3/internal/concurrent/Task;
.source "TaskQueue.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;->writeOneFrame$okhttp()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTaskQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskQueue.kt\nokhttp3/internal/concurrent/TaskQueue$execute$1\n+ 2 RealWebSocket.kt\nokhttp3/internal/ws/RealWebSocket\n*L\n1#1,218:1\n513#2,2:219\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket$writeOneFrame$lambda$8$$inlined$execute$default$1;->this$0:Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/applovin/shadow/okhttp3/internal/concurrent/Task;-><init>(Ljava/lang/String;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public runOnce()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket$writeOneFrame$lambda$8$$inlined$execute$default$1;->this$0:Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;->cancel()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, -0x1

    .line 7
    .line 8
    return-wide v0
.end method
