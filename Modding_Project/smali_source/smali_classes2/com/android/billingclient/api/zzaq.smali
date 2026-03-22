.class public final synthetic Lcom/android/billingclient/api/zzaq;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/android/billingclient/api/b;

.field public final synthetic zzb:Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/billingclient/api/zzaq;->zza:Lcom/android/billingclient/api/b;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/billingclient/api/zzaq;->zzb:Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/zzaq;->zza:Lcom/android/billingclient/api/b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/billingclient/api/zzaq;->zzb:Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v0, v1, v2}, Lcom/android/billingclient/api/b;->e(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;Ljava/lang/String;)Ljava/lang/Void;

    .line 7
    .line 8
    .line 9
    return-object v2
.end method
