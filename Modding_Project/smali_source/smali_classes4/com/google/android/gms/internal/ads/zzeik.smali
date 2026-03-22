.class public final Lcom/google/android/gms/internal/ads/zzeik;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeds;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Ljava/util/concurrent/Executor;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdos;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdos;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeik;->zza:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeik;->zzb:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeik;->zzc:Lcom/google/android/gms/internal/ads/zzdos;

    .line 9
    .line 10
    return-void
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzeik;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeik;->zzb:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzeik;Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzedp;)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzeik;->zze(Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzedp;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final zze(Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzedp;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzedp;->zzb:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/zzfdu;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfcn;->zza:Lcom/google/android/gms/internal/ads/zzfck;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfck;->zza:Lcom/google/android/gms/internal/ads/zzfcw;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfcw;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfca;->zzv:Lorg/json/JSONObject;

    .line 12
    .line 13
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfdu;->zzk(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catch_0
    move-exception p0

    .line 22
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzedp;->zza:Ljava/lang/String;

    .line 23
    .line 24
    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string p2, "Fail to load ad from adapter "

    .line 31
    .line 32
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzedp;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfdd;,
            Lcom/google/android/gms/internal/ads/zzehf;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcrq;

    .line 2
    .line 3
    iget-object v1, p3, Lcom/google/android/gms/internal/ads/zzedp;->zza:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzcrq;-><init>(Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdop;

    .line 9
    .line 10
    new-instance v1, Lcom/google/android/gms/internal/ads/zzeii;

    .line 11
    .line 12
    invoke-direct {v1, p0, p3, p2}, Lcom/google/android/gms/internal/ads/zzeii;-><init>(Lcom/google/android/gms/internal/ads/zzeik;Lcom/google/android/gms/internal/ads/zzedp;Lcom/google/android/gms/internal/ads/zzfca;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzdop;-><init>(Lcom/google/android/gms/internal/ads/zzdgn;)V

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzeik;->zzc:Lcom/google/android/gms/internal/ads/zzdos;

    .line 19
    .line 20
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzdos;->zzd(Lcom/google/android/gms/internal/ads/zzcrq;Lcom/google/android/gms/internal/ads/zzdop;)Lcom/google/android/gms/internal/ads/zzdoo;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcrb;->zzd()Lcom/google/android/gms/internal/ads/zzcwx;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcmg;

    .line 29
    .line 30
    iget-object v1, p3, Lcom/google/android/gms/internal/ads/zzedp;->zzb:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v1, Lcom/google/android/gms/internal/ads/zzfdu;

    .line 33
    .line 34
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzcmg;-><init>(Lcom/google/android/gms/internal/ads/zzfdu;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeik;->zzb:Ljava/util/concurrent/Executor;

    .line 38
    .line 39
    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzdbt;->zzo(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcrb;->zze()Lcom/google/android/gms/internal/ads/zzcxf;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcrb;->zzb()Lcom/google/android/gms/internal/ads/zzcvw;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdoo;->zza()Lcom/google/android/gms/internal/ads/zzcye;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdoo;->zzg()Lcom/google/android/gms/internal/ads/zzdem;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzedp;->zzc:Lcom/google/android/gms/internal/ads/zzcxi;

    .line 59
    .line 60
    check-cast p2, Lcom/google/android/gms/internal/ads/zzefe;

    .line 61
    .line 62
    new-instance p3, Lcom/google/android/gms/internal/ads/zzeij;

    .line 63
    .line 64
    move-object v2, p3

    .line 65
    move-object v3, p0

    .line 66
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzeij;-><init>(Lcom/google/android/gms/internal/ads/zzeik;Lcom/google/android/gms/internal/ads/zzcye;Lcom/google/android/gms/internal/ads/zzcvw;Lcom/google/android/gms/internal/ads/zzcxf;Lcom/google/android/gms/internal/ads/zzdem;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzefe;->zzc(Lcom/google/android/gms/internal/ads/zzbwn;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdoo;->zzi()Lcom/google/android/gms/internal/ads/zzdon;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzedp;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfdd;
        }
    .end annotation

    .line 1
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzedp;->zzb:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/google/android/gms/internal/ads/zzfdu;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfdu;->zzC()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeih;

    .line 13
    .line 14
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzeih;-><init>(Lcom/google/android/gms/internal/ads/zzeik;Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzedp;)V

    .line 15
    .line 16
    .line 17
    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzedp;->zzc:Lcom/google/android/gms/internal/ads/zzcxi;

    .line 18
    .line 19
    move-object v2, p3

    .line 20
    check-cast v2, Lcom/google/android/gms/internal/ads/zzefe;

    .line 21
    .line 22
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzefe;->zzd(Lcom/google/android/gms/internal/ads/zzdeo;)V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeik;->zza:Landroid/content/Context;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfcn;->zza:Lcom/google/android/gms/internal/ads/zzfck;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfck;->zza:Lcom/google/android/gms/internal/ads/zzfcw;

    .line 30
    .line 31
    move-object v5, p3

    .line 32
    check-cast v5, Lcom/google/android/gms/internal/ads/zzbwn;

    .line 33
    .line 34
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfca;->zzv:Lorg/json/JSONObject;

    .line 35
    .line 36
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzfcw;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfdu;->zzh(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbwn;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzeik;->zze(Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzedp;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
