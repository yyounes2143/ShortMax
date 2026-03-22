.class public final synthetic Lcom/google/android/gms/internal/ads/zzgor;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzgov;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzgow;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgov;Lcom/google/android/gms/internal/ads/zzgow;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgor;->zza:Lcom/google/android/gms/internal/ads/zzgov;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgor;->zzb:Lcom/google/android/gms/internal/ads/zzgow;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzgfg;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgor;->zza:Lcom/google/android/gms/internal/ads/zzgov;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgor;->zzb:Lcom/google/android/gms/internal/ads/zzgow;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgfg;->zzb()Lcom/google/android/gms/internal/ads/zzgez;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzgow;->zza()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzgov;->zzb(Lcom/google/android/gms/internal/ads/zzgez;Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
