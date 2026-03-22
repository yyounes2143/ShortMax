.class public final Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;
.super Ljava/lang/Object;
.source "ActQueryPriceSku.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_IN_APP_PURCHASE:I = 0x1

.field public static final TYPE_SUBSCRIPTION:I = 0x2


# instance fields
.field private final discount:F

.field private enableDiscountByGp:Z

.field private final firstAmount:F

.field private final isFirstBuy:Z

.field private final payAmount:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private productId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final skuId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->Companion:Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;FLjava/lang/String;FZLjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string/jumbo v0, "skuId"

    .line 2
    .line 3
    .line 4
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "payAmount"

    .line 8
    .line 9
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    iput p1, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->type:I

    .line 16
    .line 17
    iput-object p2, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->skuId:Ljava/lang/String;

    .line 18
    .line 19
    iput p3, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->discount:F

    .line 20
    .line 21
    iput-object p4, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->payAmount:Ljava/lang/String;

    .line 22
    .line 23
    iput p5, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->firstAmount:F

    .line 24
    .line 25
    iput-boolean p6, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->isFirstBuy:Z

    .line 26
    .line 27
    iput-object p7, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->productId:Ljava/lang/String;

    .line 28
    .line 29
    return-void
.end method

.method public static synthetic copy$default(Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;ILjava/lang/String;FLjava/lang/String;FZLjava/lang/String;ILjava/lang/Object;)Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;
    .locals 5

    .line 1
    and-int/lit8 p9, p8, 0x1

    .line 2
    .line 3
    if-eqz p9, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->type:I

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p9, p8, 0x2

    .line 8
    .line 9
    if-eqz p9, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->skuId:Ljava/lang/String;

    .line 12
    .line 13
    :cond_1
    move-object p9, p2

    .line 14
    and-int/lit8 p2, p8, 0x4

    .line 15
    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    iget p3, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->discount:F

    .line 19
    .line 20
    :cond_2
    move v0, p3

    .line 21
    and-int/lit8 p2, p8, 0x8

    .line 22
    .line 23
    if-eqz p2, :cond_3

    .line 24
    .line 25
    iget-object p4, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->payAmount:Ljava/lang/String;

    .line 26
    .line 27
    :cond_3
    move-object v1, p4

    .line 28
    and-int/lit8 p2, p8, 0x10

    .line 29
    .line 30
    if-eqz p2, :cond_4

    .line 31
    .line 32
    iget p5, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->firstAmount:F

    .line 33
    .line 34
    :cond_4
    move v2, p5

    .line 35
    and-int/lit8 p2, p8, 0x20

    .line 36
    .line 37
    if-eqz p2, :cond_5

    .line 38
    .line 39
    iget-boolean p6, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->isFirstBuy:Z

    .line 40
    .line 41
    :cond_5
    move v3, p6

    .line 42
    and-int/lit8 p2, p8, 0x40

    .line 43
    .line 44
    if-eqz p2, :cond_6

    .line 45
    .line 46
    iget-object p7, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->productId:Ljava/lang/String;

    .line 47
    .line 48
    :cond_6
    move-object v4, p7

    .line 49
    move-object p2, p0

    .line 50
    move p3, p1

    .line 51
    move-object p4, p9

    .line 52
    move p5, v0

    .line 53
    move-object p6, v1

    .line 54
    move p7, v2

    .line 55
    move p8, v3

    .line 56
    move-object p9, v4

    .line 57
    invoke-virtual/range {p2 .. p9}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->copy(ILjava/lang/String;FLjava/lang/String;FZLjava/lang/String;)Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->skuId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->discount:F

    .line 2
    .line 3
    return v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->payAmount:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->firstAmount:F

    .line 2
    .line 3
    return v0
.end method

.method public final component6()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->isFirstBuy:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->productId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(ILjava/lang/String;FLjava/lang/String;FZLjava/lang/String;)Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;
    .locals 9
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string/jumbo v0, "skuId"

    .line 2
    .line 3
    .line 4
    move-object v3, p2

    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "payAmount"

    .line 9
    .line 10
    move-object v5, p4

    .line 11
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;

    .line 15
    .line 16
    move-object v1, v0

    .line 17
    move v2, p1

    .line 18
    move v4, p3

    .line 19
    move v6, p5

    .line 20
    move v7, p6

    .line 21
    move-object/from16 v8, p7

    .line 22
    .line 23
    invoke-direct/range {v1 .. v8}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;-><init>(ILjava/lang/String;FLjava/lang/String;FZLjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public final enableDiscount()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->getEnableDiscountByGp()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;

    .line 12
    .line 13
    iget v1, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->type:I

    .line 14
    .line 15
    iget v3, p1, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->type:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->skuId:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->skuId:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget v1, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->discount:F

    .line 32
    .line 33
    iget v3, p1, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->discount:F

    .line 34
    .line 35
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->payAmount:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->payAmount:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_5

    .line 51
    .line 52
    return v2

    .line 53
    :cond_5
    iget v1, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->firstAmount:F

    .line 54
    .line 55
    iget v3, p1, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->firstAmount:F

    .line 56
    .line 57
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_6

    .line 62
    .line 63
    return v2

    .line 64
    :cond_6
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->isFirstBuy:Z

    .line 65
    .line 66
    iget-boolean v3, p1, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->isFirstBuy:Z

    .line 67
    .line 68
    if-eq v1, v3, :cond_7

    .line 69
    .line 70
    return v2

    .line 71
    :cond_7
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->productId:Ljava/lang/String;

    .line 72
    .line 73
    iget-object p1, p1, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->productId:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-nez p1, :cond_8

    .line 80
    .line 81
    return v2

    .line 82
    :cond_8
    return v0
.end method

.method public final getDiscount()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->discount:F

    .line 2
    .line 3
    return v0
.end method

.method public final getEnableDiscountByGp()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->C()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->enableDiscountByGp:Z

    .line 12
    .line 13
    :goto_0
    return v0
.end method

.method public final getFirstAmount()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->firstAmount:F

    .line 2
    .line 3
    return v0
.end method

.method public final getPayAmount()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->payAmount:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getProductId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->productId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSkuId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->skuId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->type:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->skuId:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget v1, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->discount:F

    .line 19
    .line 20
    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->payAmount:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    mul-int/lit8 v0, v0, 0x1f

    .line 35
    .line 36
    iget v1, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->firstAmount:F

    .line 37
    .line 38
    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    add-int/2addr v0, v1

    .line 43
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->isFirstBuy:Z

    .line 46
    .line 47
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    add-int/2addr v0, v1

    .line 52
    mul-int/lit8 v0, v0, 0x1f

    .line 53
    .line 54
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->productId:Ljava/lang/String;

    .line 55
    .line 56
    if-nez v1, :cond_0

    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    :goto_0
    add-int/2addr v0, v1

    .line 65
    return v0
.end method

.method public final isFirstBuy()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->isFirstBuy:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isSubscription()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->type:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method

.method public final setEnableDiscountByGp(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->enableDiscountByGp:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setProductId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->productId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ActQueryPriceSku(type="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->type:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", skuId="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->skuId:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", discount="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget v1, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->discount:F

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", payAmount="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->payAmount:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", firstAmount="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget v1, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->firstAmount:F

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", isFirstBuy="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->isFirstBuy:Z

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", productId="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->productId:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const/16 v1, 0x29

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    return-object v0
.end method
