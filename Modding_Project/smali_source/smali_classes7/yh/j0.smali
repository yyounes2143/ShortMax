.class public final synthetic Lyh/j0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(JLcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lyh/j0;->a:J

    .line 5
    .line 6
    iput-object p3, p0, Lyh/j0;->b:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 7
    .line 8
    iput p4, p0, Lyh/j0;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-wide v0, p0, Lyh/j0;->a:J

    .line 2
    .line 3
    iget-object v2, p0, Lyh/j0;->b:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 4
    .line 5
    iget v3, p0, Lyh/j0;->c:I

    .line 6
    .line 7
    check-cast p1, Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3, p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->Z0(JLcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;ILkotlin/jvm/functions/Function0;)Landroidx/fragment/app/DialogFragment;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
