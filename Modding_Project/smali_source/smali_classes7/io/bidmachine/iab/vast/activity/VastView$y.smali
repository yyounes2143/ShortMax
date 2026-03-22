.class Lio/bidmachine/iab/vast/activity/VastView$y;
.super Lio/bidmachine/iab/vast/activity/VastView$b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/vast/activity/VastView;->R(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Ljava/lang/ref/WeakReference;

.field final synthetic g:Lio/bidmachine/iab/vast/activity/VastView;


# direct methods
.method constructor <init>(Lio/bidmachine/iab/vast/activity/VastView;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$y;->g:Lio/bidmachine/iab/vast/activity/VastView;

    .line 2
    .line 3
    iput-object p5, p0, Lio/bidmachine/iab/vast/activity/VastView$y;->f:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    invoke-direct {p0, p2, p3, p4}, Lio/bidmachine/iab/vast/activity/VastView$b0;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method d(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$y;->f:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/ImageView;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    new-instance p1, Lio/bidmachine/iab/vast/activity/VastView$y$a;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lio/bidmachine/iab/vast/activity/VastView$y$a;-><init>(Lio/bidmachine/iab/vast/activity/VastView$y;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/high16 v1, 0x3f800000    # 1.0f

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-wide/16 v1, 0x64

    .line 40
    .line 41
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-instance v1, Lio/bidmachine/iab/vast/activity/VastView$y$b;

    .line 46
    .line 47
    invoke-direct {v1, p0}, Lio/bidmachine/iab/vast/activity/VastView$y$b;-><init>(Lio/bidmachine/iab/vast/activity/VastView$y;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 55
    .line 56
    .line 57
    new-instance p1, Lio/bidmachine/iab/vast/activity/VastView$y$c;

    .line 58
    .line 59
    invoke-direct {p1, p0}, Lio/bidmachine/iab/vast/activity/VastView$y$c;-><init>(Lio/bidmachine/iab/vast/activity/VastView$y;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    :goto_0
    return-void
.end method
