.class Lcom/ss/texturerender/VideoSurfaceTexture$MyOnFrameAvailableListener;
.super Ljava/lang/Object;
.source "VideoSurfaceTexture.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcom/ss/texturerender/IFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/texturerender/VideoSurfaceTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyOnFrameAvailableListener"
.end annotation


# instance fields
.field private mIsEnable:Z

.field private final mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/texturerender/VideoSurfaceTexture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ss/texturerender/VideoSurfaceTexture;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture$MyOnFrameAvailableListener;->mIsEnable:Z

    .line 6
    .line 7
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture$MyOnFrameAvailableListener;->mRef:Ljava/lang/ref/WeakReference;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture$MyOnFrameAvailableListener;->mIsEnable:Z

    .line 3
    .line 4
    return-void
.end method

.method public onAvailable(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture$MyOnFrameAvailableListener;->mRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-boolean v1, p0, Lcom/ss/texturerender/VideoSurfaceTexture$MyOnFrameAvailableListener;->mIsEnable:Z

    .line 13
    .line 14
    invoke-virtual {v0, v1, p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->onFrameAvailable(ZI)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onFrameAvailable()V
    .locals 1

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lcom/ss/texturerender/VideoSurfaceTexture$MyOnFrameAvailableListener;->onAvailable(I)V

    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    invoke-virtual {p0, p1}, Lcom/ss/texturerender/VideoSurfaceTexture$MyOnFrameAvailableListener;->onAvailable(I)V

    return-void
.end method
