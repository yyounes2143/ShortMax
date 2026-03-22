.class public final Lcom/google/android/gms/internal/ads/zzevi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeuc;


# instance fields
.field private final zza:Ljava/util/concurrent/Executor;

.field private final zzb:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbzj;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/content/pm/PackageInfo;I)V
    .locals 0
    .param p4    # Landroid/content/pm/PackageInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzevi;->zza:Ljava/util/concurrent/Executor;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzevi;->zzb:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzevi;Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/e;
    .locals 0

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzevj;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzevi;->zzb:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzevj;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgdn;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    const/16 v0, 0x29

    .line 2
    .line 3
    return v0
.end method

.method public final zzb()Lcom/google/common/util/concurrent/e;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevi;->zzb:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgdn;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/zzevg;

    .line 8
    .line 9
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzevg;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzevi;->zza:Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgdn;->zzm(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzfve;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/e;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Lcom/google/android/gms/internal/ads/zzevh;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzevh;-><init>(Lcom/google/android/gms/internal/ads/zzevi;)V

    .line 21
    .line 22
    .line 23
    const-class v3, Ljava/lang/Throwable;

    .line 24
    .line 25
    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzgdn;->zzf(Lcom/google/common/util/concurrent/e;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgcu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/e;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method
