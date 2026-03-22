.class public final synthetic Lcom/google/android/gms/internal/ads/zzccm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzcct;

.field public final synthetic zzb:Z

.field public final synthetic zzc:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcct;ZJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccm;->zza:Lcom/google/android/gms/internal/ads/zzcct;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzccm;->zzb:Z

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzccm;->zzc:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccm;->zza:Lcom/google/android/gms/internal/ads/zzcct;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzccm;->zzb:Z

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzccm;->zzc:J

    .line 6
    .line 7
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcct;->zzR(Lcom/google/android/gms/internal/ads/zzcct;ZJ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
