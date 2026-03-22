.class public final Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$c0;
.super Ljava/lang/Object;
.source "ImmersionActivity.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->d8(ILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nImmersionActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$playEpisode$features$1$1$1\n+ 2 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,6800:1\n4827#2:6801\n1#3:6802\n*S KotlinDebug\n*F\n+ 1 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$playEpisode$features$1$1$1\n*L\n2272#1:6801\n2272#1:6802\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$c0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

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
    .locals 6

    .line 1
    const-string v0, "info"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$c0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 7
    .line 8
    sget-object v1, Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;->PLAYER_ERROR_HEADERS:Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;

    .line 9
    .line 10
    new-instance v2, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$c0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

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
    invoke-static {v3}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->S1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    invoke-static {v3}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->d2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Ljava/lang/Iterable;

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    const/4 v4, 0x0

    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    move-object v5, v3

    .line 53
    check-cast v5, Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature;

    .line 54
    .line 55
    instance-of v5, v5, Lcom/startshorts/androidplayer/manager/immersion/feature/n;

    .line 56
    .line 57
    if-eqz v5, :cond_0

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    move-object v3, v4

    .line 61
    :goto_0
    instance-of p1, v3, Lcom/startshorts/androidplayer/manager/immersion/feature/n;

    .line 62
    .line 63
    if-nez p1, :cond_2

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    move-object v4, v3

    .line 67
    :goto_1
    check-cast v4, Lcom/startshorts/androidplayer/manager/immersion/feature/n;

    .line 68
    .line 69
    if-eqz v4, :cond_3

    .line 70
    .line 71
    const-string p1, "play_resolution"

    .line 72
    .line 73
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->l()Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    :cond_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 81
    .line 82
    new-instance p1, Lcom/startshorts/androidplayer/manager/immersion/feature/k;

    .line 83
    .line 84
    invoke-direct {p1, v1, v2}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;-><init>(Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;Ljava/util/HashMap;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->A3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lcom/startshorts/androidplayer/manager/immersion/feature/k;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method
