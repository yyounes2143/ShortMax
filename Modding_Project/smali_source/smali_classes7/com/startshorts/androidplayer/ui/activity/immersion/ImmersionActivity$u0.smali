.class public final Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$u0;
.super Ljava/lang/Object;
.source "ImmersionActivity.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionListView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->ha(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$u0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;)V
    .locals 5

    .line 1
    const-string v0, "resolution"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$u0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 7
    .line 8
    const-wide/16 v1, 0x1388

    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->H1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;J)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$u0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 14
    .line 15
    sget-object v1, Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;->CLICK_RESOLUTION_OF_MENU:Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;

    .line 16
    .line 17
    new-instance v2, Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$u0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 23
    .line 24
    const-string v4, "play_resolution"

    .line 25
    .line 26
    invoke-interface {v2, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    const-string p1, "episode"

    .line 30
    .line 31
    invoke-static {v3}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->S1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 39
    .line 40
    new-instance p1, Lcom/startshorts/androidplayer/manager/immersion/feature/k;

    .line 41
    .line 42
    invoke-direct {p1, v1, v2}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;-><init>(Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;Ljava/util/HashMap;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->A3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lcom/startshorts/androidplayer/manager/immersion/feature/k;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
