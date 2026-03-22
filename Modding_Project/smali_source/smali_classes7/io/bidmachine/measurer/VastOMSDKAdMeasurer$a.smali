.class Lio/bidmachine/measurer/VastOMSDKAdMeasurer$a;
.super Ljava/lang/Object;
.source "VastOMSDKAdMeasurer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/measurer/VastOMSDKAdMeasurer;->o(Lio/bidmachine/iab/vast/a;)V
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
    iput-object p1, p0, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$a;->b:Lio/bidmachine/measurer/VastOMSDKAdMeasurer;

    .line 2
    .line 3
    iput-object p2, p0, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$a;->a:Lio/bidmachine/iab/vast/a;

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
    iget-object v0, p0, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$a;->b:Lio/bidmachine/measurer/VastOMSDKAdMeasurer;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$a;->a:Lio/bidmachine/iab/vast/a;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lio/bidmachine/measurer/VastOMSDKAdMeasurer;->D(Lio/bidmachine/iab/vast/a;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$a;->b:Lio/bidmachine/measurer/VastOMSDKAdMeasurer;

    .line 9
    .line 10
    invoke-static {v0}, Lio/bidmachine/measurer/VastOMSDKAdMeasurer;->z(Lio/bidmachine/measurer/VastOMSDKAdMeasurer;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lio/bidmachine/measurer/VastOMSDKAdMeasurer;->E(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    invoke-static {v0}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method
