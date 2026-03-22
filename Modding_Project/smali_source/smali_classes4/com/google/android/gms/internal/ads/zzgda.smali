.class final Lcom/google/android/gms/internal/ads/zzgda;
.super Lcom/google/android/gms/internal/ads/zzgcn;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzgcz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfyl;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzgcn;-><init>(Lcom/google/android/gms/internal/ads/zzfyl;ZZ)V

    .line 3
    .line 4
    .line 5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgcy;

    .line 6
    .line 7
    invoke-direct {p1, p0, p4, p3}, Lcom/google/android/gms/internal/ads/zzgcy;-><init>(Lcom/google/android/gms/internal/ads/zzgda;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgda;->zza:Lcom/google/android/gms/internal/ads/zzgcz;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgcn;->zzz()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method static bridge synthetic zzD(Lcom/google/android/gms/internal/ads/zzgda;Lcom/google/android/gms/internal/ads/zzgcz;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgda;->zza:Lcom/google/android/gms/internal/ads/zzgcz;

    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method final zzA(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzgcn;->zzA(I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgda;->zza:Lcom/google/android/gms/internal/ads/zzgcz;

    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method protected final zzk()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgda;->zza:Lcom/google/android/gms/internal/ads/zzgcz;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgdv;->zzh()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method final zzx(ILjava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method final zzy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgda;->zza:Lcom/google/android/gms/internal/ads/zzgcz;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgcz;->zzf()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
