.class public Lcom/ss/ttvideoengine/debug/DebugManager;
.super Ljava/lang/Object;
.source "DebugManager.java"


# static fields
.field private static sListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/ttvideoengine/debug/DebugListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static enginePlay(Lcom/ss/ttvideoengine/TTVideoEngineInterface;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/debug/DebugManager;->sListener:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/ss/ttvideoengine/debug/DebugListener;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-interface {v0, p0}, Lcom/ss/ttvideoengine/debug/DebugListener;->enginePlay(Lcom/ss/ttvideoengine/TTVideoEngineInterface;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public static setListener(Lcom/ss/ttvideoengine/debug/DebugListener;)V
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    sput-object p0, Lcom/ss/ttvideoengine/debug/DebugManager;->sListener:Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/ss/ttvideoengine/debug/DebugManager;->sListener:Ljava/lang/ref/WeakReference;

    .line 13
    .line 14
    :goto_0
    return-void
.end method
