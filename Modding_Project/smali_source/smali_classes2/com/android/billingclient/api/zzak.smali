.class public final synthetic Lcom/android/billingclient/api/zzak;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/android/billingclient/api/b;

.field public final synthetic zzb:Lcom/android/billingclient/api/ConsumeResponseListener;

.field public final synthetic zzc:Lcom/android/billingclient/api/ConsumeParams;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/ConsumeResponseListener;Lcom/android/billingclient/api/ConsumeParams;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/billingclient/api/zzak;->zza:Lcom/android/billingclient/api/b;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/billingclient/api/zzak;->zzb:Lcom/android/billingclient/api/ConsumeResponseListener;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/billingclient/api/zzak;->zzc:Lcom/android/billingclient/api/ConsumeParams;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/zzak;->zza:Lcom/android/billingclient/api/b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/billingclient/api/zzak;->zzb:Lcom/android/billingclient/api/ConsumeResponseListener;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/billingclient/api/zzak;->zzc:Lcom/android/billingclient/api/ConsumeParams;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/android/billingclient/api/b;->c1(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/ConsumeResponseListener;Lcom/android/billingclient/api/ConsumeParams;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method
