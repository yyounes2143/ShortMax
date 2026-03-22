.class final Lcom/google/android/gms/internal/ads/zzaji;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzajp;

.field public final zzb:Lcom/google/android/gms/internal/ads/zzajs;

.field public final zzc:Lcom/google/android/gms/internal/ads/zzafb;

.field public final zzd:Lcom/google/android/gms/internal/ads/zzafc;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public zze:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzajp;Lcom/google/android/gms/internal/ads/zzajs;Lcom/google/android/gms/internal/ads/zzafb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaji;->zza:Lcom/google/android/gms/internal/ads/zzajp;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaji;->zzb:Lcom/google/android/gms/internal/ads/zzajs;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaji;->zzc:Lcom/google/android/gms/internal/ads/zzafb;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzajp;->zzg:Lcom/google/android/gms/internal/ads/zzz;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 13
    .line 14
    const-string p2, "audio/true-hd"

    .line 15
    .line 16
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    new-instance p1, Lcom/google/android/gms/internal/ads/zzafc;

    .line 23
    .line 24
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzafc;-><init>()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaji;->zzd:Lcom/google/android/gms/internal/ads/zzafc;

    .line 30
    .line 31
    return-void
.end method
