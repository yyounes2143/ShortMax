.class public final Lcom/google/android/gms/internal/ads/zzauh;
.super Lcom/google/android/gms/internal/ads/zzgzh;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhat;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzauh;

.field private static volatile zzb:Lcom/google/android/gms/internal/ads/zzhba;


# instance fields
.field private zzc:I

.field private zzd:Lcom/google/android/gms/internal/ads/zzgzt;

.field private zze:Lcom/google/android/gms/internal/ads/zzgxz;

.field private zzf:I

.field private zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzauh;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzauh;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzauh;->zza:Lcom/google/android/gms/internal/ads/zzauh;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/ads/zzauh;

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
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgzh;->zzbK()Lcom/google/android/gms/internal/ads/zzgzt;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzauh;->zzd:Lcom/google/android/gms/internal/ads/zzgzt;

    .line 9
    .line 10
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgxz;->zzb:Lcom/google/android/gms/internal/ads/zzgxz;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzauh;->zze:Lcom/google/android/gms/internal/ads/zzgxz;

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzauh;->zzf:I

    .line 16
    .line 17
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzauh;->zzg:I

    .line 18
    .line 19
    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzaug;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzauh;->zza:Lcom/google/android/gms/internal/ads/zzauh;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgzh;->zzaZ()Lcom/google/android/gms/internal/ads/zzgzb;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzaug;

    .line 8
    .line 9
    return-object v0
.end method

.method static bridge synthetic zzb()Lcom/google/android/gms/internal/ads/zzauh;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzauh;->zza:Lcom/google/android/gms/internal/ads/zzauh;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzauh;Lcom/google/android/gms/internal/ads/zzgxz;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauh;->zzd:Lcom/google/android/gms/internal/ads/zzgzt;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgzt;->zzc()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgzh;->zzbL(Lcom/google/android/gms/internal/ads/zzgzt;)Lcom/google/android/gms/internal/ads/zzgzt;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzauh;->zzd:Lcom/google/android/gms/internal/ads/zzgzt;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzauh;->zzd:Lcom/google/android/gms/internal/ads/zzgzt;

    .line 16
    .line 17
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzauh;Lcom/google/android/gms/internal/ads/zzgxz;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzauh;->zzc:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzauh;->zzc:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzauh;->zze:Lcom/google/android/gms/internal/ads/zzgxz;

    .line 8
    .line 9
    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/ads/zzauh;I)V
    .locals 0

    .line 1
    add-int/lit8 p1, p1, -0x1

    .line 2
    .line 3
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzauh;->zzg:I

    .line 4
    .line 5
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzauh;->zzc:I

    .line 6
    .line 7
    or-int/lit8 p1, p1, 0x4

    .line 8
    .line 9
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzauh;->zzc:I

    .line 10
    .line 11
    return-void
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/ads/zzauh;I)V
    .locals 0

    .line 1
    const/4 p1, 0x4

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzauh;->zzf:I

    .line 3
    .line 4
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzauh;->zzc:I

    .line 5
    .line 6
    or-int/lit8 p1, p1, 0x2

    .line 7
    .line 8
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzauh;->zzc:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method protected final zzdd(Lcom/google/android/gms/internal/ads/zzgzg;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzauh;->zzb:Lcom/google/android/gms/internal/ads/zzhba;

    .line 24
    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    const-class p2, Lcom/google/android/gms/internal/ads/zzauh;

    .line 28
    .line 29
    monitor-enter p2

    .line 30
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzauh;->zzb:Lcom/google/android/gms/internal/ads/zzhba;

    .line 31
    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzc;

    .line 35
    .line 36
    sget-object p3, Lcom/google/android/gms/internal/ads/zzauh;->zza:Lcom/google/android/gms/internal/ads/zzauh;

    .line 37
    .line 38
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzgzc;-><init>(Lcom/google/android/gms/internal/ads/zzgzh;)V

    .line 39
    .line 40
    .line 41
    sput-object p1, Lcom/google/android/gms/internal/ads/zzauh;->zzb:Lcom/google/android/gms/internal/ads/zzhba;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzauh;->zza:Lcom/google/android/gms/internal/ads/zzauh;

    .line 53
    .line 54
    return-object p1

    .line 55
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaug;

    .line 56
    .line 57
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzaug;-><init>(Lcom/google/android/gms/internal/ads/zzaui;)V

    .line 58
    .line 59
    .line 60
    return-object p1

    .line 61
    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzauh;

    .line 62
    .line 63
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzauh;-><init>()V

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
    const-string v2, "zze"

    .line 72
    .line 73
    const-string v3, "zzf"

    .line 74
    .line 75
    sget-object v4, Lcom/google/android/gms/internal/ads/zzaub;->zza:Lcom/google/android/gms/internal/ads/zzgzn;

    .line 76
    .line 77
    const-string v5, "zzg"

    .line 78
    .line 79
    sget-object v6, Lcom/google/android/gms/internal/ads/zzatx;->zza:Lcom/google/android/gms/internal/ads/zzgzn;

    .line 80
    .line 81
    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    sget-object p2, Lcom/google/android/gms/internal/ads/zzauh;->zza:Lcom/google/android/gms/internal/ads/zzauh;

    .line 86
    .line 87
    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001c\u0002\u100a\u0000\u0003\u180c\u0001\u0004\u180c\u0002"

    .line 88
    .line 89
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgzh;->zzbQ(Lcom/google/android/gms/internal/ads/zzhas;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    return-object p1

    .line 94
    :cond_7
    const/4 p1, 0x1

    .line 95
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    return-object p1
.end method
