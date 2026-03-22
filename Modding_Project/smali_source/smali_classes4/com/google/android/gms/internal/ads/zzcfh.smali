.class public final synthetic Lcom/google/android/gms/internal/ads/zzcfh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzcfo;

.field public final synthetic zzb:Landroid/view/View;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbya;

.field public final synthetic zzd:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcfo;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzbya;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfh;->zza:Lcom/google/android/gms/internal/ads/zzcfo;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfh;->zzb:Landroid/view/View;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcfh;->zzc:Lcom/google/android/gms/internal/ads/zzbya;

    .line 9
    .line 10
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzcfh;->zzd:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfh;->zza:Lcom/google/android/gms/internal/ads/zzcfo;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfh;->zzb:Landroid/view/View;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcfh;->zzc:Lcom/google/android/gms/internal/ads/zzbya;

    .line 6
    .line 7
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzcfh;->zzd:I

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcfo;->zzg(Lcom/google/android/gms/internal/ads/zzcfo;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzbya;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
