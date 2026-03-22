.class public final synthetic Lcom/google/android/gms/internal/ads/zzeep;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgcu;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzeer;

.field public final synthetic zzb:Landroid/view/View;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfca;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeer;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfca;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeep;->zza:Lcom/google/android/gms/internal/ads/zzeer;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeep;->zzb:Landroid/view/View;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeep;->zzc:Lcom/google/android/gms/internal/ads/zzfca;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeep;->zza:Lcom/google/android/gms/internal/ads/zzeer;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeep;->zzb:Landroid/view/View;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeep;->zzc:Lcom/google/android/gms/internal/ads/zzfca;

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzeer;->zzc(Lcom/google/android/gms/internal/ads/zzeer;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfca;Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
