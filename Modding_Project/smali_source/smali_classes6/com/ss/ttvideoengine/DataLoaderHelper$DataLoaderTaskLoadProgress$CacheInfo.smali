.class public Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo;
.super Ljava/lang/Object;
.source "DataLoaderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CacheInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo$CacheRange;
    }
.end annotation


# instance fields
.field public mCacheRanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo$CacheRange;",
            ">;"
        }
    .end annotation
.end field

.field public mError:Lcom/ss/ttvideoengine/utils/Error;

.field public mKey:Ljava/lang/String;

.field public mLocalFilePath:Ljava/lang/String;

.field public mMediaSize:J

.field public mPreloadSize:J

.field public mResolution:Lcom/ss/ttvideoengine/Resolution;

.field final synthetic this$1:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo;->this$1:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo;->mKey:Ljava/lang/String;

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo;->mMediaSize:J

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo;->mPreloadSize:J

    .line 14
    .line 15
    sget-object v0, Lcom/ss/ttvideoengine/Resolution;->Undefine:Lcom/ss/ttvideoengine/Resolution;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo;->mResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo;->mCacheRanges:Ljava/util/List;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo;->mLocalFilePath:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo;->mError:Lcom/ss/ttvideoengine/utils/Error;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public finished()Z
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo;->mPreloadSize:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-lez v4, :cond_0

    .line 8
    .line 9
    iget-wide v4, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo;->mMediaSize:J

    .line 10
    .line 11
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-wide v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo;->mMediaSize:J

    .line 17
    .line 18
    :goto_0
    iget-object v4, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo;->mCacheRanges:Ljava/util/List;

    .line 19
    .line 20
    const/4 v5, 0x1

    .line 21
    if-eqz v4, :cond_1

    .line 22
    .line 23
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    sub-int/2addr v6, v5

    .line 28
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    check-cast v4, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo$CacheRange;

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/4 v4, 0x0

    .line 36
    :goto_1
    iget-object v6, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo;->mError:Lcom/ss/ttvideoengine/utils/Error;

    .line 37
    .line 38
    if-nez v6, :cond_3

    .line 39
    .line 40
    if-eqz v4, :cond_2

    .line 41
    .line 42
    iget-wide v6, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo;->mMediaSize:J

    .line 43
    .line 44
    cmp-long v2, v6, v2

    .line 45
    .line 46
    if-lez v2, :cond_2

    .line 47
    .line 48
    iget-wide v2, v4, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo$CacheRange;->mOffset:J

    .line 49
    .line 50
    iget-wide v6, v4, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo$CacheRange;->mSize:J

    .line 51
    .line 52
    add-long/2addr v2, v6

    .line 53
    cmp-long v0, v2, v0

    .line 54
    .line 55
    if-gez v0, :cond_3

    .line 56
    .line 57
    :cond_2
    const/4 v5, 0x0

    .line 58
    :cond_3
    return v5
.end method

.method public getCacheSize()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo;->mCacheRanges:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo;->mCacheRanges:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/lit8 v1, v1, -0x1

    .line 18
    .line 19
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo$CacheRange;

    .line 24
    .line 25
    iget-wide v0, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo$CacheRange;->mSize:J

    .line 26
    .line 27
    return-wide v0

    .line 28
    :cond_0
    const-wide/16 v0, 0x0

    .line 29
    .line 30
    return-wide v0
.end method

.method setCacheSize(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo;->mCacheRanges:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo;->mCacheRanges:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo;->mCacheRanges:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo;->mCacheRanges:Ljava/util/List;

    .line 21
    .line 22
    new-instance v1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo$CacheRange;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo$CacheRange;-><init>(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo;->mCacheRanges:Ljava/util/List;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo$CacheRange;

    .line 38
    .line 39
    const-wide/16 v2, 0x0

    .line 40
    .line 41
    iput-wide v2, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo$CacheRange;->mOffset:J

    .line 42
    .line 43
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo;->mCacheRanges:Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo$CacheRange;

    .line 50
    .line 51
    iput-wide p1, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo$CacheRange;->mSize:J

    .line 52
    .line 53
    return-void
.end method
