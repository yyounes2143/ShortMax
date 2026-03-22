.class public final Lcom/google/android/gms/internal/ads/zzgul;
.super Lcom/google/android/gms/internal/ads/zzgzh;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhat;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzgul;

.field private static volatile zzb:Lcom/google/android/gms/internal/ads/zzhba;


# instance fields
.field private zzc:I

.field private zzd:Lcom/google/android/gms/internal/ads/zzgub;

.field private zze:I

.field private zzf:I

.field private zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgul;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgul;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgul;->zza:Lcom/google/android/gms/internal/ads/zzgul;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/ads/zzgul;

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

.method public static zzc()Lcom/google/android/gms/internal/ads/zzguk;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgul;->zza:Lcom/google/android/gms/internal/ads/zzgul;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgzh;->zzaZ()Lcom/google/android/gms/internal/ads/zzgzb;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzguk;

    .line 8
    .line 9
    return-object v0
.end method

.method static bridge synthetic zzd()Lcom/google/android/gms/internal/ads/zzgul;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgul;->zza:Lcom/google/android/gms/internal/ads/zzgul;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/ads/zzgul;Lcom/google/android/gms/internal/ads/zzgub;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgul;->zzd:Lcom/google/android/gms/internal/ads/zzgub;

    .line 5
    .line 6
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzgul;->zzc:I

    .line 7
    .line 8
    or-int/lit8 p1, p1, 0x1

    .line 9
    .line 10
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgul;->zzc:I

    .line 11
    .line 12
    return-void
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/ads/zzgul;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgul;->zzf:I

    .line 2
    .line 3
    return-void
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/ads/zzgul;Lcom/google/android/gms/internal/ads/zzgvf;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgvf;->zza()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgul;->zzg:I

    .line 6
    .line 7
    return-void
.end method

.method static synthetic zzl(Lcom/google/android/gms/internal/ads/zzgul;I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzguc;->zza(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgul;->zze:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgul;->zzf:I

    .line 2
    .line 3
    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzgub;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgul;->zzd:Lcom/google/android/gms/internal/ads/zzgub;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgub;->zzd()Lcom/google/android/gms/internal/ads/zzgub;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method protected final zzdd(Lcom/google/android/gms/internal/ads/zzgzg;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgul;->zzb:Lcom/google/android/gms/internal/ads/zzhba;

    .line 24
    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    const-class p2, Lcom/google/android/gms/internal/ads/zzgul;

    .line 28
    .line 29
    monitor-enter p2

    .line 30
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgul;->zzb:Lcom/google/android/gms/internal/ads/zzhba;

    .line 31
    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzc;

    .line 35
    .line 36
    sget-object p3, Lcom/google/android/gms/internal/ads/zzgul;->zza:Lcom/google/android/gms/internal/ads/zzgul;

    .line 37
    .line 38
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzgzc;-><init>(Lcom/google/android/gms/internal/ads/zzgzh;)V

    .line 39
    .line 40
    .line 41
    sput-object p1, Lcom/google/android/gms/internal/ads/zzgul;->zzb:Lcom/google/android/gms/internal/ads/zzhba;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgul;->zza:Lcom/google/android/gms/internal/ads/zzgul;

    .line 53
    .line 54
    return-object p1

    .line 55
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzguk;

    .line 56
    .line 57
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzguk;-><init>(Lcom/google/android/gms/internal/ads/zzgum;)V

    .line 58
    .line 59
    .line 60
    return-object p1

    .line 61
    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgul;

    .line 62
    .line 63
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzgul;-><init>()V

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
    const-string v1, "zzg"

    .line 76
    .line 77
    filled-new-array {p1, p2, p3, v0, v1}, [Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    sget-object p2, Lcom/google/android/gms/internal/ads/zzgul;->zza:Lcom/google/android/gms/internal/ads/zzgul;

    .line 82
    .line 83
    const-string p3, "\u0000\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u000c\u0003\u000b\u0004\u000c"

    .line 84
    .line 85
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgzh;->zzbQ(Lcom/google/android/gms/internal/ads/zzhas;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    return-object p1

    .line 90
    :cond_7
    const/4 p1, 0x1

    .line 91
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    return-object p1
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzgvf;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgul;->zzg:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgvf;->zzb(I)Lcom/google/android/gms/internal/ads/zzgvf;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgvf;->zzg:Lcom/google/android/gms/internal/ads/zzgvf;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public final zzj()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgul;->zzc:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public final zzk()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgul;->zze:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    if-eq v0, v2, :cond_2

    .line 9
    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    if-eq v0, v3, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x5

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v1, 0x4

    .line 19
    goto :goto_0

    .line 20
    :cond_2
    move v1, v3

    .line 21
    :cond_3
    :goto_0
    if-nez v1, :cond_4

    .line 22
    .line 23
    return v2

    .line 24
    :cond_4
    return v1
.end method
