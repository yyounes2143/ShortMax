.class public final Lzc/e$c;
.super Ljava/lang/Object;
.source "CommonProductDetails.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzc/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCommonProductDetails.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonProductDetails.kt\ncom/shorttv/aar/billing/bean/CommonProductDetails$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,220:1\n1557#2:221\n1628#2,3:222\n*S KotlinDebug\n*F\n+ 1 CommonProductDetails.kt\ncom/shorttv/aar/billing/bean/CommonProductDetails$Companion\n*L\n41#1:221\n41#1:222,3\n*E\n"
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
    invoke-direct {p0}, Lzc/e$c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/billingclient/api/ProductDetails;)Lzc/e;
    .locals 11
    .param p1    # Lcom/android/billingclient/api/ProductDetails;
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
    sget-object v2, Lcom/shorttv/aar/billing/bean/ProductDataType;->GOOGLE_PRODUCT:Lcom/shorttv/aar/billing/bean/ProductDataType;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    const-string v0, "getProductId(...)"

    .line 13
    .line 14
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getProductType()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    const-string v0, "getProductType(...)"

    .line 22
    .line 23
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    const-string v0, "getName(...)"

    .line 31
    .line 32
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getDescription()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    const-string v0, "getDescription(...)"

    .line 40
    .line 41
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getTitle()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    const-string v0, "getTitle(...)"

    .line 49
    .line 50
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    check-cast v0, Ljava/lang/Iterable;

    .line 60
    .line 61
    new-instance v1, Ljava/util/ArrayList;

    .line 62
    .line 63
    const/16 v8, 0xa

    .line 64
    .line 65
    invoke-static {v0, v8}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 70
    .line 71
    .line 72
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v8

    .line 80
    if-eqz v8, :cond_0

    .line 81
    .line 82
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    check-cast v8, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    .line 87
    .line 88
    sget-object v9, Lzc/e$b;->f:Lzc/e$b$b;

    .line 89
    .line 90
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v9, v8}, Lzc/e$b$b;->a(Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;)Lzc/e$b;

    .line 94
    .line 95
    .line 96
    move-result-object v8

    .line 97
    invoke-interface {v1, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_0
    move-object v8, v1

    .line 102
    goto :goto_1

    .line 103
    :cond_1
    const/4 v0, 0x0

    .line 104
    move-object v8, v0

    .line 105
    :goto_1
    sget-object v0, Lzc/e$a;->f:Lzc/e$a$a;

    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Lzc/e$a$a;->a(Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;)Lzc/e$a;

    .line 112
    .line 113
    .line 114
    move-result-object v9

    .line 115
    new-instance v0, Lzc/e;

    .line 116
    .line 117
    move-object v1, v0

    .line 118
    move-object v10, p1

    .line 119
    invoke-direct/range {v1 .. v10}, Lzc/e;-><init>(Lcom/shorttv/aar/billing/bean/ProductDataType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lzc/e$a;Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lzc/e;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "productJsonTemplate"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lzc/e$c;->c(Ljava/lang/String;)Lcom/android/billingclient/api/ProductDetails;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Lzc/e$c;->a(Lcom/android/billingclient/api/ProductDetails;)Lzc/e;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public final c(Ljava/lang/String;)Lcom/android/billingclient/api/ProductDetails;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "productJsonTemplate"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Ljava/lang/String;

    .line 7
    .line 8
    filled-new-array {v0}, [Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-class v1, Lcom/android/billingclient/api/ProductDetails;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 20
    .line 21
    .line 22
    :try_start_0
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v0, "null cannot be cast to non-null type com.android.billingclient.api.ProductDetails"

    .line 31
    .line 32
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    check-cast p1, Lcom/android/billingclient/api/ProductDetails;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    return-object p1

    .line 38
    :catch_0
    move-exception p1

    .line 39
    goto :goto_0

    .line 40
    :catch_1
    move-exception p1

    .line 41
    goto :goto_1

    .line 42
    :catch_2
    move-exception p1

    .line 43
    goto :goto_2

    .line 44
    :catch_3
    move-exception p1

    .line 45
    goto :goto_3

    .line 46
    :catch_4
    move-exception p1

    .line 47
    goto :goto_4

    .line 48
    :catch_5
    move-exception p1

    .line 49
    goto :goto_5

    .line 50
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    goto :goto_6

    .line 54
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    .line 56
    .line 57
    goto :goto_6

    .line 58
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    .line 60
    .line 61
    goto :goto_6

    .line 62
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 63
    .line 64
    .line 65
    goto :goto_6

    .line 66
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 67
    .line 68
    .line 69
    goto :goto_6

    .line 70
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 71
    .line 72
    .line 73
    :goto_6
    const/4 p1, 0x0

    .line 74
    return-object p1
.end method
