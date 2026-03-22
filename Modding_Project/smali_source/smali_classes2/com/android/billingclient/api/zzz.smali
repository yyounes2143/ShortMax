.class public final synthetic Lcom/android/billingclient/api/zzz;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/android/billingclient/api/b;

.field public final synthetic zzb:Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/billingclient/api/zzz;->zza:Lcom/android/billingclient/api/b;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/billingclient/api/zzz;->zzb:Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/zzz;->zza:Lcom/android/billingclient/api/b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/billingclient/api/zzz;->zzb:Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/android/billingclient/api/b;->q(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
