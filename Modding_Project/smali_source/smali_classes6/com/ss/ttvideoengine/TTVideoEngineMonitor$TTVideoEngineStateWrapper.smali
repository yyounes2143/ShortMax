.class final Lcom/ss/ttvideoengine/TTVideoEngineMonitor$TTVideoEngineStateWrapper;
.super Ljava/lang/Object;
.source "TTVideoEngineMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/TTVideoEngineMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TTVideoEngineStateWrapper"
.end annotation


# instance fields
.field private hasSetPlaying:Z

.field final synthetic this$0:Lcom/ss/ttvideoengine/TTVideoEngineMonitor;

.field private weakVideoEngine:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/ttvideoengine/TTVideoEngine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/TTVideoEngineMonitor;Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor$TTVideoEngineStateWrapper;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineMonitor;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor$TTVideoEngineStateWrapper;->weakVideoEngine:Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor$TTVideoEngineStateWrapper;->weakVideoEngine:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor$TTVideoEngineStateWrapper;->hasSetPlaying:Z

    .line 18
    .line 19
    return-void
.end method

.method static synthetic access$100(Lcom/ss/ttvideoengine/TTVideoEngineMonitor$TTVideoEngineStateWrapper;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor$TTVideoEngineStateWrapper;->weakVideoEngine:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/ss/ttvideoengine/TTVideoEngineMonitor$TTVideoEngineStateWrapper;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor$TTVideoEngineStateWrapper;->hasSetPlaying:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$202(Lcom/ss/ttvideoengine/TTVideoEngineMonitor$TTVideoEngineStateWrapper;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor$TTVideoEngineStateWrapper;->hasSetPlaying:Z

    .line 2
    .line 3
    return p1
.end method
