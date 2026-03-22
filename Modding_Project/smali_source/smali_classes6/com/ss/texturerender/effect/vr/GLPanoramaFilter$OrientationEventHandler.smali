.class public Lcom/ss/texturerender/effect/vr/GLPanoramaFilter$OrientationEventHandler;
.super Landroid/view/OrientationEventListener;
.source "GLPanoramaFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OrientationEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;


# direct methods
.method public constructor <init>(Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter$OrientationEventHandler;->this$0:Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter$OrientationEventHandler;->this$0:Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mTouchDirector:Lcom/ss/texturerender/effect/vr/director/TouchDirector;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget v2, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mDirectMode:I

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    if-eq v2, v3, :cond_0

    .line 11
    .line 12
    iget-boolean v0, v0, Lcom/ss/texturerender/effect/vr/GLPanoramaFilter;->mSensorDirectorEnabled:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    invoke-virtual {v1, p1, v0}, Lcom/ss/texturerender/effect/vr/director/TouchDirector;->updateDeviceOrientation(IZ)V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method
