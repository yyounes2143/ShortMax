.class public Lcom/ss/texturerender/vsync/VRVsyncHelper;
.super Ljava/lang/Object;
.source "VRVsyncHelper.java"

# interfaces
.implements Lcom/ss/texturerender/vsync/IVsyncHelper;


# instance fields
.field private mCallbackList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/ss/texturerender/vsync/IVsyncCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mEnable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/texturerender/vsync/VRVsyncHelper;->mCallbackList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/ss/texturerender/vsync/VRVsyncHelper;->mEnable:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public addObserver(Lcom/ss/texturerender/vsync/IVsyncCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/vsync/VRVsyncHelper;->mCallbackList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/texturerender/vsync/VRVsyncHelper;->mCallbackList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public isWorking()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/vsync/VRVsyncHelper;->mCallbackList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/ss/texturerender/vsync/VRVsyncHelper;->mEnable:Z

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
    iget-object v0, p0, Lcom/ss/texturerender/vsync/VRVsyncHelper;->mCallbackList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/texturerender/vsync/VRVsyncHelper;->mEnable:Z

    .line 2
    .line 3
    return-void
.end method

.method public update()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ss/texturerender/vsync/VRVsyncHelper;->mEnable:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/ss/texturerender/vsync/VRVsyncHelper;->mCallbackList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/ss/texturerender/vsync/IVsyncCallback;

    .line 22
    .line 23
    invoke-interface {v1}, Lcom/ss/texturerender/vsync/IVsyncCallback;->notifyVsync()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method
