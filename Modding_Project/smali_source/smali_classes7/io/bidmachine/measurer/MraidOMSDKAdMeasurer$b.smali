.class Lio/bidmachine/measurer/MraidOMSDKAdMeasurer$b;
.super Ljava/lang/Object;
.source "MraidOMSDKAdMeasurer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;->R(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;


# direct methods
.method constructor <init>(Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;Ljava/lang/Runnable;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/measurer/MraidOMSDKAdMeasurer$b;->c:Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;

    .line 2
    .line 3
    iput-object p2, p0, Lio/bidmachine/measurer/MraidOMSDKAdMeasurer$b;->a:Ljava/lang/Runnable;

    .line 4
    .line 5
    iput-object p3, p0, Lio/bidmachine/measurer/MraidOMSDKAdMeasurer$b;->b:Landroid/os/Handler;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/measurer/MraidOMSDKAdMeasurer$b;->c:Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/measurer/OMSDKAdMeasurer;->j()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/measurer/MraidOMSDKAdMeasurer$b;->a:Ljava/lang/Runnable;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lio/bidmachine/measurer/MraidOMSDKAdMeasurer$b;->b:Landroid/os/Handler;

    .line 11
    .line 12
    const-wide/16 v2, 0x3e8

    .line 13
    .line 14
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
