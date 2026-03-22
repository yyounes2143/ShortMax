.class public final Lcom/google/android/gms/internal/ads/zzaci;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzb:Lcom/google/android/gms/internal/ads/zzacj;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzacj;)V
    .locals 0
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/internal/ads/zzacj;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaci;->zza:Landroid/os/Handler;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaci;->zzb:Lcom/google/android/gms/internal/ads/zzacj;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzaci;Ljava/lang/Exception;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaci;->zzb:Lcom/google/android/gms/internal/ads/zzacj;

    .line 4
    .line 5
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzacj;->zzp(Ljava/lang/Exception;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zzaci;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaci;->zzb:Lcom/google/android/gms/internal/ads/zzacj;

    .line 4
    .line 5
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzacj;->zzr(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzaci;JI)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaci;->zzb:Lcom/google/android/gms/internal/ads/zzacj;

    .line 4
    .line 5
    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzacj;->zzu(JI)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic zzd(Lcom/google/android/gms/internal/ads/zzaci;IJ)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaci;->zzb:Lcom/google/android/gms/internal/ads/zzacj;

    .line 4
    .line 5
    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzacj;->zzm(IJ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic zze(Lcom/google/android/gms/internal/ads/zzaci;Lcom/google/android/gms/internal/ads/zzcd;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaci;->zzb:Lcom/google/android/gms/internal/ads/zzacj;

    .line 4
    .line 5
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzacj;->zzw(Lcom/google/android/gms/internal/ads/zzcd;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic zzf(Lcom/google/android/gms/internal/ads/zzaci;Lcom/google/android/gms/internal/ads/zzid;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzid;->zza()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaci;->zzb:Lcom/google/android/gms/internal/ads/zzacj;

    .line 7
    .line 8
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzacj;->zzs(Lcom/google/android/gms/internal/ads/zzid;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static synthetic zzg(Lcom/google/android/gms/internal/ads/zzaci;Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzie;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaci;->zzb:Lcom/google/android/gms/internal/ads/zzacj;

    .line 4
    .line 5
    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzacj;->zzv(Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzie;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic zzh(Lcom/google/android/gms/internal/ads/zzaci;Ljava/lang/Object;J)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaci;->zzb:Lcom/google/android/gms/internal/ads/zzacj;

    .line 4
    .line 5
    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzacj;->zzn(Ljava/lang/Object;J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic zzi(Lcom/google/android/gms/internal/ads/zzaci;Lcom/google/android/gms/internal/ads/zzid;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaci;->zzb:Lcom/google/android/gms/internal/ads/zzacj;

    .line 4
    .line 5
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzacj;->zzt(Lcom/google/android/gms/internal/ads/zzid;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic zzj(Lcom/google/android/gms/internal/ads/zzaci;Ljava/lang/String;JJ)V
    .locals 7

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaci;->zzb:Lcom/google/android/gms/internal/ads/zzacj;

    .line 4
    .line 5
    move-object v2, p1

    .line 6
    move-wide v3, p2

    .line 7
    move-wide v5, p4

    .line 8
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzacj;->zzq(Ljava/lang/String;JJ)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final zzk(Ljava/lang/String;JJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaci;->zza:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v8, Lcom/google/android/gms/internal/ads/zzaby;

    .line 6
    .line 7
    move-object v1, v8

    .line 8
    move-object v2, p0

    .line 9
    move-object v3, p1

    .line 10
    move-wide v4, p2

    .line 11
    move-wide v6, p4

    .line 12
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzaby;-><init>(Lcom/google/android/gms/internal/ads/zzaci;Ljava/lang/String;JJ)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final zzl(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaci;->zza:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/google/android/gms/internal/ads/zzach;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzach;-><init>(Lcom/google/android/gms/internal/ads/zzaci;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final zzm(Lcom/google/android/gms/internal/ads/zzid;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzid;->zza()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaci;->zza:Landroid/os/Handler;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/google/android/gms/internal/ads/zzacg;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzacg;-><init>(Lcom/google/android/gms/internal/ads/zzaci;Lcom/google/android/gms/internal/ads/zzid;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final zzn(IJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaci;->zza:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaca;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaca;-><init>(Lcom/google/android/gms/internal/ads/zzaci;IJ)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzid;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaci;->zza:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/google/android/gms/internal/ads/zzace;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzace;-><init>(Lcom/google/android/gms/internal/ads/zzaci;Lcom/google/android/gms/internal/ads/zzid;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final zzp(Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzie;)V
    .locals 2
    .param p2    # Lcom/google/android/gms/internal/ads/zzie;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaci;->zza:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/google/android/gms/internal/ads/zzacf;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzacf;-><init>(Lcom/google/android/gms/internal/ads/zzaci;Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzie;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final zzq(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaci;->zza:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    new-instance v3, Lcom/google/android/gms/internal/ads/zzacb;

    .line 10
    .line 11
    invoke-direct {v3, p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzacb;-><init>(Lcom/google/android/gms/internal/ads/zzaci;Ljava/lang/Object;J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final zzr(JI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaci;->zza:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/google/android/gms/internal/ads/zzacc;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzacc;-><init>(Lcom/google/android/gms/internal/ads/zzaci;JI)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final zzs(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaci;->zza:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/google/android/gms/internal/ads/zzacd;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzacd;-><init>(Lcom/google/android/gms/internal/ads/zzaci;Ljava/lang/Exception;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final zzt(Lcom/google/android/gms/internal/ads/zzcd;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaci;->zza:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/google/android/gms/internal/ads/zzabz;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzabz;-><init>(Lcom/google/android/gms/internal/ads/zzaci;Lcom/google/android/gms/internal/ads/zzcd;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
