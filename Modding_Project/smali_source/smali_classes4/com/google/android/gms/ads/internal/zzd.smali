.class public final synthetic Lcom/google/android/gms/ads/internal/zzd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgcu;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/ads/internal/zzf;

.field public final synthetic zzb:Ljava/lang/Long;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzdsj;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzfhj;

.field public final synthetic zze:Lcom/google/android/gms/internal/ads/zzfhx;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/ads/internal/zzf;Ljava/lang/Long;Lcom/google/android/gms/internal/ads/zzdsj;Lcom/google/android/gms/internal/ads/zzfhj;Lcom/google/android/gms/internal/ads/zzfhx;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzd;->zza:Lcom/google/android/gms/ads/internal/zzf;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzd;->zzb:Ljava/lang/Long;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzd;->zzc:Lcom/google/android/gms/internal/ads/zzdsj;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/ads/internal/zzd;->zzd:Lcom/google/android/gms/internal/ads/zzfhj;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/ads/internal/zzd;->zze:Lcom/google/android/gms/internal/ads/zzfhx;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzd;->zza:Lcom/google/android/gms/ads/internal/zzf;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzd;->zzb:Ljava/lang/Long;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzd;->zzc:Lcom/google/android/gms/internal/ads/zzdsj;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzd;->zzd:Lcom/google/android/gms/internal/ads/zzfhj;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzd;->zze:Lcom/google/android/gms/internal/ads/zzfhx;

    .line 10
    .line 11
    move-object v5, p1

    .line 12
    check-cast v5, Lorg/json/JSONObject;

    .line 13
    .line 14
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/zzf;->zza(Lcom/google/android/gms/ads/internal/zzf;Ljava/lang/Long;Lcom/google/android/gms/internal/ads/zzdsj;Lcom/google/android/gms/internal/ads/zzfhj;Lcom/google/android/gms/internal/ads/zzfhx;Lorg/json/JSONObject;)Lcom/google/common/util/concurrent/e;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method
