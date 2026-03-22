.class public final synthetic Lyh/a1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

.field public final synthetic b:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

.field public final synthetic c:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lyh/a1;->a:Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 5
    .line 6
    iput-object p2, p0, Lyh/a1;->b:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 7
    .line 8
    iput-object p3, p0, Lyh/a1;->c:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lyh/a1;->a:Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 2
    .line 3
    iget-object v1, p0, Lyh/a1;->b:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 4
    .line 5
    iget-object v2, p0, Lyh/a1;->c:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 6
    .line 7
    check-cast p1, Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->g1(Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lkotlin/jvm/functions/Function0;)Landroidx/fragment/app/DialogFragment;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
