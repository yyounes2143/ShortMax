.class public Lcom/ss/ttvideoengine/VideoEngineInfos;
.super Ljava/lang/Object;
.source "VideoEngineInfos.java"


# static fields
.field public static final USING_BUFFERING_END_INFOS:Ljava/lang/String; = "bufferEndInfos"

.field public static final USING_BUFFERING_START_INFOS:Ljava/lang/String; = "bufferStartInfos"

.field public static final USING_FIRST_FRAME_SPLIT_INFOS:Ljava/lang/String; = "firstframe_split"

.field public static final USING_MDL_CACHE_END:Ljava/lang/String; = "mdlcacheend"

.field public static final USING_MDL_FILEPATH_HIT_CACHE_SIZE:Ljava/lang/String; = "mdlfilepathhitcachesize"

.field public static final USING_MDL_HIT_CACHE_SIZE:Ljava/lang/String; = "mdlhitcachesize"

.field public static final USING_NO_RENDER_END_INFOS:Ljava/lang/String; = "noRenderEndInfos"

.field public static final USING_NO_RENDER_START_INFOS:Ljava/lang/String; = "noRenderStartInfos"

.field public static final USING_OUTSYNC_END_INFOS:Ljava/lang/String; = "outsyncEndInfos"

.field public static final USING_OUTSYNC_START_INFOS:Ljava/lang/String; = "outsyncStartInfos"

.field public static final USING_RENDER_SEEK_COMPLETE:Ljava/lang/String; = "renderSeekComplete"

.field public static final USING_URL_INFOS:Ljava/lang/String; = "usingUrlInfos"


# instance fields
.field mGroupID:Ljava/lang/String;

.field mHitCacheSize:J

.field mKey:Ljava/lang/String;

.field mObject:Ljava/lang/Object;

.field mUrlInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/model/VideoInfo;",
            ">;"
        }
    .end annotation
.end field

.field mUsingMDLPlayFilePath:Ljava/lang/String;

.field mUsingMDLPlayTaskKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ss/ttvideoengine/VideoEngineInfos;->mUsingMDLPlayTaskKey:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/ss/ttvideoengine/VideoEngineInfos;->mUsingMDLPlayFilePath:Ljava/lang/String;

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/ss/ttvideoengine/VideoEngineInfos;->mHitCacheSize:J

    .line 12
    .line 13
    const-string v0, ""

    .line 14
    .line 15
    iput-object v0, p0, Lcom/ss/ttvideoengine/VideoEngineInfos;->mGroupID:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public getGroupID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/VideoEngineInfos;->mGroupID:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/VideoEngineInfos;->mKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/VideoEngineInfos;->mObject:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUrlInfos()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/model/VideoInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/VideoEngineInfos;->mUrlInfos:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUsingMDLHitCacheSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/VideoEngineInfos;->mHitCacheSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getUsingMDLPlayTaskKey()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/VideoEngineInfos;->mUsingMDLPlayTaskKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getmUsingMDLPlayFilePath()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/VideoEngineInfos;->mUsingMDLPlayFilePath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setGroupID(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/VideoEngineInfos;->mGroupID:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/VideoEngineInfos;->mKey:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/VideoEngineInfos;->mObject:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public setUrlInfos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/model/VideoInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/VideoEngineInfos;->mUrlInfos:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setUsingMDLHitCacheSize(J)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/ss/ttvideoengine/VideoEngineInfos;->mHitCacheSize:J

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public setUsingMDLPlayTaskKey(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput-object p1, p0, Lcom/ss/ttvideoengine/VideoEngineInfos;->mUsingMDLPlayTaskKey:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method
