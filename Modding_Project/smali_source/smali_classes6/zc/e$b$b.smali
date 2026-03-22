.class public final Lzc/e$b$b;
.super Ljava/lang/Object;
.source "CommonProductDetails.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzc/e$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
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
    invoke-direct {p0}, Lzc/e$b$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;)Lzc/e$b;
    .locals 7
    .param p1    # Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;
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
    new-instance v0, Lzc/e$b;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getOfferId()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getOfferToken()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    const-string v1, "getOfferToken(...)"

    .line 17
    .line 18
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getOfferTags()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    const-string v1, "getOfferTags(...)"

    .line 26
    .line 27
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getBasePlanId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    const-string v1, "getBasePlanId(...)"

    .line 35
    .line 36
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sget-object v1, Lzc/e$b$a;->b:Lzc/e$b$a$b;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getPricingPhases()Lcom/android/billingclient/api/ProductDetails$PricingPhases;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string v6, "getPricingPhases(...)"

    .line 46
    .line 47
    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p1}, Lzc/e$b$a$b;->a(Lcom/android/billingclient/api/ProductDetails$PricingPhases;)Lzc/e$b$a;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    move-object v1, v0

    .line 55
    invoke-direct/range {v1 .. v6}, Lzc/e$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lzc/e$b$a;)V

    .line 56
    .line 57
    .line 58
    return-object v0
.end method
