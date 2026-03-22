.class public final Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;
.super Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;
.source "TagRelatedShorts.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private hasInsert:Z

.field private final label:Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final position:I

.field private shortPlayResponseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IZLcom/startshorts/androidplayer/bean/shorts/ShortsLabel;Ljava/util/List;)V
    .locals 0
    .param p3    # Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;-><init>()V

    .line 3
    iput p1, p0, Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;->position:I

    .line 4
    iput-boolean p2, p0, Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;->hasInsert:Z

    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;->label:Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 6
    iput-object p4, p0, Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;->shortPlayResponseList:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(IZLcom/startshorts/androidplayer/bean/shorts/ShortsLabel;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;-><init>(IZLcom/startshorts/androidplayer/bean/shorts/ShortsLabel;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;IZLcom/startshorts/androidplayer/bean/shorts/ShortsLabel;Ljava/util/List;ILjava/lang/Object;)Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x1

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;->position:I

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p6, p5, 0x2

    .line 8
    .line 9
    if-eqz p6, :cond_1

    .line 10
    .line 11
    iget-boolean p2, p0, Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;->hasInsert:Z

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p6, p5, 0x4

    .line 14
    .line 15
    if-eqz p6, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;->label:Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p5, p5, 0x8

    .line 20
    .line 21
    if-eqz p5, :cond_3

    .line 22
    .line 23
    iget-object p4, p0, Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;->shortPlayResponseList:Ljava/util/List;

    .line 24
    .line 25
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;->copy(IZLcom/startshorts/androidplayer/bean/shorts/ShortsLabel;Ljava/util/List;)Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;->position:I

    .line 2
    .line 3
    return v0
.end method

.method public final component2()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;->hasInsert:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component3()Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;->label:Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;->shortPlayResponseList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(IZLcom/startshorts/androidplayer/bean/shorts/ShortsLabel;Ljava/util/List;)Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;
    .locals 1
    .param p3    # Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            ">;)",
            "Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;-><init>(IZLcom/startshorts/androidplayer/bean/shorts/ShortsLabel;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-object v0
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
    instance-of v1, p1, Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;

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
    check-cast p1, Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;

    .line 12
    .line 13
    iget v1, p0, Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;->position:I

    .line 14
    .line 15
    iget v3, p1, Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;->position:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;->hasInsert:Z

    .line 21
    .line 22
    iget-boolean v3, p1, Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;->hasInsert:Z

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;->label:Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 28
    .line 29
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;->label:Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 30
    .line 31
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;->shortPlayResponseList:Ljava/util/List;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;->shortPlayResponseList:Ljava/util/List;

    .line 41
    .line 42
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-nez p1, :cond_5

    .line 47
    .line 48
    return v2

    .line 49
    :cond_5
    return v0
.end method

.method public final getHasInsert()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;->hasInsert:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getLabel()Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;->label:Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;->position:I

    .line 2
    .line 3
    return v0
.end method

.method public final getShortPlayResponseList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;->shortPlayResponseList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;->position:I

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
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;->hasInsert:Z

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;->label:Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    move v1, v2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    :goto_0
    add-int/2addr v0, v1

    .line 30
    mul-int/lit8 v0, v0, 0x1f

    .line 31
    .line 32
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;->shortPlayResponseList:Ljava/util/List;

    .line 33
    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    :goto_1
    add-int/2addr v0, v2

    .line 42
    return v0
.end method

.method public final setHasInsert(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;->hasInsert:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setShortPlayResponseList(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;->shortPlayResponseList:Ljava/util/List;

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
    const-string v1, "TagRelatedShorts(position="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;->position:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", hasInsert="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;->hasInsert:Z

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", label="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;->label:Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", shortPlayResponseList="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;->shortPlayResponseList:Ljava/util/List;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const/16 v1, 0x29

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method
