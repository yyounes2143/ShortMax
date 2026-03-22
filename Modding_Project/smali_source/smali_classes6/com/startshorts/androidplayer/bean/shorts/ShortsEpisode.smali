.class public Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;
.super Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
.source "ShortsEpisode.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final COLD_BOOT:I = 0x1

.field public static final Companion:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FROM_RECOMMEND_POOL:I = 0x1

.field public static final NOT_COLD_BOOT:I = 0x2

.field public static final NOT_FROM_RECOMMEND_POOL:I = 0x2

.field public static final TYPE_BRAND_AD:I = 0x3

.field public static final TYPE_PROGRAMMATIC_AD:I = 0x2

.field public static final TYPE_SHORTS:I = 0x1


# instance fields
.field private extraAdInfo:Lcom/startshorts/androidplayer/bean/act/ActResource;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private finalDramId:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private index:I

.field private isRecommendPool:I

.field private isRelease:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isReservation:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private pageNumber:I

.field private round:I

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->Companion:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->type:I

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->round:I

    .line 9
    .line 10
    iput v0, p0, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->pageNumber:I

    .line 11
    .line 12
    iput v0, p0, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->index:I

    .line 13
    .line 14
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->isRelease:Ljava/lang/Boolean;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->isReservation:Ljava/lang/Boolean;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final fromRecommendPool()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->isRecommendPool:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isTrailer()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->type:I

    .line 13
    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v1, 0x0

    .line 18
    :goto_0
    return v1
.end method

.method public final getExtraAdInfo()Lcom/startshorts/androidplayer/bean/act/ActResource;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->extraAdInfo:Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFinalDramId()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->finalDramId:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->index:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPageNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->pageNumber:I

    .line 2
    .line 3
    return v0
.end method

.method public final getRound()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->round:I

    .line 2
    .line 3
    return v0
.end method

.method public final getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public final isAd()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->isProgrammaticAd()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->isBrandAd()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
.end method

.method public final isBrandAd()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->type:I

    .line 2
    .line 3
    const/4 v1, 0x3

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

.method public final isBrandPicAd()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->extraAdInfo:Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/act/ActResource;->isBrandAdPicture()Z

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

.method public final isBrandVideoAd()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->extraAdInfo:Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/act/ActResource;->isBrandAdVideo()Z

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

.method public final isProgrammaticAd()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->type:I

    .line 2
    .line 3
    const/4 v1, 0x2

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

.method public final isRecommendPool()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->isRecommendPool:I

    .line 2
    .line 3
    return v0
.end method

.method public final isRelease()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->isRelease:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isReservation()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->isReservation:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setExtraAdInfo(Lcom/startshorts/androidplayer/bean/act/ActResource;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/act/ActResource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->extraAdInfo:Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 2
    .line 3
    return-void
.end method

.method public final setFinalDramId(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->finalDramId:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->index:I

    .line 2
    .line 3
    return-void
.end method

.method public final setPageNumber(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->pageNumber:I

    .line 2
    .line 3
    return-void
.end method

.method public final setRecommendPool(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->isRecommendPool:I

    .line 2
    .line 3
    return-void
.end method

.method public final setRelease(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->isRelease:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setReservation(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->isReservation:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setRound(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->round:I

    .line 2
    .line 3
    return-void
.end method

.method public final setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->type:I

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
    const-string v1, "ShortsEpisode(type="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->type:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", isRecommendPool="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->isRecommendPool:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", round="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->round:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", pageNumber="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->pageNumber:I

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", index="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->index:I

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", extraAdInfo="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->extraAdInfo:Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const/16 v1, 0x29

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    return-object v0
.end method
