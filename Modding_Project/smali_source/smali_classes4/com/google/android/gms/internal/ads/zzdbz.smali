.class public final Lcom/google/android/gms/internal/ads/zzdbz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhgr;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdbw;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdbw;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdbz;->zza:Lcom/google/android/gms/internal/ads/zzdbw;

    .line 5
    .line 6
    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzdbw;)Lcom/google/android/gms/internal/ads/zzdbz;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdbz;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdbz;-><init>(Lcom/google/android/gms/internal/ads/zzdbw;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzdbw;)Ljava/util/Set;
    .locals 0

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhgz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    check-cast p0, Ljava/util/Set;

    .line 9
    .line 10
    return-object p0
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbz;->zza:Lcom/google/android/gms/internal/ads/zzdbw;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdbz;->zzc(Lcom/google/android/gms/internal/ads/zzdbw;)Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
