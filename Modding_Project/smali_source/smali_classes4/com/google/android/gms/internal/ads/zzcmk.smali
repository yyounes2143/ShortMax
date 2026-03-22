.class public final synthetic Lcom/google/android/gms/internal/ads/zzcmk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgcu;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzcmq;

.field public final synthetic zzb:Landroid/net/Uri$Builder;

.field public final synthetic zzc:Ljava/lang/String;

.field public final synthetic zzd:Landroid/view/InputEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcmq;Landroid/net/Uri$Builder;Ljava/lang/String;Landroid/view/InputEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmk;->zza:Lcom/google/android/gms/internal/ads/zzcmq;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmk;->zzb:Landroid/net/Uri$Builder;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcmk;->zzc:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcmk;->zzd:Landroid/view/InputEvent;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmk;->zza:Lcom/google/android/gms/internal/ads/zzcmq;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmk;->zzb:Landroid/net/Uri$Builder;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcmk;->zzc:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcmk;->zzd:Landroid/view/InputEvent;

    .line 8
    .line 9
    check-cast p1, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzcmq;->zzb(Lcom/google/android/gms/internal/ads/zzcmq;Landroid/net/Uri$Builder;Ljava/lang/String;Landroid/view/InputEvent;Ljava/lang/Integer;)Lcom/google/common/util/concurrent/e;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
