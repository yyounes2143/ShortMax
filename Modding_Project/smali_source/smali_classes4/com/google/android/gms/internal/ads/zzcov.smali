.class final Lcom/google/android/gms/internal/ads/zzcov;
.super Lcom/google/android/gms/internal/ads/zzcos;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zzc:Landroid/content/Context;

.field private final zzd:Landroid/view/View;

.field private final zze:Lcom/google/android/gms/internal/ads/zzcfg;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzf:Lcom/google/android/gms/internal/ads/zzfcb;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzcqy;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzdje;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzdef;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzhgl;

.field private final zzk:Ljava/util/concurrent/Executor;

.field private zzl:Lcom/google/android/gms/ads/internal/client/zzr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcqz;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfcb;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcfg;Lcom/google/android/gms/internal/ads/zzcqy;Lcom/google/android/gms/internal/ads/zzdje;Lcom/google/android/gms/internal/ads/zzdef;Lcom/google/android/gms/internal/ads/zzhgl;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p5    # Lcom/google/android/gms/internal/ads/zzcfg;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcos;-><init>(Lcom/google/android/gms/internal/ads/zzcqz;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcov;->zzc:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcov;->zzd:Landroid/view/View;

    .line 7
    .line 8
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcov;->zze:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcov;->zzf:Lcom/google/android/gms/internal/ads/zzfcb;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcov;->zzg:Lcom/google/android/gms/internal/ads/zzcqy;

    .line 13
    .line 14
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzcov;->zzh:Lcom/google/android/gms/internal/ads/zzdje;

    .line 15
    .line 16
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzcov;->zzi:Lcom/google/android/gms/internal/ads/zzdef;

    .line 17
    .line 18
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzcov;->zzj:Lcom/google/android/gms/internal/ads/zzhgl;

    .line 19
    .line 20
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzcov;->zzk:Ljava/util/concurrent/Executor;

    .line 21
    .line 22
    return-void
.end method

.method public static synthetic zzj(Lcom/google/android/gms/internal/ads/zzcov;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcov;->zzh:Lcom/google/android/gms/internal/ads/zzdje;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdje;->zze()Lcom/google/android/gms/internal/ads/zzbia;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcov;->zzj:Lcom/google/android/gms/internal/ads/zzhgl;

    .line 11
    .line 12
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzhgl;->zzb()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/google/android/gms/ads/internal/client/zzbx;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcov;->zzc:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzbia;->zze(Lcom/google/android/gms/ads/internal/client/zzbx;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catch_0
    move-exception p0

    .line 29
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 30
    .line 31
    const-string v0, "RemoteException when notifyAdLoad is called"

    .line 32
    .line 33
    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcra;->zza:Lcom/google/android/gms/internal/ads/zzfcn;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfcn;->zzb:Lcom/google/android/gms/internal/ads/zzfcm;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfcm;->zzb:Lcom/google/android/gms/internal/ads/zzfcd;

    .line 6
    .line 7
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfcd;->zzd:I

    .line 8
    .line 9
    return v0
.end method

.method public final zzc()I
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzij:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcra;->zzb:Lcom/google/android/gms/internal/ads/zzfca;

    .line 20
    .line 21
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzfca;->zzag:Z

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzik:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 26
    .line 27
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    return v0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcra;->zza:Lcom/google/android/gms/internal/ads/zzfcn;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfcn;->zzb:Lcom/google/android/gms/internal/ads/zzfcm;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfcm;->zzb:Lcom/google/android/gms/internal/ads/zzfcd;

    .line 50
    .line 51
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfcd;->zzc:I

    .line 52
    .line 53
    return v0
.end method

.method public final zzd()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcov;->zzd:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/ads/internal/client/zzed;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcov;->zzg:Lcom/google/android/gms/internal/ads/zzcqy;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcqy;->zza()Lcom/google/android/gms/ads/internal/client/zzed;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzfdd; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object v0

    .line 8
    :catch_0
    const/4 v0, 0x0

    .line 9
    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzfcb;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcov;->zzl:Lcom/google/android/gms/ads/internal/client/zzr;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfdc;->zzb(Lcom/google/android/gms/ads/internal/client/zzr;)Lcom/google/android/gms/internal/ads/zzfcb;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcra;->zzb:Lcom/google/android/gms/internal/ads/zzfca;

    .line 11
    .line 12
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzfca;->zzac:Z

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_3

    .line 16
    .line 17
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfca;->zza:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_2

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Ljava/lang/String;

    .line 34
    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    const-string v4, "FirstParty"

    .line 38
    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcov;->zzd:Landroid/view/View;

    .line 47
    .line 48
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfcb;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    invoke-direct {v1, v3, v0, v2}, Lcom/google/android/gms/internal/ads/zzfcb;-><init>(IIZ)V

    .line 59
    .line 60
    .line 61
    return-object v1

    .line 62
    :cond_3
    :goto_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfca;->zzr:Ljava/util/List;

    .line 63
    .line 64
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lcom/google/android/gms/internal/ads/zzfcb;

    .line 69
    .line 70
    return-object v0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzfcb;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcov;->zzf:Lcom/google/android/gms/internal/ads/zzfcb;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzh()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcov;->zzi:Lcom/google/android/gms/internal/ads/zzdef;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdef;->zza()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzi(Landroid/view/ViewGroup;Lcom/google/android/gms/ads/internal/client/zzr;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcov;->zze:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzchd;->zzc(Lcom/google/android/gms/ads/internal/client/zzr;)Lcom/google/android/gms/internal/ads/zzchd;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzcfg;->zzaj(Lcom/google/android/gms/internal/ads/zzchd;)V

    .line 12
    .line 13
    .line 14
    iget v0, p2, Lcom/google/android/gms/ads/internal/client/zzr;->zzc:I

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 17
    .line 18
    .line 19
    iget v0, p2, Lcom/google/android/gms/ads/internal/client/zzr;->zzf:I

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 22
    .line 23
    .line 24
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcov;->zzl:Lcom/google/android/gms/ads/internal/client/zzr;

    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final zzk()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcou;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcou;-><init>(Lcom/google/android/gms/internal/ads/zzcov;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcov;->zzk:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzcra;->zzk()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
