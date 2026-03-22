.class public Lcom/google/android/gms/internal/ads/zzaei;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaeu;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzaeu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaeu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaei;->zza:Lcom/google/android/gms/internal/ads/zzaeu;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public zza()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaei;->zza:Lcom/google/android/gms/internal/ads/zzaeu;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaeu;->zza()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public zzg(J)Lcom/google/android/gms/internal/ads/zzaes;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaei;->zza:Lcom/google/android/gms/internal/ads/zzaeu;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaeu;->zzg(J)Lcom/google/android/gms/internal/ads/zzaes;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final zzh()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaei;->zza:Lcom/google/android/gms/internal/ads/zzaeu;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaeu;->zzh()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
