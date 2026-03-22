.class public final enum Lcom/google/android/gms/internal/play_billing/zzil;
.super Ljava/lang/Enum;
.source "com.android.billingclient:billing@@8.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzfk;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/play_billing/zzil;

.field public static final enum zzb:Lcom/google/android/gms/internal/play_billing/zzil;

.field public static final enum zzc:Lcom/google/android/gms/internal/play_billing/zzil;

.field public static final enum zzd:Lcom/google/android/gms/internal/play_billing/zzil;

.field private static final synthetic zze:[Lcom/google/android/gms/internal/play_billing/zzil;


# instance fields
.field private final zzf:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzil;

    .line 2
    .line 3
    const-string v1, "BROADCAST_ACTION_UNSPECIFIED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/play_billing/zzil;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzil;->zza:Lcom/google/android/gms/internal/play_billing/zzil;

    .line 10
    .line 11
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzil;

    .line 12
    .line 13
    const-string v2, "PURCHASES_UPDATED_ACTION"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/gms/internal/play_billing/zzil;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/google/android/gms/internal/play_billing/zzil;->zzb:Lcom/google/android/gms/internal/play_billing/zzil;

    .line 20
    .line 21
    new-instance v2, Lcom/google/android/gms/internal/play_billing/zzil;

    .line 22
    .line 23
    const-string v3, "LOCAL_PURCHASES_UPDATED_ACTION"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/gms/internal/play_billing/zzil;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lcom/google/android/gms/internal/play_billing/zzil;->zzc:Lcom/google/android/gms/internal/play_billing/zzil;

    .line 30
    .line 31
    new-instance v3, Lcom/google/android/gms/internal/play_billing/zzil;

    .line 32
    .line 33
    const-string v4, "ALTERNATIVE_BILLING_ACTION"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5, v5}, Lcom/google/android/gms/internal/play_billing/zzil;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Lcom/google/android/gms/internal/play_billing/zzil;->zzd:Lcom/google/android/gms/internal/play_billing/zzil;

    .line 40
    .line 41
    filled-new-array {v0, v1, v2, v3}, [Lcom/google/android/gms/internal/play_billing/zzil;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzil;->zze:[Lcom/google/android/gms/internal/play_billing/zzil;

    .line 46
    .line 47
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/play_billing/zzil;->zzf:I

    .line 5
    .line 6
    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/play_billing/zzil;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzil;->zze:[Lcom/google/android/gms/internal/play_billing/zzil;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/android/gms/internal/play_billing/zzil;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/android/gms/internal/play_billing/zzil;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzil;->zzf:I

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
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzil;->zzf:I

    .line 2
    .line 3
    return v0
.end method
