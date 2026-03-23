.class public Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
.super Ljava/lang/Object;
.source "BaseEpisode.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NOT_VIP_FREE:I = 0x2

.field private static final SHORTS_COLLECTED:I = 0x1

.field private static final SHORTS_UNCOLLECTED:I = 0x2

.field public static final STATUS_COMPLETE:I = 0x2

.field public static final STATUS_FOLLOWING:I = 0x1

.field private static final STATUS_LOCKED:I = 0x2

.field private static final STATUS_UNLOCKED:I = 0x1

.field public static final SUBSCRIPT_AI_FOLLOWING:I = 0x8

.field public static final SUBSCRIPT_DUBBED:I = 0x4

.field public static final SUBSCRIPT_EXCLUSIVE:I = 0x2

.field public static final SUBSCRIPT_FREE:I = 0x7

.field public static final SUBSCRIPT_HOT:I = 0x3

.field public static final SUBSCRIPT_MEMBERS_ONLY:I = 0x6

.field public static final SUBSCRIPT_NEW:I = 0x5

.field public static final SUBSCRIPT_RECOMMEND:I = 0x9

.field public static final SUBSCRIPT_VIP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BaseEpisode"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TYPE_NEED_UNLOCK:I = 0x1

.field private static final TYPE_NOT_NEED_UNLOCK:I = 0x2

.field public static final UNLOCK_BY_DISCOUNT:I = 0x1

.field public static final UNLOCK_BY_FREE:I = 0x7

.field public static final UNLOCK_BY_MEMBERS_ONLY:I = 0x5

.field public static final UNLOCK_BY_ONLY_COINS:I = 0x1

.field public static final VIDEO_TYPE_NORMAL:I = 0x1

.field public static final VIDEO_TYPE_TRAILER:I = 0x4

.field public static final VIDEO_TYPE_VIRTUAL:I = 0x63

.field public static final VIP_FREE:I = 0x1


# instance fields
.field private alreadyLock:I

.field private aspectRatio:F

.field private bindShortPlayId:I

.field private final bitRate:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final codec:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final collectLock:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private collectNum:J

.field private completionStatus:I

.field private coordinate:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private cornerLabelStyle:I

.field private cornerLabelText:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private coverId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private downloadResolution:I

.field private episodeNum:I

.field private firstDramId:I

.field private frameExtractionCover:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private ggVideoDramaGenre:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private ggVideoTags:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private id:I

.field private immersionShortsRecordIndex:I

.field private isCollect:I

.field private isDownloadFinished:Z

.field private isMergeShortPlay:Z

.field private final labelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lock:I

.field private lockBegin:I

.field private needDecrypt:Z

.field private final parseVideoUrlLock:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private parsedBitrate:Lcom/startshorts/androidplayer/bean/shorts/EpisodeBitrate;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private parsedCodec:Lcom/startshorts/androidplayer/bean/shorts/EpisodeCodec;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private parsedVideo:Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private parsedVideoSize:Lcom/startshorts/androidplayer/bean/shorts/EpisodeSize;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private price:I

.field private referVideoHeight:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private referVideoWidth:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private shortPlayCode:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private shortPlayContentRatingResponse:Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private shortPlayId:I

.field private shortPlayIsRelease:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private shortPlayName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private subtitling:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private subtitlingConfig:Lcom/startshorts/androidplayer/bean/shorts/SubtitleConfig;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private summary:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private totalEpisodes:I

.field private transedEncryptedSize:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private transedSize:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private unlockBy:I

.field private unlockJustNow:Z

.field private unlockType:I

.field private upack:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private videoDuration:J

.field private videoType:I

.field private videoUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private vipFree:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->Companion:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x3f100000    # 0.5625f

    .line 5
    .line 6
    iput v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->aspectRatio:F

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->bindShortPlayId:I

    .line 10
    .line 11
    iput v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->firstDramId:I

    .line 12
    .line 13
    iput v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->lockBegin:I

    .line 14
    .line 15
    new-instance v1, Ljava/lang/Object;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->parseVideoUrlLock:Ljava/lang/Object;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/Object;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->collectLock:Ljava/lang/Object;

    .line 28
    .line 29
    iput v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->immersionShortsRecordIndex:I

    .line 30
    .line 31
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->shortPlayIsRelease:Ljava/lang/Boolean;

    .line 34
    .line 35
    const-string v0, ""

    .line 36
    .line 37
    iput-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->upack:Ljava/lang/String;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->cornerLabelText:Ljava/lang/String;

    .line 40
    .line 41
    const/16 v0, 0x2d0

    .line 42
    .line 43
    iput v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->downloadResolution:I

    .line 44
    .line 45
    return-void
