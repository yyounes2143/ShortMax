.class public final synthetic Lcom/google/android/gms/internal/ads/zzeez;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgcu;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzefb;

.field public final synthetic zzb:Landroid/net/Uri;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfcn;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzfca;

.field public final synthetic zze:Lcom/google/android/gms/internal/ads/zzfcd;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzefb;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzfcd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeez;->zza:Lcom/google/android/gms/internal/ads/zzefb;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeez;->zzb:Landroid/net/Uri;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeez;->zzc:Lcom/google/android/gms/internal/ads/zzfcn;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeez;->zzd:Lcom/google/android/gms/internal/ads/zzfca;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeez;->zze:Lcom/google/android/gms/internal/ads/zzfcd;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeez;->zza:Lcom/google/android/gms/internal/ads/zzefb;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeez;->zzb:Landroid/net/Uri;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeez;->zzc:Lcom/google/android/gms/internal/ads/zzfcn;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeez;->zzd:Lcom/google/android/gms/internal/ads/zzfca;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzeez;->zze:Lcom/google/android/gms/internal/ads/zzfcd;

    .line 10
    .line 11
    move-object v5, p1

    .line 12
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzefb;->zzd(Lcom/google/android/gms/internal/ads/zzefb;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzfcd;Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method
