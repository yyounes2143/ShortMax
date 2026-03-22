.class Lio/bidmachine/ads/networks/gam_dynamic/j0$b;
.super Ljava/lang/Object;
.source "WaterfallController.java"

# interfaces
.implements Lio/bidmachine/ads/networks/gam_dynamic/q0$c;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/gam_dynamic/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final synthetic b:Lio/bidmachine/ads/networks/gam_dynamic/j0;


# direct methods
.method public constructor <init>(Lio/bidmachine/ads/networks/gam_dynamic/j0;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0$b;->b:Lio/bidmachine/ads/networks/gam_dynamic/j0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0$b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public a(Ljava/util/Queue;)V
    .locals 2
    .param p1    # Ljava/util/Queue;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0$b;->b:Lio/bidmachine/ads/networks/gam_dynamic/j0;

    .line 2
    .line 3
    iget-object v0, v0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0$b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0$b;->b:Lio/bidmachine/ads/networks/gam_dynamic/j0;

    .line 18
    .line 19
    iget-object v0, v0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0$b;->b:Lio/bidmachine/ads/networks/gam_dynamic/j0;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/j0;->v(Ljava/util/Queue;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0$b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/j0$b;->b:Lio/bidmachine/ads/networks/gam_dynamic/j0;

    .line 8
    .line 9
    iget-object v0, v0, Lio/bidmachine/ads/networks/gam_dynamic/j0;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
