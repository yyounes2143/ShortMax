.class public final Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;
.super Ljava/lang/Object;
.source "EpisodeListUnlockedEvent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final UNLOCK_TYPE_AD:I = 0x3

.field public static final UNLOCK_TYPE_BATCH:I = 0x2

.field public static final UNLOCK_TYPE_DISCOUNT:I = 0x5

.field public static final UNLOCK_TYPE_SINGLE:I = 0x1

.field public static final UNLOCK_TYPE_SUBS:I = 0x4


# instance fields
.field private final canWatchAd:Z

.field private final list:Ljava/util/List;
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

.field private final nextDrama:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final unlockType:I

.field private final userRecharged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->Companion:Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(ILjava/util/List;ZZLcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 0
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            ">;ZZ",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->unlockType:I

    iput-object p2, p0, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->list:Ljava/util/List;

    iput-boolean p3, p0, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->userRecharged:Z

    iput-boolean p4, p0, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->canWatchAd:Z

    iput-object p5, p0, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->nextDrama:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;ZZLcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    const/4 p4, 0x0

    :cond_0
    move v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    const/4 p5, 0x0

    :cond_1
    move-object v5, p5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;-><init>(ILjava/util/List;ZZLcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;ILjava/util/List;ZZLcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ILjava/lang/Object;)Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;
    .locals 3

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->unlockType:I

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p7, p6, 0x2

    .line 8
    .line 9
    if-eqz p7, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->list:Ljava/util/List;

    .line 12
    .line 13
    :cond_1
    move-object p7, p2

    .line 14
    and-int/lit8 p2, p6, 0x4

    .line 15
    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    iget-boolean p3, p0, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->userRecharged:Z

    .line 19
    .line 20
    :cond_2
    move v0, p3

    .line 21
    and-int/lit8 p2, p6, 0x8

    .line 22
    .line 23
    if-eqz p2, :cond_3

    .line 24
    .line 25
    iget-boolean p4, p0, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->canWatchAd:Z

    .line 26
    .line 27
    :cond_3
    move v1, p4

    .line 28
    and-int/lit8 p2, p6, 0x10

    .line 29
    .line 30
    if-eqz p2, :cond_4

    .line 31
    .line 32
    iget-object p5, p0, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->nextDrama:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 33
    .line 34
    :cond_4
    move-object v2, p5

    .line 35
    move-object p2, p0

    .line 36
    move p3, p1

    .line 37
    move-object p4, p7

    .line 38
    move p5, v0

    .line 39
    move p6, v1

    .line 40
    move-object p7, v2

    .line 41
    invoke-virtual/range {p2 .. p7}, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->copy(ILjava/util/List;ZZLcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->unlockType:I

    .line 2
    .line 3
    return v0
.end method

.method public final component2()Ljava/util/List;
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
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->list:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->userRecharged:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component4()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->canWatchAd:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component5()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->nextDrama:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(ILjava/util/List;ZZLcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;
    .locals 7
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            ">;ZZ",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            ")",
            "Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v6, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move v3, p3

    .line 7
    move v4, p4

    .line 8
    move-object v5, p5

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;-><init>(ILjava/util/List;ZZLcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 10
    .line 11
    .line 12
    return-object v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
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
    instance-of v1, p1, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;

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
    check-cast p1, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;

    .line 12
    .line 13
    iget v1, p0, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->unlockType:I

    .line 14
    .line 15
    iget v3, p1, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->unlockType:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->list:Ljava/util/List;

    .line 21
    .line 22
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->list:Ljava/util/List;

    .line 23
    .line 24
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->userRecharged:Z

    .line 32
    .line 33
    iget-boolean v3, p1, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->userRecharged:Z

    .line 34
    .line 35
    if-eq v1, v3, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->canWatchAd:Z

    .line 39
    .line 40
    iget-boolean v3, p1, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->canWatchAd:Z

    .line 41
    .line 42
    if-eq v1, v3, :cond_5

    .line 43
    .line 44
    return v2

    .line 45
    :cond_5
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->nextDrama:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->nextDrama:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 48
    .line 49
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-nez p1, :cond_6

    .line 54
    .line 55
    return v2

    .line 56
    :cond_6
    return v0
.end method

.method public final getCanWatchAd()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->canWatchAd:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getFirstUnlockedEpisodeId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->list:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->r0(Ljava/util/List;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, -0x1

    .line 19
    :goto_0
    return v0
.end method

.method public final getList()Ljava/util/List;
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
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->list:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNextDrama()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->nextDrama:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUnlockType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->unlockType:I

    .line 2
    .line 3
    return v0
.end method

.method public final getUserRecharged()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->userRecharged:Z

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->unlockType:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->list:Ljava/util/List;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    move v1, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    :goto_0
    add-int/2addr v0, v1

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->userRecharged:Z

    .line 24
    .line 25
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    add-int/2addr v0, v1

    .line 30
    mul-int/lit8 v0, v0, 0x1f

    .line 31
    .line 32
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->canWatchAd:Z

    .line 33
    .line 34
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    add-int/2addr v0, v1

    .line 39
    mul-int/lit8 v0, v0, 0x1f

    .line 40
    .line 41
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->nextDrama:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 42
    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    :goto_1
    add-int/2addr v0, v2

    .line 51
    return v0
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
    const-string v1, "EpisodeListUnlockedEvent(unlockType="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->unlockType:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", list="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->list:Ljava/util/List;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", userRecharged="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->userRecharged:Z

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", canWatchAd="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->canWatchAd:Z

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", nextDrama="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->nextDrama:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const/16 v1, 0x29

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    return-object v0
.end method
