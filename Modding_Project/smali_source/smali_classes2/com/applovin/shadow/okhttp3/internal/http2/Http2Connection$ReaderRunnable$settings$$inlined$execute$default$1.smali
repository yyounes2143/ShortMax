.class public final Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$ReaderRunnable$settings$$inlined$execute$default$1;
.super Lcom/applovin/shadow/okhttp3/internal/concurrent/Task;
.source "TaskQueue.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->settings(ZLcom/applovin/shadow/okhttp3/internal/http2/Settings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTaskQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskQueue.kt\nokhttp3/internal/concurrent/TaskQueue$execute$1\n+ 2 Http2Connection.kt\nokhttp3/internal/http2/Http2Connection$ReaderRunnable\n*L\n1#1,218:1\n716#2,2:219\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $clearPrevious$inlined:Z

.field final synthetic $settings$inlined:Lcom/applovin/shadow/okhttp3/internal/http2/Settings;

.field final synthetic this$0:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$ReaderRunnable;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$ReaderRunnable;ZLcom/applovin/shadow/okhttp3/internal/http2/Settings;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$ReaderRunnable$settings$$inlined$execute$default$1;->this$0:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 2
    .line 3
    iput-boolean p4, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$ReaderRunnable$settings$$inlined$execute$default$1;->$clearPrevious$inlined:Z

    .line 4
    .line 5
    iput-object p5, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$ReaderRunnable$settings$$inlined$execute$default$1;->$settings$inlined:Lcom/applovin/shadow/okhttp3/internal/http2/Settings;

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
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$ReaderRunnable$settings$$inlined$execute$default$1;->this$0:Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$ReaderRunnable$settings$$inlined$execute$default$1;->$clearPrevious$inlined:Z

    .line 4
    .line 5
    iget-object v2, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$ReaderRunnable$settings$$inlined$execute$default$1;->$settings$inlined:Lcom/applovin/shadow/okhttp3/internal/http2/Settings;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/applovin/shadow/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->applyAndAckSettings(ZLcom/applovin/shadow/okhttp3/internal/http2/Settings;)V

    .line 8
    .line 9
    .line 10
    const-wide/16 v0, -0x1

    .line 11
    .line 12
    return-wide v0
.end method
