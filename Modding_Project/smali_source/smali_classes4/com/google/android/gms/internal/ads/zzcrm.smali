.class public final synthetic Lcom/google/android/gms/internal/ads/zzcrm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgcu;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzcrp;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzgdj;

.field public final synthetic zzc:Lcom/google/common/util/concurrent/e;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcrp;Lcom/google/android/gms/internal/ads/zzgdj;Lcom/google/common/util/concurrent/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrm;->zza:Lcom/google/android/gms/internal/ads/zzcrp;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcrm;->zzb:Lcom/google/android/gms/internal/ads/zzgdj;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcrm;->zzc:Lcom/google/common/util/concurrent/e;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrm;->zza:Lcom/google/android/gms/internal/ads/zzcrp;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcrm;->zzb:Lcom/google/android/gms/internal/ads/zzgdj;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcrm;->zzc:Lcom/google/common/util/concurrent/e;

    .line 6
    .line 7
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcra;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzcrp;->zza(Lcom/google/android/gms/internal/ads/zzcrp;Lcom/google/android/gms/internal/ads/zzgdj;Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzcra;)Lcom/google/common/util/concurrent/e;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
