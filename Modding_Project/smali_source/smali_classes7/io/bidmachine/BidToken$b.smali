.class Lio/bidmachine/BidToken$b;
.super Ljava/lang/Object;
.source "BidToken.java"

# interfaces
.implements Lio/bidmachine/ExpirationHandler$TaskScheduler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/BidToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/BidToken$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/bidmachine/BidToken$b;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelTask(Ljr/b;)V
    .locals 0
    .param p1    # Ljr/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lio/bidmachine/BidTokenTaskManager;->cancel(Ljr/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public scheduleTask(Ljr/b;J)V
    .locals 1
    .param p1    # Ljr/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    invoke-static {p1, p2, p3, v0}, Lio/bidmachine/BidTokenTaskManager;->schedule(Ljr/b;JLjava/util/concurrent/TimeUnit;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
