.class public final Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$n;
.super Ljava/lang/Object;
.source "ShortsFragment.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->w3(ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$n;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/startshorts/androidplayer/bean/player/PlayerHeaderInfo;)V
    .locals 5

    .line 1
    const-string v0, "info"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$n;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 7
    .line 8
    sget-object v1, Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$MessageType;->PLAYER_ERROR_HEADERS:Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$MessageType;

    .line 9
    .line 10
    new-instance v2, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$n;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 16
    .line 17
    const-string v4, "error_header_info"

    .line 18
    .line 19
    invoke-interface {v2, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const-string p1, "episode"

    .line 23
    .line 24
    invoke-static {v3}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->w0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 32
    .line 33
    new-instance p1, Lcom/startshorts/androidplayer/manager/shorts/feature/i;

    .line 34
    .line 35
    invoke-direct {p1, v1, v2}, Lcom/startshorts/androidplayer/manager/shorts/feature/i;-><init>(Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$MessageType;Ljava/util/HashMap;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->o1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;Lcom/startshorts/androidplayer/manager/shorts/feature/i;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
