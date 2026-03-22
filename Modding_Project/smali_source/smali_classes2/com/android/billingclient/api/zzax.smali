.class final Lcom/android/billingclient/api/zzax;
.super Landroid/os/ResultReceiver;
.source "com.android.billingclient:billing@@8.0.0"


# instance fields
.field final synthetic a:Lcom/android/billingclient/api/InAppMessageResponseListener;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/b;Landroid/os/Handler;Lcom/android/billingclient/api/InAppMessageResponseListener;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/android/billingclient/api/zzax;->a:Lcom/android/billingclient/api/InAppMessageResponseListener;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/android/billingclient/api/zzax;->a:Lcom/android/billingclient/api/InAppMessageResponseListener;

    .line 2
    .line 3
    const-string v0, "BillingClient"

    .line 4
    .line 5
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzi(Landroid/os/Bundle;Ljava/lang/String;)Lcom/android/billingclient/api/InAppMessageResult;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-interface {p1, p2}, Lcom/android/billingclient/api/InAppMessageResponseListener;->onInAppMessageResponse(Lcom/android/billingclient/api/InAppMessageResult;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
