.class public final Lcom/google/android/gms/internal/ads/zzezd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzezr;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfej;

.field private final zzb:Ljava/util/concurrent/Executor;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgdj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfej;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzezb;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzezb;-><init>(Lcom/google/android/gms/internal/ads/zzezd;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzezd;->zzc:Lcom/google/android/gms/internal/ads/zzgdj;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzezd;->zza:Lcom/google/android/gms/internal/ads/zzfej;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzezd;->zzb:Ljava/util/concurrent/Executor;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzezd;Lcom/google/android/gms/internal/ads/zzcve;Lcom/google/android/gms/internal/ads/zzezl;)Lcom/google/common/util/concurrent/e;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzezd;->zza:Lcom/google/android/gms/internal/ads/zzfej;

    .line 2
    .line 3
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzezl;->zzb:Lcom/google/android/gms/internal/ads/zzfet;

    .line 4
    .line 5
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzezl;->zza:Lcom/google/android/gms/internal/ads/zzbvq;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfej;->zzb(Lcom/google/android/gms/internal/ads/zzfet;)Lcom/google/android/gms/internal/ads/zzfes;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcve;->zzb()Lcom/google/android/gms/internal/ads/zzcse;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcse;->zzg(Lcom/google/android/gms/internal/ads/zzbvq;)Lcom/google/common/util/concurrent/e;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzezd;->zzc:Lcom/google/android/gms/internal/ads/zzgdj;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzezd;->zzb:Ljava/util/concurrent/Executor;

    .line 26
    .line 27
    invoke-static {p1, v2, p0}, Lcom/google/android/gms/internal/ads/zzgdn;->zzr(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzgdj;Ljava/util/concurrent/Executor;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzezc;

    .line 31
    .line 32
    invoke-direct {p0, v1, p2, v0}, Lcom/google/android/gms/internal/ads/zzezc;-><init>(Lcom/google/android/gms/internal/ads/zzfet;Lcom/google/android/gms/internal/ads/zzbvq;Lcom/google/android/gms/internal/ads/zzfes;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgdn;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzezs;Lcom/google/android/gms/internal/ads/zzezq;Lcom/google/android/gms/internal/ads/zzcve;)Lcom/google/common/util/concurrent/e;
    .locals 1

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzezn;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzezd;->zza:Lcom/google/android/gms/internal/ads/zzfej;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzezd;->zzb:Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    invoke-direct {p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzezn;-><init>(Lcom/google/android/gms/internal/ads/zzfej;Lcom/google/android/gms/internal/ads/zzcve;Ljava/util/concurrent/Executor;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzezn;->zzc()Lcom/google/common/util/concurrent/e;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgde;->zzw(Lcom/google/common/util/concurrent/e;)Lcom/google/android/gms/internal/ads/zzgde;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    new-instance p2, Lcom/google/android/gms/internal/ads/zzeyz;

    .line 19
    .line 20
    invoke-direct {p2, p0, p3}, Lcom/google/android/gms/internal/ads/zzeyz;-><init>(Lcom/google/android/gms/internal/ads/zzezd;Lcom/google/android/gms/internal/ads/zzcve;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzgdn;->zzn(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzgcu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/e;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgde;

    .line 28
    .line 29
    new-instance p2, Lcom/google/android/gms/internal/ads/zzeza;

    .line 30
    .line 31
    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzeza;-><init>(Lcom/google/android/gms/internal/ads/zzezd;)V

    .line 32
    .line 33
    .line 34
    const-class p3, Ljava/lang/Exception;

    .line 35
    .line 36
    invoke-static {p1, p3, p2, v0}, Lcom/google/android/gms/internal/ads/zzgdn;->zze(Lcom/google/common/util/concurrent/e;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzfve;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/e;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgde;

    .line 41
    .line 42
    return-object p1
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzezs;Lcom/google/android/gms/internal/ads/zzezq;Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;
    .locals 0

    .line 1
    const/4 p3, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzezd;->zzb(Lcom/google/android/gms/internal/ads/zzezs;Lcom/google/android/gms/internal/ads/zzezq;Lcom/google/android/gms/internal/ads/zzcve;)Lcom/google/common/util/concurrent/e;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public final bridge synthetic zzd()Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method
