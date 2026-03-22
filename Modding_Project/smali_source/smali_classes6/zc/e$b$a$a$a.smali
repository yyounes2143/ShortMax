.class public final Lzc/e$b$a$a$a;
.super Ljava/lang/Object;
.source "CommonProductDetails.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzc/e$b$a$a;
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
    invoke-direct {p0}, Lzc/e$b$a$a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/billingclient/api/ProductDetails$PricingPhase;)Lzc/e$b$a$a;
    .locals 12
    .param p1    # Lcom/android/billingclient/api/ProductDetails$PricingPhase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lzc/e$b$a$a;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getFormattedPrice()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-string v1, "getFormattedPrice(...)"

    .line 13
    .line 14
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceAmountMicros()J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceCurrencyCode()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v8

    .line 25
    const-string v1, "getPriceCurrencyCode(...)"

    .line 26
    .line 27
    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getBillingPeriod()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v9

    .line 34
    const-string v1, "getBillingPeriod(...)"

    .line 35
    .line 36
    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getBillingCycleCount()I

    .line 40
    .line 41
    .line 42
    move-result v10

    .line 43
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getRecurrenceMode()I

    .line 44
    .line 45
    .line 46
    move-result v11

    .line 47
    const-string v5, ""

    .line 48
    .line 49
    const-wide/16 v6, 0x0

    .line 50
    .line 51
    move-object v1, v0

    .line 52
    invoke-direct/range {v1 .. v11}, Lzc/e$b$a$a;-><init>(Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;II)V

    .line 53
    .line 54
    .line 55
    return-object v0
.end method
