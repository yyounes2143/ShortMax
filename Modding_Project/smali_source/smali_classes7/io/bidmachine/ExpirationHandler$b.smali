.class Lio/bidmachine/ExpirationHandler$b;
.super Ljava/lang/Object;
.source "ExpirationHandler.java"

# interfaces
.implements Lio/bidmachine/ExpirationHandler$TaskScheduler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ExpirationHandler;
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

.method synthetic constructor <init>(Lio/bidmachine/ExpirationHandler$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/bidmachine/ExpirationHandler$b;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelTask(Ljr/b;)V
    .locals 1
    .param p1    # Ljr/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Ljr/b;->d(Z)V

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lio/bidmachine/core/g;->g(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public scheduleTask(Ljr/b;J)V
    .locals 1
    .param p1    # Ljr/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Ljr/b;->d(Z)V

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2, p3}, Lio/bidmachine/core/g;->Y(Ljava/lang/Runnable;J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
