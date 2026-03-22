.class public final Lcom/google/android/gms/internal/ads/zzgxb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgfl;


# static fields
.field private static final zza:[B


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzgro;

.field private final zzc:I

.field private final zzd:[B

.field private final zze:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    aput-byte v1, v0, v1

    .line 6
    .line 7
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgxb;->zza:[B

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzgpm;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgwy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpm;->zze()Lcom/google/android/gms/internal/ads/zzgxf;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgey;->zza()Lcom/google/android/gms/internal/ads/zzgfn;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgxf;->zzd(Lcom/google/android/gms/internal/ads/zzgfn;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgwy;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxb;->zzb:Lcom/google/android/gms/internal/ads/zzgro;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpm;->zzc()Lcom/google/android/gms/internal/ads/zzgpu;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgpu;->zzb()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgxb;->zzc:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpm;->zzd()Lcom/google/android/gms/internal/ads/zzgxe;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxe;->zzd()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxb;->zzd:[B

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpm;->zzc()Lcom/google/android/gms/internal/ads/zzgpu;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpu;->zzf()Lcom/google/android/gms/internal/ads/zzgps;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgps;->zzc:Lcom/google/android/gms/internal/ads/zzgps;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzgxb;->zza:[B

    const/4 v0, 0x1

    .line 5
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgxb;->zze:[B

    return-void

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgxb;->zze:[B

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzgqb;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgxa;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgqb;->zzc()Lcom/google/android/gms/internal/ads/zzgql;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgql;->zzf()Lcom/google/android/gms/internal/ads/zzgqi;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgqb;->zze()Lcom/google/android/gms/internal/ads/zzgxf;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgey;->zza()Lcom/google/android/gms/internal/ads/zzgfn;

    move-result-object v4

    .line 7
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzgxf;->zzd(Lcom/google/android/gms/internal/ads/zzgfn;)[B

    move-result-object v3

    const-string v4, "HMAC"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgxa;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxb;->zzb:Lcom/google/android/gms/internal/ads/zzgro;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgqb;->zzc()Lcom/google/android/gms/internal/ads/zzgql;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgql;->zzb()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgxb;->zzc:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgqb;->zzd()Lcom/google/android/gms/internal/ads/zzgxe;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxe;->zzd()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxb;->zzd:[B

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgqb;->zzc()Lcom/google/android/gms/internal/ads/zzgql;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgql;->zzg()Lcom/google/android/gms/internal/ads/zzgqj;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgqj;->zzc:Lcom/google/android/gms/internal/ads/zzgqj;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzgxb;->zza:[B

    const/4 v0, 0x1

    .line 11
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgxb;->zze:[B

    return-void

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgxb;->zze:[B

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgro;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgxb;->zzb:Lcom/google/android/gms/internal/ads/zzgro;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzgxb;->zzc:I

    const/4 v0, 0x0

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgxb;->zzd:[B

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgxb;->zze:[B

    new-array v0, v0, [B

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzgro;->zza([BI)[B

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzgpm;)Lcom/google/android/gms/internal/ads/zzgfl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgxb;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgxb;-><init>(Lcom/google/android/gms/internal/ads/zzgpm;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzgqb;)Lcom/google/android/gms/internal/ads/zzgfl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgxb;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgxb;-><init>(Lcom/google/android/gms/internal/ads/zzgqb;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final zzc([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxb;->zze:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-lez v1, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgxb;->zzd:[B

    .line 7
    .line 8
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgxb;->zzb:Lcom/google/android/gms/internal/ads/zzgro;

    .line 9
    .line 10
    filled-new-array {p1, v0}, [[B

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgwe;->zzb([[B)[B

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgxb;->zzc:I

    .line 19
    .line 20
    invoke-interface {v2, p1, v0}, Lcom/google/android/gms/internal/ads/zzgro;->zza([BI)[B

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    filled-new-array {v1, p1}, [[B

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgwe;->zzb([[B)[B

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxb;->zzd:[B

    .line 34
    .line 35
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgxb;->zzb:Lcom/google/android/gms/internal/ads/zzgro;

    .line 36
    .line 37
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgxb;->zzc:I

    .line 38
    .line 39
    invoke-interface {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzgro;->zza([BI)[B

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    filled-new-array {v0, p1}, [[B

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgwe;->zzb([[B)[B

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    return-object p1
.end method
