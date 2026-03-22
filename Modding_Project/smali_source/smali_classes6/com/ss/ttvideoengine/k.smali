.class public final synthetic Lcom/ss/ttvideoengine/k;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/ss/texturerender/VideoSurface$OnErrorListener;


# instance fields
.field public final synthetic a:Lcom/ss/ttvideoengine/TTVideoEngineImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/ss/ttvideoengine/k;->a:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onError(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/k;->a:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->d(Lcom/ss/ttvideoengine/TTVideoEngineImpl;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
