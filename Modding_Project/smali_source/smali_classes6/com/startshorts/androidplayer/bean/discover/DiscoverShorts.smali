.class public Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;
.super Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;
.source "DiscoverShorts.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LABEL_STYLE_AI_FOLLOWING:I = 0x8

.field public static final LABEL_STYLE_EXCLUSIVE:I = 0x2

.field public static final LABEL_STYLE_FREE:I = 0x7

.field public static final LABEL_STYLE_HOT:I = 0x3

.field public static final LABEL_STYLE_MEMBER_ONLY:I = 0x6

.field public static final LABEL_STYLE_NEW:I = 0x5


# instance fields
.field private bannerContent:Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private canShowDiscountTag:Z

.field private collectNum:J

.field private horizontalCoverId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isReservation:Z

.field private labelResponseList:Ljava/util/List;
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

.field private level1CategoryName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private moduleId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private moduleName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private needDecrypt:Z

.field private final parseVideoUrlLock:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private parsedVideo:Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private recommendId:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private releaseTime:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private shortPlaySubscript:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private trailerId:I

.field private videoUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private watchedMaxEpisodeNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->Companion:Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->canShowDiscountTag:Z

    .line 6
    .line 7
    new-instance v0, Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->parseVideoUrlLock:Ljava/lang/Object;

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic parseVideoUrl$default(Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;IILjava/lang/Object;)Ljava/lang/String;
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
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->parseVideoUrl(I)Ljava/lang/String;

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
.method public final formatTitleForEvent()Ljava/lang/String;
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
    const-string v1, "discover_"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->moduleId:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x5f

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->moduleName:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method

.method public final getBannerContent()Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->bannerContent:Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCanShowDiscountTag()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->canShowDiscountTag:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getCollectNum()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->collectNum:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getHorizontalCoverId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->horizontalCoverId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLabelResponseList()Ljava/util/List;
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
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->labelResponseList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLevel1CategoryName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->level1CategoryName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getModuleId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->moduleId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getModuleName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->moduleName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNeedDecrypt()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->needDecrypt:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getRecommendId()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->recommendId:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getReleaseTime()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->releaseTime:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShortPlaySubscript()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->shortPlaySubscript:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTrailerId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->trailerId:I

    .line 2
    .line 3
    return v0
.end method

.method public final getVideoUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->videoUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getWatchedMaxEpisodeNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->watchedMaxEpisodeNum:I

    .line 2
    .line 3
    return v0
.end method

.method public final isReservation()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->isReservation:Z

    .line 2
    .line 3
    return v0
.end method

.method public final parseVideoUrl(I)Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->parseVideoUrlLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->videoUrl:Ljava/lang/String;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_7

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
    goto :goto_3

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->parsedVideo:Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;

    .line 17
    .line 18
    if-nez v1, :cond_2

    .line 19
    .line 20
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->videoUrl:Ljava/lang/String;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    const-class v3, Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;

    .line 25
    .line 26
    invoke-static {v1, v3}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_4

    .line 35
    :cond_1
    move-object v1, v2

    .line 36
    :goto_0
    iput-object v1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->parsedVideo:Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;

    .line 37
    .line 38
    :cond_2
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->parsedVideo:Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    if-nez v1, :cond_3

    .line 41
    .line 42
    monitor-exit v0

    .line 43
    return-object v2

    .line 44
    :cond_3
    if-eqz v1, :cond_4

    .line 45
    .line 46
    :try_start_1
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;->targetUrl(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    goto :goto_1

    .line 51
    :cond_4
    move-object p1, v2

    .line 52
    :goto_1
    if-eqz p1, :cond_6

    .line 53
    .line 54
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_5

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_5
    sget-object v1, Lcom/startshorts/androidplayer/utils/ResourceHandler;->a:Lcom/startshorts/androidplayer/utils/ResourceHandler;

    .line 62
    .line 63
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/utils/ResourceHandler;->o(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    monitor-exit v0

    .line 68
    return-object p1

    .line 69
    :cond_6
    :goto_2
    monitor-exit v0

    .line 70
    return-object v2

    .line 71
    :cond_7
    :goto_3
    monitor-exit v0

    .line 72
    return-object v2

    .line 73
    :goto_4
    monitor-exit v0

    .line 74
    throw p1
.end method

.method public final setBannerContent(Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->bannerContent:Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;

    .line 2
    .line 3
    return-void
.end method

.method public final setCanShowDiscountTag(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->canShowDiscountTag:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setCollectNum(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->collectNum:J

    .line 2
    .line 3
    return-void
.end method

.method public final setHorizontalCoverId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->horizontalCoverId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setLabelResponseList(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->labelResponseList:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final setLevel1CategoryName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->level1CategoryName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setModuleId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->moduleId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setModuleName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->moduleName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setNeedDecrypt(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->needDecrypt:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setRecommendId(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->recommendId:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setReleaseTime(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->releaseTime:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setReservation(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->isReservation:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setShortPlaySubscript(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->shortPlaySubscript:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setTrailerId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->trailerId:I

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
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->videoUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setWatchedMaxEpisodeNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->watchedMaxEpisodeNum:I

    .line 2
    .line 3
    return-void
.end method
