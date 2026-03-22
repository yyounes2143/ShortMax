.class final Lcom/google/android/gms/internal/ads/zzzi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Landroid/os/Handler;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzzk;

.field private zzc:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzzk;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzi;->zza:Landroid/os/Handler;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzzi;->zzb:Lcom/google/android/gms/internal/ads/zzzk;

    .line 7
    .line 8
    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzzi;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzzi;->zza:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzzi;)Lcom/google/android/gms/internal/ads/zzzk;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzzi;->zzb:Lcom/google/android/gms/internal/ads/zzzk;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzzi;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzzi;->zzc:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public final zzc()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzzi;->zzc:Z

    .line 3
    .line 4
    return-void
.end method
