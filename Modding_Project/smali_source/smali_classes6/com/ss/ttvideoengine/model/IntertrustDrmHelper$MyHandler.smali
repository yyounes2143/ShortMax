.class Lcom/ss/ttvideoengine/model/IntertrustDrmHelper$MyHandler;
.super Landroid/os/Handler;
.source "IntertrustDrmHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field private mHelper:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper$MyHandler;->this$0:Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;

    .line 2
    .line 3
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

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
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper$MyHandler;->mHelper:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper$MyHandler;->mHelper:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {v0}, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->access$700(Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;)Lcom/ss/ttvideoengine/model/IntertrustDrmHelper$IntertrustDrmHelperListener;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    .line 20
    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    if-eq v1, v2, :cond_2

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, Lcom/ss/ttvideoengine/utils/Error;

    .line 30
    .line 31
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper$IntertrustDrmHelperListener;->onError(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_3
    const/4 p1, 0x0

    .line 36
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper$IntertrustDrmHelperListener;->onTokenProcessed(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method
