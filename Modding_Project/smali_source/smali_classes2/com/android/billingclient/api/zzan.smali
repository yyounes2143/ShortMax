.class public final synthetic Lcom/android/billingclient/api/zzan;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/android/billingclient/api/b;

.field public final synthetic zzb:Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;

.field public final synthetic zzc:Landroid/app/Activity;

.field public final synthetic zzd:Landroid/os/ResultReceiver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;Landroid/app/Activity;Landroid/os/ResultReceiver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/billingclient/api/zzan;->zza:Lcom/android/billingclient/api/b;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/billingclient/api/zzan;->zzb:Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/billingclient/api/zzan;->zzc:Landroid/app/Activity;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/billingclient/api/zzan;->zzd:Landroid/os/ResultReceiver;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/zzan;->zza:Lcom/android/billingclient/api/b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/billingclient/api/zzan;->zzb:Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/billingclient/api/zzan;->zzc:Landroid/app/Activity;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/billingclient/api/zzan;->zzd:Landroid/os/ResultReceiver;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/android/billingclient/api/b;->d(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;Landroid/app/Activity;Landroid/os/ResultReceiver;)Ljava/lang/Void;

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method
