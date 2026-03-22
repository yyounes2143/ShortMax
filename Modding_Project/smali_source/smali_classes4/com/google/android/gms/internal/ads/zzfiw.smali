.class public final Lcom/google/android/gms/internal/ads/zzfiw;
.super Lcom/google/android/gms/internal/ads/zzgzh;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhat;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzfiw;

.field private static volatile zzb:Lcom/google/android/gms/internal/ads/zzhba;


# instance fields
.field private zzc:Ljava/lang/String;

.field private zzd:I

.field private zze:I

.field private zzf:Z

.field private zzg:Ljava/lang/String;

.field private zzh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfiw;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfiw;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzfiw;->zza:Lcom/google/android/gms/internal/ads/zzfiw;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/ads/zzfiw;

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
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfiw;->zzc:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfiw;->zzg:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method static bridge synthetic zza()Lcom/google/android/gms/internal/ads/zzfiw;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfiw;->zza:Lcom/google/android/gms/internal/ads/zzfiw;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method protected final zzdd(Lcom/google/android/gms/internal/ads/zzgzg;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzfiw;->zzb:Lcom/google/android/gms/internal/ads/zzhba;

    .line 24
    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    const-class p2, Lcom/google/android/gms/internal/ads/zzfiw;

    .line 28
    .line 29
    monitor-enter p2

    .line 30
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzfiw;->zzb:Lcom/google/android/gms/internal/ads/zzhba;

    .line 31
    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzc;

    .line 35
    .line 36
    sget-object p3, Lcom/google/android/gms/internal/ads/zzfiw;->zza:Lcom/google/android/gms/internal/ads/zzfiw;

    .line 37
    .line 38
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzgzc;-><init>(Lcom/google/android/gms/internal/ads/zzgzh;)V

    .line 39
    .line 40
    .line 41
    sput-object p1, Lcom/google/android/gms/internal/ads/zzfiw;->zzb:Lcom/google/android/gms/internal/ads/zzhba;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzfiw;->zza:Lcom/google/android/gms/internal/ads/zzfiw;

    .line 53
    .line 54
    return-object p1

    .line 55
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfiu;

    .line 56
    .line 57
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzfiu;-><init>(Lcom/google/android/gms/internal/ads/zzfiv;)V

    .line 58
    .line 59
    .line 60
    return-object p1

    .line 61
    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfiw;

    .line 62
    .line 63
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzfiw;-><init>()V

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
    const-string v4, "zzg"

    .line 76
    .line 77
    const-string v5, "zzh"

    .line 78
    .line 79
    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    sget-object p2, Lcom/google/android/gms/internal/ads/zzfiw;->zza:Lcom/google/android/gms/internal/ads/zzfiw;

    .line 84
    .line 85
    const-string p3, "\u0004\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u0208\u0002\u0004\u0003\u0004\u0004\u0007\u0005\u0208\u0006\u0007"

    .line 86
    .line 87
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgzh;->zzbQ(Lcom/google/android/gms/internal/ads/zzhas;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    return-object p1

    .line 92
    :cond_7
    const/4 p1, 0x1

    .line 93
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    return-object p1
.end method
