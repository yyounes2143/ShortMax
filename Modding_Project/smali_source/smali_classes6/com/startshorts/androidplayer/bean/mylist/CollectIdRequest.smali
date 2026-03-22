.class public final Lcom/startshorts/androidplayer/bean/mylist/CollectIdRequest;
.super Ljava/lang/Object;
.source "CancelCollectBatchRequest.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private collectId:J

.field private contentTag:I


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/startshorts/androidplayer/bean/mylist/CollectIdRequest;->collectId:J

    .line 5
    .line 6
    iput p3, p0, Lcom/startshorts/androidplayer/bean/mylist/CollectIdRequest;->contentTag:I

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic copy$default(Lcom/startshorts/androidplayer/bean/mylist/CollectIdRequest;JIILjava/lang/Object;)Lcom/startshorts/androidplayer/bean/mylist/CollectIdRequest;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    iget-wide p1, p0, Lcom/startshorts/androidplayer/bean/mylist/CollectIdRequest;->collectId:J

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x2

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    iget p3, p0, Lcom/startshorts/androidplayer/bean/mylist/CollectIdRequest;->contentTag:I

    .line 12
    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/bean/mylist/CollectIdRequest;->copy(JI)Lcom/startshorts/androidplayer/bean/mylist/CollectIdRequest;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/mylist/CollectIdRequest;->collectId:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/mylist/CollectIdRequest;->contentTag:I

    .line 2
    .line 3
    return v0
.end method

.method public final copy(JI)Lcom/startshorts/androidplayer/bean/mylist/CollectIdRequest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/bean/mylist/CollectIdRequest;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Lcom/startshorts/androidplayer/bean/mylist/CollectIdRequest;-><init>(JI)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
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
    instance-of v1, p1, Lcom/startshorts/androidplayer/bean/mylist/CollectIdRequest;

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
    check-cast p1, Lcom/startshorts/androidplayer/bean/mylist/CollectIdRequest;

    .line 12
    .line 13
    iget-wide v3, p0, Lcom/startshorts/androidplayer/bean/mylist/CollectIdRequest;->collectId:J

    .line 14
    .line 15
    iget-wide v5, p1, Lcom/startshorts/androidplayer/bean/mylist/CollectIdRequest;->collectId:J

    .line 16
    .line 17
    cmp-long v1, v3, v5

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    return v2

    .line 22
    :cond_2
    iget v1, p0, Lcom/startshorts/androidplayer/bean/mylist/CollectIdRequest;->contentTag:I

    .line 23
    .line 24
    iget p1, p1, Lcom/startshorts/androidplayer/bean/mylist/CollectIdRequest;->contentTag:I

    .line 25
    .line 26
    if-eq v1, p1, :cond_3

    .line 27
    .line 28
    return v2

    .line 29
    :cond_3
    return v0
.end method

.method public final getCollectId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/mylist/CollectIdRequest;->collectId:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getContentTag()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/mylist/CollectIdRequest;->contentTag:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/mylist/CollectIdRequest;->collectId:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget v1, p0, Lcom/startshorts/androidplayer/bean/mylist/CollectIdRequest;->contentTag:I

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    return v0
.end method

.method public final setCollectId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/startshorts/androidplayer/bean/mylist/CollectIdRequest;->collectId:J

    .line 2
    .line 3
    return-void
.end method

.method public final setContentTag(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/mylist/CollectIdRequest;->contentTag:I

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
    const-string v1, "CollectIdRequest(collectId="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-wide v1, p0, Lcom/startshorts/androidplayer/bean/mylist/CollectIdRequest;->collectId:J

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", contentTag="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/startshorts/androidplayer/bean/mylist/CollectIdRequest;->contentTag:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x29

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method
