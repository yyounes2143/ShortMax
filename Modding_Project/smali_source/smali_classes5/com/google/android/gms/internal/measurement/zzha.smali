.class public final Lcom/google/android/gms/internal/measurement/zzha;
.super Lcom/google/android/gms/internal/measurement/zzmf;
.source "com.google.android.gms:play-services-measurement-impl@@23.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zznn;


# static fields
.field private static final zzn:Lcom/google/android/gms/internal/measurement/zzha;


# instance fields
.field private zzb:I

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:J

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;

.field private zzj:Ljava/lang/String;

.field private zzk:J

.field private zzl:Lcom/google/android/gms/internal/measurement/zzng;

.field private zzm:Lcom/google/android/gms/internal/measurement/zzng;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzha;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzha;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzha;->zzn:Lcom/google/android/gms/internal/measurement/zzha;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/measurement/zzha;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcp(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzmf;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzmf;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzng;->zza()Lcom/google/android/gms/internal/measurement/zzng;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzl:Lcom/google/android/gms/internal/measurement/zzng;

    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzng;->zza()Lcom/google/android/gms/internal/measurement/zzng;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzm:Lcom/google/android/gms/internal/measurement/zzng;

    .line 15
    .line 16
    const-string v0, ""

    .line 17
    .line 18
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzd:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zze:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzf:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzh:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzi:Ljava/lang/String;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzj:Ljava/lang/String;

    .line 29
    .line 30
    return-void
.end method

.method static synthetic zzJ()Lcom/google/android/gms/internal/measurement/zzha;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzha;->zzn:Lcom/google/android/gms/internal/measurement/zzha;

    .line 2
    .line 3
    return-object v0
.end method

.method public static zzr()Lcom/google/android/gms/internal/measurement/zzgx;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzha;->zzn:Lcom/google/android/gms/internal/measurement/zzha;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmf;->zzck()Lcom/google/android/gms/internal/measurement/zzmb;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgx;

    .line 8
    .line 9
    return-object v0
.end method

.method public static zzs()Lcom/google/android/gms/internal/measurement/zzha;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzha;->zzn:Lcom/google/android/gms/internal/measurement/zzha;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method final synthetic zzA(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzh:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method final synthetic zzB()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x11

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    .line 6
    .line 7
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzha;->zzn:Lcom/google/android/gms/internal/measurement/zzha;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzha;->zzh:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzh:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method final synthetic zzC(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x20

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzi:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method final synthetic zzD()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x21

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    .line 6
    .line 7
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzha;->zzn:Lcom/google/android/gms/internal/measurement/zzha;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzha;->zzi:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzi:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method final synthetic zzE(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x40

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzj:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method final synthetic zzF()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x41

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    .line 6
    .line 7
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzha;->zzn:Lcom/google/android/gms/internal/measurement/zzha;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzha;->zzj:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzj:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method final synthetic zzG(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x80

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzk:J

    .line 8
    .line 9
    return-void
.end method

.method final synthetic zzH()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzl:Lcom/google/android/gms/internal/measurement/zzng;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzng;->zze()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzl:Lcom/google/android/gms/internal/measurement/zzng;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzng;->zzc()Lcom/google/android/gms/internal/measurement/zzng;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzl:Lcom/google/android/gms/internal/measurement/zzng;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzl:Lcom/google/android/gms/internal/measurement/zzng;

    .line 18
    .line 19
    return-object v0
.end method

.method final synthetic zzI()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzm:Lcom/google/android/gms/internal/measurement/zzng;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzng;->zze()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzm:Lcom/google/android/gms/internal/measurement/zzng;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzng;->zzc()Lcom/google/android/gms/internal/measurement/zzng;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzm:Lcom/google/android/gms/internal/measurement/zzng;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzm:Lcom/google/android/gms/internal/measurement/zzng;

    .line 18
    .line 19
    return-object v0
.end method

.method public final zza()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

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

.method public final zzb()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzd:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzc()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zze:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zze()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzf:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzg()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public final zzh()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzg:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final zzi()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public final zzj()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzh:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzk()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x20

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method protected final zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    add-int/lit8 v0, p1, -0x1

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq v0, v1, :cond_3

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    if-eq v0, v1, :cond_2

    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x5

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzha;->zzn:Lcom/google/android/gms/internal/measurement/zzha;

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    throw v2

    .line 22
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzgx;

    .line 23
    .line 24
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/zzgx;-><init>([B)V

    .line 25
    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzha;

    .line 29
    .line 30
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzha;-><init>()V

    .line 31
    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_3
    sget-object v11, Lcom/google/android/gms/internal/measurement/zzgy;->zza:Lcom/google/android/gms/internal/measurement/zznf;

    .line 35
    .line 36
    const-string v12, "zzm"

    .line 37
    .line 38
    sget-object v13, Lcom/google/android/gms/internal/measurement/zzgz;->zza:Lcom/google/android/gms/internal/measurement/zznf;

    .line 39
    .line 40
    const-string v1, "zzb"

    .line 41
    .line 42
    const-string v2, "zzd"

    .line 43
    .line 44
    const-string v3, "zze"

    .line 45
    .line 46
    const-string v4, "zzf"

    .line 47
    .line 48
    const-string v5, "zzg"

    .line 49
    .line 50
    const-string v6, "zzh"

    .line 51
    .line 52
    const-string v7, "zzi"

    .line 53
    .line 54
    const-string v8, "zzj"

    .line 55
    .line 56
    const-string v9, "zzk"

    .line 57
    .line 58
    const-string v10, "zzl"

    .line 59
    .line 60
    filled-new-array/range {v1 .. v13}, [Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzha;->zzn:Lcom/google/android/gms/internal/measurement/zzha;

    .line 65
    .line 66
    const-string v2, "\u0004\n\u0000\u0001\u0001\n\n\u0002\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1002\u0003\u0005\u1008\u0004\u0006\u1008\u0005\u0007\u1008\u0006\u0008\u1002\u0007\t2\n2"

    .line 67
    .line 68
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/zzmf;->zzcq(Lcom/google/android/gms/internal/measurement/zznm;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    return-object v0

    .line 73
    :cond_4
    const/4 v0, 0x1

    .line 74
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    return-object v0
.end method

.method public final zzm()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzi:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzn()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x40

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public final zzo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzj:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzp()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0x80

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public final zzq()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzk:J

    .line 2
    .line 3
    return-wide v0
.end method

.method final synthetic zzt(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzd:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method final synthetic zzu()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    .line 6
    .line 7
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzha;->zzn:Lcom/google/android/gms/internal/measurement/zzha;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzha;->zzd:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzd:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method final synthetic zzv(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzha;->zze:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method final synthetic zzw()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x3

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    .line 6
    .line 7
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzha;->zzn:Lcom/google/android/gms/internal/measurement/zzha;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzha;->zze:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zze:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method final synthetic zzx(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzf:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method final synthetic zzy()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x5

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    .line 6
    .line 7
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzha;->zzn:Lcom/google/android/gms/internal/measurement/zzha;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzha;->zzf:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzf:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method final synthetic zzz(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzg:J

    .line 8
    .line 9
    return-void
.end method
