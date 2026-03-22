.class public final synthetic Lcom/google/android/gms/internal/ads/zzbof;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzbog;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbnd;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbog;Lcom/google/android/gms/internal/ads/zzbnd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbof;->zza:Lcom/google/android/gms/internal/ads/zzbog;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbof;->zzb:Lcom/google/android/gms/internal/ads/zzbnd;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbof;->zzb:Lcom/google/android/gms/internal/ads/zzbnd;

    .line 2
    .line 3
    const-string v1, "/result"

    .line 4
    .line 5
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbke;->zzo:Lcom/google/android/gms/internal/ads/zzbkv;

    .line 6
    .line 7
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzboj;->zzr(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbkf;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbnd;->zzc()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
