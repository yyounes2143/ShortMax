.class Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMHtmlMeasurer$a;
.super Ljava/lang/Object;
.source "OMHtmlMeasurer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMHtmlMeasurer;->u(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/WebView;

.field final synthetic b:Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMHtmlMeasurer;


# direct methods
.method constructor <init>(Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMHtmlMeasurer;Landroid/webkit/WebView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMHtmlMeasurer$a;->b:Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMHtmlMeasurer;

    .line 2
    .line 3
    iput-object p2, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMHtmlMeasurer$a;->a:Landroid/webkit/WebView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Lym/a;->e()Lcom/iab/omid/library/appodeal/adsession/Partner;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-object v2, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMHtmlMeasurer$a;->b:Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMHtmlMeasurer;

    .line 10
    .line 11
    invoke-virtual {v2}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->g()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object v2, Lcom/iab/omid/library/appodeal/adsession/CreativeType;->HTML_DISPLAY:Lcom/iab/omid/library/appodeal/adsession/CreativeType;

    .line 19
    .line 20
    sget-object v3, Lcom/iab/omid/library/appodeal/adsession/ImpressionType;->BEGIN_TO_RENDER:Lcom/iab/omid/library/appodeal/adsession/ImpressionType;

    .line 21
    .line 22
    sget-object v4, Lcom/iab/omid/library/appodeal/adsession/Owner;->NATIVE:Lcom/iab/omid/library/appodeal/adsession/Owner;

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    invoke-static {v2, v3, v4, v4, v5}, Lcom/iab/omid/library/appodeal/adsession/AdSessionConfiguration;->createAdSessionConfiguration(Lcom/iab/omid/library/appodeal/adsession/CreativeType;Lcom/iab/omid/library/appodeal/adsession/ImpressionType;Lcom/iab/omid/library/appodeal/adsession/Owner;Lcom/iab/omid/library/appodeal/adsession/Owner;Z)Lcom/iab/omid/library/appodeal/adsession/AdSessionConfiguration;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object v3, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMHtmlMeasurer$a;->a:Landroid/webkit/WebView;

    .line 30
    .line 31
    invoke-static {v1, v3, v0, v0}, Lcom/iab/omid/library/appodeal/adsession/AdSessionContext;->createHtmlAdSessionContext(Lcom/iab/omid/library/appodeal/adsession/Partner;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/appodeal/adsession/AdSessionContext;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMHtmlMeasurer$a;->b:Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMHtmlMeasurer;

    .line 36
    .line 37
    invoke-virtual {v1, v2, v0}, Lio/bidmachine/ads/networks/adaptiverendering/measurer/OMMeasurer;->j(Lcom/iab/omid/library/appodeal/adsession/AdSessionConfiguration;Lcom/iab/omid/library/appodeal/adsession/AdSessionContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    return-void

    .line 44
    :goto_1
    invoke-static {v0}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    :goto_2
    return-void
.end method
