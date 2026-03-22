.class final Lcom/google/android/gms/internal/ads/zzbox;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcao;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzboc;

.field final synthetic zzb:Ljava/lang/Object;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzcak;

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzbpa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbpa;Lcom/google/android/gms/internal/ads/zzboc;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcak;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbox;->zza:Lcom/google/android/gms/internal/ads/zzboc;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbox;->zzb:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbox;->zzc:Lcom/google/android/gms/internal/ads/zzcak;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbox;->zzd:Lcom/google/android/gms/internal/ads/zzbpa;

    .line 11
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzboj;

    .line 2
    .line 3
    const-string v0, "callJs > getEngine: Promise fulfilled"

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbox;->zzb:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbox;->zzc:Lcom/google/android/gms/internal/ads/zzcak;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbox;->zzd:Lcom/google/android/gms/internal/ads/zzbpa;

    .line 13
    .line 14
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbox;->zza:Lcom/google/android/gms/internal/ads/zzboc;

    .line 15
    .line 16
    invoke-static {v2, v3, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzbpa;->zzd(Lcom/google/android/gms/internal/ads/zzbpa;Lcom/google/android/gms/internal/ads/zzboc;Lcom/google/android/gms/internal/ads/zzboj;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcak;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
