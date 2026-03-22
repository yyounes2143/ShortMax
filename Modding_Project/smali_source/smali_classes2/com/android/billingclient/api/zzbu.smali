.class public final synthetic Lcom/android/billingclient/api/zzbu;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/android/billingclient/api/s;

.field public final synthetic zzb:Lcom/android/billingclient/api/ConsumeParams;

.field public final synthetic zzc:Lcom/android/billingclient/api/ConsumeResponseListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/s;Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/billingclient/api/zzbu;->zza:Lcom/android/billingclient/api/s;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/billingclient/api/zzbu;->zzb:Lcom/android/billingclient/api/ConsumeParams;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/billingclient/api/zzbu;->zzc:Lcom/android/billingclient/api/ConsumeResponseListener;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/zzbu;->zza:Lcom/android/billingclient/api/s;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/billingclient/api/zzbu;->zzb:Lcom/android/billingclient/api/ConsumeParams;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/billingclient/api/zzbu;->zzc:Lcom/android/billingclient/api/ConsumeResponseListener;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/android/billingclient/api/s;->v1(Lcom/android/billingclient/api/s;Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
