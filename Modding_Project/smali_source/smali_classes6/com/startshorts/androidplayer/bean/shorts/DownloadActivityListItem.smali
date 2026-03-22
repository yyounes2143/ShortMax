.class public final Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;
.super Ljava/lang/Object;
.source "DownloadActivityListItem.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private downloadInfo:Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private episode:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isSelect:Z


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "episode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->episode:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic copy$default(Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ILjava/lang/Object;)Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->episode:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->copy(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->episode:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "episode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;-><init>(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->episode:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->episode:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 16
    .line 17
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    return v0
.end method

.method public final generalTaskInfo(I)Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;
    .locals 19
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v7, p1

    .line 4
    .line 5
    move/from16 v6, p1

    .line 6
    .line 7
    iget-object v1, v0, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->episode:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 8
    .line 9
    invoke-virtual {v1, v7}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->parseVideoUrl(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    move-object v5, v1

    .line 14
    sget-object v2, Lpf/a;->a:Lpf/a;

    .line 15
    .line 16
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v1}, Lpf/a;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v10

    .line 23
    new-instance v18, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 24
    .line 25
    move-object/from16 v1, v18

    .line 26
    .line 27
    iget-object v2, v0, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->episode:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    iget-object v3, v0, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->episode:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 34
    .line 35
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    iget-object v4, v0, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->episode:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 40
    .line 41
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getEpisodeNum()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    iget-object v8, v0, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->episode:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 46
    .line 47
    invoke-virtual {v8, v7}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getVideoSize(I)Ljava/lang/Long;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 55
    .line 56
    .line 57
    move-result-wide v7

    .line 58
    iget-object v9, v0, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->episode:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 59
    .line 60
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getCoverId()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v11

    .line 64
    iget-object v9, v0, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->episode:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 65
    .line 66
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getRowDramaCover()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v12

    .line 70
    iget-object v9, v0, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->episode:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 71
    .line 72
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getCheckedShortPlayName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v13

    .line 76
    iget-object v9, v0, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->episode:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 77
    .line 78
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getSummary()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v14

    .line 82
    iget-object v9, v0, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->episode:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 83
    .line 84
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayCode()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v15

    .line 88
    iget-object v9, v0, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->episode:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 89
    .line 90
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getUpack()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v16

    .line 94
    iget-object v9, v0, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->episode:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 95
    .line 96
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getRowLock()I

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v17

    .line 104
    const/4 v9, 0x0

    .line 105
    invoke-direct/range {v1 .. v17}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;-><init>(IIILjava/lang/String;IJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    .line 107
    .line 108
    return-object v18
.end method

.method public final getDownloadInfo()Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->downloadInfo:Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDownloadStatus()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->downloadInfo:Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getDownloadState()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x6

    .line 11
    return v0
.end method

.method public final getEpisode()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->episode:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->episode:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final isSelect()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->isSelect:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isSelectAble()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->downloadInfo:Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getDownloadState()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v2, 0x6

    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :cond_1
    :goto_0
    return v1
.end method

.method public final setDownloadInfo(Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->downloadInfo:Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 2
    .line 3
    return-void
.end method

.method public final setEpisode(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->episode:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 7
    .line 8
    return-void
.end method

.method public final setSelect(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->isSelect:Z

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
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
    const-string v1, "DownloadActivityListItem(episode="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->episode:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x29

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
