.class Lio/bidmachine/measurer/OMSDKAdMeasurer$f;
.super Ljava/lang/Object;
.source "OMSDKAdMeasurer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/measurer/OMSDKAdMeasurer;->l(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lio/bidmachine/measurer/OMSDKAdMeasurer;


# direct methods
.method constructor <init>(Lio/bidmachine/measurer/OMSDKAdMeasurer;Landroid/view/ViewGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer$f;->b:Lio/bidmachine/measurer/OMSDKAdMeasurer;

    .line 2
    .line 3
    iput-object p2, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer$f;->a:Landroid/view/ViewGroup;

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
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer$f;->b:Lio/bidmachine/measurer/OMSDKAdMeasurer;

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
    iget-object v0, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer$f;->b:Lio/bidmachine/measurer/OMSDKAdMeasurer;

    .line 10
    .line 11
    invoke-static {v0}, Lio/bidmachine/measurer/OMSDKAdMeasurer;->b(Lio/bidmachine/measurer/OMSDKAdMeasurer;)Lcom/iab/omid/library/appodeal/adsession/AdSession;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer$f;->a:Landroid/view/ViewGroup;

    .line 16
    .line 17
    invoke-static {v0, v1, v2}, Lio/bidmachine/measurer/OMSDKAdMeasurer;->d(Lio/bidmachine/measurer/OMSDKAdMeasurer;Lcom/iab/omid/library/appodeal/adsession/AdSession;Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer$f;->b:Lio/bidmachine/measurer/OMSDKAdMeasurer;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 26
    .line 27
    iget-object v2, p0, Lio/bidmachine/measurer/OMSDKAdMeasurer$f;->a:Landroid/view/ViewGroup;

    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Lio/bidmachine/measurer/OMSDKAdMeasurer;->e(Lio/bidmachine/measurer/OMSDKAdMeasurer;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :goto_0
    invoke-static {v0}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    :goto_1
    return-void
.end method
