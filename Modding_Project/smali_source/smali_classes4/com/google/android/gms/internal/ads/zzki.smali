.class public final synthetic Lcom/google/android/gms/internal/ads/zzki;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzkt;

.field public final synthetic zzb:I

.field public final synthetic zzc:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzkt;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzki;->zza:Lcom/google/android/gms/internal/ads/zzkt;

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzki;->zzb:I

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzki;->zzc:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zza:Lcom/google/android/gms/internal/ads/zzkt;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzki;->zzb:I

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzki;->zzc:Z

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzkt;->zzi(Lcom/google/android/gms/internal/ads/zzkt;IZ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
