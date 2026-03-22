.class Lio/bidmachine/ads/networks/gam/j$c$a;
.super Ljava/lang/Object;
.source "GAMLoader.java"

# interfaces
.implements Lio/bidmachine/ads/networks/gam/n0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/gam/j$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/CountDownLatch;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/CountDownLatch;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/j$c$a;->a:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/CountDownLatch;Lio/bidmachine/ads/networks/gam/j$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/ads/networks/gam/j$c$a;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V
    .locals 0
    .param p1    # Lio/bidmachine/ads/networks/gam/InternalGAMAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lio/bidmachine/ads/networks/gam/j$c$a;->a:Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Lio/bidmachine/ads/networks/gam/InternalGAMAd;Lfr/a;)V
    .locals 0
    .param p1    # Lio/bidmachine/ads/networks/gam/InternalGAMAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lfr/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lio/bidmachine/ads/networks/gam/j$c$a;->a:Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
