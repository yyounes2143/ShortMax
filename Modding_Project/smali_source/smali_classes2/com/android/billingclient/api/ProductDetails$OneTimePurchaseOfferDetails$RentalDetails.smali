.class public final Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$RentalDetails;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"


# annotations
.annotation build Lcom/android/billingclient/api/zzm;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RentalDetails"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "rentalPeriod"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$RentalDetails;->a:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "rentalExpirationPeriod"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x1

    .line 23
    if-ne v1, v0, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    :cond_0
    iput-object p1, p0, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$RentalDetails;->b:Ljava/lang/String;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public getRentalExpirationPeriod()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/android/billingclient/api/zzm;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$RentalDetails;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRentalPeriod()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/android/billingclient/api/zzm;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$RentalDetails;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
