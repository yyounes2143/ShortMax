.class public final Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;
.super Ljava/lang/Object;
.source "ActResourceExtraInfo.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final BRAND_AD_PIC:I = 0x1

.field public static final BRAND_AD_VIDEO:I = 0x2

.field public static final Companion:Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PRELOAD_AD_VIDEO_SIZE:J = 0x32000L


# instance fields
.field private adsContent:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private adsPicFlag:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private adsText:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private adsTitle:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private adsType:I

.field private adsVideo:Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private adsVideoUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private aspectRatio:F

.field private campaignId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private campaignName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private campaignType:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->Companion:Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->adsType:I

    .line 6
    .line 7
    const/high16 v0, 0x3f100000    # 0.5625f

    .line 8
    .line 9
    iput v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->aspectRatio:F

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final getAdsContent()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->adsContent:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAdsPicFlag()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->adsPicFlag:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAdsText()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->adsText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAdsTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->adsTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAdsType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->adsType:I

    .line 2
    .line 3
    return v0
.end method

.method public final getAdsVideoUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->adsVideoUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAspectRatio()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->aspectRatio:F

    .line 2
    .line 3
    return v0
.end method

.method public final getCampaignId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->campaignId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCampaignName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->campaignName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCampaignType()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->campaignType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final declared-synchronized getFormatAdsVideoUrl()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->adsVideo:Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->adsVideoUrl:Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-class v2, Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;

    .line 12
    .line 13
    invoke-static {v0, v2}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto/16 :goto_7

    .line 22
    .line 23
    :cond_0
    move-object v0, v1

    .line 24
    :goto_0
    iput-object v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->adsVideo:Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;

    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->adsVideo:Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;->getVideo_720()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    move-object v0, v1

    .line 36
    :goto_1
    if-eqz v0, :cond_5

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_3

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_3
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->adsVideo:Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;

    .line 46
    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;->getVideo_720()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_4
    monitor-exit p0

    .line 54
    return-object v1

    .line 55
    :cond_5
    :goto_2
    :try_start_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->adsVideo:Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;

    .line 56
    .line 57
    if-eqz v0, :cond_6

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;->getVideo_1080()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    goto :goto_3

    .line 64
    :cond_6
    move-object v0, v1

    .line 65
    :goto_3
    if-eqz v0, :cond_9

    .line 66
    .line 67
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_7

    .line 72
    .line 73
    goto :goto_4

    .line 74
    :cond_7
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->adsVideo:Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;

    .line 75
    .line 76
    if-eqz v0, :cond_8

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;->getVideo_1080()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    :cond_8
    monitor-exit p0

    .line 83
    return-object v1

    .line 84
    :cond_9
    :goto_4
    :try_start_2
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->adsVideo:Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;

    .line 85
    .line 86
    if-eqz v0, :cond_a

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;->getVideo_480()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    goto :goto_5

    .line 93
    :cond_a
    move-object v0, v1

    .line 94
    :goto_5
    if-eqz v0, :cond_d

    .line 95
    .line 96
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-nez v0, :cond_b

    .line 101
    .line 102
    goto :goto_6

    .line 103
    :cond_b
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->adsVideo:Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;

    .line 104
    .line 105
    if-eqz v0, :cond_c

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;->getVideo_480()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    :cond_c
    monitor-exit p0

    .line 112
    return-object v1

    .line 113
    :cond_d
    :goto_6
    :try_start_3
    const-string v0, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 114
    .line 115
    monitor-exit p0

    .line 116
    return-object v0

    .line 117
    :goto_7
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 118
    throw v0
.end method

.method public final setAdsContent(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->adsContent:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setAdsPicFlag(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->adsPicFlag:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setAdsText(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->adsText:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setAdsTitle(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->adsTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setAdsType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->adsType:I

    .line 2
    .line 3
    return-void
.end method

.method public final setAdsVideoUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->adsVideoUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setAspectRatio(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->aspectRatio:F

    .line 2
    .line 3
    return-void
.end method

.method public final setCampaignId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->campaignId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setCampaignName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->campaignName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setCampaignType(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->campaignType:Ljava/lang/String;

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
    const-string v1, "ActResourceExtraInfo(campaignId="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->campaignId:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", campaignName="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->campaignName:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ",campaignType="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->campaignType:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", adsType="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->adsType:I

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", adsTitle="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->adsTitle:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", adsText="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->adsText:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", adsPicFlag="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->adsPicFlag:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ", adsVideoUrl="

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->adsVideoUrl:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, ", adsContent="

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->adsContent:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ", aspectRatio="

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->aspectRatio:F

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, ", adsVideo="

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->adsVideo:Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const/16 v1, 0x29

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    return-object v0
.end method
