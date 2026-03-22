.class public final synthetic Lcom/google/android/gms/internal/ads/zzzh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzzi;

.field public final synthetic zzb:I

.field public final synthetic zzc:J

.field public final synthetic zzd:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzzi;IJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzh;->zza:Lcom/google/android/gms/internal/ads/zzzi;

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzzh;->zzb:I

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzzh;->zzc:J

    .line 9
    .line 10
    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzzh;->zzd:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzh;->zza:Lcom/google/android/gms/internal/ads/zzzi;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzzi;->zzb(Lcom/google/android/gms/internal/ads/zzzi;)Lcom/google/android/gms/internal/ads/zzzk;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzzh;->zzb:I

    .line 8
    .line 9
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzzh;->zzc:J

    .line 10
    .line 11
    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzzh;->zzd:J

    .line 12
    .line 13
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzzk;->zzZ(IJJ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
