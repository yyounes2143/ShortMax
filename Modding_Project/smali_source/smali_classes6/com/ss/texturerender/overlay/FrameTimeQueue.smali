.class public Lcom/ss/texturerender/overlay/FrameTimeQueue;
.super Ljava/lang/Object;
.source "FrameTimeQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/texturerender/overlay/FrameTimeQueue$FrameTime;
    }
.end annotation


# instance fields
.field private mTimeQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/ss/texturerender/overlay/FrameTimeQueue$FrameTime;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/texturerender/overlay/FrameTimeQueue;->mTimeQueue:Ljava/util/LinkedList;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public add(Lcom/ss/texturerender/overlay/FrameTimeQueue$FrameTime;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/overlay/FrameTimeQueue;->mTimeQueue:Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/overlay/FrameTimeQueue;->mTimeQueue:Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getLast()Lcom/ss/texturerender/overlay/FrameTimeQueue$FrameTime;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/overlay/FrameTimeQueue;->mTimeQueue:Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/texturerender/overlay/FrameTimeQueue$FrameTime;

    .line 8
    .line 9
    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/overlay/FrameTimeQueue;->mTimeQueue:Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public poll(J)Lcom/ss/texturerender/overlay/FrameTimeQueue$FrameTime;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move-object v1, v0

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/ss/texturerender/overlay/FrameTimeQueue;->mTimeQueue:Ljava/util/LinkedList;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_4

    .line 10
    .line 11
    iget-object v2, p0, Lcom/ss/texturerender/overlay/FrameTimeQueue;->mTimeQueue:Ljava/util/LinkedList;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/util/LinkedList;->element()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/ss/texturerender/overlay/FrameTimeQueue$FrameTime;

    .line 18
    .line 19
    iget-wide v2, v2, Lcom/ss/texturerender/overlay/FrameTimeQueue$FrameTime;->updateClockTime:J

    .line 20
    .line 21
    cmp-long v4, p1, v2

    .line 22
    .line 23
    if-gtz v4, :cond_3

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Lcom/ss/texturerender/overlay/FrameTimeQueue;->mTimeQueue:Ljava/util/LinkedList;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/ss/texturerender/overlay/FrameTimeQueue$FrameTime;

    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_1
    iget-wide v4, v1, Lcom/ss/texturerender/overlay/FrameTimeQueue$FrameTime;->updateClockTime:J

    .line 37
    .line 38
    cmp-long v6, p1, v4

    .line 39
    .line 40
    if-lez v6, :cond_3

    .line 41
    .line 42
    sub-long v4, p1, v4

    .line 43
    .line 44
    sub-long/2addr v2, p1

    .line 45
    cmp-long p1, v4, v2

    .line 46
    .line 47
    if-gez p1, :cond_2

    .line 48
    .line 49
    return-object v1

    .line 50
    :cond_2
    iget-object p1, p0, Lcom/ss/texturerender/overlay/FrameTimeQueue;->mTimeQueue:Ljava/util/LinkedList;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Lcom/ss/texturerender/overlay/FrameTimeQueue$FrameTime;

    .line 57
    .line 58
    return-object p1

    .line 59
    :cond_3
    iget-object v1, p0, Lcom/ss/texturerender/overlay/FrameTimeQueue;->mTimeQueue:Ljava/util/LinkedList;

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Lcom/ss/texturerender/overlay/FrameTimeQueue$FrameTime;

    .line 66
    .line 67
    iget-object v2, p0, Lcom/ss/texturerender/overlay/FrameTimeQueue;->mTimeQueue:Ljava/util/LinkedList;

    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_0

    .line 74
    .line 75
    return-object v1

    .line 76
    :cond_4
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/ss/texturerender/overlay/FrameTimeQueue;->mTimeQueue:Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-ge v1, v2, :cond_0

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v0, "pts["

    .line 21
    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, "]:"

    .line 29
    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/ss/texturerender/overlay/FrameTimeQueue;->mTimeQueue:Ljava/util/LinkedList;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/ss/texturerender/overlay/FrameTimeQueue$FrameTime;

    .line 40
    .line 41
    iget-wide v3, v0, Lcom/ss/texturerender/overlay/FrameTimeQueue$FrameTime;->pts:J

    .line 42
    .line 43
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, ";"

    .line 47
    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    add-int/lit8 v1, v1, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    return-object v0
.end method
