.class public final synthetic Lcom/android/billingclient/api/zzba;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/android/billingclient/api/e;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/billingclient/api/zzba;->zza:Lcom/android/billingclient/api/e;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/zzba;->zza:Lcom/android/billingclient/api/e;

    .line 2
    .line 3
    :try_start_0
    iget-object v0, v0, Lcom/android/billingclient/api/e;->b:Lcom/android/billingclient/api/b;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/android/billingclient/api/b;->S0(Lcom/android/billingclient/api/b;)Lcom/android/billingclient/api/BillingClientStateListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lcom/android/billingclient/api/BillingClientStateListener;->onBillingServiceDisconnected()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    const-string v1, "BillingClient"

    .line 15
    .line 16
    const-string v2, "Exception calling onBillingServiceDisconnected."

    .line 17
    .line 18
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
