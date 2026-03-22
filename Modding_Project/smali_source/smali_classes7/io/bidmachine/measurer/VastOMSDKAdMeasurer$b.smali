.class Lio/bidmachine/measurer/VastOMSDKAdMeasurer$b;
.super Ljava/lang/Object;
.source "VastOMSDKAdMeasurer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/measurer/VastOMSDKAdMeasurer;->D(Lio/bidmachine/iab/vast/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/iab/vast/a;

.field final synthetic b:Lio/bidmachine/measurer/VastOMSDKAdMeasurer;


# direct methods
.method constructor <init>(Lio/bidmachine/measurer/VastOMSDKAdMeasurer;Lio/bidmachine/iab/vast/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$b;->b:Lio/bidmachine/measurer/VastOMSDKAdMeasurer;

    .line 2
    .line 3
    iput-object p2, p0, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$b;->a:Lio/bidmachine/iab/vast/a;

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
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$b;->a:Lio/bidmachine/iab/vast/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/a;->M()Lio/bidmachine/iab/vast/processor/VastAd;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/processor/VastAd;->h()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    iget-object v1, p0, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$b;->b:Lio/bidmachine/measurer/VastOMSDKAdMeasurer;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lio/bidmachine/measurer/VastOMSDKAdMeasurer;->B(Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$b;->b:Lio/bidmachine/measurer/VastOMSDKAdMeasurer;

    .line 23
    .line 24
    iget-object v1, p0, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$b;->a:Lio/bidmachine/iab/vast/a;

    .line 25
    .line 26
    invoke-virtual {v1}, Lio/bidmachine/iab/vast/a;->G()F

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lio/bidmachine/measurer/VastOMSDKAdMeasurer;->C(Ljava/lang/Float;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    goto :goto_2

    .line 38
    :goto_1
    invoke-static {v0}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    :goto_2
    return-void
.end method
