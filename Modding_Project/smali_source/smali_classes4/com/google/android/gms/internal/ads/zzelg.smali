.class public final Lcom/google/android/gms/internal/ads/zzelg;
.super Lcom/google/android/gms/ads/internal/client/zzbw;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/ads/internal/client/zzr;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfad;

.field private final zzd:Ljava/lang/String;

.field private final zze:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzeky;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfbd;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzavu;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzdsj;

.field private zzj:Lcom/google/android/gms/internal/ads/zzdfb;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzk:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzr;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfad;Lcom/google/android/gms/internal/ads/zzeky;Lcom/google/android/gms/internal/ads/zzfbd;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzavu;Lcom/google/android/gms/internal/ads/zzdsj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzbw;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzelg;->zza:Lcom/google/android/gms/ads/internal/client/zzr;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzd:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzb:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzc:Lcom/google/android/gms/internal/ads/zzfad;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzf:Lcom/google/android/gms/internal/ads/zzeky;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzg:Lcom/google/android/gms/internal/ads/zzfbd;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzelg;->zze:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 17
    .line 18
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbde;->zzaS:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 19
    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzk:Z

    .line 35
    .line 36
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzh:Lcom/google/android/gms/internal/ads/zzavu;

    .line 37
    .line 38
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzi:Lcom/google/android/gms/internal/ads/zzdsj;

    .line 39
    .line 40
    return-void
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzelg;)Lcom/google/android/gms/internal/ads/zzdfb;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzj:Lcom/google/android/gms/internal/ads/zzdfb;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzelg;Lcom/google/android/gms/internal/ads/zzdfb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzj:Lcom/google/android/gms/internal/ads/zzdfb;

    .line 2
    .line 3
    return-void
.end method

.method private final declared-synchronized zzf()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzj:Lcom/google/android/gms/internal/ads/zzdfb;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdfb;->zza()Z

    .line 7
    .line 8
    .line 9
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    monitor-exit p0

    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    monitor-exit p0

    .line 18
    const/4 v0, 0x0

    .line 19
    return v0

    .line 20
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    throw v0
.end method


