.class public final Lcom/google/android/gms/internal/ads/zzhez;
.super Lcom/google/android/gms/internal/ads/zzgzh;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhat;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzhez;

.field private static volatile zzb:Lcom/google/android/gms/internal/ads/zzhba;


# instance fields
.field private zzc:I

.field private zzd:I

.field private zze:Ljava/lang/String;

.field private zzf:Lcom/google/android/gms/internal/ads/zzhea;

.field private zzg:Lcom/google/android/gms/internal/ads/zzhee;

.field private zzh:I

.field private zzi:Lcom/google/android/gms/internal/ads/zzgzp;

.field private zzj:Ljava/lang/String;

.field private zzk:I

.field private zzl:Lcom/google/android/gms/internal/ads/zzgzt;

.field private zzm:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhez;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhez;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzhez;->zza:Lcom/google/android/gms/internal/ads/zzhez;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/ads/zzhez;

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
    const/4 v0, 0x2

    .line 5
    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/zzhez;->zzm:B

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhez;->zze:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgzh;->zzbG()Lcom/google/android/gms/internal/ads/zzgzp;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhez;->zzi:Lcom/google/android/gms/internal/ads/zzgzp;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhez;->zzj:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgzh;->zzbK()Lcom/google/android/gms/internal/ads/zzgzt;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhez;->zzl:Lcom/google/android/gms/internal/ads/zzgzt;

    .line 24
    .line 25
    return-void
.end method

.method public static zzd()Lcom/google/android/gms/internal/ads/zzhey;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhez;->zza:Lcom/google/android/gms/internal/ads/zzhez;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgzh;->zzaZ()Lcom/google/android/gms/internal/ads/zzgzb;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzhey;

    .line 8
    .line 9
    return-object v0
.end method

.method static bridge synthetic zzf()Lcom/google/android/gms/internal/ads/zzhez;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhez;->zza:Lcom/google/android/gms/internal/ads/zzhez;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/ads/zzhez;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhez;->zzl:Lcom/google/android/gms/internal/ads/zzgzt;

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
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhez;->zzl:Lcom/google/android/gms/internal/ads/zzgzt;

    .line 17
    .line 18
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzhez;->zzl:Lcom/google/android/gms/internal/ads/zzgzt;

    .line 19
    .line 20
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/ads/zzhez;I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhez;->zzc:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhez;->zzc:I

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhez;->zzd:I

    .line 8
    .line 9
    return-void
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/ads/zzhez;Lcom/google/android/gms/internal/ads/zzhea;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhez;->zzf:Lcom/google/android/gms/internal/ads/zzhea;

    .line 5
    .line 6
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzhez;->zzc:I

    .line 7
    .line 8
    or-int/lit8 p1, p1, 0x4

    .line 9
    .line 10
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhez;->zzc:I

    .line 11
    .line 12
    return-void
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/ads/zzhez;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhez;->zzc:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhez;->zzc:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhez;->zze:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method static synthetic zzl(Lcom/google/android/gms/internal/ads/zzhez;I)V
    .locals 0

    .line 1
    add-int/lit8 p1, p1, -0x1

    .line 2
    .line 3
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhez;->zzk:I

    .line 4
    .line 5
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzhez;->zzc:I

    .line 6
    .line 7
    or-int/lit8 p1, p1, 0x40

    .line 8
    .line 9
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhez;->zzc:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final zzc()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhez;->zzl:Lcom/google/android/gms/internal/ads/zzgzt;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method protected final zzdd(Lcom/google/android/gms/internal/ads/zzgzg;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzhez;->zzb:Lcom/google/android/gms/internal/ads/zzhba;

    .line 11
    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    const-class p2, Lcom/google/android/gms/internal/ads/zzhez;

    .line 15
    .line 16
    monitor-enter p2

    .line 17
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzhez;->zzb:Lcom/google/android/gms/internal/ads/zzhba;

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzc;

    .line 22
    .line 23
    sget-object p3, Lcom/google/android/gms/internal/ads/zzhez;->zza:Lcom/google/android/gms/internal/ads/zzhez;

    .line 24
    .line 25
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzgzc;-><init>(Lcom/google/android/gms/internal/ads/zzgzh;)V

    .line 26
    .line 27
    .line 28
    sput-object p1, Lcom/google/android/gms/internal/ads/zzhez;->zzb:Lcom/google/android/gms/internal/ads/zzhba;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzhez;->zza:Lcom/google/android/gms/internal/ads/zzhez;

    .line 39
    .line 40
    return-object p1

    .line 41
    :pswitch_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhey;

    .line 42
    .line 43
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzhey;-><init>(Lcom/google/android/gms/internal/ads/zzhfx;)V

    .line 44
    .line 45
    .line 46
    return-object p1

    .line 47
    :pswitch_3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhez;

    .line 48
    .line 49
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzhez;-><init>()V

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
    const-string v3, "zzf"

    .line 60
    .line 61
    const-string v4, "zzg"

    .line 62
    .line 63
    const-string v5, "zzh"

    .line 64
    .line 65
    const-string v6, "zzi"

    .line 66
    .line 67
    const-string v7, "zzj"

    .line 68
    .line 69
    const-string v8, "zzk"

    .line 70
    .line 71
    sget-object v9, Lcom/google/android/gms/internal/ads/zzhew;->zza:Lcom/google/android/gms/internal/ads/zzgzn;

    .line 72
    .line 73
    const-string v10, "zzl"

    .line 74
    .line 75
    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    sget-object p2, Lcom/google/android/gms/internal/ads/zzhez;->zza:Lcom/google/android/gms/internal/ads/zzhez;

    .line 80
    .line 81
    const-string p3, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0002\u0003\u0001\u1504\u0000\u0002\u1008\u0001\u0003\u1409\u0002\u0004\u1409\u0003\u0005\u1004\u0004\u0006\u0016\u0007\u1008\u0005\u0008\u180c\u0006\t\u001a"

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
    :pswitch_5
    if-nez p2, :cond_2

    .line 89
    .line 90
    const/4 p1, 0x0

    .line 91
    goto :goto_3

    .line 92
    :cond_2
    const/4 p1, 0x1

    .line 93
    :goto_3
    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzhez;->zzm:B

    .line 94
    .line 95
    return-object p3

    .line 96
    :pswitch_6
    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzhez;->zzm:B

    .line 97
    .line 98
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    return-object p1

    .line 103
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

.method public final zzg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhez;->zze:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
