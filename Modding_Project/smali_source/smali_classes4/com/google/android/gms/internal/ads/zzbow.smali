.class public final Lcom/google/android/gms/internal/ads/zzbow;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# static fields
.field static final zza:Lcom/google/android/gms/ads/internal/util/zzbd;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final zzb:Lcom/google/android/gms/ads/internal/util/zzbd;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/ads/zzboi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbou;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbou;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzbow;->zza:Lcom/google/android/gms/ads/internal/util/zzbd;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbov;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbov;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/gms/internal/ads/zzbow;->zzb:Lcom/google/android/gms/ads/internal/util/zzbd;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfhx;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v7, Lcom/google/android/gms/internal/ads/zzboi;

    .line 5
    .line 6
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbow;->zza:Lcom/google/android/gms/ads/internal/util/zzbd;

    .line 7
    .line 8
    sget-object v5, Lcom/google/android/gms/internal/ads/zzbow;->zzb:Lcom/google/android/gms/ads/internal/util/zzbd;

    .line 9
    .line 10
    move-object v0, v7

    .line 11
    move-object v1, p1

    .line 12
    move-object v2, p2

    .line 13
    move-object v3, p3

    .line 14
    move-object v6, p4

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzboi;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/zzbd;Lcom/google/android/gms/ads/internal/util/zzbd;Lcom/google/android/gms/internal/ads/zzfhx;)V

    .line 16
    .line 17
    .line 18
    iput-object v7, p0, Lcom/google/android/gms/internal/ads/zzbow;->zzc:Lcom/google/android/gms/internal/ads/zzboi;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbop;Lcom/google/android/gms/internal/ads/zzboo;)Lcom/google/android/gms/internal/ads/zzbom;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbpa;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbow;->zzc:Lcom/google/android/gms/internal/ads/zzboi;

    .line 4
    .line 5
    invoke-direct {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbpa;-><init>(Lcom/google/android/gms/internal/ads/zzboi;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbop;Lcom/google/android/gms/internal/ads/zzboo;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzbpf;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbpf;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbow;->zzc:Lcom/google/android/gms/internal/ads/zzboi;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbpf;-><init>(Lcom/google/android/gms/internal/ads/zzboi;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
