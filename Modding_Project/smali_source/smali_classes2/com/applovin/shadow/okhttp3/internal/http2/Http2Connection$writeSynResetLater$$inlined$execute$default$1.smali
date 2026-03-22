.class public final Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$writeSynResetLater$$inlined$execute$default$1;
.super Lcom/applovin/shadow/okhttp3/internal/concurrent/Task;
.source "TaskQueue.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->writeSynResetLater$okhttp(ILcom/applovin/shadow/okhttp3/internal/http2/ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTaskQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskQueue.kt\nokhttp3/internal/concurrent/TaskQueue$execute$1\n+ 2 Http2Connection.kt\nokhttp3/internal/http2/Http2Connection\n*L\n1#1,218:1\n341#2,6:219\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $errorCode$inlined:Lcom/applovin/shadow/okhttp3/internal/http2/ErrorCode;

.field final synthetic $streamId$inlined:I

.field final synthetic this$0:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;ILcom/applovin/shadow/okhttp3/internal/http2/ErrorCode;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$writeSynResetLater$$inlined$execute$default$1;->this$0:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;

    .line 2
    .line 3
    iput p4, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$writeSynResetLater$$inlined$execute$default$1;->$streamId$inlined:I

    .line 4
    .line 5
    iput-object p5, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$writeSynResetLater$$inlined$execute$default$1;->$errorCode$inlined:Lcom/applovin/shadow/okhttp3/internal/http2/ErrorCode;

    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Lcom/applovin/shadow/okhttp3/internal/concurrent/Task;-><init>(Ljava/lang/String;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public runOnce()J
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$writeSynResetLater$$inlined$execute$default$1;->this$0:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;

    .line 2
    .line 3
    iget v1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$writeSynResetLater$$inlined$execute$default$1;->$streamId$inlined:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$writeSynResetLater$$inlined$execute$default$1;->$errorCode$inlined:Lcom/applovin/shadow/okhttp3/internal/http2/ErrorCode;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->writeSynReset$okhttp(ILcom/applovin/shadow/okhttp3/internal/http2/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    iget-object v1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$writeSynResetLater$$inlined$execute$default$1;->this$0:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;

    .line 13
    .line 14
    invoke-static {v1, v0}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;->access$failConnection(Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection;Ljava/io/IOException;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    const-wide/16 v0, -0x1

    .line 18
    .line 19
    return-wide v0
.end method
