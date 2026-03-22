.class Lio/bidmachine/nativead/view/NativeAdContainer;
.super Landroid/widget/FrameLayout;
.source "NativeAdContainer.java"


# instance fields
.field final a:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field protected final b:Lio/bidmachine/nativead/view/NativeAdOverlayContainer;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field c:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lio/bidmachine/nativead/view/NativeAdContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lio/bidmachine/nativead/view/NativeAdContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lio/bidmachine/nativead/view/NativeAdContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lio/bidmachine/nativead/view/NativeAdContainer;->a:Landroid/widget/FrameLayout;

    .line 6
    new-instance p3, Lio/bidmachine/nativead/view/NativeAdOverlayContainer;

    invoke-direct {p3, p1}, Lio/bidmachine/nativead/view/NativeAdOverlayContainer;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lio/bidmachine/nativead/view/NativeAdContainer;->b:Lio/bidmachine/nativead/view/NativeAdOverlayContainer;

    .line 7
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p4, -0x1

    invoke-direct {p1, p4, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, p2, p4, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 8
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, p4, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, p3, p4, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContainer;->c:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContainer;->c:Landroid/view/View;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContainer;->a:Landroid/widget/FrameLayout;

    if-eq p1, v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1

    .line 4
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContainer;->a:Landroid/widget/FrameLayout;

    if-eq p1, v0, :cond_0

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 1

    .line 7
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContainer;->a:Landroid/widget/FrameLayout;

    if-eq p1, v0, :cond_0

    .line 8
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :goto_0
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContainer;->a:Landroid/widget/FrameLayout;

    if-eq p1, v0, :cond_0

    .line 14
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContainer;->a:Landroid/widget/FrameLayout;

    if-eq p1, v0, :cond_0

    .line 11
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContainer;->a:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public removeAllViews()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContainer;->a:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContainer;->c:Landroid/view/View;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/NativeAdContainer;->a()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lio/bidmachine/nativead/view/NativeAdContainer;->a:Landroid/widget/FrameLayout;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method
