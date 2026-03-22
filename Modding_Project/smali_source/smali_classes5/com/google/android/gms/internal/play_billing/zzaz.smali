.class public final Lcom/google/android/gms/internal/play_billing/zzaz;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/play_billing/zzbl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzax;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzax;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzay;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzay;-><init>()V

    .line 16
    .line 17
    .line 18
    :goto_0
    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzaz;->zza:Lcom/google/android/gms/internal/play_billing/zzbl;

    .line 19
    .line 20
    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/play_billing/zzbl;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzaz;->zza:Lcom/google/android/gms/internal/play_billing/zzbl;

    .line 2
    .line 3
    return-object v0
.end method
