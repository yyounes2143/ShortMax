.class final Lcom/google/android/gms/internal/ads/zzcmp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdj;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfjy;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Lcom/google/android/gms/ads/internal/util/client/zzv;

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzcmq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcmq;Lcom/google/android/gms/internal/ads/zzfjy;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzv;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmp;->zza:Lcom/google/android/gms/internal/ads/zzfjy;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcmp;->zzb:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcmp;->zzc:Lcom/google/android/gms/ads/internal/util/client/zzv;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmp;->zzd:Lcom/google/android/gms/internal/ads/zzcmq;

    .line 11
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmp;->zzd:Lcom/google/android/gms/internal/ads/zzcmq;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcmq;->zzf(Lcom/google/android/gms/internal/ads/zzcmq;)Lcom/google/android/gms/internal/ads/zzgdy;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v7, Lcom/google/android/gms/internal/ads/zzcmn;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcmp;->zza:Lcom/google/android/gms/internal/ads/zzfjy;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcmp;->zzb:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcmp;->zzc:Lcom/google/android/gms/ads/internal/util/client/zzv;

    .line 14
    .line 15
    move-object v1, v7

    .line 16
    move-object v2, p0

    .line 17
    move-object v3, p1

    .line 18
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzcmn;-><init>(Lcom/google/android/gms/internal/ads/zzcmp;Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzfjy;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzv;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v7}, Lcom/google/android/gms/internal/ads/zzgdy;->zza(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/e;

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmp;->zza:Lcom/google/android/gms/internal/ads/zzfjy;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmp;->zzd:Lcom/google/android/gms/internal/ads/zzcmq;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcmq;->zzf(Lcom/google/android/gms/internal/ads/zzcmq;)Lcom/google/android/gms/internal/ads/zzgdy;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Lcom/google/android/gms/internal/ads/zzcmo;

    .line 12
    .line 13
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcmp;->zzc:Lcom/google/android/gms/ads/internal/util/client/zzv;

    .line 14
    .line 15
    invoke-direct {v2, v0, p1, v3}, Lcom/google/android/gms/internal/ads/zzcmo;-><init>(Lcom/google/android/gms/internal/ads/zzfjy;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzv;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzgdy;->zza(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/e;

    .line 19
    .line 20
    .line 21
    return-void
.end method
