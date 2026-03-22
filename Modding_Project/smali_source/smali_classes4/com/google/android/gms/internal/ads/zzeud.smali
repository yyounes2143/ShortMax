.class public final synthetic Lcom/google/android/gms/internal/ads/zzeud;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzeuf;

.field public final synthetic zzb:J

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzeuc;

.field public final synthetic zzd:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeuf;JLcom/google/android/gms/internal/ads/zzeuc;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeud;->zza:Lcom/google/android/gms/internal/ads/zzeuf;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzeud;->zzb:J

    .line 7
    .line 8
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeud;->zzc:Lcom/google/android/gms/internal/ads/zzeuc;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeud;->zzd:Landroid/os/Bundle;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeud;->zza:Lcom/google/android/gms/internal/ads/zzeuf;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzeud;->zzb:J

    .line 4
    .line 5
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeud;->zzc:Lcom/google/android/gms/internal/ads/zzeuc;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzeud;->zzd:Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzeuf;->zzb(Lcom/google/android/gms/internal/ads/zzeuf;JLcom/google/android/gms/internal/ads/zzeuc;Landroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
