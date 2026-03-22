.class public final synthetic Lcom/google/android/gms/internal/ads/zzefi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfve;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzcfg;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfca;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzdfc;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzefk;Lcom/google/android/gms/internal/ads/zzcfg;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzdfc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzefi;->zza:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzefi;->zzb:Lcom/google/android/gms/internal/ads/zzfca;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzefi;->zzc:Lcom/google/android/gms/internal/ads/zzdfc;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzefi;->zza:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefi;->zzb:Lcom/google/android/gms/internal/ads/zzfca;

    .line 4
    .line 5
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzfca;->zzM:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfg;->zzah()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefi;->zzc:Lcom/google/android/gms/internal/ads/zzdfc;

    .line 13
    .line 14
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfg;->zzab()V

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfg;->onPause()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdfc;->zzg()Lcom/google/android/gms/internal/ads/zzdfb;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method
