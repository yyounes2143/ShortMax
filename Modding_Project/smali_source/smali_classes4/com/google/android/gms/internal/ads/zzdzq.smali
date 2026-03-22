.class public final synthetic Lcom/google/android/gms/internal/ads/zzdzq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzeab;

.field public final synthetic zzb:Lcom/google/common/util/concurrent/e;

.field public final synthetic zzc:Lcom/google/common/util/concurrent/e;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzbvq;

.field public final synthetic zze:Lcom/google/android/gms/internal/ads/zzfhj;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeab;Lcom/google/common/util/concurrent/e;Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzbvq;Lcom/google/android/gms/internal/ads/zzfhj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzq;->zza:Lcom/google/android/gms/internal/ads/zzeab;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdzq;->zzb:Lcom/google/common/util/concurrent/e;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdzq;->zzc:Lcom/google/common/util/concurrent/e;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdzq;->zzd:Lcom/google/android/gms/internal/ads/zzbvq;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdzq;->zze:Lcom/google/android/gms/internal/ads/zzfhj;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzq;->zza:Lcom/google/android/gms/internal/ads/zzeab;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdzq;->zzb:Lcom/google/common/util/concurrent/e;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdzq;->zzc:Lcom/google/common/util/concurrent/e;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdzq;->zzd:Lcom/google/android/gms/internal/ads/zzbvq;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdzq;->zze:Lcom/google/android/gms/internal/ads/zzfhj;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzeab;->zzk(Lcom/google/android/gms/internal/ads/zzeab;Lcom/google/common/util/concurrent/e;Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzbvq;Lcom/google/android/gms/internal/ads/zzfhj;)Ljava/io/InputStream;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method
