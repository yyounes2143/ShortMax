.class public final Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;
.super Ljava/lang/Object;
.source "DownloadTaskInfo.kt"


# annotations
.annotation build Landroidx/room/Entity;
    tableName = "download_tasks"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private cacheKey:Ljava/lang/String;
    .annotation build Landroidx/room/PrimaryKey;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private content:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private downloadProgress:F

.field private downloadSpeed:J
    .annotation build Landroidx/room/Ignore;
    .end annotation
.end field

.field private downloadState:I

.field private dramaCoverUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private dramaId:I

.field private dramaName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private dramaNum:I

.field private fileSize:J

.field private lastDownloadProgress:F
    .annotation build Landroidx/room/Ignore;
    .end annotation
.end field

.field private lock:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lsatCalculateTime:J
    .annotation build Landroidx/room/Ignore;
    .end annotation
.end field

.field private shortCoverUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private shortPlayCode:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private shortPlayId:I

.field private solution:I

.field private upack:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIILjava/lang/String;IJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 5
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p4

    move-object v2, p9

    const-string/jumbo v3, "url"

    invoke-static {p4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "cacheKey"

    invoke-static {p9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v3, p1

    .line 2
    iput v3, v0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->shortPlayId:I

    move v3, p2

    iput v3, v0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->dramaId:I

    move v3, p3

    iput v3, v0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->dramaNum:I

    .line 3
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->url:Ljava/lang/String;

    move v1, p5

    iput v1, v0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->solution:I

    move-wide v3, p6

    .line 4
    iput-wide v3, v0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->fileSize:J

    move v1, p8

    .line 5
    iput v1, v0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->downloadState:I

    .line 6
    iput-object v2, v0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->cacheKey:Ljava/lang/String;

    move-object v1, p10

    .line 7
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->shortCoverUrl:Ljava/lang/String;

    move-object/from16 v1, p11

    .line 8
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->dramaCoverUrl:Ljava/lang/String;

    move-object/from16 v1, p12

    .line 9
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->dramaName:Ljava/lang/String;

    move-object/from16 v1, p13

    .line 10
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->content:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 11
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->shortPlayCode:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 12
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->upack:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 13
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->lock:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(IIILjava/lang/String;IJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 19

    move/from16 v0, p17

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move v10, v1

    goto :goto_0

    :cond_0
    move/from16 v10, p8

    :goto_0
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    .line 14
    sget-object v0, Lpf/a;->a:Lpf/a;

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lpf/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    goto :goto_1

    :cond_1
    move-object/from16 v1, p4

    move-object/from16 v11, p9

    :goto_1
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    .line 15
    invoke-direct/range {v2 .. v18}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;-><init>(IIILjava/lang/String;IJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final getCacheKey()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->cacheKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getContent()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->content:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDownloadProgress()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->downloadProgress:F

    .line 2
    .line 3
    return v0
.end method

.method public final getDownloadSpeed()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->downloadSpeed:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getDownloadState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->downloadState:I

    .line 2
    .line 3
    return v0
.end method

.method public final getDownloadSubKey()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->shortPlayId:I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const/16 v1, 0x3a

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget v2, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->dramaId:I

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget v1, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->dramaNum:I

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method public final getDownloadedSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->fileSize:J

    .line 2
    .line 3
    long-to-float v0, v0

    .line 4
    iget v1, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->downloadProgress:F

    .line 5
    .line 6
    mul-float/2addr v0, v1

    .line 7
    float-to-long v0, v0

    .line 8
    return-wide v0
.end method

.method public final getDramaCoverUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->dramaCoverUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDramaId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->dramaId:I

    .line 2
    .line 3
    return v0
.end method

.method public final getDramaName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->dramaName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDramaNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->dramaNum:I

    .line 2
    .line 3
    return v0
.end method

.method public final getFileSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->fileSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getLastDownloadProgress()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->lastDownloadProgress:F

    .line 2
    .line 3
    return v0
.end method

.method public final getLock()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->lock:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLsatCalculateTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->lsatCalculateTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getShortCoverUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->shortCoverUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShortPlayCode()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->shortPlayCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShortPlayId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->shortPlayId:I

    .line 2
    .line 3
    return v0
.end method

.method public final getShowProgress()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->downloadProgress:F

    .line 2
    .line 3
    const/16 v1, 0x64

    .line 4
    .line 5
    int-to-float v1, v1

    .line 6
    mul-float/2addr v0, v1

    .line 7
    float-to-int v0, v0

    .line 8
    return v0
.end method

.method public final getShowSpeed()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-wide v1, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->downloadSpeed:J

    .line 7
    .line 8
    const/16 v3, 0x3e8

    .line 9
    .line 10
    int-to-long v3, v3

    .line 11
    mul-long/2addr v1, v3

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Luh/s;->a(Ljava/lang/Long;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "/s"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method

.method public final getSolution()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->solution:I

    .line 2
    .line 3
    return v0
.end method

.method public final getUpack()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->upack:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final hasUnFinishJob()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->downloadState:I

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public final isDownloadAbleItem()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->downloadState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :cond_1
    :goto_0
    return v1
.end method

.method public final isDownloadingItem()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->downloadState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v2, 0x3

    .line 7
    if-eq v0, v2, :cond_1

    .line 8
    .line 9
    const/4 v2, 0x5

    .line 10
    if-eq v0, v2, :cond_1

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :cond_1
    :goto_0
    return v1
.end method

.method public final isLockType()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->lock:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 15
    :goto_1
    return v1
.end method

.method public final resetDownloadSpeed()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->lsatCalculateTime:J

    .line 4
    .line 5
    iput-wide v0, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->downloadSpeed:J

    .line 6
    .line 7
    return-void
.end method

.method public final setCacheKey(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->cacheKey:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setContent(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->content:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDownloadProgress(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->downloadProgress:F

    .line 2
    .line 3
    return-void
.end method

.method public final setDownloadSpeed(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->downloadSpeed:J

    .line 2
    .line 3
    return-void
.end method

.method public final setDownloadState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->downloadState:I

    .line 2
    .line 3
    return-void
.end method

.method public final setDownloadedProgress(F)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->lsatCalculateTime:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->startDownload(F)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iget-wide v2, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->lsatCalculateTime:J

    .line 18
    .line 19
    sub-long/2addr v0, v2

    .line 20
    long-to-int v2, v0

    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->downloadProgress:F

    .line 25
    .line 26
    iget v2, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->lastDownloadProgress:F

    .line 27
    .line 28
    sub-float v2, p1, v2

    .line 29
    .line 30
    iget-wide v3, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->fileSize:J

    .line 31
    .line 32
    long-to-float v3, v3

    .line 33
    mul-float/2addr v3, v2

    .line 34
    long-to-float v4, v0

    .line 35
    div-float v4, v3, v4

    .line 36
    .line 37
    float-to-long v4, v4

    .line 38
    iput-wide v4, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->downloadSpeed:J

    .line 39
    .line 40
    iput p1, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->lastDownloadProgress:F

    .line 41
    .line 42
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 43
    .line 44
    .line 45
    move-result-wide v4

    .line 46
    iput-wide v4, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->lsatCalculateTime:J

    .line 47
    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string/jumbo v4, "speed:"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-wide v4, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->downloadSpeed:J

    .line 60
    .line 61
    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v4, " progressChange "

    .line 65
    .line 66
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v2, " +byteChange"

    .line 73
    .line 74
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v2, "  timeChange:"

    .line 81
    .line 82
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const/16 v0, 0x20

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-static {p1}, Luh/s;->b(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :goto_0
    return-void
.end method

.method public final setDramaCoverUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->dramaCoverUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDramaId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->dramaId:I

    .line 2
    .line 3
    return-void
.end method

.method public final setDramaName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->dramaName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDramaNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->dramaNum:I

    .line 2
    .line 3
    return-void
.end method

.method public final setFileSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->fileSize:J

    .line 2
    .line 3
    return-void
.end method

.method public final setLastDownloadProgress(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->lastDownloadProgress:F

    .line 2
    .line 3
    return-void
.end method

.method public final setLock(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->lock:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setLsatCalculateTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->lsatCalculateTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setShortCoverUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->shortCoverUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setShortPlayCode(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->shortPlayCode:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setShortPlayId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->shortPlayId:I

    .line 2
    .line 3
    return-void
.end method

.method public final setSolution(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->solution:I

    .line 2
    .line 3
    return-void
.end method

.method public final setUpack(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->upack:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->url:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final startDownload(F)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->lsatCalculateTime:J

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->downloadSpeed:J

    .line 10
    .line 11
    iput p1, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->downloadProgress:F

    .line 12
    .line 13
    iput p1, p0, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->lastDownloadProgress:F

    .line 14
    .line 15
    return-void
.end method
