.class Lio/bidmachine/p5;
.super Ljava/lang/Object;
.source "SimpleAdProcessCallback.java"

# interfaces
.implements Lio/bidmachine/AdProcessCallback;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onBrokenCreativeEvent(Ljava/util/Map;)V
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public processStartVisibilityTracker()V
    .locals 0

    .line 1
    return-void
.end method

.method public processVisibilityTrackerShown()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public setVisibilitySource(Lio/bidmachine/core/VisibilitySource;)V
    .locals 0
    .param p1    # Lio/bidmachine/core/VisibilitySource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method