.end method

.method public static synthetic getVideoSize$default(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;IILjava/lang/Object;)Ljava/lang/Long;
    .locals 0

    .line 1
    if-nez p3, :cond_1

    .line 2
    .line 3
    and-int/lit8 p2, p2, 0x1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/16 p1, 0x2d0

    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getVideoSize(I)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 15
    .line 16
    const-string p1, "Super calls with default arguments not supported in this target, function: getVideoSize"

    .line 17
    .line 18
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p0
.end method

.method private final isIaaUser()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->F0()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public static synthetic parseVideoUrl$default(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;IILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    if-nez p3, :cond_1

    .line 2
    .line 3
    and-int/lit8 p2, p2, 0x1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/16 p1, 0x2d0

    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->parseVideoUrl(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 15
    .line 16
    const-string p1, "Super calls with default arguments not supported in this target, function: parseVideoUrl"

    .line 17
    .line 18
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p0
.end method


# virtual methods
.method public final cancelCollected()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->collectLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isCollected()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    iput v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isCollect:I

    .line 12
    .line 13
    iget-wide v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->collectNum:J

    .line 14
    .line 15
    const-wide/16 v3, 0x1

    .line 16
    .line 17
    sub-long/2addr v1, v3

    .line 18
    iput-wide v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->collectNum:J

    .line 19
    .line 20
    const-wide/16 v3, 0x0

    .line 21
    .line 22
    cmp-long v1, v1, v3

    .line 23
    .line 24
    if-gez v1, :cond_0

    .line 25
    .line 26
    iput-wide v3, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->collectNum:J

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :goto_1
    monitor-exit v0

    .line 36
    throw v1
.end method

.method public final contains1080pUrl()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->videoUrl:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    const/4 v3, 0x0

    .line 8
    const-string/jumbo v4, "video_1080"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v4, v1, v2, v3}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    :cond_0
    return v1
.end method

.method public final contains720pUrl()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->videoUrl:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    const/4 v3, 0x0

    .line 8
    const-string/jumbo v4, "video_720"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v4, v1, v2, v3}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    :cond_0
    return v1
.end method

