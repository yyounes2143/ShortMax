.class public Lcom/ss/ttvideoengine/preRender/PlayListManager;
.super Ljava/lang/Object;
.source "PlayListManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/preRender/PlayListManager$MyPrerenderListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PlayListManager"


# instance fields
.field private mCurPlayIndex:I

.field private mCurPrerenderIndex:I

.field private mEngineFactory:Lcom/ss/ttvideoengine/preRender/EngineFactory;

.field private mEngineHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ss/ttvideoengine/TTVideoEngine;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private mPreRenderController:Lcom/ss/ttvideoengine/preRender/PreRenderController;

.field private mPreRenderListener:Lcom/ss/ttvideoengine/preRender/PreRenderListener;

.field private mSize:I

.field private mSources:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ss/ttvideoengine/source/Source;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/preRender/EngineFactory;)V
    .locals 2
    .param p1    # Lcom/ss/ttvideoengine/preRender/EngineFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v0, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/ss/ttvideoengine/preRender/PlayListManager;->init(Lcom/ss/ttvideoengine/preRender/EngineFactory;Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithm;)V

    return-void
.end method

.method public constructor <init>(Lcom/ss/ttvideoengine/preRender/EngineFactory;Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithm;)V
    .locals 2
    .param p1    # Lcom/ss/ttvideoengine/preRender/EngineFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithm;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v0, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/preRender/PlayListManager;->init(Lcom/ss/ttvideoengine/preRender/EngineFactory;Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithm;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ss/ttvideoengine/preRender/PlayListManager;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/ss/ttvideoengine/preRender/PlayListManager;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mSources:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/ss/ttvideoengine/preRender/PlayListManager;Lcom/ss/ttvideoengine/source/Source;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/preRender/PlayListManager;->findIndexOfSource(Lcom/ss/ttvideoengine/source/Source;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$300(Lcom/ss/ttvideoengine/preRender/PlayListManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mCurPrerenderIndex:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$400(Lcom/ss/ttvideoengine/preRender/PlayListManager;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mEngineHashMap:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lcom/ss/ttvideoengine/preRender/PlayListManager;)Lcom/ss/ttvideoengine/preRender/PreRenderController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mPreRenderController:Lcom/ss/ttvideoengine/preRender/PreRenderController;

    .line 2
    .line 3
    return-object p0
.end method

.method private findIndexOfSource(Lcom/ss/ttvideoengine/source/Source;)I
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mSources:Ljava/util/ArrayList;

    .line 15
    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    invoke-interface {p1}, Lcom/ss/ttvideoengine/source/Source;->vid()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/4 v1, 0x0

    .line 23
    :goto_0
    iget-object v2, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mSources:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-ge v1, v2, :cond_2

    .line 30
    .line 31
    iget-object v2, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mSources:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lcom/ss/ttvideoengine/source/Source;

    .line 38
    .line 39
    invoke-interface {v2}, Lcom/ss/ttvideoengine/source/Source;->vid()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    move v0, v1

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 61
    .line 62
    .line 63
    return v0
.end method

