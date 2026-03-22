.class public final synthetic Lcom/ss/ttvideoengine/q;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/ss/ttvideoengine/TTVideoEnginePool;


# direct methods
.method public synthetic constructor <init>(Lcom/ss/ttvideoengine/TTVideoEnginePool;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/ss/ttvideoengine/q;->a:Lcom/ss/ttvideoengine/TTVideoEnginePool;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/q;->a:Lcom/ss/ttvideoengine/TTVideoEnginePool;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTVideoEnginePool;->doReleaseCoreEnginesAndCodecAsync()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
