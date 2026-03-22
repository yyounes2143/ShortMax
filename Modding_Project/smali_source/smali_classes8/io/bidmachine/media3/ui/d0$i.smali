.class Lio/bidmachine/media3/ui/d0$i;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PlayerControlViewLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/media3/ui/d0;-><init>(Lio/bidmachine/media3/ui/PlayerControlView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/media3/ui/d0;


# direct methods
.method constructor <init>(Lio/bidmachine/media3/ui/d0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/ui/d0$i;->a:Lio/bidmachine/media3/ui/d0;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lio/bidmachine/media3/ui/d0$i;->a:Lio/bidmachine/media3/ui/d0;

    .line 2
    .line 3
    invoke-static {p1}, Lio/bidmachine/media3/ui/d0;->w(Lio/bidmachine/media3/ui/d0;)Landroid/view/ViewGroup;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lio/bidmachine/media3/ui/d0$i;->a:Lio/bidmachine/media3/ui/d0;

    .line 10
    .line 11
    invoke-static {p1}, Lio/bidmachine/media3/ui/d0;->w(Lio/bidmachine/media3/ui/d0;)Landroid/view/ViewGroup;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v0, 0x4

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lio/bidmachine/media3/ui/d0$i;->a:Lio/bidmachine/media3/ui/d0;

    .line 2
    .line 3
    invoke-static {p1}, Lio/bidmachine/media3/ui/d0;->x(Lio/bidmachine/media3/ui/d0;)Landroid/view/ViewGroup;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lio/bidmachine/media3/ui/d0$i;->a:Lio/bidmachine/media3/ui/d0;

    .line 10
    .line 11
    invoke-static {p1}, Lio/bidmachine/media3/ui/d0;->x(Lio/bidmachine/media3/ui/d0;)Landroid/view/ViewGroup;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
