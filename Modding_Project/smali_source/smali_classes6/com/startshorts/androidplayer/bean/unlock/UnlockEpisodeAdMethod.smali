.class public final Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;
.super Ljava/lang/Object;
.source "UnlockEpisodeAdMethod.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private canWatchAdNum:I

.field private nextRefreshTime:J

.field private payTemplateShowAd:Z

.field private totalWatchAdNum:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final enable()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;->totalWatchAdNum:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;->canWatchAdNum:I

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public final getCanWatchAdNum()I
    .locals 1
    const/16 v0, 0x63
    return v0
.end method

.method public final getNextRefreshTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;->nextRefreshTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getPayTemplateShowAd()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;->payTemplateShowAd:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getTotalWatchAdNum()I
    .locals 1
    const/16 v0, 0x63
    return v0
.end method

.method public final setCanWatchAdNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;->canWatchAdNum:I

    .line 2
    .line 3
    return-void
.end method

.method public final setNextRefreshTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;->nextRefreshTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setPayTemplateShowAd(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;->payTemplateShowAd:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setTotalWatchAdNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;->totalWatchAdNum:I

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
    const-string v1, "UnlockEpisodeAdMethod(payTemplateShowAd="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;->payTemplateShowAd:Z

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", canWatchAdNum="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;->canWatchAdNum:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", totalWatchAdNum="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget v1, p0, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;->totalWatchAdNum:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", nextRefreshTime="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-wide v1, p0, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;->nextRefreshTime:J

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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
