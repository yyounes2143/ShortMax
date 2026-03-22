.class public final synthetic Lyh/y0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;

.field public final synthetic c:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;


# direct methods
.method public synthetic constructor <init>(ZLcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lyh/y0;->a:Z

    .line 5
    .line 6
    iput-object p2, p0, Lyh/y0;->b:Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;

    .line 7
    .line 8
    iput-object p3, p0, Lyh/y0;->c:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lyh/y0;->a:Z

    .line 2
    .line 3
    iget-object v1, p0, Lyh/y0;->b:Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;

    .line 4
    .line 5
    iget-object v2, p0, Lyh/y0;->c:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 6
    .line 7
    check-cast p1, Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->R0(ZLcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lkotlin/jvm/functions/Function0;)Landroidx/fragment/app/DialogFragment;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
