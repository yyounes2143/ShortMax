.class final Lcom/google/android/gms/ads/internal/zzq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/ads/internal/zzu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzu;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzq;->zza:Lcom/google/android/gms/ads/internal/zzu;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zza:Lcom/google/android/gms/ads/internal/zzu;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzu;->zzn(Lcom/google/android/gms/ads/internal/zzu;)Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v1, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzu;->zzd(Lcom/google/android/gms/ads/internal/zzu;)Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget v2, Lcom/google/android/gms/internal/ads/zzavt;->zzw:I

    .line 14
    .line 15
    new-instance v2, Lcom/google/android/gms/internal/ads/zzavr;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzavr;-><init>(Ljava/lang/String;Z)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzavt;->zzt(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavr;)Lcom/google/android/gms/internal/ads/zzavt;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Lcom/google/android/gms/internal/ads/zzavu;

    .line 26
    .line 27
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzavu;-><init>(Lcom/google/android/gms/internal/ads/zzavp;)V

    .line 28
    .line 29
    .line 30
    return-object v1
.end method
