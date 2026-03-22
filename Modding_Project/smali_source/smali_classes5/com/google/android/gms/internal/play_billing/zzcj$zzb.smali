.class final Lcom/google/android/gms/internal/play_billing/zzcj$zzb;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final zza:Lcom/google/android/gms/internal/play_billing/zzcj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/play_billing/zzcj<",
            "TV;>;"
        }
    .end annotation
.end field

.field final zzb:Lcom/google/android/gms/internal/play_billing/zzcz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/play_billing/zzcz<",
            "+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/play_billing/zzcj;Lcom/google/android/gms/internal/play_billing/zzcz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzcj$zzb;->zza:Lcom/google/android/gms/internal/play_billing/zzcj;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/zzcj$zzb;->zzb:Lcom/google/android/gms/internal/play_billing/zzcz;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcj$zzb;->zza:Lcom/google/android/gms/internal/play_billing/zzcj;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/zzck;->valueField:Ljava/lang/Object;

    .line 4
    .line 5
    if-eq v0, p0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcj$zzb;->zzb:Lcom/google/android/gms/internal/play_billing/zzcz;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzcj$zzb;->zza:Lcom/google/android/gms/internal/play_billing/zzcj;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzcj;->zza(Lcom/google/android/gms/internal/play_billing/zzcz;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v1, p0, v0}, Lcom/google/android/gms/internal/play_billing/zzck;->zzq(Lcom/google/android/gms/internal/play_billing/zzck;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcj$zzb;->zza:Lcom/google/android/gms/internal/play_billing/zzcj;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzcj;->zzf(Lcom/google/android/gms/internal/play_billing/zzcj;Z)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method
