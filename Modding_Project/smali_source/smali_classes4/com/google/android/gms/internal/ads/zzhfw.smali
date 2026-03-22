.class public final Lcom/google/android/gms/internal/ads/zzhfw;
.super Lcom/google/android/gms/internal/ads/zzgzh;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhat;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzhfw;

.field private static volatile zzb:Lcom/google/android/gms/internal/ads/zzhba;


# instance fields
.field private zzc:I

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/ads/zzgzt;

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;

.field private zzj:Z

.field private zzk:D

.field private zzl:Lcom/google/android/gms/internal/ads/zzgzt;

.field private zzm:I

.field private zzn:Z

.field private zzo:Z

.field private zzp:Z

.field private zzu:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhfw;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhfw;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzhfw;->zza:Lcom/google/android/gms/internal/ads/zzhfw;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/ads/zzhfw;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgzh;->zzbZ(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgzh;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgzh;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhfw;->zzd:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhfw;->zze:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzhfw;->zzf:I

    .line 12
    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgzh;->zzbK()Lcom/google/android/gms/internal/ads/zzgzt;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhfw;->zzg:Lcom/google/android/gms/internal/ads/zzgzt;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhfw;->zzh:Ljava/lang/String;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhfw;->zzi:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgzh;->zzbK()Lcom/google/android/gms/internal/ads/zzgzt;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhfw;->zzl:Lcom/google/android/gms/internal/ads/zzgzt;

    .line 28
    .line 29
    return-void
.end method

.method static bridge synthetic zzc()Lcom/google/android/gms/internal/ads/zzhfw;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhfw;->zza:Lcom/google/android/gms/internal/ads/zzhfw;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method protected final zzdd(Lcom/google/android/gms/internal/ads/zzgzg;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    if-eq v0, v1, :cond_6

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    if-eq v0, v1, :cond_5

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eq v0, v1, :cond_4

    .line 16
    .line 17
    const/4 v1, 0x5

    .line 18
    if-eq v0, v1, :cond_3

    .line 19
    .line 20
    const/4 v1, 0x6

    .line 21
    if-ne v0, v1, :cond_2

    .line 22
    .line 23
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhfw;->zzb:Lcom/google/android/gms/internal/ads/zzhba;

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    const-class v1, Lcom/google/android/gms/internal/ads/zzhfw;

    .line 28
    .line 29
    monitor-enter v1

    .line 30
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhfw;->zzb:Lcom/google/android/gms/internal/ads/zzhba;

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgzc;

    .line 35
    .line 36
    sget-object v2, Lcom/google/android/gms/internal/ads/zzhfw;->zza:Lcom/google/android/gms/internal/ads/zzhfw;

    .line 37
    .line 38
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzgzc;-><init>(Lcom/google/android/gms/internal/ads/zzgzh;)V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lcom/google/android/gms/internal/ads/zzhfw;->zzb:Lcom/google/android/gms/internal/ads/zzhba;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    :goto_0
    monitor-exit v1

    .line 47
    goto :goto_2

    .line 48
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw v0

    .line 50
    :cond_1
    :goto_2
    return-object v0

    .line 51
    :cond_2
    throw v2

    .line 52
    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhfw;->zza:Lcom/google/android/gms/internal/ads/zzhfw;

    .line 53
    .line 54
    return-object v0

    .line 55
    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhfr;

    .line 56
    .line 57
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzhfr;-><init>(Lcom/google/android/gms/internal/ads/zzhfx;)V

    .line 58
    .line 59
    .line 60
    return-object v0

    .line 61
    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhfw;

    .line 62
    .line 63
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhfw;-><init>()V

    .line 64
    .line 65
    .line 66
    return-object v0

    .line 67
    :cond_6
    const-string v1, "zzc"

    .line 68
    .line 69
    const-string v2, "zzd"

    .line 70
    .line 71
    const-string v3, "zzf"

    .line 72
    .line 73
    sget-object v4, Lcom/google/android/gms/internal/ads/zzhfv;->zza:Lcom/google/android/gms/internal/ads/zzgzn;

    .line 74
    .line 75
    const-string v5, "zzg"

    .line 76
    .line 77
    const-string v6, "zzh"

    .line 78
    .line 79
    const-string v7, "zzi"

    .line 80
    .line 81
    const-string v8, "zzj"

    .line 82
    .line 83
    const-string v9, "zzk"

    .line 84
    .line 85
    const-string v10, "zzl"

    .line 86
    .line 87
    const-class v11, Lcom/google/android/gms/internal/ads/zzhfu;

    .line 88
    .line 89
    const-string v12, "zze"

    .line 90
    .line 91
    const-string v13, "zzm"

    .line 92
    .line 93
    sget-object v14, Lcom/google/android/gms/internal/ads/zzhfs;->zza:Lcom/google/android/gms/internal/ads/zzgzn;

    .line 94
    .line 95
    const-string v15, "zzn"

    .line 96
    .line 97
    const-string v16, "zzo"

    .line 98
    .line 99
    const-string v17, "zzp"

    .line 100
    .line 101
    const-string v18, "zzu"

    .line 102
    .line 103
    filled-new-array/range {v1 .. v18}, [Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    sget-object v1, Lcom/google/android/gms/internal/ads/zzhfw;->zza:Lcom/google/android/gms/internal/ads/zzhfw;

    .line 108
    .line 109
    const-string v2, "\u0001\u000e\u0000\u0001\u0001\u000e\u000e\u0000\u0002\u0000\u0001\u1008\u0000\u0002\u180c\u0002\u0003\u001a\u0004\u1008\u0003\u0005\u1008\u0004\u0006\u1007\u0005\u0007\u1000\u0006\u0008\u001b\t\u1008\u0001\n\u180c\u0007\u000b\u1007\u0008\u000c\u1007\t\r\u1007\n\u000e\u1007\u000b"

    .line 110
    .line 111
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgzh;->zzbQ(Lcom/google/android/gms/internal/ads/zzhas;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    return-object v0

    .line 116
    :cond_7
    const/4 v0, 0x1

    .line 117
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    return-object v0
.end method
