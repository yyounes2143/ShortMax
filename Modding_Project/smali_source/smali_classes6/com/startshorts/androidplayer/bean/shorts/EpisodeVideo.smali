.class public final Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;
.super Ljava/lang/Object;
.source "EpisodeVideo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nEpisodeVideo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EpisodeVideo.kt\ncom/startshorts/androidplayer/bean/shorts/EpisodeVideo\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,24:1\n295#2,2:25\n*S KotlinDebug\n*F\n+ 1 EpisodeVideo.kt\ncom/startshorts/androidplayer/bean/shorts/EpisodeVideo\n*L\n19#1:25,2\n*E\n"
    }
.end annotation


# instance fields
.field private video_1080:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private video_480:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private video_720:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


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

.method public static synthetic targetUrl$default(Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;IILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/16 p1, 0x2d0

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;->targetUrl(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method


# virtual methods
.method public final getVideo_1080()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;->video_1080:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getVideo_480()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;->video_480:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getVideo_720()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;->video_720:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setVideo_1080(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;->video_1080:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setVideo_480(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;->video_480:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setVideo_720(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;->video_720:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final targetUrl(I)Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/16 v0, 0x2d0

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x438

    .line 6
    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;->video_480:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;->video_720:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;->video_1080:Ljava/lang/String;

    .line 14
    .line 15
    filled-new-array {p1, v0, v1}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;->video_1080:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;->video_720:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;->video_480:Ljava/lang/String;

    .line 29
    .line 30
    filled-new-array {p1, v0, v1}, [Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;->video_720:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;->video_1080:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;->video_480:Ljava/lang/String;

    .line 44
    .line 45
    filled-new-array {p1, v0, v1}, [Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    :goto_0
    check-cast p1, Ljava/lang/Iterable;

    .line 54
    .line 55
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_5

    .line 64
    .line 65
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    move-object v1, v0

    .line 70
    check-cast v1, Ljava/lang/String;

    .line 71
    .line 72
    if-eqz v1, :cond_4

    .line 73
    .line 74
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_3

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    const/4 v1, 0x0

    .line 82
    goto :goto_2

    .line 83
    :cond_4
    :goto_1
    const/4 v1, 0x1

    .line 84
    :goto_2
    if-nez v1, :cond_2

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_5
    const/4 v0, 0x0

    .line 88
    :goto_3
    check-cast v0, Ljava/lang/String;

    .line 89
    .line 90
    return-object v0
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
    const-string v1, "EpisodeVideo(video_480="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;->video_480:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", video_720="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;->video_720:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", video_1080="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;->video_1080:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const/16 v1, 0x29

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method
