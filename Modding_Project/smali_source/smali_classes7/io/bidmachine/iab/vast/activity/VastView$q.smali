.class Lio/bidmachine/iab/vast/activity/VastView$q;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


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
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$q;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 3
    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$q;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 2
    .line 3
    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->k1(Lio/bidmachine/iab/vast/activity/VastView;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 1
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->hasGesture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$q;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastView;->f1(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/iab/vast/activity/VastView$q;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .line 4
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$q;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastView;->f1(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$q;->a:Lio/bidmachine/iab/vast/activity/VastView;

    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->k0(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "banner clicked"

    invoke-static {p1, v1, v0}, Ltm/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$q;->a:Lio/bidmachine/iab/vast/activity/VastView;

    iget-object v0, p1, Lio/bidmachine/iab/vast/activity/VastView;->p:Lio/bidmachine/iab/vast/tags/CompanionTag;

    invoke-static {p1, v0, p2}, Lio/bidmachine/iab/vast/activity/VastView;->G(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/tags/CompanionTag;Ljava/lang/String;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
