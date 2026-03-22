.class public final synthetic Lcom/google/android/gms/internal/ads/zzewb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzewc;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzewc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzewb;->zza:Lcom/google/android/gms/internal/ads/zzewc;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzewb;->zza:Lcom/google/android/gms/internal/ads/zzewc;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzewd;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzewc;->zzb:Ljava/util/List;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzewd;-><init>(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    return-object v1
.end method
