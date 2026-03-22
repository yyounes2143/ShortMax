.class public final Lzc/f$a;
.super Ljava/lang/Object;
.source "CommonPurchase.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzc/f;
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
    invoke-direct {p0}, Lzc/f$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/billingclient/api/Purchase;)Lzc/f;
    .locals 14
    .param p1    # Lcom/android/billingclient/api/Purchase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "purchase"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lzc/f;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-string v1, "getProducts(...)"

    .line 13
    .line 14
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const-string v1, "getOriginalJson(...)"

    .line 22
    .line 23
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getSignature()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    const-string v1, "getSignature(...)"

    .line 31
    .line 32
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    const-string v1, "getPurchaseToken(...)"

    .line 44
    .line 45
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    .line 53
    .line 54
    .line 55
    move-result v9

    .line 56
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPackageName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v10

    .line 60
    const-string v1, "getPackageName(...)"

    .line 61
    .line 62
    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getQuantity()I

    .line 66
    .line 67
    .line 68
    move-result v11

    .line 69
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseTime()J

    .line 70
    .line 71
    .line 72
    move-result-wide v12

    .line 73
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v12

    .line 77
    sget-object v1, Lzc/c;->c:Lzc/c$a;

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getAccountIdentifiers()Lcom/android/billingclient/api/AccountIdentifiers;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {v1, p1}, Lzc/c$a;->a(Lcom/android/billingclient/api/AccountIdentifiers;)Lzc/c;

    .line 84
    .line 85
    .line 86
    move-result-object v13

    .line 87
    const-string v6, ""

    .line 88
    .line 89
    move-object v1, v0

    .line 90
    invoke-direct/range {v1 .. v13}, Lzc/f;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;ILjava/lang/String;Lzc/c;)V

    .line 91
    .line 92
    .line 93
    return-object v0
.end method
