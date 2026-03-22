.class public final Lcom/google/android/gms/internal/ads/zzfkr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/gms/ads/AdFormat;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzc:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/ads/AdFormat;)V
    .locals 0
    .param p2    # Lcom/google/android/gms/ads/AdFormat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfkr;->zza:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfkr;->zzb:Lcom/google/android/gms/ads/AdFormat;

    .line 7
    .line 8
    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzfkr;)Lcom/google/android/gms/ads/AdFormat;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfkr;->zzb:Lcom/google/android/gms/ads/AdFormat;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzfkr;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfkr;->zza:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzfkr;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfkr;->zzc:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfkr;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfkr;->zzc:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
