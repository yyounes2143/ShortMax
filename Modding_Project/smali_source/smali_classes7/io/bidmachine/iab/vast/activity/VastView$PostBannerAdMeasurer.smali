.class Lio/bidmachine/iab/vast/activity/VastView$PostBannerAdMeasurer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/iab/measurer/MraidAdMeasurer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/vast/activity/VastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PostBannerAdMeasurer"
.end annotation


# instance fields
.field private final a:Lio/bidmachine/iab/vast/activity/VastView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lio/bidmachine/iab/measurer/MraidAdMeasurer;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/measurer/MraidAdMeasurer;)V
    .locals 0
    .param p1    # Lio/bidmachine/iab/vast/activity/VastView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/iab/measurer/MraidAdMeasurer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$PostBannerAdMeasurer;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 5
    .line 6
    iput-object p2, p0, Lio/bidmachine/iab/vast/activity/VastView$PostBannerAdMeasurer;->b:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public b(Landroid/webkit/WebView;)V
    .locals 1
    .param p1    # Landroid/webkit/WebView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$PostBannerAdMeasurer;->b:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lio/bidmachine/iab/measurer/AdMeasurer;->m(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c(Lqm/a;)V
    .locals 1
    .param p1    # Lqm/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$PostBannerAdMeasurer;->b:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lio/bidmachine/iab/measurer/AdMeasurer;->c(Lqm/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d(Landroid/webkit/WebView;)V
    .locals 1
    .param p1    # Landroid/webkit/WebView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$PostBannerAdMeasurer;->b:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lio/bidmachine/iab/measurer/AdMeasurer;->t0(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$PostBannerAdMeasurer;->b:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

    .line 2
    .line 3
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$PostBannerAdMeasurer;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 4
    .line 5
    invoke-interface {p1, v0}, Lio/bidmachine/iab/measurer/AdMeasurer;->l(Landroid/view/ViewGroup;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public bridge synthetic m(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/activity/VastView$PostBannerAdMeasurer;->b(Landroid/webkit/WebView;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAdClicked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$PostBannerAdMeasurer;->b:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/bidmachine/iab/measurer/AdMeasurer;->onAdClicked()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAdShown()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$PostBannerAdMeasurer;->b:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/bidmachine/iab/measurer/AdMeasurer;->onAdShown()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public p(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$PostBannerAdMeasurer;->b:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lio/bidmachine/iab/measurer/MraidAdMeasurer;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public bridge synthetic t0(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/activity/VastView$PostBannerAdMeasurer;->d(Landroid/webkit/WebView;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
