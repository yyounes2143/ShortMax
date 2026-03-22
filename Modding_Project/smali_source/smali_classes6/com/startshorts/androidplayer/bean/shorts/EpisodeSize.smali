.class public final Lcom/startshorts/androidplayer/bean/shorts/EpisodeSize;
.super Ljava/lang/Object;
.source "EpisodeSize.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
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


# virtual methods
.method public final getSize(I)J
    .locals 4

    .line 1
    const/16 v0, 0x1e0

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    if-eq p1, v0, :cond_2

    .line 6
    .line 7
    const/16 v0, 0x2d0

    .line 8
    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    const/16 v0, 0x438

    .line 12
    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    return-wide v1

    .line 16
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/EpisodeSize;->video_1080:Ljava/lang/String;

    .line 17
    .line 18
    if-eqz p1, :cond_3

    .line 19
    .line 20
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/EpisodeSize;->video_720:Ljava/lang/String;

    .line 26
    .line 27
    if-eqz p1, :cond_3

    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v1

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    iget-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/EpisodeSize;->video_480:Ljava/lang/String;

    .line 35
    .line 36
    if-eqz p1, :cond_3

    .line 37
    .line 38
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :cond_3
    :goto_0
    return-wide v1

    .line 43
    :catch_0
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 44
    .line 45
    const-string v0, "parseException"

    .line 46
    .line 47
    const-string/jumbo v3, "string result can not parse to long "

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0, v3}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-wide v1
.end method

.method public final getVideo_1080()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/EpisodeSize;->video_1080:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getVideo_480()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/EpisodeSize;->video_480:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getVideo_720()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/EpisodeSize;->video_720:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/EpisodeSize;->video_1080:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/EpisodeSize;->video_480:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/EpisodeSize;->video_720:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
