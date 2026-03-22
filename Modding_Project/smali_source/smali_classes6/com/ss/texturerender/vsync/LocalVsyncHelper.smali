.class public Lcom/ss/texturerender/vsync/LocalVsyncHelper;
.super Ljava/lang/Object;
.source "LocalVsyncHelper.java"

# interfaces
.implements Lcom/ss/texturerender/vsync/IVsyncHelper;


# static fields
.field private static TAG:Ljava/lang/String; = "TR_VsyncHelperFactory"


# instance fields
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

.field private mMainHandler:Landroid/os/Handler;

.field private mPostDelayedMS:J

.field mRunnable:Ljava/lang/Runnable;

.field private mTexType:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/ss/texturerender/vsync/LocalVsyncHelper;->mTexType:I

    .line 6
    .line 7
    new-instance v0, Lcom/ss/texturerender/vsync/LocalVsyncHelper$1;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/ss/texturerender/vsync/LocalVsyncHelper$1;-><init>(Lcom/ss/texturerender/vsync/LocalVsyncHelper;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/ss/texturerender/vsync/LocalVsyncHelper;->mRunnable:Ljava/lang/Runnable;

    .line 13
    .line 14
    new-instance v0, Landroid/os/Handler;

    .line 15
    .line 16
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/ss/texturerender/vsync/LocalVsyncHelper;->mMainHandler:Landroid/os/Handler;

    .line 24
    .line 25
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 26
    .line 27
    div-float/2addr v0, p2

    .line 28
    float-to-long v0, v0

    .line 29
    iput-wide v0, p0, Lcom/ss/texturerender/vsync/LocalVsyncHelper;->mPostDelayedMS:J

    .line 30
    .line 31
    iput p1, p0, Lcom/ss/texturerender/vsync/LocalVsyncHelper;->mTexType:I

    .line 32
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/ss/texturerender/vsync/LocalVsyncHelper;->mCallbackList:Ljava/util/ArrayList;

    .line 39
    .line 40
    sget-object v0, Lcom/ss/texturerender/vsync/LocalVsyncHelper;->TAG:Ljava/lang/String;

    .line 41
    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v2, "new LocalVsyncHelper,fps:"

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-static {p1, v0, p2}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/ss/texturerender/vsync/LocalVsyncHelper;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/texturerender/vsync/LocalVsyncHelper;->mCallbackList:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/ss/texturerender/vsync/LocalVsyncHelper;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ss/texturerender/vsync/LocalVsyncHelper;->mEnable:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$200(Lcom/ss/texturerender/vsync/LocalVsyncHelper;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/texturerender/vsync/LocalVsyncHelper;->mPostDelayedMS:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$300(Lcom/ss/texturerender/vsync/LocalVsyncHelper;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/texturerender/vsync/LocalVsyncHelper;->mMainHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public addObserver(Lcom/ss/texturerender/vsync/IVsyncCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/vsync/LocalVsyncHelper;->mCallbackList:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/ss/texturerender/vsync/LocalVsyncHelper;->mCallbackList:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/ss/texturerender/vsync/LocalVsyncHelper;->mCallbackList:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const/4 v0, 0x1

    .line 23
    if-ne p1, v0, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lcom/ss/texturerender/vsync/LocalVsyncHelper;->mMainHandler:Landroid/os/Handler;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/ss/texturerender/vsync/LocalVsyncHelper;->mRunnable:Ljava/lang/Runnable;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public isWorking()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/vsync/LocalVsyncHelper;->mCallbackList:Ljava/util/ArrayList;

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
    iget-boolean v0, p0, Lcom/ss/texturerender/vsync/LocalVsyncHelper;->mEnable:Z

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/vsync/LocalVsyncHelper;->mCallbackList:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p1, p0, Lcom/ss/texturerender/vsync/LocalVsyncHelper;->mCallbackList:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lcom/ss/texturerender/vsync/LocalVsyncHelper;->mMainHandler:Landroid/os/Handler;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/ss/texturerender/vsync/LocalVsyncHelper;->mRunnable:Ljava/lang/Runnable;

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/texturerender/vsync/LocalVsyncHelper;->mEnable:Z

    .line 2
    .line 3
    return-void
.end method

.method public update()V
    .locals 0

    .line 1
    return-void
.end method
