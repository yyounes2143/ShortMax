.class public final Lzc/e$b$a$b;
.super Ljava/lang/Object;
.source "CommonProductDetails.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzc/e$b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCommonProductDetails.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonProductDetails.kt\ncom/shorttv/aar/billing/bean/CommonProductDetails$CommonSubscriptionOfferDetails$CommonPricingPhases$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,220:1\n1557#2:221\n1628#2,3:222\n*S KotlinDebug\n*F\n+ 1 CommonProductDetails.kt\ncom/shorttv/aar/billing/bean/CommonProductDetails$CommonSubscriptionOfferDetails$CommonPricingPhases$Companion\n*L\n173#1:221\n173#1:222,3\n*E\n"
    }
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
    invoke-direct {p0}, Lzc/e$b$a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/billingclient/api/ProductDetails$PricingPhases;)Lzc/e$b$a;
    .locals 3
    .param p1    # Lcom/android/billingclient/api/ProductDetails$PricingPhases;
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
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails$PricingPhases;->getPricingPhaseList()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "getPricingPhaseList(...)"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    check-cast p1, Ljava/lang/Iterable;

    .line 16
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    const/16 v1, 0xa

    .line 20
    .line 21
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    .line 43
    .line 44
    sget-object v2, Lzc/e$b$a$a;->i:Lzc/e$b$a$a$a;

    .line 45
    .line 46
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v1}, Lzc/e$b$a$a$a;->a(Lcom/android/billingclient/api/ProductDetails$PricingPhase;)Lzc/e$b$a$a;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    new-instance p1, Lzc/e$b$a;

    .line 58
    .line 59
    invoke-direct {p1, v0}, Lzc/e$b$a;-><init>(Ljava/util/List;)V

    .line 60
    .line 61
    .line 62
    return-object p1
.end method
