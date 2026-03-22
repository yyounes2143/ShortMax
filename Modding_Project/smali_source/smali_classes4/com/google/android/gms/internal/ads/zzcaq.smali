.class final Lcom/google/android/gms/internal/ads/zzcaq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdj;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzcao;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcam;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcar;Lcom/google/android/gms/internal/ads/zzcao;Lcom/google/android/gms/internal/ads/zzcam;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcaq;->zza:Lcom/google/android/gms/internal/ads/zzcao;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcaq;->zzb:Lcom/google/android/gms/internal/ads/zzcam;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcaq;->zzb:Lcom/google/android/gms/internal/ads/zzcam;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcam;->zza()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcaq;->zza:Lcom/google/android/gms/internal/ads/zzcao;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcao;->zza(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