.method private init(Lcom/ss/ttvideoengine/preRender/EngineFactory;Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithm;)V
    .locals 1
    .param p1    # Lcom/ss/ttvideoengine/preRender/EngineFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithm;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mEngineFactory:Lcom/ss/ttvideoengine/preRender/EngineFactory;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    new-instance p2, Lcom/ss/ttvideoengine/preRender/PreRenderController;

    .line 6
    .line 7
    invoke-direct {p2, p1}, Lcom/ss/ttvideoengine/preRender/PreRenderController;-><init>(Lcom/ss/ttvideoengine/preRender/EngineFactory;)V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mPreRenderController:Lcom/ss/ttvideoengine/preRender/PreRenderController;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Lcom/ss/ttvideoengine/preRender/PreRenderController;

    .line 14
    .line 15
    invoke-direct {v0, p1, p2}, Lcom/ss/ttvideoengine/preRender/PreRenderController;-><init>(Lcom/ss/ttvideoengine/preRender/EngineFactory;Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithm;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mPreRenderController:Lcom/ss/ttvideoengine/preRender/PreRenderController;

    .line 19
    .line 20
    :goto_0
    new-instance p1, Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mEngineHashMap:Ljava/util/HashMap;

    .line 26
    .line 27
    new-instance p1, Lcom/ss/ttvideoengine/preRender/PlayListManager$MyPrerenderListener;

    .line 28
    .line 29
    invoke-direct {p1, p0}, Lcom/ss/ttvideoengine/preRender/PlayListManager$MyPrerenderListener;-><init>(Lcom/ss/ttvideoengine/preRender/PlayListManager;)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mPreRenderListener:Lcom/ss/ttvideoengine/preRender/PreRenderListener;

    .line 33
    .line 34
    iget-object p2, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mPreRenderController:Lcom/ss/ttvideoengine/preRender/PreRenderController;

    .line 35
    .line 36
    invoke-virtual {p2, p1}, Lcom/ss/ttvideoengine/preRender/PreRenderController;->setListener(Lcom/ss/ttvideoengine/preRender/PreRenderListener;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public addList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ss/ttvideoengine/source/Source;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 8
    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mSources:Ljava/util/ArrayList;

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    iput-object p1, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mSources:Ljava/util/ArrayList;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mSources:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iput p1, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mSize:I

    .line 35
    .line 36
    :cond_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public clear()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mSources:Ljava/util/ArrayList;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mSize:I

    .line 15
    .line 16
    iput v0, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mCurPlayIndex:I

    .line 17
    .line 18
    iput v0, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mCurPrerenderIndex:I

    .line 19
    .line 20
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mEngineHashMap:Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Ljava/lang/String;

    .line 41
    .line 42
    iget-object v2, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mEngineHashMap:Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 49
    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/TTVideoEngine;->releaseAsync()V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mEngineHashMap:Ljava/util/HashMap;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public getCurrentEngine()Lcom/ss/ttvideoengine/TTVideoEngine;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mSources:Ljava/util/ArrayList;

    .line 11
    .line 12
    const-string v1, "PlayListManager"

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v2, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mEngineHashMap:Ljava/util/HashMap;

    .line 17
    .line 18
    iget v3, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mCurPlayIndex:I

    .line 19
    .line 20
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/ss/ttvideoengine/source/Source;

    .line 25
    .line 26
    invoke-interface {v0}, Lcom/ss/ttvideoengine/source/Source;->vid()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v3, "get engine from prerender map, engine = "

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-static {v1, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const/4 v0, 0x0

    .line 60
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 67
    .line 68
    .line 69
    if-nez v0, :cond_2

    .line 70
    .line 71
    iget-object v2, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mSources:Ljava/util/ArrayList;

    .line 72
    .line 73
    if-eqz v2, :cond_2

    .line 74
    .line 75
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mEngineFactory:Lcom/ss/ttvideoengine/preRender/EngineFactory;

    .line 76
    .line 77
    iget v3, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mCurPlayIndex:I

    .line 78
    .line 79
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    check-cast v2, Lcom/ss/ttvideoengine/source/Source;

    .line 84
    .line 85
    invoke-interface {v0, v2}, Lcom/ss/ttvideoengine/preRender/EngineFactory;->createEngine(Lcom/ss/ttvideoengine/source/Source;)Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v3, "get engine from factory, engine = "

    .line 95
    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-static {v1, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :cond_2
    return-object v0
.end method

.method public getCurrentSource()Lcom/ss/ttvideoengine/source/Source;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mSources:Ljava/util/ArrayList;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget v1, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mCurPlayIndex:I

    .line 15
    .line 16
    iget v2, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mSize:I

    .line 17
    .line 18
    if-ge v1, v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/ss/ttvideoengine/source/Source;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 35
    .line 36
    .line 37
    return-object v0
.end method

.method public getNextSource()Lcom/ss/ttvideoengine/source/Source;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mSources:Ljava/util/ArrayList;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget v1, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mCurPlayIndex:I

    .line 15
    .line 16
    add-int/lit8 v2, v1, 0x1

    .line 17
    .line 18
    iget v3, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mSize:I

    .line 19
    .line 20
    if-ge v2, v3, :cond_0

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/ss/ttvideoengine/source/Source;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 39
    .line 40
    .line 41
    return-object v0
.end method

.method public setCurrentSource(Lcom/ss/ttvideoengine/source/Source;)V
    .locals 4
    .param p1    # Lcom/ss/ttvideoengine/source/Source;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "set current source, vid = "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const-string v1, "null"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-interface {p1}, Lcom/ss/ttvideoengine/source/Source;->vid()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "PlayListManager"

    .line 28
    .line 29
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mPreRenderController:Lcom/ss/ttvideoengine/preRender/PreRenderController;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/preRender/PreRenderController;->stop()V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mSources:Ljava/util/ArrayList;

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/preRender/PlayListManager;->findIndexOfSource(Lcom/ss/ttvideoengine/source/Source;)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-ltz p1, :cond_2

    .line 59
    .line 60
    iput p1, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mCurPlayIndex:I

    .line 61
    .line 62
    add-int/2addr p1, v0

    .line 63
    iput p1, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mCurPrerenderIndex:I

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    iput v1, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mCurPlayIndex:I

    .line 67
    .line 68
    iput v1, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mCurPrerenderIndex:I

    .line 69
    .line 70
    :cond_2
    :goto_1
    iget p1, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mCurPrerenderIndex:I

    .line 71
    .line 72
    iget v2, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mSize:I

    .line 73
    .line 74
    if-ge p1, v2, :cond_3

    .line 75
    .line 76
    iget-object v2, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mSources:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Lcom/ss/ttvideoengine/source/Source;

    .line 83
    .line 84
    iget-object v2, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mEngineHashMap:Ljava/util/HashMap;

    .line 85
    .line 86
    invoke-interface {p1}, Lcom/ss/ttvideoengine/source/Source;->vid()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-nez v2, :cond_3

    .line 95
    .line 96
    iget-object v1, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mPreRenderController:Lcom/ss/ttvideoengine/preRender/PreRenderController;

    .line 97
    .line 98
    invoke-virtual {v1, p1}, Lcom/ss/ttvideoengine/preRender/PreRenderController;->setSource(Lcom/ss/ttvideoengine/source/Source;)V

    .line 99
    .line 100
    .line 101
    move v1, v0

    .line 102
    :cond_3
    iget-object p1, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 109
    .line 110
    .line 111
    if-eqz v1, :cond_4

    .line 112
    .line 113
    iget-object p1, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mPreRenderController:Lcom/ss/ttvideoengine/preRender/PreRenderController;

    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/preRender/PreRenderController;->start()Z

    .line 116
    .line 117
    .line 118
    :cond_4
    return-void
.end method

.method public setList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ss/ttvideoengine/source/Source;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mSources:Ljava/util/ArrayList;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    move p1, v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    :goto_0
    iput p1, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mSize:I

    .line 22
    .line 23
    iput v0, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mCurPlayIndex:I

    .line 24
    .line 25
    iput v0, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mCurPrerenderIndex:I

    .line 26
    .line 27
    iget-object p1, p0, Lcom/ss/ttvideoengine/preRender/PlayListManager;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 34
    .line 35
    .line 36
    return-void
.end method
