.class final Lcom/google/android/gms/internal/ads/zzcfl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbya;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcfo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcfo;Lcom/google/android/gms/internal/ads/zzbya;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfl;->zza:Lcom/google/android/gms/internal/ads/zzbya;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfl;->zzb:Lcom/google/android/gms/internal/ads/zzcfo;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfl;->zza:Lcom/google/android/gms/internal/ads/zzbya;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfl;->zzb:Lcom/google/android/gms/internal/ads/zzcfo;

    .line 4
    .line 5
    const/16 v2, 0xa

    .line 6
    .line 7
    invoke-static {v1, p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzcfo;->zzj(Lcom/google/android/gms/internal/ads/zzcfo;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzbya;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method
