.class public interface abstract Lb7/m;
.super Ljava/lang/Object;
.source "HandlerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb7/m$a;
    }
.end annotation


# virtual methods
.method public abstract a(I)Z
.end method

.method public abstract b(Lb7/m$a;)Z
.end method

.method public abstract obtainMessage(I)Lb7/m$a;
.end method

.method public abstract obtainMessage(III)Lb7/m$a;
.end method

.method public abstract obtainMessage(IIILjava/lang/Object;)Lb7/m$a;
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract obtainMessage(ILjava/lang/Object;)Lb7/m$a;
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
