.class public final synthetic Lcom/android/billingclient/api/zzw;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/android/billingclient/api/b;

.field public final synthetic zzb:I

.field public final synthetic zzc:Ljava/lang/String;

.field public final synthetic zzd:Ljava/lang/String;

.field public final synthetic zze:Lcom/android/billingclient/api/BillingFlowParams;

.field public final synthetic zzf:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/b;ILjava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/BillingFlowParams;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/billingclient/api/zzw;->zza:Lcom/android/billingclient/api/b;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/billingclient/api/zzw;->zzb:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/billingclient/api/zzw;->zzc:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/billingclient/api/zzw;->zzd:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/billingclient/api/zzw;->zze:Lcom/android/billingclient/api/BillingFlowParams;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/billingclient/api/zzw;->zzf:Landroid/os/Bundle;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/zzw;->zza:Lcom/android/billingclient/api/b;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/billingclient/api/zzw;->zzb:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/billingclient/api/zzw;->zzc:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/billingclient/api/zzw;->zzd:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/android/billingclient/api/zzw;->zze:Lcom/android/billingclient/api/BillingFlowParams;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/android/billingclient/api/zzw;->zzf:Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-static/range {v0 .. v5}, Lcom/android/billingclient/api/b;->P0(Lcom/android/billingclient/api/b;ILjava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/BillingFlowParams;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method
