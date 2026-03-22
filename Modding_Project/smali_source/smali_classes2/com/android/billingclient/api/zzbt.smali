.class public final synthetic Lcom/android/billingclient/api/zzbt;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic zza:Lcom/android/billingclient/api/ConsumeResponseListener;

.field public final synthetic zzb:Lcom/android/billingclient/api/ConsumeParams;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/ConsumeResponseListener;Lcom/android/billingclient/api/ConsumeParams;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/billingclient/api/zzbt;->zza:Lcom/android/billingclient/api/ConsumeResponseListener;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/billingclient/api/zzbt;->zzb:Lcom/android/billingclient/api/ConsumeParams;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/zzbt;->zza:Lcom/android/billingclient/api/ConsumeResponseListener;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/billingclient/api/zzbt;->zzb:Lcom/android/billingclient/api/ConsumeParams;

    .line 4
    .line 5
    check-cast p1, Lcom/android/billingclient/api/BillingResult;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/android/billingclient/api/ConsumeParams;->getPurchaseToken()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v0, p1, v1}, Lcom/android/billingclient/api/ConsumeResponseListener;->onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
