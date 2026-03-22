.class public Lcom/google/android/gms/ads/VersionInfo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.5.0"


# instance fields
.field protected final zza:I

.field protected final zzb:I

.field protected final zzc:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/google/android/gms/ads/VersionInfo;->zza:I

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/gms/ads/VersionInfo;->zzb:I

    .line 7
    .line 8
    iput p3, p0, Lcom/google/android/gms/ads/VersionInfo;->zzc:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getMajorVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/ads/VersionInfo;->zza:I

    .line 2
    .line 3
    return v0
.end method

.method public getMicroVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/ads/VersionInfo;->zzc:I

    .line 2
    .line 3
    return v0
.end method

.method public getMinorVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/ads/VersionInfo;->zzb:I

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/ads/VersionInfo;->zza:I

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget v2, p0, Lcom/google/android/gms/ads/VersionInfo;->zzb:I

    .line 10
    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget v3, p0, Lcom/google/android/gms/ads/VersionInfo;->zzc:I

    .line 16
    .line 17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "%d.%d.%d"

    .line 26
    .line 27
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method
