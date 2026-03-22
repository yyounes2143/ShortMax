.class public final Lzc/e$a$a;
.super Ljava/lang/Object;
.source "CommonProductDetails.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzc/e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lzc/e$a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;)Lzc/e$a;
    .locals 9
    .param p1    # Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    new-instance v8, Lzc/e$a;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getFormattedPrice()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v0, "getFormattedPrice(...)"

    .line 12
    .line 13
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceAmountMicros()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceCurrencyCode()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    const-string p1, "getPriceCurrencyCode(...)"

    .line 25
    .line 26
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v5, ""

    .line 30
    .line 31
    const-wide/16 v6, 0x0

    .line 32
    .line 33
    move-object v0, v8

    .line 34
    invoke-direct/range {v0 .. v7}, Lzc/e$a;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;J)V

    .line 35
    .line 36
    .line 37
    return-object v8
.end method
