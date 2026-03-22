.class final Lcom/google/android/gms/internal/ads/zzftv;
.super Lcom/google/android/gms/internal/ads/zzfso;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzftw;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfub;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzftw;Lcom/google/android/gms/internal/ads/zzfub;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzftv;->zza:Lcom/google/android/gms/internal/ads/zzftw;

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfso;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzftv;->zzb:Lcom/google/android/gms/internal/ads/zzfub;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final zzb(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const/16 v0, 0x1fd6

    .line 2
    .line 3
    const-string v1, "statusCode"

    .line 4
    .line 5
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, "sessionToken"

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfua;->zzc()Lcom/google/android/gms/internal/ads/zzftz;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzftz;->zzb(I)Lcom/google/android/gms/internal/ads/zzftz;

    .line 20
    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzftz;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzftz;

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzftv;->zzb:Lcom/google/android/gms/internal/ads/zzfub;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzftz;->zzc()Lcom/google/android/gms/internal/ads/zzfua;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzfub;->zza(Lcom/google/android/gms/internal/ads/zzfua;)V

    .line 34
    .line 35
    .line 36
    const/16 p1, 0x1fdd

    .line 37
    .line 38
    if-ne v0, p1, :cond_1

    .line 39
    .line 40
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzftv;->zza:Lcom/google/android/gms/internal/ads/zzftw;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzftw;->zzd()V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method
