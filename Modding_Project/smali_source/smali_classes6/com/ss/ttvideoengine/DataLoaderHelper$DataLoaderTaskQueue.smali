.class Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;
.super Ljava/lang/Object;
.source "DataLoaderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/DataLoaderHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataLoaderTaskQueue"
.end annotation


# instance fields
.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mMaxCount:J

.field private final mTaskItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ss/ttvideoengine/DataLoaderHelper;


# direct methods
.method private constructor <init>(Lcom/ss/ttvideoengine/DataLoaderHelper;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->this$0:Lcom/ss/ttvideoengine/DataLoaderHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mTaskItems:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mMaxCount:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/ttvideoengine/DataLoaderHelper;Lcom/ss/ttvideoengine/DataLoaderHelper$1;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;-><init>(Lcom/ss/ttvideoengine/DataLoaderHelper;)V

    return-void
.end method

.method private _enoughItems()Ljava/lang/Boolean;
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mMaxCount:J

    .line 2
    .line 3
    const-wide/16 v2, 0x1

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-ltz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mTaskItems:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    int-to-long v0, v0

    .line 16
    iget-wide v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mMaxCount:J

    .line 17
    .line 18
    cmp-long v0, v0, v2

    .line 19
    .line 20
    if-ltz v0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0

    .line 30
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 31
    .line 32
    return-object v0
.end method


# virtual methods
.method public backItem()Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mTaskItems:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    return-object v0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mTaskItems:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    add-int/lit8 v1, v1, -0x1

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 38
    .line 39
    .line 40
    return-object v0
.end method

.method public containItem(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 14
    .line 15
    .line 16
    :goto_0
    iget-object v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mTaskItems:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-ge v1, v2, :cond_2

    .line 23
    .line 24
    iget-object v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mTaskItems:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;

    .line 31
    .line 32
    invoke-virtual {v2, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->getTrackItem(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    return p1
.end method

.method public count()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mTaskItems:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    int-to-long v0, v0

    .line 13
    iget-object v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 16
    .line 17
    .line 18
    return-wide v0
.end method

.method enqueueItem(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mTracks:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    return v0

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->_enoughItems()Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mTaskItems:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 38
    .line 39
    :goto_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    return p1
.end method

.method public frontItem()Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mTaskItems:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    return-object v0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mTaskItems:Ljava/util/ArrayList;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 33
    .line 34
    .line 35
    return-object v0
.end method

.method public itemForKey(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    :goto_0
    iget-object v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mTaskItems:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-ge v0, v2, :cond_2

    .line 22
    .line 23
    iget-object v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mTaskItems:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;

    .line 30
    .line 31
    invoke-virtual {v2, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->getTrackItem(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    move-object v1, v2

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 45
    .line 46
    .line 47
    return-object v1
.end method

.method public itemForVideoId(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    :goto_0
    iget-object v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mTaskItems:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-ge v0, v2, :cond_2

    .line 22
    .line 23
    iget-object v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mTaskItems:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;

    .line 30
    .line 31
    iget-object v3, v2, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoId:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_1

    .line 38
    .line 39
    iget-object v3, v2, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoId:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    move-object v1, v2

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 55
    .line 56
    .line 57
    return-object v1
.end method

.method public popBackItem()Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mTaskItems:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    return-object v0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mTaskItems:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    add-int/lit8 v1, v1, -0x1

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mTaskItems:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 43
    .line 44
    .line 45
    return-object v0
.end method

.method public popFrontItem()Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mTaskItems:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    return-object v0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mTaskItems:Ljava/util/ArrayList;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mTaskItems:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 38
    .line 39
    .line 40
    return-object v0
.end method

.method public popItem(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;
    .locals 2

    .line 8
    iget-object v0, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9
    iget-object v0, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->popItemForVideoId(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 10
    :cond_1
    iget-object p1, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mTracks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;

    .line 11
    iget-object v0, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mTaskKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->popItem(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_3
    return-object v0
.end method

.method public popItem(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mTaskItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 4
    iget-object v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mTaskItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;

    .line 5
    invoke-virtual {v2, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->getTrackItem(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mTaskItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1
.end method

.method public popItemForVideoId(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    :goto_0
    iget-object v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mTaskItems:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-ge v0, v2, :cond_2

    .line 22
    .line 23
    iget-object v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mTaskItems:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;

    .line 30
    .line 31
    iget-object v3, v2, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoId:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_1

    .line 38
    .line 39
    iget-object v3, v2, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoId:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    move-object v1, v2

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 53
    .line 54
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mTaskItems:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    :cond_3
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 62
    .line 63
    .line 64
    return-object v1
.end method

.method public removeAll()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mTaskItems:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public setMaxCount(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mMaxCount:J

    .line 2
    .line 3
    return-void
.end method

.method public toArray()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mTaskItems:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 19
    .line 20
    .line 21
    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskQueue;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 26
    .line 27
    .line 28
    throw v0
.end method
