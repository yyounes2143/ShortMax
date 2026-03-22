.class public final Lcom/google/android/gms/internal/ads/zzgtu;
.super Lcom/google/android/gms/internal/ads/zzgzh;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhat;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzgtu;

.field private static volatile zzb:Lcom/google/android/gms/internal/ads/zzhba;


# instance fields
.field private zzc:I

.field private zzd:Lcom/google/android/gms/internal/ads/zzgtx;

.field private zze:I

.field private zzf:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgtu;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgtu;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgtu;->zza:Lcom/google/android/gms/internal/ads/zzgtu;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/ads/zzgtu;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgzh;->zzbZ(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgzh;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgzh;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/ads/zzgts;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtu;->zza:Lcom/google/android/gms/internal/ads/zzgtu;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgzh;->zzaZ()Lcom/google/android/gms/internal/ads/zzgzb;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzgts;

    .line 8
    .line 9
    return-object v0
.end method

.method static bridge synthetic zzd()Lcom/google/android/gms/internal/ads/zzgtu;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtu;->zza:Lcom/google/android/gms/internal/ads/zzgtu;

    .line 2
    .line 3
    return-object v0
.end method

.method public static zzf()Lcom/google/android/gms/internal/ads/zzgtu;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtu;->zza:Lcom/google/android/gms/internal/ads/zzgtu;

    .line 2
    .line 3
    return-object v0
.end method

.method public static zzg(Lcom/google/android/gms/internal/ads/zzgxz;Lcom/google/android/gms/internal/ads/zzgyr;)Lcom/google/android/gms/internal/ads/zzgtu;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgzw;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtu;->zza:Lcom/google/android/gms/internal/ads/zzgtu;

    .line 2
    .line 3
    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgzh;->zzbr(Lcom/google/android/gms/internal/ads/zzgzh;Lcom/google/android/gms/internal/ads/zzgxz;Lcom/google/android/gms/internal/ads/zzgyr;)Lcom/google/android/gms/internal/ads/zzgzh;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/gms/internal/ads/zzgtu;

    .line 8
    .line 9
    return-object p0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/ads/zzgtu;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgtu;->zze:I

    .line 2
    .line 3
    return-void
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/ads/zzgtu;Lcom/google/android/gms/internal/ads/zzgtx;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgtu;->zzd:Lcom/google/android/gms/internal/ads/zzgtx;

    .line 5
    .line 6
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzgtu;->zzc:I

    .line 7
    .line 8
    or-int/lit8 p1, p1, 0x1

    .line 9
    .line 10
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgtu;->zzc:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgtu;->zze:I

    .line 2
    .line 3
    return v0
.end method

.method public final zzb()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgtu;->zzf:I

    .line 2
    .line 3
    return v0
.end method

.method protected final zzdd(Lcom/google/android/gms/internal/ads/zzgzg;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgtu;->zzb:Lcom/google/android/gms/internal/ads/zzhba;

    .line 24
    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    const-class p2, Lcom/google/android/gms/internal/ads/zzgtu;

    .line 28
    .line 29
    monitor-enter p2

    .line 30
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgtu;->zzb:Lcom/google/android/gms/internal/ads/zzhba;

    .line 31
    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzc;

    .line 35
    .line 36
    sget-object p3, Lcom/google/android/gms/internal/ads/zzgtu;->zza:Lcom/google/android/gms/internal/ads/zzgtu;

    .line 37
    .line 38
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzgzc;-><init>(Lcom/google/android/gms/internal/ads/zzgzh;)V

    .line 39
    .line 40
    .line 41
    sput-object p1, Lcom/google/android/gms/internal/ads/zzgtu;->zzb:Lcom/google/android/gms/internal/ads/zzhba;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgtu;->zza:Lcom/google/android/gms/internal/ads/zzgtu;

    .line 53
    .line 54
    return-object p1

    .line 55
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgts;

    .line 56
    .line 57
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzgts;-><init>(Lcom/google/android/gms/internal/ads/zzgtt;)V

    .line 58
    .line 59
    .line 60
    return-object p1

    .line 61
    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgtu;

    .line 62
    .line 63
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzgtu;-><init>()V

    .line 64
    .line 65
    .line 66
    return-object p1

    .line 67
    :cond_6
    const-string p1, "zzc"

    .line 68
    .line 69
    const-string p2, "zzd"

    .line 70
    .line 71
    const-string p3, "zze"

    .line 72
    .line 73
    const-string v0, "zzf"

    .line 74
    .line 75
    filled-new-array {p1, p2, p3, v0}, [Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    sget-object p2, Lcom/google/android/gms/internal/ads/zzgtu;->zza:Lcom/google/android/gms/internal/ads/zzgtu;

    .line 80
    .line 81
    const-string p3, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u000b\u0003\u000b"

    .line 82
    .line 83
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgzh;->zzbQ(Lcom/google/android/gms/internal/ads/zzhas;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    return-object p1

    .line 88
    :cond_7
    const/4 p1, 0x1

    .line 89
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    return-object p1
.end method

.method public final zzh()Lcom/google/android/gms/internal/ads/zzgtx;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgtu;->zzd:Lcom/google/android/gms/internal/ads/zzgtx;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgtx;->zzf()Lcom/google/android/gms/internal/ads/zzgtx;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method
