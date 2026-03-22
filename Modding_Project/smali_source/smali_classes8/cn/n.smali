.class public interface abstract Lcn/n;
.super Ljava/lang/Object;
.source "HandlerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/n$a;
    }
.end annotation


# virtual methods
.method public abstract a(I)Z
.end method

.method public abstract b(Lcn/n$a;)Z
.end method

.method public abstract getLooper()Landroid/os/Looper;
.end method

.method public abstract obtainMessage(I)Lcn/n$a;
.end method

.method public abstract obtainMessage(III)Lcn/n$a;
.end method

.method public abstract obtainMessage(IIILjava/lang/Object;)Lcn/n$a;
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract obtainMessage(ILjava/lang/Object;)Lcn/n$a;
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract post(Ljava/lang/Runnable;)Z
.end method

.method public abstract removeCallbacksAndMessages(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract removeMessages(I)V
.end method

.method public abstract sendEmptyMessage(I)Z
.end method

.method public abstract sendEmptyMessageAtTime(IJ)Z
.end method
