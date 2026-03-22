.class public final Lcom/google/android/gms/internal/ads/zzats;
.super Lcom/google/android/gms/internal/ads/zzgzh;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhat;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzats;

.field private static volatile zzb:Lcom/google/android/gms/internal/ads/zzhba;


# instance fields
.field private zzc:I

.field private zzd:J

.field private zze:I

.field private zzf:Z

.field private zzg:Lcom/google/android/gms/internal/ads/zzgzp;

.field private zzh:J

.field private zzi:Z

.field private zzj:Lcom/google/android/gms/internal/ads/zzgzt;

.field private zzk:I

.field private zzl:I

.field private zzm:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzats;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzats;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzats;->zza:Lcom/google/android/gms/internal/ads/zzats;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/ads/zzats;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgzh;->zzbZ(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgzh;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgzh;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgzh;->zzbG()Lcom/google/android/gms/internal/ads/zzgzp;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzats;->zzg:Lcom/google/android/gms/internal/ads/zzgzp;

    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgzh;->zzbK()Lcom/google/android/gms/internal/ads/zzgzt;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzats;->zzj:Lcom/google/android/gms/internal/ads/zzgzt;

    .line 15
    .line 16
    return-void
.end method

.method static bridge synthetic zza()Lcom/google/android/gms/internal/ads/zzats;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzats;->zza:Lcom/google/android/gms/internal/ads/zzats;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method protected final zzdd(Lcom/google/android/gms/internal/ads/zzgzg;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

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
    sget-object v0, Lcom/google/android/gms/internal/ads/zzats;->zzb:Lcom/google/android/gms/internal/ads/zzhba;

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    const-class v1, Lcom/google/android/gms/internal/ads/zzats;

    .line 28
    .line 29
    monitor-enter v1

    .line 30
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzats;->zzb:Lcom/google/android/gms/internal/ads/zzhba;

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgzc;

    .line 35
    .line 36
    sget-object v2, Lcom/google/android/gms/internal/ads/zzats;->zza:Lcom/google/android/gms/internal/ads/zzats;

    .line 37
    .line 38
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzgzc;-><init>(Lcom/google/android/gms/internal/ads/zzgzh;)V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lcom/google/android/gms/internal/ads/zzats;->zzb:Lcom/google/android/gms/internal/ads/zzhba;

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
    sget-object v0, Lcom/google/android/gms/internal/ads/zzats;->zza:Lcom/google/android/gms/internal/ads/zzats;

    .line 53
    .line 54
    return-object v0

    .line 55
    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzatr;

    .line 56
    .line 57
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzatr;-><init>(Lcom/google/android/gms/internal/ads/zzaui;)V

    .line 58
    .line 59
    .line 60
    return-object v0

    .line 61
    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzats;

    .line 62
    .line 63
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzats;-><init>()V

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
    const-string v3, "zze"

    .line 72
    .line 73
    const-string v4, "zzf"

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
    const-class v9, Lcom/google/android/gms/internal/ads/zzatw;

    .line 84
    .line 85
    const-string v10, "zzk"

    .line 86
    .line 87
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfus;->zza()Lcom/google/android/gms/internal/ads/zzgzn;

    .line 88
    .line 89
    .line 90
    move-result-object v11

    .line 91
    const-string v12, "zzl"

    .line 92
    .line 93
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhcq;->zza()Lcom/google/android/gms/internal/ads/zzgzn;

    .line 94
    .line 95
    .line 96
    move-result-object v13

    .line 97
    const-string v14, "zzm"

    .line 98
    .line 99
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhco;->zza()Lcom/google/android/gms/internal/ads/zzgzn;

    .line 100
    .line 101
    .line 102
    move-result-object v15

    .line 103
    filled-new-array/range {v1 .. v15}, [Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    sget-object v1, Lcom/google/android/gms/internal/ads/zzats;->zza:Lcom/google/android/gms/internal/ads/zzats;

    .line 108
    .line 109
    const-string v2, "\u0001\n\u0000\u0001\u0001\n\n\u0000\u0002\u0000\u0001\u1002\u0000\u0002\u1004\u0001\u0003\u1007\u0002\u0004\u0016\u0005\u1003\u0003\u0006\u1007\u0004\u0007\u001b\u0008\u180c\u0005\t\u180c\u0006\n\u180c\u0007"

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
