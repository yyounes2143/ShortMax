.class public final Lcom/google/android/gms/internal/ads/zzcft;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzchd;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzavu;Lcom/google/android/gms/internal/ads/zzbel;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzbdt;Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzbcc;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzfcd;Lcom/google/android/gms/internal/ads/zzecl;Lcom/google/android/gms/internal/ads/zzfda;Lcom/google/android/gms/internal/ads/zzdsj;)Lcom/google/android/gms/internal/ads/zzcfg;
    .locals 19
    .param p5    # Lcom/google/android/gms/internal/ads/zzavu;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/gms/internal/ads/zzbel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/google/android/gms/internal/ads/zzbdt;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/google/android/gms/ads/internal/zzn;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Lcom/google/android/gms/ads/internal/zza;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p12    # Lcom/google/android/gms/internal/ads/zzfca;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p13    # Lcom/google/android/gms/internal/ads/zzfcd;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p14    # Lcom/google/android/gms/internal/ads/zzecl;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p15    # Lcom/google/android/gms/internal/ads/zzfda;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p16    # Lcom/google/android/gms/internal/ads/zzdsj;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzcfs;
        }
    .end annotation

    .line 1
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbde;->zza(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcfr;

    .line 5
    .line 6
    const/4 v10, 0x0

    .line 7
    move-object v1, v0

    .line 8
    move-object/from16 v2, p0

    .line 9
    .line 10
    move-object/from16 v3, p1

    .line 11
    .line 12
    move-object/from16 v4, p2

    .line 13
    .line 14
    move/from16 v5, p3

    .line 15
    .line 16
    move/from16 v6, p4

    .line 17
    .line 18
    move-object/from16 v7, p5

    .line 19
    .line 20
    move-object/from16 v8, p6

    .line 21
    .line 22
    move-object/from16 v9, p7

    .line 23
    .line 24
    move-object/from16 v11, p9

    .line 25
    .line 26
    move-object/from16 v12, p10

    .line 27
    .line 28
    move-object/from16 v13, p11

    .line 29
    .line 30
    move-object/from16 v14, p12

    .line 31
    .line 32
    move-object/from16 v15, p13

    .line 33
    .line 34
    move-object/from16 v16, p15

    .line 35
    .line 36
    move-object/from16 v17, p16

    .line 37
    .line 38
    move-object/from16 v18, p14

    .line 39
    .line 40
    invoke-direct/range {v1 .. v18}, Lcom/google/android/gms/internal/ads/zzcfr;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzchd;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzavu;Lcom/google/android/gms/internal/ads/zzbel;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzbdt;Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzbcc;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzfcd;Lcom/google/android/gms/internal/ads/zzfda;Lcom/google/android/gms/internal/ads/zzdsj;Lcom/google/android/gms/internal/ads/zzecl;)V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    .line 44
    .line 45
    .line 46
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :try_start_1
    new-instance v2, Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 48
    .line 49
    invoke-direct {v2, v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 65
    .line 66
    .line 67
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfwh;->zza()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 71
    :try_start_2
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 72
    .line 73
    .line 74
    check-cast v0, Lcom/google/android/gms/internal/ads/zzcfg;

    .line 75
    .line 76
    return-object v0

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    goto :goto_0

    .line 79
    :catchall_1
    move-exception v0

    .line 80
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 81
    .line 82
    .line 83
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcfs;

    .line 85
    .line 86
    const-string v2, "Webview initialization failed."

    .line 87
    .line 88
    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzcfs;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    throw v1
.end method
