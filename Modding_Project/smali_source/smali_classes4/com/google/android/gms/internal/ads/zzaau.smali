.class public final Lcom/google/android/gms/internal/ads/zzaau;
.super Lcom/google/android/gms/internal/ads/zzth;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzti;Landroid/view/Surface;)V
    .locals 0
    .param p2    # Lcom/google/android/gms/internal/ads/zzti;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzth;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzti;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 5
    .line 6
    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    invoke-virtual {p3}, Landroid/view/Surface;->isValid()Z

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
