.class public final Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;
.super Ljava/lang/Object;
.source "ImmersionParams.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_CUR_EPISODE_ID:I = 0x4

.field public static final TYPE_CUR_EPISODE_NUM:I = 0x1

.field public static final TYPE_CUR_EPISODE_NUM_DOWNLOAD:I = 0x6

.field public static final TYPE_EPISODE_LIST:I = 0x2

.field public static final TYPE_FIRST_EPISODE:I = 0x7

.field public static final TYPE_PREV_EPISODE_ID:I = 0x5

.field public static final TYPE_SHORTS_ID:I = 0x3

.field public static final TYPE_TRAILER_EPISODE:I = 0x8


# instance fields
.field private actResource:Lcom/startshorts/androidplayer/bean/act/ActResource;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private enableLoadMore:Z

.field private enableRefreshLayout:Z

.field private episodeId:I

.field private episodeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private episodeListStartPosition:I

.field private episodeNum:I

.field private from:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lastEpisode:Z

.field private logEnterImmersion:Z

.field private moduleInfo:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private playSpeed:F

.field private pushId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private redeemCode:Lcom/startshorts/androidplayer/bean/search/RedeemCode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private searchString:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public shortsInfo:Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;

.field private showEpisodeListDialog:Z

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->Companion:Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams$Companion;

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
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->type:I

    .line 6
    .line 7
    iput v0, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->episodeNum:I

    .line 8
    .line 9
    iput v0, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->episodeId:I

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->enableLoadMore:Z

    .line 13
    .line 14
    sget-object v1, Lqe/a;->a:Lqe/a;

    .line 15
    .line 16
    invoke-virtual {v1}, Lqe/a;->h()Lcom/startshorts/androidplayer/bean/configure/FeatureController;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->getImmersionRefreshLayoutEnable()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iput-boolean v1, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->enableRefreshLayout:Z

    .line 25
    .line 26
    const/high16 v1, 0x3f800000    # 1.0f

    .line 27
    .line 28
    iput v1, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->playSpeed:F

    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->logEnterImmersion:Z

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final getActResource()Lcom/startshorts/androidplayer/bean/act/ActResource;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->actResource:Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEnableLoadMore()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->enableLoadMore:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getEnableRefreshLayout()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->enableRefreshLayout:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getEpisodeId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->episodeId:I

    .line 2
    .line 3
    return v0
.end method

.method public final getEpisodeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->episodeList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEpisodeListStartPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->episodeListStartPosition:I

    .line 2
    .line 3
    return v0
.end method

.method public final getEpisodeNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->episodeNum:I

    .line 2
    .line 3
    return v0
.end method

.method public final getFrom()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->from:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLastEpisode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->lastEpisode:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getLogEnterImmersion()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->logEnterImmersion:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getModuleInfo()Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->moduleInfo:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPlaySpeed()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->playSpeed:F

    .line 2
    .line 3
    return v0
.end method

.method public final getPushId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->pushId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRedeemCode()Lcom/startshorts/androidplayer/bean/search/RedeemCode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->redeemCode:Lcom/startshorts/androidplayer/bean/search/RedeemCode;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSearchString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->searchString:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShortsInfo()Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->shortsInfo:Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string/jumbo v0, "shortsInfo"

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public final getShowEpisodeListDialog()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->showEpisodeListDialog:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public final isFromOfflineDownload()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->type:I

    .line 2
    .line 3
    const/4 v1, 0x6

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

.method public final setActResource(Lcom/startshorts/androidplayer/bean/act/ActResource;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/act/ActResource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->actResource:Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 2
    .line 3
    return-void
.end method

.method public final setEnableLoadMore(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->enableLoadMore:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setEnableRefreshLayout(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->enableRefreshLayout:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setEpisodeId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->episodeId:I

    .line 2
    .line 3
    return-void
.end method

.method public final setEpisodeList(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->episodeList:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final setEpisodeListStartPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->episodeListStartPosition:I

    .line 2
    .line 3
    return-void
.end method

.method public final setEpisodeNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->episodeNum:I

    .line 2
    .line 3
    return-void
.end method

.method public final setFrom(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->from:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setLastEpisode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->lastEpisode:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setLogEnterImmersion(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->logEnterImmersion:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setModuleInfo(Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->moduleInfo:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 2
    .line 3
    return-void
.end method

.method public final setPlaySpeed(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->playSpeed:F

    .line 2
    .line 3
    return-void
.end method

.method public final setPushId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->pushId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setRedeemCode(Lcom/startshorts/androidplayer/bean/search/RedeemCode;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/search/RedeemCode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->redeemCode:Lcom/startshorts/androidplayer/bean/search/RedeemCode;

    .line 2
    .line 3
    return-void
.end method

.method public final setSearchString(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->searchString:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setShortsInfo(Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->shortsInfo:Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;

    .line 7
    .line 8
    return-void
.end method

.method public final setShowEpisodeListDialog(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->showEpisodeListDialog:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->type:I

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
    const-string v1, "ImmersionParams(type="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->type:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", shortsInfo="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->getShortsInfo()Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ", episodeNum="

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget v1, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->episodeNum:I

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, ", episodeId="

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget v1, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->episodeId:I

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, ", lastEpisode="

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->lastEpisode:Z

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v1, ", episodeList="

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->episodeList:Ljava/util/List;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v1, ", episodeListStartPosition="

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget v1, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->episodeListStartPosition:I

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v1, ", enableLoadMore="

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->enableLoadMore:Z

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v1, ", enableRefreshLayout="

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->enableRefreshLayout:Z

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v1, ", showEpisodeListDialog="

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->showEpisodeListDialog:Z

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v1, ", from="

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->from:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v1, ", moduleInfo="

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->moduleInfo:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v1, ", pushId="

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->pushId:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v1, ", redeemCode="

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->redeemCode:Lcom/startshorts/androidplayer/bean/search/RedeemCode;

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v1, ", playSpeed="

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    iget v1, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->playSpeed:F

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v1, ", actResource="

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->actResource:Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v1, ", searchString="

    .line 169
    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->searchString:Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string v1, ", logEnterImmersion="

    .line 179
    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->logEnterImmersion:Z

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const/16 v1, 0x29

    .line 189
    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    return-object v0
.end method
