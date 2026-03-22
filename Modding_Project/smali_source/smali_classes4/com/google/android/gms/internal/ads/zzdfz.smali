.class public final Lcom/google/android/gms/internal/ads/zzdfz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhgr;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdff;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdff;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdfz;->zza:Lcom/google/android/gms/internal/ads/zzdff;

    .line 5
    .line 6
    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzdff;)Lcom/google/android/gms/internal/ads/zzdfz;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdfz;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdfz;-><init>(Lcom/google/android/gms/internal/ads/zzdff;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfz;->zza:Lcom/google/android/gms/internal/ads/zzdff;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdff;->zzb()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
