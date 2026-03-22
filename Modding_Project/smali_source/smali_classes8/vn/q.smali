.class public interface abstract Lvn/q;
.super Ljava/lang/Object;
.source "ExoTrackSelection.java"

# interfaces
.implements Lvn/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvn/q$b;,
        Lvn/q$a;
    }
.end annotation


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public b()V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract d(IJ)Z
.end method

.method public abstract disable()V
.end method

.method public abstract enable()V
.end method

.method public abstract evaluateQueueSize(JLjava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Ltn/m;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract f(IJ)Z
.end method

.method public g(JLtn/e;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ltn/e;",
            "Ljava/util/List<",
            "+",
            "Ltn/m;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public abstract getSelectedFormat()Lio/bidmachine/media3/common/a;
.end method

.method public abstract getSelectedIndex()I
.end method

.method public abstract getSelectedIndexInTrackGroup()I
.end method

.method public abstract getSelectionData()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getSelectionReason()I
.end method

.method public abstract h(JJJLjava/util/List;[Ltn/n;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/List<",
            "+",
            "Ltn/m;",
            ">;[",
            "Ltn/n;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onPlaybackSpeed(F)V
.end method
