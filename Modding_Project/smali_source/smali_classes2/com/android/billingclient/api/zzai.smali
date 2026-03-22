.class public final synthetic Lcom/android/billingclient/api/zzai;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/android/billingclient/api/b;

.field public final synthetic zzb:Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/billingclient/api/zzai;->zza:Lcom/android/billingclient/api/b;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/billingclient/api/zzai;->zzb:Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/zzai;->zza:Lcom/android/billingclient/api/b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/billingclient/api/zzai;->zzb:Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/android/billingclient/api/b;->m(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
