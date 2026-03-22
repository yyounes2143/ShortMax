.class public final Lcom/google/android/gms/internal/ads/zzbal;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field final zza:J

.field final zzb:Ljava/lang/String;

.field final zzc:I


# direct methods
.method constructor <init>(JLjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzbal;->zza:J

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbal;->zzb:Ljava/lang/String;

    .line 7
    .line 8
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzbal;->zzc:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzbal;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbal;

    .line 8
    .line 9
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzbal;->zza:J

    .line 10
    .line 11
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzbal;->zza:J

    .line 12
    .line 13
    cmp-long v0, v2, v4

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbal;->zzc:I

    .line 18
    .line 19
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbal;->zzc:I

    .line 20
    .line 21
    if-ne p1, v0, :cond_1

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    return p1

    .line 25
    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbal;->zza:J

    .line 2
    .line 3
    long-to-int v0, v0

    .line 4
    return v0
.end method
