.class public final Lcom/google/android/gms/internal/ads/zzerd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeub;


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzb:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzerd;->zza:Ljava/lang/String;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzerd;->zzb:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcva;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcva;->zzb:Landroid/os/Bundle;

    .line 4
    .line 5
    const-string v0, "gct"

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzerd;->zza:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcva;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcva;->zza:Landroid/os/Bundle;

    .line 4
    .line 5
    const-string v0, "gct"

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzerd;->zza:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzerd;->zzb:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string v0, "de"

    .line 17
    .line 18
    const-string v1, "1"

    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
