.class final Lcom/google/android/gms/internal/ads/zzboy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcam;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzcak;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzboc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbpa;Lcom/google/android/gms/internal/ads/zzcak;Lcom/google/android/gms/internal/ads/zzboc;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzboy;->zza:Lcom/google/android/gms/internal/ads/zzcak;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzboy;->zzb:Lcom/google/android/gms/internal/ads/zzboc;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 1
    const-string v0, "callJs > getEngine: Promise rejected"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbol;

    .line 7
    .line 8
    const-string v1, "Unable to obtain a JavascriptEngine."

    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbol;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzboy;->zza:Lcom/google/android/gms/internal/ads/zzcak;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzcak;->zzd(Ljava/lang/Throwable;)Z

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboy;->zzb:Lcom/google/android/gms/internal/ads/zzboc;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzboc;->zzb()V

    .line 21
    .line 22
    .line 23
    return-void
.end method
