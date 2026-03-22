.class Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer$SurfaceTextureStatus;
.super Ljava/lang/Object;
.source "OverlayVideoTextureRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SurfaceTextureStatus"
.end annotation


# static fields
.field public static NEED_DRAW:I = 0x1

.field public static NEED_DROP:I = 0x3

.field public static NEED_NOT_DRAW:I = 0x2


# instance fields
.field public frameTime:Lcom/ss/texturerender/overlay/FrameTimeQueue$FrameTime;

.field public status:I

.field public surfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/ss/texturerender/VideoSurfaceTexture;Lcom/ss/texturerender/overlay/FrameTimeQueue$FrameTime;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer$SurfaceTextureStatus;->surfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 5
    .line 6
    sget p1, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer$SurfaceTextureStatus;->NEED_DRAW:I

    .line 7
    .line 8
    iput p1, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer$SurfaceTextureStatus;->status:I

    .line 9
    .line 10
    iput-object p2, p0, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer$SurfaceTextureStatus;->frameTime:Lcom/ss/texturerender/overlay/FrameTimeQueue$FrameTime;

    .line 11
    .line 12
    return-void
.end method
