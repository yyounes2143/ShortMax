.class Lio/bidmachine/measurer/OMSDKAdMeasurer$e;
.super Ljava/lang/Object;
.source "OMSDKAdMeasurer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/measurer/OMSDKAdMeasurer;->k(Lcom/iab/omid/library/appodeal/adsession/ErrorType;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iab/omid/library/appodeal/adsession/ErrorType;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lio/bidmachine/measurer/OMSDKAdMeasurer;


# direct methods
.method constructor <init>(Lio/bidmachine/measurer/OMSDKAdMeasurer;Lcom/iab/omid/library/appodeal/adsession/ErrorType;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer$e;->c:Lio/bidmachine/measurer/OMSDKAdMeasurer;

    .line 2
    .line 3
    iput-object p2, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer$e;->a:Lcom/iab/omid/library/appodeal/adsession/ErrorType;

    .line 4
    .line 5
    iput-object p3, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer$e;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer$e;->c:Lio/bidmachine/measurer/OMSDKAdMeasurer;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/measurer/OMSDKAdMeasurer;->b(Lio/bidmachine/measurer/OMSDKAdMeasurer;)Lcom/iab/omid/library/appodeal/adsession/AdSession;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer$e;->c:Lio/bidmachine/measurer/OMSDKAdMeasurer;

    .line 10
    .line 11
    invoke-static {v0}, Lio/bidmachine/measurer/OMSDKAdMeasurer;->b(Lio/bidmachine/measurer/OMSDKAdMeasurer;)Lcom/iab/omid/library/appodeal/adsession/AdSession;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer$e;->a:Lcom/iab/omid/library/appodeal/adsession/ErrorType;

    .line 16
    .line 17
    iget-object v2, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer$e;->b:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/iab/omid/library/appodeal/adsession/AdSession;->error(Lcom/iab/omid/library/appodeal/adsession/ErrorType;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer$e;->c:Lio/bidmachine/measurer/OMSDKAdMeasurer;

    .line 23
    .line 24
    const-string v1, "error"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lio/bidmachine/measurer/OMSDKAdMeasurer;->r(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    invoke-static {v0}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    :goto_0
    return-void
.end method
