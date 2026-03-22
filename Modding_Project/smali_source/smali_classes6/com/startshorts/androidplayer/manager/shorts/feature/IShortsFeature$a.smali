.class public final Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$a;
.super Ljava/lang/Object;
.source "IShortsFeature.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static a(Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature;Lcom/startshorts/androidplayer/manager/shorts/feature/i;)Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;
    .locals 1
    .param p0    # Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/startshorts/androidplayer/manager/shorts/feature/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string p0, "message"

    .line 2
    .line 3
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/shorts/feature/i;->a()Ljava/util/HashMap;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/4 p1, 0x0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const-string v0, "episode"

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object p0, p1

    .line 21
    :goto_0
    instance-of v0, p0, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    move-object p1, p0

    .line 26
    check-cast p1, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 27
    .line 28
    :cond_1
    return-object p1
.end method
