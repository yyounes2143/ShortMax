.class public final Lcom/google/android/gms/internal/ads/zzago;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzady;


# instance fields
.field private final zzb:J

.field private final zzc:Lcom/google/android/gms/internal/ads/zzady;


# direct methods
.method public constructor <init>(JLcom/google/android/gms/internal/ads/zzady;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzago;->zzb:J

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzago;->zzc:Lcom/google/android/gms/internal/ads/zzady;

    .line 7
    .line 8
    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzago;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzago;->zzb:J

    .line 2
    .line 3
    return-wide v0
.end method


# virtual methods
.method public final zzG()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzago;->zzc:Lcom/google/android/gms/internal/ads/zzady;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzady;->zzG()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzP(Lcom/google/android/gms/internal/ads/zzaeu;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzagn;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p1}, Lcom/google/android/gms/internal/ads/zzagn;-><init>(Lcom/google/android/gms/internal/ads/zzago;Lcom/google/android/gms/internal/ads/zzaeu;Lcom/google/android/gms/internal/ads/zzaeu;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzago;->zzc:Lcom/google/android/gms/internal/ads/zzady;

    .line 7
    .line 8
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzady;->zzP(Lcom/google/android/gms/internal/ads/zzaeu;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final zzw(II)Lcom/google/android/gms/internal/ads/zzafb;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzago;->zzc:Lcom/google/android/gms/internal/ads/zzady;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzady;->zzw(II)Lcom/google/android/gms/internal/ads/zzafb;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
