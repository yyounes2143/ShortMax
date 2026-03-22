.class public interface abstract Lio/bidmachine/media3/ui/j1;
.super Ljava/lang/Object;
.source "TimeBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/ui/j1$a;
    }
.end annotation


# virtual methods
.method public abstract a(Lio/bidmachine/media3/ui/j1$a;)V
.end method

.method public abstract getPreferredUpdateDelay()J
.end method

.method public abstract setAdGroupTimesMs([J[ZI)V
    .param p1    # [J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [Z
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setBufferedPosition(J)V
.end method

.method public abstract setDuration(J)V
.end method

.method public abstract setEnabled(Z)V
.end method

.method public abstract setPosition(J)V
.end method
