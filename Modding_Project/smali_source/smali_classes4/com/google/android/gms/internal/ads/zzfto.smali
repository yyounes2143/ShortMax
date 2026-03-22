.class public final synthetic Lcom/google/android/gms/internal/ads/zzfto;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzftw;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfud;

.field public final synthetic zzc:I

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzfub;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzftw;Lcom/google/android/gms/internal/ads/zzfud;ILcom/google/android/gms/internal/ads/zzfub;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfto;->zza:Lcom/google/android/gms/internal/ads/zzftw;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfto;->zzb:Lcom/google/android/gms/internal/ads/zzfud;

    .line 7
    .line 8
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzfto;->zzc:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfto;->zzd:Lcom/google/android/gms/internal/ads/zzfub;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfto;->zza:Lcom/google/android/gms/internal/ads/zzftw;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfto;->zzb:Lcom/google/android/gms/internal/ads/zzfud;

    .line 4
    .line 5
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfto;->zzc:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfto;->zzd:Lcom/google/android/gms/internal/ads/zzfub;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzftw;->zza(Lcom/google/android/gms/internal/ads/zzftw;Lcom/google/android/gms/internal/ads/zzfud;ILcom/google/android/gms/internal/ads/zzfub;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
