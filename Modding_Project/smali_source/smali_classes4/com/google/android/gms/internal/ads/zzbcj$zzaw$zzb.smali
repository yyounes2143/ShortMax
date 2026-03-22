.class public final enum Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgzl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzgzl;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;

.field public static final enum zzb:Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;

.field public static final enum zzc:Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;

.field public static final enum zzd:Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;

.field public static final zze:I = 0x0

.field public static final zzf:I = 0x1

.field public static final zzg:I = 0x2

.field public static final zzh:I = 0x3

.field private static final zzi:Lcom/google/android/gms/internal/ads/zzgzm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgzm<",
            "Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic zzj:[Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;


# instance fields
.field private final zzk:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;

    .line 2
    .line 3
    const-string v1, "VIDEO_ERROR_CODE_UNSPECIFIED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;->zza:Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;

    .line 12
    .line 13
    const-string v1, "OPENGL_RENDERING_FAILED"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;->zzb:Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;

    .line 20
    .line 21
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;

    .line 22
    .line 23
    const-string v1, "CACHE_LOAD_FAILED"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;->zzc:Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;

    .line 30
    .line 31
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;

    .line 32
    .line 33
    const-string v1, "ANDROID_TARGET_API_TOO_LOW"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;->zzd:Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;

    .line 40
    .line 41
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;->zzf()[Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;->zzj:[Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;

    .line 46
    .line 47
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb$1;

    .line 48
    .line 49
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb$1;-><init>()V

    .line 50
    .line 51
    .line 52
    sput-object v0, Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;->zzi:Lcom/google/android/gms/internal/ads/zzgzm;

    .line 53
    .line 54
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;->zzk:I

    .line 5
    .line 6
    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;->zzj:[Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;

    .line 8
    .line 9
    return-object v0
.end method

.method public static zzb(I)Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;
    .locals 1

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return-object p0

    .line 14
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;->zzd:Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;->zzc:Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;->zzb:Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;->zza:Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;

    .line 24
    .line 25
    return-object p0
.end method

.method public static zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;

    .line 8
    .line 9
    return-object p0
.end method

.method public static zzd()Lcom/google/android/gms/internal/ads/zzgzm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzgzm<",
            "Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;->zzi:Lcom/google/android/gms/internal/ads/zzgzm;

    .line 2
    .line 3
    return-object v0
.end method

.method public static zze()Lcom/google/android/gms/internal/ads/zzgzn;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb$zza;->zza:Lcom/google/android/gms/internal/ads/zzgzn;

    .line 2
    .line 3
    return-object v0
.end method

.method private static synthetic zzf()[Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;->zza:Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;->zzb:Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;

    .line 4
    .line 5
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;->zzc:Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;

    .line 6
    .line 7
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;->zzd:Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;

    .line 8
    .line 9
    filled-new-array {v0, v1, v2, v3}, [Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;->zzk:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final zza()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbcj$zzaw$zzb;->zzk:I

    .line 2
    .line 3
    return v0
.end method
