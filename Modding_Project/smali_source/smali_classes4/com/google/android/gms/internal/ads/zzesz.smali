.class public final Lcom/google/android/gms/internal/ads/zzesz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeuc;


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzesz;->zza:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzesz;->zzb:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    const/16 v0, 0x1f

    .line 2
    .line 3
    return v0
.end method

.method public final zzb()Lcom/google/common/util/concurrent/e;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeta;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzesz;->zza:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzesz;->zzb:I

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzeta;-><init>(Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgdn;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method
