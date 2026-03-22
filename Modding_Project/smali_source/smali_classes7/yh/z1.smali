.class public final synthetic Lyh/z1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lyh/z1;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 5
    .line 6
    iput-object p2, p0, Lyh/z1;->b:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lyh/z1;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 2
    .line 3
    iget-object v1, p0, Lyh/z1;->b:Ljava/util/List;

    .line 4
    .line 5
    check-cast p1, Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->d0(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Ljava/util/List;Lkotlin/jvm/functions/Function0;)Landroidx/fragment/app/DialogFragment;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
