.class public final Lcom/google/android/gms/internal/ads/zzhea;
.super Lcom/google/android/gms/internal/ads/zzgzh;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhat;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzhea;

.field private static volatile zzb:Lcom/google/android/gms/internal/ads/zzhba;


# instance fields
.field private zzc:I

.field private zzd:Lcom/google/android/gms/internal/ads/zzhdz;

.field private zze:Lcom/google/android/gms/internal/ads/zzgzt;

.field private zzf:Lcom/google/android/gms/internal/ads/zzgxz;

.field private zzg:Lcom/google/android/gms/internal/ads/zzgxz;

.field private zzh:I

.field private zzi:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhea;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhea;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzhea;->zza:Lcom/google/android/gms/internal/ads/zzhea;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/ads/zzhea;

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
    const/4 v0, 0x2

    .line 5
    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/zzhea;->zzi:B

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgzh;->zzbK()Lcom/google/android/gms/internal/ads/zzgzt;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhea;->zze:Lcom/google/android/gms/internal/ads/zzgzt;

    .line 12
    .line 13
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgxz;->zzb:Lcom/google/android/gms/internal/ads/zzgxz;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhea;->zzf:Lcom/google/android/gms/internal/ads/zzgxz;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhea;->zzg:Lcom/google/android/gms/internal/ads/zzgxz;

    .line 18
    .line 19
    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/ads/zzhdx;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhea;->zza:Lcom/google/android/gms/internal/ads/zzhea;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgzh;->zzaZ()Lcom/google/android/gms/internal/ads/zzgzb;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzhdx;

    .line 8
    .line 9
    return-object v0
.end method

.method static bridge synthetic zzd()Lcom/google/android/gms/internal/ads/zzhea;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhea;->zza:Lcom/google/android/gms/internal/ads/zzhea;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/ads/zzhea;Lcom/google/android/gms/internal/ads/zzhdw;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhea;->zze:Lcom/google/android/gms/internal/ads/zzgzt;

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgzt;->zzc()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgzh;->zzbL(Lcom/google/android/gms/internal/ads/zzgzt;)Lcom/google/android/gms/internal/ads/zzgzt;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhea;->zze:Lcom/google/android/gms/internal/ads/zzgzt;

    .line 17
    .line 18
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzhea;->zze:Lcom/google/android/gms/internal/ads/zzgzt;

    .line 19
    .line 20
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
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
    const/4 p3, 0x0

    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    throw p3

    .line 10
    :pswitch_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzhea;->zzb:Lcom/google/android/gms/internal/ads/zzhba;

    .line 11
    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    const-class p2, Lcom/google/android/gms/internal/ads/zzhea;

    .line 15
    .line 16
    monitor-enter p2

    .line 17
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzhea;->zzb:Lcom/google/android/gms/internal/ads/zzhba;

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzc;

    .line 22
    .line 23
    sget-object p3, Lcom/google/android/gms/internal/ads/zzhea;->zza:Lcom/google/android/gms/internal/ads/zzhea;

    .line 24
    .line 25
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzgzc;-><init>(Lcom/google/android/gms/internal/ads/zzgzh;)V

    .line 26
    .line 27
    .line 28
    sput-object p1, Lcom/google/android/gms/internal/ads/zzhea;->zzb:Lcom/google/android/gms/internal/ads/zzhba;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    monitor-exit p2

    .line 34
    goto :goto_2

    .line 35
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p1

    .line 37
    :cond_1
    :goto_2
    return-object p1

    .line 38
    :pswitch_1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzhea;->zza:Lcom/google/android/gms/internal/ads/zzhea;

    .line 39
    .line 40
    return-object p1

    .line 41
    :pswitch_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhdx;

    .line 42
    .line 43
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzhdx;-><init>(Lcom/google/android/gms/internal/ads/zzhfx;)V

    .line 44
    .line 45
    .line 46
    return-object p1

    .line 47
    :pswitch_3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhea;

    .line 48
    .line 49
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzhea;-><init>()V

    .line 50
    .line 51
    .line 52
    return-object p1

    .line 53
    :pswitch_4
    const-string v0, "zzc"

    .line 54
    .line 55
    const-string v1, "zzd"

    .line 56
    .line 57
    const-string v2, "zze"

    .line 58
    .line 59
    const-class v3, Lcom/google/android/gms/internal/ads/zzhdw;

    .line 60
    .line 61
    const-string v4, "zzf"

    .line 62
    .line 63
    const-string v5, "zzg"

    .line 64
    .line 65
    const-string v6, "zzh"

    .line 66
    .line 67
    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    sget-object p2, Lcom/google/android/gms/internal/ads/zzhea;->zza:Lcom/google/android/gms/internal/ads/zzhea;

    .line 72
    .line 73
    const-string p3, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0001\u0001\u1009\u0000\u0002\u041b\u0003\u100a\u0001\u0004\u100a\u0002\u0005\u1004\u0003"

    .line 74
    .line 75
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgzh;->zzbQ(Lcom/google/android/gms/internal/ads/zzhas;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    return-object p1

    .line 80
    :pswitch_5
    if-nez p2, :cond_2

    .line 81
    .line 82
    const/4 p1, 0x0

    .line 83
    goto :goto_3

    .line 84
    :cond_2
    const/4 p1, 0x1

    .line 85
    :goto_3
    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzhea;->zzi:B

    .line 86
    .line 87
    return-object p3

    .line 88
    :pswitch_6
    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzhea;->zzi:B

    .line 89
    .line 90
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    return-object p1

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
