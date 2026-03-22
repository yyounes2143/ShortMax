.class public final synthetic Lcom/google/android/gms/internal/ads/zzdxn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgcu;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdxo;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbvq;

.field public final synthetic zzc:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdxo;Lcom/google/android/gms/internal/ads/zzbvq;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxn;->zza:Lcom/google/android/gms/internal/ads/zzdxo;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdxn;->zzb:Lcom/google/android/gms/internal/ads/zzbvq;

    .line 7
    .line 8
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzdxn;->zzc:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxn;->zza:Lcom/google/android/gms/internal/ads/zzdxo;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxn;->zzb:Lcom/google/android/gms/internal/ads/zzbvq;

    .line 4
    .line 5
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdxn;->zzc:I

    .line 6
    .line 7
    check-cast p1, Ljava/lang/Throwable;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzdxo;->zzb(Lcom/google/android/gms/internal/ads/zzdxo;Lcom/google/android/gms/internal/ads/zzbvq;ILjava/lang/Throwable;)Lcom/google/common/util/concurrent/e;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
