.class Lio/bidmachine/iab/vast/activity/VastView$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/vast/activity/VastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/iab/vast/activity/VastView;


# direct methods
.method constructor <init>(Lio/bidmachine/iab/vast/activity/VastView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$l;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 2

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$l;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 2
    .line 3
    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->k0(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    new-array v0, v0, [Ljava/lang/Object;

    .line 9
    .line 10
    const-string v1, "onVideoSizeChanged"

    .line 11
    .line 12
    invoke-static {p1, v1, v0}, Ltm/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$l;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 16
    .line 17
    invoke-static {p1, p2}, Lio/bidmachine/iab/vast/activity/VastView;->h(Lio/bidmachine/iab/vast/activity/VastView;I)I

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$l;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 21
    .line 22
    invoke-static {p1, p3}, Lio/bidmachine/iab/vast/activity/VastView;->J(Lio/bidmachine/iab/vast/activity/VastView;I)I

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$l;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 26
    .line 27
    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->M(Lio/bidmachine/iab/vast/activity/VastView;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
