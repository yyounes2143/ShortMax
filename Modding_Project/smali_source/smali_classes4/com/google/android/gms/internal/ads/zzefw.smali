.class public final synthetic Lcom/google/android/gms/internal/ads/zzefw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzegb;

.field public final synthetic zzb:Lcom/google/common/util/concurrent/e;

.field public final synthetic zzc:Lcom/google/common/util/concurrent/e;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzfcn;

.field public final synthetic zze:Lcom/google/android/gms/internal/ads/zzfca;

.field public final synthetic zzf:Lorg/json/JSONObject;

.field public final synthetic zzg:Lcom/google/android/gms/ads/internal/zzb;

.field public final synthetic zzh:Lcom/google/android/gms/internal/ads/zzbya;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzegb;Lcom/google/common/util/concurrent/e;Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbya;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzefw;->zza:Lcom/google/android/gms/internal/ads/zzegb;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzefw;->zzb:Lcom/google/common/util/concurrent/e;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzefw;->zzc:Lcom/google/common/util/concurrent/e;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzefw;->zzd:Lcom/google/android/gms/internal/ads/zzfcn;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzefw;->zze:Lcom/google/android/gms/internal/ads/zzfca;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzefw;->zzf:Lorg/json/JSONObject;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzefw;->zzg:Lcom/google/android/gms/ads/internal/zzb;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzefw;->zzh:Lcom/google/android/gms/internal/ads/zzbya;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefw;->zza:Lcom/google/android/gms/internal/ads/zzegb;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzefw;->zzb:Lcom/google/common/util/concurrent/e;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzefw;->zzc:Lcom/google/common/util/concurrent/e;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzefw;->zzd:Lcom/google/android/gms/internal/ads/zzfcn;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzefw;->zze:Lcom/google/android/gms/internal/ads/zzfca;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzefw;->zzf:Lorg/json/JSONObject;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzefw;->zzg:Lcom/google/android/gms/ads/internal/zzb;

    .line 14
    .line 15
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzefw;->zzh:Lcom/google/android/gms/internal/ads/zzbya;

    .line 16
    .line 17
    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzegb;->zzc(Lcom/google/android/gms/internal/ads/zzegb;Lcom/google/common/util/concurrent/e;Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbya;)Lcom/google/android/gms/internal/ads/zzdio;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method
