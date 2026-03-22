.class public final Lcom/google/android/gms/internal/ads/zzeoh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeuc;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfcw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfcw;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeoh;->zza:Lcom/google/android/gms/internal/ads/zzfcw;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    const/16 v0, 0x3a

    .line 2
    .line 3
    return v0
.end method

.method public final zzb()Lcom/google/common/util/concurrent/e;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeoh;->zza:Lcom/google/android/gms/internal/ads/zzfcw;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzeoi;

    .line 4
    .line 5
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzfcw;->zzp:Z

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzeoi;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgdn;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method
