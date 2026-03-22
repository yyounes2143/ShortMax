.class public Lcom/ss/texturerender/vsync/VsyncHelper;
.super Ljava/lang/Object;
.source "VsyncHelper.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;
.implements Landroid/os/Handler$Callback;
.implements Lcom/ss/texturerender/vsync/IVsyncHelper;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/texturerender/vsync/VsyncHelper$VsyncCallback;
    }
.end annotation


# static fields
.field public static final DEFAULT_REFRESH_RATE:F = 60.0f

.field private static final NANOS_PER_SECOND:J = 0x3b9aca00L

.field private static final TAG:Ljava/lang/String; = "VsyncHelper"


# instance fields
.field private choreographer:Landroid/view/Choreographer;

.field private mCallbackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ss/texturerender/vsync/IVsyncCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mEnable:Z

.field private mTexType:I

.field private mainHandler:Landroid/os/Handler;

.field private volatile vsyncDurationNs:J

.field private final windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/ss/texturerender/vsync/VsyncHelper;->mTexType:I

    .line 6
    .line 7
    new-instance v0, Landroid/os/Handler;

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/ss/texturerender/vsync/VsyncHelper;->mainHandler:Landroid/os/Handler;

    .line 17
    .line 18
    new-instance v1, Lcom/ss/texturerender/vsync/VsyncHelper$1;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lcom/ss/texturerender/vsync/VsyncHelper$1;-><init>(Lcom/ss/texturerender/vsync/VsyncHelper;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/ss/texturerender/vsync/VsyncHelper;->mCallbackList:Ljava/util/ArrayList;

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string/jumbo v0, "window"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Landroid/view/WindowManager;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/ss/texturerender/vsync/VsyncHelper;->windowManager:Landroid/view/WindowManager;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Lcom/ss/texturerender/vsync/VsyncHelper;->windowManager:Landroid/view/WindowManager;

    .line 53
    .line 54
    :goto_0
    invoke-direct {p0}, Lcom/ss/texturerender/vsync/VsyncHelper;->updateDefaultDisplayRefreshRateParams()V

    .line 55
    .line 56
    .line 57
    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lcom/ss/texturerender/vsync/VsyncHelper;->mEnable:Z

    .line 59
    .line 60
    iput p2, p0, Lcom/ss/texturerender/vsync/VsyncHelper;->mTexType:I

    .line 61
    .line 62
    const-string p1, "VsyncHelper"

    .line 63
    .line 64
    const-string v0, "new VsyncHelper"

    .line 65
    .line 66
    invoke-static {p2, p1, v0}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method static synthetic access$002(Lcom/ss/texturerender/vsync/VsyncHelper;Landroid/view/Choreographer;)Landroid/view/Choreographer;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/texturerender/vsync/VsyncHelper;->choreographer:Landroid/view/Choreographer;

    .line 2
    .line 3
    return-object p1
.end method

.method private addObserverInternal(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/vsync/VsyncHelper;->mCallbackList:Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lcom/ss/texturerender/vsync/IVsyncCallback;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/ss/texturerender/vsync/VsyncHelper;->mCallbackList:Ljava/util/ArrayList;

    .line 14
    .line 15
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p1, Lcom/ss/texturerender/vsync/IVsyncCallback;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/ss/texturerender/vsync/VsyncHelper;->mCallbackList:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const/4 v0, 0x1

    .line 29
    if-ne p1, v0, :cond_0

    .line 30
    .line 31
    iget-object p1, p0, Lcom/ss/texturerender/vsync/VsyncHelper;->choreographer:Landroid/view/Choreographer;

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method private removeObserverInternal(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/vsync/VsyncHelper;->mCallbackList:Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/ss/texturerender/vsync/VsyncHelper;->mCallbackList:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/ss/texturerender/vsync/VsyncHelper;->choreographer:Landroid/view/Choreographer;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method private updateDefaultDisplayRefreshRateParams()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/vsync/VsyncHelper;->windowManager:Landroid/view/WindowManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    float-to-double v1, v1

    .line 18
    const-wide v3, 0x41cdcd6500000000L    # 1.0E9

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    div-double/2addr v3, v1

    .line 24
    double-to-long v1, v3

    .line 25
    iput-wide v1, p0, Lcom/ss/texturerender/vsync/VsyncHelper;->vsyncDurationNs:J

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const-wide/32 v1, 0xfe502b

    .line 29
    .line 30
    .line 31
    iput-wide v1, p0, Lcom/ss/texturerender/vsync/VsyncHelper;->vsyncDurationNs:J

    .line 32
    .line 33
    :goto_1
    iget v1, p0, Lcom/ss/texturerender/vsync/VsyncHelper;->mTexType:I

    .line 34
    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string/jumbo v3, "vsyncDurationNs:"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-wide v3, p0, Lcom/ss/texturerender/vsync/VsyncHelper;->vsyncDurationNs:J

    .line 47
    .line 48
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v3, "defaultDisplay:"

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-string v2, "VsyncHelper"

    .line 64
    .line 65
    invoke-static {v1, v2, v0}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method


# virtual methods
.method public addObserver(Lcom/ss/texturerender/vsync/IVsyncCallback;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/ss/texturerender/vsync/VsyncHelper;->mTexType:I

    .line 2
    .line 3
    const-string v1, "VsyncHelper"

    .line 4
    .line 5
    const-string v2, "addObserver"

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/ss/texturerender/vsync/VsyncHelper;->mainHandler:Landroid/os/Handler;

    .line 14
    .line 15
    const/16 v1, 0x1d

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public doFrame(J)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ss/texturerender/vsync/VsyncHelper;->mCallbackList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-lez p1, :cond_1

    .line 8
    .line 9
    iget-boolean p1, p0, Lcom/ss/texturerender/vsync/VsyncHelper;->mEnable:Z

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lcom/ss/texturerender/vsync/VsyncHelper;->mCallbackList:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    check-cast p2, Lcom/ss/texturerender/vsync/IVsyncCallback;

    .line 30
    .line 31
    invoke-interface {p2}, Lcom/ss/texturerender/vsync/IVsyncCallback;->notifyVsync()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/ss/texturerender/vsync/VsyncHelper;->choreographer:Landroid/view/Choreographer;

    .line 36
    .line 37
    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public getVsyncDurationNs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/texturerender/vsync/VsyncHelper;->vsyncDurationNs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/ss/texturerender/vsync/VsyncHelper;->removeObserverInternal(Landroid/os/Message;)V

    .line 10
    .line 11
    .line 12
    return v1

    .line 13
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/ss/texturerender/vsync/VsyncHelper;->addObserverInternal(Landroid/os/Message;)V

    .line 14
    .line 15
    .line 16
    :pswitch_2
    return v1

    .line 17
    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isWorking()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/vsync/VsyncHelper;->mCallbackList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/ss/texturerender/vsync/VsyncHelper;->mEnable:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public removeObserver(Lcom/ss/texturerender/vsync/IVsyncCallback;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/ss/texturerender/vsync/VsyncHelper;->mTexType:I

    .line 2
    .line 3
    const-string v1, "VsyncHelper"

    .line 4
    .line 5
    const-string v2, "removeObserver"

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/ss/texturerender/vsync/VsyncHelper;->mainHandler:Landroid/os/Handler;

    .line 14
    .line 15
    const/16 v1, 0x1e

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/texturerender/vsync/VsyncHelper;->mEnable:Z

    .line 2
    .line 3
    return-void
.end method

.method public update()V
    .locals 0

    .line 1
    return-void
.end method