.method public final createShortsInfo()Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->videoType:I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setVideoType(I)V

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->shortPlayId:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsId(I)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->shortPlayCode:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortPlayCode(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->shortPlayName:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsName(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->coverId:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setCover(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->bindShortPlayId:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setBindShortsId(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isCollected()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setCollected(Z)V

    .line 41
    .line 42
    .line 43
    iget-wide v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->collectNum:J

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setCollectNum(J)V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->shortPlayIsRelease:Ljava/lang/Boolean;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setRelease(Ljava/lang/Boolean;)V

    .line 51
    .line 52
    .line 53
    return-object v0
.end method

.method public final enableSubtitle()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->subtitlingConfig:Lcom/startshorts/androidplayer/bean/shorts/SubtitleConfig;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/SubtitleConfig;->isEnable()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public final getAlreadyLock()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->alreadyLock:I

    .line 2
    .line 3
    return v0
.end method

.method public final getAspectRatio()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->aspectRatio:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpg-float v1, v0, v1

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const/high16 v0, 0x3f100000    # 0.5625f

    .line 9
    .line 10
    :cond_0
    return v0
.end method

.method public final getBindShortPlayId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->bindShortPlayId:I

    .line 2
    .line 3
    return v0
.end method

.method public final getCheckedShortPlayName()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->a:Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;

    .line 2
    .line 3
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->shortPlayId:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->m(I)Lcom/startshorts/androidplayer/bean/shorts/ShortsDetail;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->shortPlayName:Ljava/lang/String;

    .line 30
    .line 31
    :goto_1
    return-object v0
.end method

.method public final getCollectNum()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->collectNum:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getCompletionStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->completionStatus:I

    .line 2
    .line 3
    return v0
.end method

.method public final getCoordinate()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->coordinate:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCornerLabelStyle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->cornerLabelStyle:I

    .line 2
    .line 3
    return v0
.end method

.method public final getCornerLabelText()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->cornerLabelText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCoverHeightForAdOfShorts()I
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getAspectRatio()F

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    div-float/2addr v0, v1

    .line 13
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public final getCoverHeightForImmersion()I
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getAspectRatio()F

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    div-float/2addr v0, v1

    .line 13
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public final getCoverHeightForShorts()I
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/high16 v1, 0x42440000    # 49.0f

    .line 8
    .line 9
    invoke-static {v1}, Ljk/g;->a(F)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    sub-int/2addr v0, v1

    .line 14
    return v0
.end method

.method public final getCoverId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->coverId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCoverWidthForAdOfShorts()I
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getCoverWidthForImmersion()I
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getCoverWidthForShorts()I
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getDownloadResolution()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->downloadResolution:I

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
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->shortPlayId:I

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
    iget v2, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->id:I

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
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->episodeNum:I

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

.method public final getEpisodeNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->episodeNum:I

    .line 2
    .line 3
    return v0
.end method

.method public final getFirstDramId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->firstDramId:I

    .line 2
    .line 3
    return v0
.end method

.method public final getFirstFrameHeightForAdOfShorts()I
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getAspectRatio()F

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    div-float/2addr v0, v1

    .line 13
    const/high16 v1, 0x40c00000    # 6.0f

    .line 14
    .line 15
    div-float/2addr v0, v1

    .line 16
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    return v0
.end method

.method public final getFirstFrameHeightForImmersion()I
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getAspectRatio()F

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    div-float/2addr v0, v1

    .line 13
    const/high16 v1, 0x40c00000    # 6.0f

    .line 14
    .line 15
    div-float/2addr v0, v1

    .line 16
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    return v0
.end method

.method public final getFirstFrameHeightForShorts()I
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->F()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/high16 v1, 0x42440000    # 49.0f

    .line 8
    .line 9
    invoke-static {v1}, Ljk/g;->a(F)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    sub-int/2addr v0, v1

    .line 14
    int-to-float v0, v0

    .line 15
    const/high16 v1, 0x40c00000    # 6.0f

    .line 16
    .line 17
    div-float/2addr v0, v1

    .line 18
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    return v0
.end method

.method public final getFirstFrameWidthForAdOfShorts()I
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    const/high16 v1, 0x40c00000    # 6.0f

    .line 9
    .line 10
    div-float/2addr v0, v1

    .line 11
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public final getFirstFrameWidthForImmersion()I
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    const/high16 v1, 0x40c00000    # 6.0f

    .line 9
    .line 10
    div-float/2addr v0, v1

    .line 11
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public final getFirstFrameWidthForShorts()I
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    const/high16 v1, 0x40c00000    # 6.0f

    .line 9
    .line 10
    div-float/2addr v0, v1

    .line 11
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public final getGgVideoDramaGenre()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->ggVideoDramaGenre:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getGgVideoTags()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->ggVideoTags:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public final getImmersionShortsRecordIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->immersionShortsRecordIndex:I

    .line 2
    .line 3
    return v0
.end method

.method public final getLabelList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->labelList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLockBegin()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->lockBegin:I

    .line 2
    .line 3
    return v0
.end method

.method public final getNeedDecrypt()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->needDecrypt:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getParsedBitrate()Lcom/startshorts/androidplayer/bean/shorts/EpisodeBitrate;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->parsedBitrate:Lcom/startshorts/androidplayer/bean/shorts/EpisodeBitrate;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getParsedCodec()Lcom/startshorts/androidplayer/bean/shorts/EpisodeCodec;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->parsedCodec:Lcom/startshorts/androidplayer/bean/shorts/EpisodeCodec;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getParsedVideo()Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->parsedVideo:Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getParsedVideoSize()Lcom/startshorts/androidplayer/bean/shorts/EpisodeSize;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->parsedVideoSize:Lcom/startshorts/androidplayer/bean/shorts/EpisodeSize;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPrice()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->price:I

    .line 2
    .line 3
    return v0
.end method

.method public final getReferVideoHeight()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->referVideoHeight:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getReferVideoWidth()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->referVideoWidth:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRowDramaCover()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->frameExtractionCover:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRowLock()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->lock:I

    .line 2
    .line 3
    return v0
.end method

.method public final getShareUrl()Ljava/lang/String;
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
    sget-object v1, Lse/a;->a:Lse/a;

    .line 7
    .line 8
    invoke-virtual {v1}, Lse/a;->g()Lcom/startshorts/androidplayer/bean/configure/UrlController;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/configure/UrlController;->getShareUrlEn()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, "?shortPlayId="

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->shortPlayId:I

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, "&shortPlayCode="

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->shortPlayCode:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, "&shareSource=1&utm_id=SHARE&campaign_name=app-shortmax_channel-SHARE_shortid-"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->shortPlayCode:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0
.end method

.method public final getShortPlayCode()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->shortPlayCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShortPlayContentRatingResponse()Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->shortPlayContentRatingResponse:Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShortPlayId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->shortPlayId:I

    .line 2
    .line 3
    return v0
.end method

.method public final getShortPlayIsRelease()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->shortPlayIsRelease:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShortPlayName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->shortPlayName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSubtitling()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->subtitling:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSubtitlingConfig()Lcom/startshorts/androidplayer/bean/shorts/SubtitleConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->subtitlingConfig:Lcom/startshorts/androidplayer/bean/shorts/SubtitleConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSummary()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->summary:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTotalEpisodes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->totalEpisodes:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTransedEncryptedSize()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->transedEncryptedSize:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTransedSize()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->transedSize:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUnlockBy()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->unlockBy:I

    .line 2
    .line 3
    return v0
.end method

.method public final getUnlockJustNow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->unlockJustNow:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getUnlockType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->unlockType:I

    return v0
.end method

.method public final getUnlockType()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->i1()Z

    move-result v0

    const-string v1, "3"

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isMembersOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isUnlockByDiscount()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    const-string v1, "1,2"

    goto :goto_0

    .line 6
    :cond_1
    const-string v1, "1"

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isMembersOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isUnlockByDiscount()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    const-string v1, "2"

    goto :goto_0

    .line 10
    :cond_4
    const-string v1, ""

    :goto_0
    return-object v1
.end method

.method public final getUpack()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->upack:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getVideoCover(ZIIII)Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->videoUrl:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "&x-oss-process=1/m_fill,w_"

    .line 4
    .line 5
    const-string v2, ",h_"

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_0
    if-eqz p1, :cond_1

    .line 17
    .line 18
    sget-object p1, Lud/a;->a:Lud/a;

    .line 19
    .line 20
    iget p4, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->id:I

    .line 21
    .line 22
    invoke-virtual {p1, p4}, Lud/a;->j(I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    sget-object p1, Lud/b;->a:Lud/b;

    .line 28
    .line 29
    iget p4, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->id:I

    .line 30
    .line 31
    invoke-virtual {p1, p4}, Lud/b;->t0(I)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    :goto_0
    const/4 p4, 0x0

    .line 36
    const/4 p5, 0x0

    .line 37
    const/4 v0, 0x1

    .line 38
    invoke-static {p0, p4, v0, p5}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->parseVideoUrl$default(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;IILjava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p4

    .line 42
    if-nez p1, :cond_2

    .line 43
    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    new-instance p5, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string p4, "&x-oss-process="

    .line 78
    .line 79
    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    sget-object p4, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 83
    .line 84
    int-to-float p1, p1

    .line 85
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 86
    .line 87
    div-float/2addr p1, v1

    .line 88
    invoke-static {p1}, Lbt/a;->e(F)J

    .line 89
    .line 90
    .line 91
    move-result-wide v3

    .line 92
    invoke-virtual {p4, v3, v4, v0}, Lcom/startshorts/androidplayer/utils/TimeUtil;->c(JZ)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string p1, "/m_fill,w_"

    .line 100
    .line 101
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    :goto_1
    return-object p1

    .line 118
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->frameExtractionCover:Ljava/lang/String;

    .line 119
    .line 120
    if-eqz p1, :cond_5

    .line 121
    .line 122
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-nez p1, :cond_4

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    iget-object p2, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->frameExtractionCover:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    goto :goto_4

    .line 156
    :cond_5
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    iget-object p2, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->coverId:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    :goto_4
    return-object p1
.end method

.method public final getVideoDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->videoDuration:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getVideoSize(I)Ljava/lang/Long;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->needDecrypt:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->transedEncryptedSize:Ljava/lang/String;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->transedSize:Ljava/lang/String;

    .line 9
    .line 10
    :goto_0
    const-wide/16 v1, 0x0

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :cond_1
    iget-object v3, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->parsedVideoSize:Lcom/startshorts/androidplayer/bean/shorts/EpisodeSize;

    .line 20
    .line 21
    if-nez v3, :cond_2

    .line 22
    .line 23
    const-class v3, Lcom/startshorts/androidplayer/bean/shorts/EpisodeSize;

    .line 24
    .line 25
    invoke-static {v0, v3}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/startshorts/androidplayer/bean/shorts/EpisodeSize;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->parsedVideoSize:Lcom/startshorts/androidplayer/bean/shorts/EpisodeSize;

    .line 32
    .line 33
    :cond_2
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->parsedVideoSize:Lcom/startshorts/androidplayer/bean/shorts/EpisodeSize;

    .line 34
    .line 35
    if-nez v0, :cond_3

    .line 36
    .line 37
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1

    .line 42
    :cond_3
    if-eqz v0, :cond_4

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/bean/shorts/EpisodeSize;->getSize(I)J

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    return-object p1

    .line 53
    :cond_4
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    return-object p1
.end method

.method public final getVideoType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->videoType:I

    .line 2
    .line 3
    return v0
.end method

.method public final getVideoUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->videoUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getVipFree()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->vipFree:I

    .line 2
    .line 3
    return v0
.end method

.method public final isCollected()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->collectLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isCollect:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v2, 0x0

    .line 11
    :goto_0
    monitor-exit v0

    .line 12
    return v2

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    monitor-exit v0

    .line 15
    throw v1
.end method

.method public final isDownloadFinished()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isDownloadFinished:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isFreeEpisode()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final isIaaUserEpisode()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isIaaUser()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->unlockType:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    return v1
.end method

.method public final isLastEpisode()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isTrailer()Z

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
    sget-object v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->a:Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;

    .line 10
    .line 11
    iget v2, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->shortPlayId:I

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->m(I)Lcom/startshorts/androidplayer/bean/shorts/ShortsDetail;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v2, 0x1

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getTotalEpisodes()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getUpdateEpisode()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-ne v3, v4, :cond_1

    .line 29
    .line 30
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->episodeNum:I

    .line 31
    .line 32
    iget v3, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->totalEpisodes:I

    .line 33
    .line 34
    if-lt v0, v3, :cond_3

    .line 35
    .line 36
    :goto_0
    move v1, v2

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    iget v3, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->episodeNum:I

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getUpdateEpisode()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-lt v3, v0, :cond_3

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->episodeNum:I

    .line 48
    .line 49
    iget v3, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->totalEpisodes:I

    .line 50
    .line 51
    if-lt v0, v3, :cond_3

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    :goto_1
    return v1
.end method

.method public final isLocked()Z
    .locals 2
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->videoUrl:Ljava/lang/String;
    if-nez v0, :is_not_null
    :is_locked
    const/4 v1, 0x1
    return v1
    :is_not_null
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    move-result v0
    if-nez v0, :is_unlocked
    goto :is_locked
    :is_unlocked
    const/4 v1, 0x0
    return v1
.end method

.method public final isMembersOnly()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->unlockType:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method

.method public final isMergeShortPlay()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isMergeShortPlay:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isRealLocked()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->lock:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    if-ne v0, v2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->alreadyLock:I

    .line 9
    .line 10
    if-ne v0, v2, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    :cond_1
    :goto_0
    return v1
.end method

.method public final isTrailer()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->videoType:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method

.method public final isUnlockByDiscount()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->unlockBy:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    return v1
.end method

.method public final isUnlockByOnlyCoins()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->unlockType:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    return v1
.end method

.method public final isUpdateFinished()Z
    .locals 6

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->a:Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;

    .line 2
    .line 3
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->shortPlayId:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->m(I)Lcom/startshorts/androidplayer/bean/shorts/ShortsDetail;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const-string v2, "isUpdateFinished -> shortPlayId("

    .line 11
    .line 12
    const-string v3, "BaseEpisode"

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    sget-object v4, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 17
    .line 18
    new-instance v5, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget v2, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->shortPlayId:I

    .line 27
    .line 28
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, ") totalEpisodes("

    .line 32
    .line 33
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget v2, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->totalEpisodes:I

    .line 37
    .line 38
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, ") updateEpisode("

    .line 42
    .line 43
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getUpdateEpisode()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const/16 v2, 0x29

    .line 54
    .line 55
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v4, v3, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getTotalEpisodes()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getUpdateEpisode()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-ne v2, v0, :cond_1

    .line 74
    .line 75
    const/4 v1, 0x1

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 78
    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget v2, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->shortPlayId:I

    .line 88
    .line 89
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v2, "), detail is null"

    .line 93
    .line 94
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v0, v3, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_1
    :goto_0
    return v1
.end method

.method public final isVideoExpired()Z
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    invoke-static {p0, v1, v2, v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->parseVideoUrl$default(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;IILjava/lang/Object;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {v0}, Ljk/v;->e(Ljava/lang/String;)J

    .line 11
    .line 12
    .line 13
    move-result-wide v3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-wide/16 v3, -0x1

    .line 16
    .line 17
    :goto_0
    const-wide/16 v5, 0x0

    .line 18
    .line 19
    cmp-long v0, v3, v5

    .line 20
    .line 21
    if-gtz v0, :cond_1

    .line 22
    .line 23
    return v1

    .line 24
    :cond_1
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 27
    .line 28
    .line 29
    move-result-wide v5

    .line 30
    const-wide/16 v7, 0x3e8

    .line 31
    .line 32
    mul-long/2addr v3, v7

    .line 33
    cmp-long v0, v5, v3

    .line 34
    .line 35
    if-ltz v0, :cond_2

    .line 36
    .line 37
    return v2

    .line 38
    :cond_2
    return v1
.end method

.method public final isVipFree()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->vipFree:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    return v1
.end method

.method public final isVirtual()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public parseVideoUrl(I)Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->parseVideoUrlLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->videoUrl:Ljava/lang/String;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_9

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto/16 :goto_7

    .line 16
    .line 17
    :cond_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->parsedVideo:Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;

    .line 18
    .line 19
    if-nez v1, :cond_4

    .line 20
    .line 21
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->videoUrl:Ljava/lang/String;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    const-class v3, Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;

    .line 26
    .line 27
    invoke-static {v1, v3}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_8

    .line 36
    :cond_1
    move-object v1, v2

    .line 37
    :goto_0
    iput-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->parsedVideo:Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    :try_start_1
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->bitRate:Ljava/lang/String;

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    const-class v3, Lcom/startshorts/androidplayer/bean/shorts/EpisodeBitrate;

    .line 46
    .line 47
    invoke-static {v1, v3}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lcom/startshorts/androidplayer/bean/shorts/EpisodeBitrate;

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :catchall_1
    move-exception v1

    .line 55
    goto :goto_3

    .line 56
    :cond_2
    move-object v1, v2

    .line 57
    :goto_1
    iput-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->parsedBitrate:Lcom/startshorts/androidplayer/bean/shorts/EpisodeBitrate;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->codec:Ljava/lang/String;

    .line 60
    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    const-class v3, Lcom/startshorts/androidplayer/bean/shorts/EpisodeCodec;

    .line 64
    .line 65
    invoke-static {v1, v3}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Lcom/startshorts/androidplayer/bean/shorts/EpisodeCodec;

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    move-object v1, v2

    .line 73
    :goto_2
    iput-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->parsedCodec:Lcom/startshorts/androidplayer/bean/shorts/EpisodeCodec;

    .line 74
    .line 75
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 76
    .line 77
    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    .line 79
    .line 80
    goto :goto_4

    .line 81
    :goto_3
    :try_start_2
    sget-object v3, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 82
    .line 83
    invoke-static {v1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    :cond_4
    :goto_4
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->parsedVideo:Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    .line 92
    if-nez v1, :cond_5

    .line 93
    .line 94
    monitor-exit v0

    .line 95
    return-object v2

    .line 96
    :cond_5
    if-eqz v1, :cond_6

    .line 97
    .line 98
    :try_start_3
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;->targetUrl(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    goto :goto_5

    .line 103
    :cond_6
    move-object p1, v2

    .line 104
    :goto_5
    if-eqz p1, :cond_8

    .line 105
    .line 106
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-nez v1, :cond_7

    .line 111
    .line 112
    goto :goto_6

    .line 113
    :cond_7
    sget-object v1, Lcom/startshorts/androidplayer/utils/ResourceHandler;->a:Lcom/startshorts/androidplayer/utils/ResourceHandler;

    .line 114
    .line 115
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/utils/ResourceHandler;->o(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 119
    monitor-exit v0

    .line 120
    return-object p1

    .line 121
    :cond_8
    :goto_6
    monitor-exit v0

    .line 122
    return-object v2

    .line 123
    :cond_9
    :goto_7
    monitor-exit v0

    .line 124
    return-object v2

    .line 125
    :goto_8
    monitor-exit v0

    .line 126
    throw p1
.end method

.method public final setAlreadyLock(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->alreadyLock:I

    .line 2
    .line 3
    return-void
.end method

.method public final setAspectRatio(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->aspectRatio:F

    .line 2
    .line 3
    return-void
.end method

.method public final setBindShortPlayId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->bindShortPlayId:I

    .line 2
    .line 3
    return-void
.end method

.method public final setCollectNum(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->collectNum:J

    .line 2
    .line 3
    return-void
.end method

.method public final setCollected()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->collectLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isCollected()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    iput v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isCollect:I

    .line 12
    .line 13
    iget-wide v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->collectNum:J

    .line 14
    .line 15
    const-wide/16 v3, 0x1

    .line 16
    .line 17
    add-long/2addr v1, v3

    .line 18
    iput-wide v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->collectNum:J

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :goto_1
    monitor-exit v0

    .line 28
    throw v1
.end method

.method public final setCompletionStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->completionStatus:I

    .line 2
    .line 3
    return-void
.end method

.method public final setCoordinate(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->coordinate:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setCornerLabelStyle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->cornerLabelStyle:I

    .line 2
    .line 3
    return-void
.end method

.method public final setCornerLabelText(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->cornerLabelText:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setCoverId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->coverId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDownloadFinished(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isDownloadFinished:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setDownloadResolution(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->downloadResolution:I

    .line 2
    .line 3
    return-void
.end method

.method public final setEpisodeNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->episodeNum:I

    .line 2
    .line 3
    return-void
.end method

.method public final setFirstDramId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->firstDramId:I

    .line 2
    .line 3
    return-void
.end method

.method public final setGgVideoDramaGenre(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->ggVideoDramaGenre:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setGgVideoTags(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->ggVideoTags:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->id:I

    .line 2
    .line 3
    return-void
.end method

.method public final setImmersionShortsRecordIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->immersionShortsRecordIndex:I

    .line 2
    .line 3
    return-void
.end method

.method public final setLockBegin(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->lockBegin:I

    .line 2
    .line 3
    return-void
.end method

.method public final setMergeShortPlay(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isMergeShortPlay:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setNeedDecrypt(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->needDecrypt:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setNotVipFree()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->updateVipFree(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final setParsedBitrate(Lcom/startshorts/androidplayer/bean/shorts/EpisodeBitrate;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/EpisodeBitrate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->parsedBitrate:Lcom/startshorts/androidplayer/bean/shorts/EpisodeBitrate;

    .line 2
    .line 3
    return-void
.end method

.method public final setParsedCodec(Lcom/startshorts/androidplayer/bean/shorts/EpisodeCodec;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/EpisodeCodec;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->parsedCodec:Lcom/startshorts/androidplayer/bean/shorts/EpisodeCodec;

    .line 2
    .line 3
    return-void
.end method

.method public final setParsedVideo(Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->parsedVideo:Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;

    .line 2
    .line 3
    return-void
.end method

.method public final setParsedVideoSize(Lcom/startshorts/androidplayer/bean/shorts/EpisodeSize;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/EpisodeSize;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->parsedVideoSize:Lcom/startshorts/androidplayer/bean/shorts/EpisodeSize;

    .line 2
    .line 3
    return-void
.end method

.method public final setPrice(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->price:I

    .line 2
    .line 3
    return-void
.end method

.method public final setReferVideoHeight(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->referVideoHeight:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setReferVideoWidth(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->referVideoWidth:Ljava/lang/Integer;

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
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->shortPlayCode:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setShortPlayContentRatingResponse(Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->shortPlayContentRatingResponse:Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;

    .line 2
    .line 3
    return-void
.end method

.method public final setShortPlayId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->shortPlayId:I

    .line 2
    .line 3
    return-void
.end method

.method public final setShortPlayIsRelease(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->shortPlayIsRelease:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setShortPlayName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->shortPlayName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSubtitling(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->subtitling:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSubtitlingConfig(Lcom/startshorts/androidplayer/bean/shorts/SubtitleConfig;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/SubtitleConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->subtitlingConfig:Lcom/startshorts/androidplayer/bean/shorts/SubtitleConfig;

    .line 2
    .line 3
    return-void
.end method

.method public final setSummary(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->summary:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setTotalEpisodes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->totalEpisodes:I

    .line 2
    .line 3
    return-void
.end method

.method public final setTransedEncryptedSize(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->transedEncryptedSize:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setTransedSize(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->transedSize:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setUnlockBy(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->unlockBy:I

    .line 2
    .line 3
    return-void
.end method

.method public final setUnlockJustNow(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->unlockJustNow:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setUnlockType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->unlockType:I

    .line 2
    .line 3
    return-void
.end method

.method public final setUnlocked()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->alreadyLock:I

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->unlockJustNow:Z

    .line 5
    .line 6
    return-void
.end method

.method public final setUpack(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->upack:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setVideoDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->videoDuration:J

    .line 2
    .line 3
    return-void
.end method

.method public final setVideoType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->videoType:I

    .line 2
    .line 3
    return-void
.end method

.method public final setVideoUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->videoUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
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
    const-string v1, "BaseEpisode(id="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->id:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", shortPlayId="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->shortPlayId:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", shortPlayCode="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->shortPlayCode:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", shortPlayName="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->shortPlayName:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", coverId="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->coverId:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", summary="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->summary:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", videoType="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->videoType:I

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ", videoUrl="

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->videoUrl:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, ", isCollect="

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isCollect:I

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ", collectNum="

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-wide v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->collectNum:J

    .line 102
    .line 103
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, ", episodeNum="

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->episodeNum:I

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v1, ", totalEpisodes="

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->totalEpisodes:I

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v1, ", price="

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->price:I

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v1, ", lock="

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->lock:I

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v1, ", alreadyLock="

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->alreadyLock:I

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v1, ", subtitlingConfig="

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->subtitlingConfig:Lcom/startshorts/androidplayer/bean/shorts/SubtitleConfig;

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v1, ", videoDuration="

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    iget-wide v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->videoDuration:J

    .line 172
    .line 173
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v1, ", unlockType="

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->unlockType:I

    .line 182
    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string v1, ", bitRate="

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->bitRate:Ljava/lang/String;

    .line 192
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const-string v1, ", codec="

    .line 197
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->codec:Ljava/lang/String;

    .line 202
    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v1, ", aspectRatio="

    .line 207
    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getAspectRatio()F

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string v1, ", coordinate="

    .line 219
    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->coordinate:Ljava/lang/String;

    .line 224
    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    const-string v1, ", referVideoWidth="

    .line 229
    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->referVideoWidth:Ljava/lang/Integer;

    .line 234
    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    const-string v1, ", referVideoHeight="

    .line 239
    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->referVideoHeight:Ljava/lang/Integer;

    .line 244
    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    const-string v1, ", frameExtractionCover="

    .line 249
    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->frameExtractionCover:Ljava/lang/String;

    .line 254
    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    const-string v1, ", bindShortPlayId="

    .line 259
    .line 260
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->bindShortPlayId:I

    .line 264
    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    const-string v1, ", firstDramId="

    .line 269
    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->firstDramId:I

    .line 274
    .line 275
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    const-string v1, ", isMergeShortPlay="

    .line 279
    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isMergeShortPlay:Z

    .line 284
    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    const-string v1, ", vipFree="

    .line 289
    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->vipFree:I

    .line 294
    .line 295
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    const-string v1, ", unlockBy="

    .line 299
    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->unlockBy:I

    .line 304
    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    const-string v1, ", lockBegin="

    .line 309
    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->lockBegin:I

    .line 314
    .line 315
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    const-string v1, ", needDecrypt="

    .line 319
    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->needDecrypt:Z

    .line 324
    .line 325
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    const-string v1, ", unlockJustNow="

    .line 329
    .line 330
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->unlockJustNow:Z

    .line 334
    .line 335
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    const-string v1, ", parsedVideo="

    .line 339
    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->parsedVideo:Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;

    .line 344
    .line 345
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    const-string v1, ", parsedBitrate="

    .line 349
    .line 350
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->parsedBitrate:Lcom/startshorts/androidplayer/bean/shorts/EpisodeBitrate;

    .line 354
    .line 355
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    const-string v1, ", parsedCodec="

    .line 359
    .line 360
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->parsedCodec:Lcom/startshorts/androidplayer/bean/shorts/EpisodeCodec;

    .line 364
    .line 365
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    const-string v1, ", parseVideoUrlLock="

    .line 369
    .line 370
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->parseVideoUrlLock:Ljava/lang/Object;

    .line 374
    .line 375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    const-string v1, ", collectLock="

    .line 379
    .line 380
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->collectLock:Ljava/lang/Object;

    .line 384
    .line 385
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    const-string v1, ", immersionShortsRecordIndex="

    .line 389
    .line 390
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->immersionShortsRecordIndex:I

    .line 394
    .line 395
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    const-string v1, ",shortPlayContentRatingResponse="

    .line 399
    .line 400
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->shortPlayContentRatingResponse:Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;

    .line 404
    .line 405
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    const/16 v1, 0x29

    .line 409
    .line 410
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    return-object v0
.end method

.method public final updateVipFree(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->vipFree:I

    .line 2
    .line 3
    return-void
.end method