# virtual methods
.method public final declared-synchronized zzA()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "pause must be called on the main UI thread."

    .line 3
    .line 4
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzj:Lcom/google/android/gms/internal/ads/zzdfb;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcra;->zzn()Lcom/google/android/gms/internal/ads/zzcwx;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcwx;->zzb(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw v0
.end method

.method public final zzB()V
    .locals 0

    .line 1
    return-void
.end method

.method public final declared-synchronized zzC()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "resume must be called on the main UI thread."

    .line 3
    .line 4
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzj:Lcom/google/android/gms/internal/ads/zzdfb;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcra;->zzn()Lcom/google/android/gms/internal/ads/zzcwx;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcwx;->zzc(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw v0
.end method

.method public final zzD(Lcom/google/android/gms/ads/internal/client/zzbh;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final zzE(Lcom/google/android/gms/ads/internal/client/zzbk;)V
    .locals 1

    .line 1
    const-string v0, "setAdListener must be called on the main UI thread."

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzf:Lcom/google/android/gms/internal/ads/zzeky;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeky;->zzj(Lcom/google/android/gms/ads/internal/client/zzbk;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final zzF(Lcom/google/android/gms/ads/internal/client/zzcb;)V
    .locals 0

    .line 1
    const-string p1, "setAdMetadataListener must be called on the main UI thread."

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzG(Lcom/google/android/gms/ads/internal/client/zzr;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final zzH(Lcom/google/android/gms/ads/internal/client/zzco;)V
    .locals 1

    .line 1
    const-string v0, "setAppEventListener must be called on the main UI thread."

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzf:Lcom/google/android/gms/internal/ads/zzeky;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeky;->zzm(Lcom/google/android/gms/ads/internal/client/zzco;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final zzI(Lcom/google/android/gms/internal/ads/zzbaz;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final zzJ(Lcom/google/android/gms/ads/internal/client/zzx;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final zzK(Lcom/google/android/gms/ads/internal/client/zzcv;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzf:Lcom/google/android/gms/internal/ads/zzeky;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeky;->zzn(Lcom/google/android/gms/ads/internal/client/zzcv;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzL(Lcom/google/android/gms/ads/internal/client/zzeh;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final declared-synchronized zzM(Z)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "setImmersiveMode must be called on the main UI thread."

    .line 3
    .line 4
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzk:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    throw p1
.end method

.method public final zzN(Lcom/google/android/gms/internal/ads/zzbtz;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final zzO(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final declared-synchronized zzP(Lcom/google/android/gms/internal/ads/zzbdz;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "setOnCustomRenderedAdLoadedListener must be called on the main UI thread."

    .line 3
    .line 4
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzc:Lcom/google/android/gms/internal/ads/zzfad;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfad;->zzi(Lcom/google/android/gms/internal/ads/zzbdz;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    throw p1
.end method

.method public final zzQ(Lcom/google/android/gms/ads/internal/client/zzdt;)V
    .locals 2

    .line 1
    const-string v0, "setPaidEventListener must be called on the main UI thread."

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/client/zzdt;->zzf()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzi:Lcom/google/android/gms/internal/ads/zzdsj;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdsj;->zze()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 20
    .line 21
    const-string v1, "Error in making CSI ping for reporting paid event callback"

    .line 22
    .line 23
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzf:Lcom/google/android/gms/internal/ads/zzeky;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeky;->zzl(Lcom/google/android/gms/ads/internal/client/zzdt;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final declared-synchronized zzR(J)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzj:Lcom/google/android/gms/internal/ads/zzdfb;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcra;->zzl()Lcom/google/android/gms/internal/ads/zzcuu;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcra;->zzl()Lcom/google/android/gms/internal/ads/zzcuu;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcuu;->zzb(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw p1
.end method

.method public final zzS(Lcom/google/android/gms/internal/ads/zzbuc;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final zzT(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final zzU(Lcom/google/android/gms/internal/ads/zzbwi;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzg:Lcom/google/android/gms/internal/ads/zzfbd;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfbd;->zzm(Lcom/google/android/gms/internal/ads/zzbwi;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzV(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final zzW(Lcom/google/android/gms/ads/internal/client/zzgc;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final declared-synchronized zzY(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzj:Lcom/google/android/gms/internal/ads/zzdfb;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 7
    .line 8
    const-string p1, "Interstitial can not be shown before loaded."

    .line 9
    .line 10
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzf:Lcom/google/android/gms/internal/ads/zzeky;

    .line 14
    .line 15
    const/16 v0, 0x9

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-static {v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzfdx;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzeky;->zzs(Lcom/google/android/gms/ads/internal/client/zze;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzdd:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 30
    .line 31
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Ljava/lang/Boolean;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzh:Lcom/google/android/gms/internal/ads/zzavu;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzavu;->zzc()Lcom/google/android/gms/internal/ads/zzavp;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    new-instance v1, Ljava/lang/Throwable;

    .line 54
    .line 55
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzavp;->zzn([Ljava/lang/StackTraceElement;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Landroid/app/Activity;

    .line 70
    .line 71
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzj:Lcom/google/android/gms/internal/ads/zzdfb;

    .line 72
    .line 73
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzk:Z

    .line 74
    .line 75
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdfb;->zzc(ZLandroid/app/Activity;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    .line 77
    .line 78
    monitor-exit p0

    .line 79
    return-void

    .line 80
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    throw p1
.end method

.method public final declared-synchronized zzZ()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "showInterstitial must be called on the main UI thread."

    .line 3
    .line 4
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzj:Lcom/google/android/gms/internal/ads/zzdfb;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 13
    .line 14
    const-string v0, "Interstitial can not be shown before loaded."

    .line 15
    .line 16
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzf:Lcom/google/android/gms/internal/ads/zzeky;

    .line 20
    .line 21
    const/16 v2, 0x9

    .line 22
    .line 23
    invoke-static {v2, v1, v1}, Lcom/google/android/gms/internal/ads/zzfdx;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzeky;->zzs(Lcom/google/android/gms/ads/internal/client/zze;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzdd:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 35
    .line 36
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Ljava/lang/Boolean;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzh:Lcom/google/android/gms/internal/ads/zzavu;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzavu;->zzc()Lcom/google/android/gms/internal/ads/zzavp;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    new-instance v2, Ljava/lang/Throwable;

    .line 59
    .line 60
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzavp;->zzn([Ljava/lang/StackTraceElement;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzj:Lcom/google/android/gms/internal/ads/zzdfb;

    .line 71
    .line 72
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzk:Z

    .line 73
    .line 74
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdfb;->zzc(ZLandroid/app/Activity;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    .line 76
    .line 77
    monitor-exit p0

    .line 78
    return-void

    .line 79
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    throw v0
.end method

.method public final declared-synchronized zzaa()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    monitor-exit p0

    .line 3
    const/4 v0, 0x0

    .line 4
    return v0
.end method

.method public final declared-synchronized zzab()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzc:Lcom/google/android/gms/internal/ads/zzfad;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfad;->zza()Z

    .line 5
    .line 6
    .line 7
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw v0
.end method

.method public final declared-synchronized zzac()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "isLoaded must be called on the main UI thread."

    .line 3
    .line 4
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzelg;->zzf()Z

    .line 8
    .line 9
    .line 10
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    .line 12
    return v0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    throw v0
.end method

.method public final declared-synchronized zzad(Lcom/google/android/gms/ads/internal/client/zzm;)Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/client/zzm;->zzb()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbfc;->zzi:Lcom/google/android/gms/internal/ads/zzbeo;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbeo;->zze()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzlE:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 25
    .line 26
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move v0, v1

    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    goto :goto_3

    .line 48
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzelg;->zze:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 49
    .line 50
    iget v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    .line 51
    .line 52
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbde;->zzlF:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 53
    .line 54
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Ljava/lang/Integer;

    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-lt v2, v3, :cond_2

    .line 69
    .line 70
    if-nez v0, :cond_3

    .line 71
    .line 72
    :cond_2
    const-string v0, "loadAd must be called on the main UI thread."

    .line 73
    .line 74
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzb:Landroid/content/Context;

    .line 81
    .line 82
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzI(Landroid/content/Context;)Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    const/4 v3, 0x0

    .line 87
    if-eqz v2, :cond_4

    .line 88
    .line 89
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzs:Lcom/google/android/gms/ads/internal/client/zzc;

    .line 90
    .line 91
    if-nez v2, :cond_4

    .line 92
    .line 93
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 94
    .line 95
    const-string p1, "Failed to load the ad because app ID is missing."

    .line 96
    .line 97
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzf:Lcom/google/android/gms/internal/ads/zzeky;

    .line 101
    .line 102
    if-eqz p1, :cond_5

    .line 103
    .line 104
    const/4 v0, 0x4

    .line 105
    invoke-static {v0, v3, v3}, Lcom/google/android/gms/internal/ads/zzfdx;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzeky;->zzdD(Lcom/google/android/gms/ads/internal/client/zze;)V

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzelg;->zzf()Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-nez v2, :cond_5

    .line 118
    .line 119
    iget-boolean v1, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzf:Z

    .line 120
    .line 121
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfdt;->zza(Landroid/content/Context;Z)V

    .line 122
    .line 123
    .line 124
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzj:Lcom/google/android/gms/internal/ads/zzdfb;

    .line 125
    .line 126
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzc:Lcom/google/android/gms/internal/ads/zzfad;

    .line 127
    .line 128
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzd:Ljava/lang/String;

    .line 129
    .line 130
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzelg;->zza:Lcom/google/android/gms/ads/internal/client/zzr;

    .line 131
    .line 132
    new-instance v3, Lcom/google/android/gms/internal/ads/zzezw;

    .line 133
    .line 134
    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzezw;-><init>(Lcom/google/android/gms/ads/internal/client/zzr;)V

    .line 135
    .line 136
    .line 137
    new-instance v2, Lcom/google/android/gms/internal/ads/zzelf;

    .line 138
    .line 139
    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzelf;-><init>(Lcom/google/android/gms/internal/ads/zzelg;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, p1, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzfad;->zzb(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzelm;Lcom/google/android/gms/internal/ads/zzeln;)Z

    .line 143
    .line 144
    .line 145
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit p0

    .line 147
    return p1

    .line 148
    :cond_5
    :goto_2
    monitor-exit p0

    .line 149
    return v1

    .line 150
    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    throw p1
.end method

.method public final zzae(Lcom/google/android/gms/ads/internal/client/zzcs;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final declared-synchronized zzc()J
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzj:Lcom/google/android/gms/internal/ads/zzdfb;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcra;->zzl()Lcom/google/android/gms/internal/ads/zzcuu;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcra;->zzl()Lcom/google/android/gms/internal/ads/zzcuu;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcuu;->zza()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit p0

    .line 21
    return-wide v0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    monitor-exit p0

    .line 25
    const-wide/16 v0, 0x0

    .line 26
    .line 27
    return-wide v0

    .line 28
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw v0
.end method

.method public final zze()Landroid/os/Bundle;
    .locals 1

    .line 1
    const-string v0, "getAdMetadata must be called on the main UI thread."

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public final zzh()Lcom/google/android/gms/ads/internal/client/zzr;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final zzj()Lcom/google/android/gms/ads/internal/client/zzbk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzf:Lcom/google/android/gms/internal/ads/zzeky;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeky;->zzg()Lcom/google/android/gms/ads/internal/client/zzbk;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final zzk()Lcom/google/android/gms/ads/internal/client/zzco;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzf:Lcom/google/android/gms/internal/ads/zzeky;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeky;->zzi()Lcom/google/android/gms/ads/internal/client/zzco;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final declared-synchronized zzl()Lcom/google/android/gms/ads/internal/client/zzea;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzgW:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 3
    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzj:Lcom/google/android/gms/internal/ads/zzdfb;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcra;->zzm()Lcom/google/android/gms/internal/ads/zzcvr;

    .line 26
    .line 27
    .line 28
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit p0

    .line 30
    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    monitor-exit p0

    .line 34
    const/4 v0, 0x0

    .line 35
    return-object v0

    .line 36
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    throw v0
.end method

.method public final zzm()Lcom/google/android/gms/ads/internal/client/zzed;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final zzo()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final declared-synchronized zzs()Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzd:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method

.method public final declared-synchronized zzt()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzj:Lcom/google/android/gms/internal/ads/zzdfb;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcra;->zzm()Lcom/google/android/gms/internal/ads/zzcvr;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcra;->zzm()Lcom/google/android/gms/internal/ads/zzcvr;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcvr;->zzg()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit p0

    .line 21
    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    monitor-exit p0

    .line 25
    const/4 v0, 0x0

    .line 26
    return-object v0

    .line 27
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw v0
.end method

.method public final declared-synchronized zzu()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzj:Lcom/google/android/gms/internal/ads/zzdfb;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcra;->zzm()Lcom/google/android/gms/internal/ads/zzcvr;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcra;->zzm()Lcom/google/android/gms/internal/ads/zzcvr;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcvr;->zzg()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit p0

    .line 21
    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    monitor-exit p0

    .line 25
    const/4 v0, 0x0

    .line 26
    return-object v0

    .line 27
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw v0
.end method

.method public final declared-synchronized zzy()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "destroy must be called on the main UI thread."

    .line 3
    .line 4
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzj:Lcom/google/android/gms/internal/ads/zzdfb;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcra;->zzn()Lcom/google/android/gms/internal/ads/zzcwx;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcwx;->zza(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw v0
.end method

.method public final zzz(Lcom/google/android/gms/ads/internal/client/zzm;Lcom/google/android/gms/ads/internal/client/zzbn;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelg;->zzf:Lcom/google/android/gms/internal/ads/zzeky;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzeky;->zzk(Lcom/google/android/gms/ads/internal/client/zzbn;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzelg;->zzad(Lcom/google/android/gms/ads/internal/client/zzm;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method
