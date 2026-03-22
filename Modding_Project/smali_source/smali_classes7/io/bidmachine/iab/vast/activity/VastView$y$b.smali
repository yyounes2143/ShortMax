.class Lio/bidmachine/iab/vast/activity/VastView$y$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/vast/activity/VastView$y;->d(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/iab/vast/activity/VastView$y;


# direct methods
.method constructor <init>(Lio/bidmachine/iab/vast/activity/VastView$y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$y$b;->a:Lio/bidmachine/iab/vast/activity/VastView$y;

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
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$y$b;->a:Lio/bidmachine/iab/vast/activity/VastView$y;

    .line 5
    .line 6
    iget-object p1, p1, Lio/bidmachine/iab/vast/activity/VastView$y;->g:Lio/bidmachine/iab/vast/activity/VastView;

    .line 7
    .line 8
    iget-object p1, p1, Lio/bidmachine/iab/vast/activity/VastView;->c:Landroid/widget/FrameLayout;

    .line 9
    .line 10
    const/16 v0, 0x8

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
