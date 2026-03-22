.class Lcom/ss/ttvideoengine/net/BaseDNS$MyHandler;
.super Landroid/os/Handler;
.source "BaseDNS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/net/BaseDNS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private final mDNSRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/ttvideoengine/net/BaseDNS;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/net/BaseDNS;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/utils/TTHelper;->getLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/ss/ttvideoengine/net/BaseDNS$MyHandler;->mDNSRef:Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/net/BaseDNS$MyHandler;->mDNSRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/net/BaseDNS;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v1, v0, Lcom/ss/ttvideoengine/net/BaseDNS;->mListener:Lcom/ss/ttvideoengine/net/DNSCompletionListener;

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget-boolean v2, v0, Lcom/ss/ttvideoengine/net/BaseDNS;->mCancelled:Z

    .line 18
    .line 19
    if-eqz v2, :cond_2

    .line 20
    .line 21
    return-void

    .line 22
    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    .line 23
    .line 24
    if-eqz v2, :cond_6

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    if-eq v2, v3, :cond_5

    .line 28
    .line 29
    const/4 v3, 0x2

    .line 30
    const/4 v4, 0x0

    .line 31
    if-eq v2, v3, :cond_4

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    if-eq v2, v3, :cond_3

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_3
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/net/BaseDNS;->close()V

    .line 38
    .line 39
    .line 40
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, Lorg/json/JSONObject;

    .line 43
    .line 44
    invoke-interface {v1, p1, v4}, Lcom/ss/ttvideoengine/net/DNSCompletionListener;->onCompletion(Lorg/json/JSONObject;Lcom/ss/ttvideoengine/utils/Error;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_4
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/net/BaseDNS;->close()V

    .line 49
    .line 50
    .line 51
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p1, Lcom/ss/ttvideoengine/utils/Error;

    .line 54
    .line 55
    invoke-interface {v1, v4, p1}, Lcom/ss/ttvideoengine/net/DNSCompletionListener;->onCompletion(Lorg/json/JSONObject;Lcom/ss/ttvideoengine/utils/Error;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_5
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/net/BaseDNS;->close()V

    .line 60
    .line 61
    .line 62
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast p1, Lcom/ss/ttvideoengine/utils/Error;

    .line 65
    .line 66
    invoke-interface {v1, p1}, Lcom/ss/ttvideoengine/net/DNSCompletionListener;->onRetry(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_6
    invoke-interface {v1}, Lcom/ss/ttvideoengine/net/DNSCompletionListener;->onCancelled()V

    .line 71
    .line 72
    .line 73
    :goto_0
    return-void
.end method
