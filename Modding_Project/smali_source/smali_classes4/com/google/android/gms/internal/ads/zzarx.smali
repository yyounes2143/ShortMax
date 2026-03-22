.class public final Lcom/google/android/gms/internal/ads/zzarx;
.super Lcom/google/android/gms/internal/ads/zzgzh;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhat;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzarx;

.field private static volatile zzb:Lcom/google/android/gms/internal/ads/zzhba;


# instance fields
.field private zzc:I

.field private zzd:I

.field private zze:Z

.field private zzf:Ljava/lang/String;

.field private zzg:Z

.field private zzh:Z

.field private zzi:Lcom/google/android/gms/internal/ads/zzasp;

.field private zzj:Lcom/google/android/gms/internal/ads/zzass;

.field private zzk:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzarx;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzarx;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzarx;->zza:Lcom/google/android/gms/internal/ads/zzarx;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/ads/zzarx;

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
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzarx;->zze:Z

    .line 6
    .line 7
    const-string v1, "unknown_host"

    .line 8
    .line 9
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzarx;->zzf:Ljava/lang/String;

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzarx;->zzh:Z

    .line 12
    .line 13
    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzarv;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzarx;->zza:Lcom/google/android/gms/internal/ads/zzarx;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgzh;->zzaZ()Lcom/google/android/gms/internal/ads/zzgzb;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzarv;

    .line 8
    .line 9
    return-object v0
.end method

.method static bridge synthetic zzb()Lcom/google/android/gms/internal/ads/zzarx;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzarx;->zza:Lcom/google/android/gms/internal/ads/zzarx;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/ads/zzarx;Z)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzarx;->zzc:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzarx;->zzc:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzarx;->zzg:Z

    .line 8
    .line 9
    return-void
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/ads/zzarx;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzarx;->zzc:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x4

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzarx;->zzc:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzarx;->zzf:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final zzc()Lcom/google/android/gms/internal/ads/zzasp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarx;->zzi:Lcom/google/android/gms/internal/ads/zzasp;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzasp;->zzc()Lcom/google/android/gms/internal/ads/zzasp;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzass;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarx;->zzj:Lcom/google/android/gms/internal/ads/zzass;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzass;->zzb()Lcom/google/android/gms/internal/ads/zzass;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method protected final zzdd(Lcom/google/android/gms/internal/ads/zzgzg;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_7

    .line 6
    .line 7
    const/4 p2, 0x2

    .line 8
    if-eq p1, p2, :cond_6

    .line 9
    .line 10
    const/4 p2, 0x3

    .line 11
    if-eq p1, p2, :cond_5

    .line 12
    .line 13
    const/4 p2, 0x4

    .line 14
    const/4 p3, 0x0

    .line 15
    if-eq p1, p2, :cond_4

    .line 16
    .line 17
    const/4 p2, 0x5

    .line 18
    if-eq p1, p2, :cond_3

    .line 19
    .line 20
    const/4 p2, 0x6

    .line 21
    if-ne p1, p2, :cond_2

    .line 22
    .line 23
    sget-object p1, Lcom/google/android/gms/internal/ads/zzarx;->zzb:Lcom/google/android/gms/internal/ads/zzhba;

    .line 24
    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    const-class p2, Lcom/google/android/gms/internal/ads/zzarx;

    .line 28
    .line 29
    monitor-enter p2

    .line 30
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzarx;->zzb:Lcom/google/android/gms/internal/ads/zzhba;

    .line 31
    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzc;

    .line 35
    .line 36
    sget-object p3, Lcom/google/android/gms/internal/ads/zzarx;->zza:Lcom/google/android/gms/internal/ads/zzarx;

    .line 37
    .line 38
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzgzc;-><init>(Lcom/google/android/gms/internal/ads/zzgzh;)V

    .line 39
    .line 40
    .line 41
    sput-object p1, Lcom/google/android/gms/internal/ads/zzarx;->zzb:Lcom/google/android/gms/internal/ads/zzhba;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    :goto_0
    monitor-exit p2

    .line 47
    goto :goto_2

    .line 48
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p1

    .line 50
    :cond_1
    :goto_2
    return-object p1

    .line 51
    :cond_2
    throw p3

    .line 52
    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzarx;->zza:Lcom/google/android/gms/internal/ads/zzarx;

    .line 53
    .line 54
    return-object p1

    .line 55
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzarv;

    .line 56
    .line 57
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzarv;-><init>(Lcom/google/android/gms/internal/ads/zzarw;)V

    .line 58
    .line 59
    .line 60
    return-object p1

    .line 61
    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzarx;

    .line 62
    .line 63
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzarx;-><init>()V

    .line 64
    .line 65
    .line 66
    return-object p1

    .line 67
    :cond_6
    const-string v0, "zzc"

    .line 68
    .line 69
    const-string v1, "zzd"

    .line 70
    .line 71
    sget-object v2, Lcom/google/android/gms/internal/ads/zzary;->zza:Lcom/google/android/gms/internal/ads/zzgzn;

    .line 72
    .line 73
    const-string v3, "zze"

    .line 74
    .line 75
    const-string v4, "zzf"

    .line 76
    .line 77
    const-string v5, "zzg"

    .line 78
    .line 79
    const-string v6, "zzh"

    .line 80
    .line 81
    const-string v7, "zzi"

    .line 82
    .line 83
    const-string v8, "zzj"

    .line 84
    .line 85
    const-string v9, "zzk"

    .line 86
    .line 87
    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    sget-object p2, Lcom/google/android/gms/internal/ads/zzarx;->zza:Lcom/google/android/gms/internal/ads/zzarx;

    .line 92
    .line 93
    const-string p3, "\u0004\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u1007\u0001\u0003\u1008\u0002\u0004\u1007\u0003\u0005\u1007\u0004\u0006\u1009\u0005\u0007\u1009\u0006\u0008\u1007\u0007"

    .line 94
    .line 95
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgzh;->zzbQ(Lcom/google/android/gms/internal/ads/zzhas;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    return-object p1

    .line 100
    :cond_7
    const/4 p1, 0x1

    .line 101
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    return-object p1
.end method

.method public final zzf()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarx;->zzf:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzi()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzarx;->zzg:Z

    .line 2
    .line 3
    return v0
.end method
