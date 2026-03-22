.class public Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;
.super Ljava/lang/Object;
.source "PreLoaderItemCallBackInfo.java"


# static fields
.field public static final KEY_IS_FETCH_END_VIDEOMODEL:I = 0x4

.field public static final KEY_IS_PRELOAD_ADDED:I = 0x7

.field public static final KEY_IS_PRELOAD_ALL_URL_FAILED:I = 0x9

.field public static final KEY_IS_PRELOAD_END_CANCEL:I = 0x5

.field public static final KEY_IS_PRELOAD_END_FAIL:I = 0x3

.field public static final KEY_IS_PRELOAD_END_SUCCEED:I = 0x2

.field public static final KEY_IS_PRELOAD_INFO:I = 0x6

.field public static final KEY_IS_PRELOAD_START:I = 0x8

.field public static final KEY_IS_USING_URLINFOS:I = 0x1

.field public static final PRELOAD_TYPE_MILLISECOND:I = 0x1

.field public static final PRELOAD_TYPE_SIZE:I


# instance fields
.field public audioPreloadSize:J

.field public businessContext:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public fetchVideoModel:Lcom/ss/ttvideoengine/model/VideoModel;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public fileHash:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public loadProgress:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mKey:I

.field public preloadDataInfo:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public preloadError:Lcom/ss/ttvideoengine/utils/Error;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public preloadType:I

.field public usingUrlInfos:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/model/VideoInfo;",
            ">;"
        }
    .end annotation
.end field

.field public videoPreloadSize:J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;->usingUrlInfos:Ljava/util/List;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;->preloadDataInfo:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;->loadProgress:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;->preloadError:Lcom/ss/ttvideoengine/utils/Error;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;->fetchVideoModel:Lcom/ss/ttvideoengine/model/VideoModel;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;->businessContext:Ljava/lang/String;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;->fileHash:Ljava/lang/String;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;->preloadType:I

    .line 21
    .line 22
    const-wide/16 v0, 0x0

    .line 23
    .line 24
    iput-wide v0, p0, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;->audioPreloadSize:J

    .line 25
    .line 26
    iput-wide v0, p0, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;->videoPreloadSize:J

    .line 27
    .line 28
    iput p1, p0, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;->mKey:I

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public getKey()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;->mKey:I

    .line 2
    .line 3
    return v0
.end method
