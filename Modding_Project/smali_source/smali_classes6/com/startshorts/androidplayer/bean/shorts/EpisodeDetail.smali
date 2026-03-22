.class public final Lcom/startshorts/androidplayer/bean/shorts/EpisodeDetail;
.super Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
.source "EpisodeDetail.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private playing:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getPlaying()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/shorts/EpisodeDetail;->playing:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setPlaying(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/shorts/EpisodeDetail;->playing:Z

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
    const-string v1, "EpisodeDetail(playing="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/shorts/EpisodeDetail;->playing:Z

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x29

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
