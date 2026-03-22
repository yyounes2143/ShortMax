.class Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$RunnableMsgHandler;
.super Ljava/lang/Object;
.source "TTVideoEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunnableMsgHandler"
.end annotation


# instance fields
.field msg:Landroid/os/Message;

.field msgHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;Landroid/os/Handler;Landroid/os/Message;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$RunnableMsgHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$RunnableMsgHandler;->msgHandler:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$RunnableMsgHandler;->msg:Landroid/os/Message;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$RunnableMsgHandler;->msgHandler:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/os/Handler;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$RunnableMsgHandler;->msg:Landroid/os/Message;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
