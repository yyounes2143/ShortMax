.class public final synthetic Lcom/android/billingclient/api/zzu;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzr;


# instance fields
.field public final synthetic zza:Lcom/android/billingclient/api/b;

.field public final synthetic zzb:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/b;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/billingclient/api/zzu;->zza:Lcom/android/billingclient/api/b;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/billingclient/api/zzu;->zzb:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/play_billing/zzp;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/zzu;->zza:Lcom/android/billingclient/api/b;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/billingclient/api/zzu;->zzb:I

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/android/billingclient/api/b;->b1(Lcom/android/billingclient/api/b;ILcom/google/android/gms/internal/play_billing/zzp;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
