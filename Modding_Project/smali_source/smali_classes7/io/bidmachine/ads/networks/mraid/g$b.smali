.class Lio/bidmachine/ads/networks/mraid/g$b;
.super Ljava/lang/Object;
.source "MraidFullScreenAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/ads/networks/mraid/g;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/ads/networks/mraid/g;


# direct methods
.method constructor <init>(Lio/bidmachine/ads/networks/mraid/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/ads/networks/mraid/g$b;->a:Lio/bidmachine/ads/networks/mraid/g;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/g$b;->a:Lio/bidmachine/ads/networks/mraid/g;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/ads/networks/mraid/g;->o(Lio/bidmachine/ads/networks/mraid/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    invoke-static {v0}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    :goto_0
    return-void
.end method
