.class final Lcom/google/android/gms/internal/ads/zzflu;
.super Ljava/util/TimerTask;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field final synthetic zza:Ljava/util/Timer;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzflw;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzcfx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzflw;Lcom/google/android/gms/internal/ads/zzcfx;Ljava/util/Timer;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzflu;->zzc:Lcom/google/android/gms/internal/ads/zzcfx;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzflu;->zza:Ljava/util/Timer;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzflu;->zzb:Lcom/google/android/gms/internal/ads/zzflw;

    .line 9
    .line 10
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflu;->zzb:Lcom/google/android/gms/internal/ads/zzflw;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzflw;->zzd(Lcom/google/android/gms/internal/ads/zzflw;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflu;->zzc:Lcom/google/android/gms/internal/ads/zzcfx;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcfx;->zza:Lcom/google/android/gms/internal/ads/zzcfy;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzcfy;->zzaI(Lcom/google/android/gms/internal/ads/zzcfy;Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflu;->zza:Ljava/util/Timer;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 17
    .line 18
    .line 19
    return-void
.end method
