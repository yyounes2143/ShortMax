.class public final Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;
.super Ljava/lang/Object;
.source "Ad2PayResult.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final currencySymbol:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final cycle:I

.field private final interval:I

.field private final originalPrice:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final productType:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final skuResp:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final subscribeResp:Lcom/startshorts/androidplayer/bean/subs/SubsSku;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/Integer;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->currencySymbol:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->cycle:I

    .line 4
    iput p3, p0, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->interval:I

    .line 5
    iput-object p4, p0, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->productType:Ljava/lang/Integer;

    .line 6
    iput-object p5, p0, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->originalPrice:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->skuResp:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 8
    iput-object p7, p0, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->subscribeResp:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IILjava/lang/Integer;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 v0, p8, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, p2

    :goto_0
    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, p3

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 9
    invoke-direct/range {v2 .. v9}, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;-><init>(Ljava/lang/String;IILjava/lang/Integer;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;Ljava/lang/String;IILjava/lang/Integer;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;ILjava/lang/Object;)Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;
    .locals 5

    .line 1
    and-int/lit8 p9, p8, 0x1

    .line 2
    .line 3
    if-eqz p9, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->currencySymbol:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p9, p8, 0x2

    .line 8
    .line 9
    if-eqz p9, :cond_1

    .line 10
    .line 11
    iget p2, p0, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->cycle:I

    .line 12
    .line 13
    :cond_1
    move p9, p2

    .line 14
    and-int/lit8 p2, p8, 0x4

    .line 15
    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    iget p3, p0, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->interval:I

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
    iget-object p4, p0, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->productType:Ljava/lang/Integer;

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
    iget-object p5, p0, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->originalPrice:Ljava/lang/String;

    .line 33
    .line 34
    :cond_4
    move-object v2, p5

    .line 35
    and-int/lit8 p2, p8, 0x20

    .line 36
    .line 37
    if-eqz p2, :cond_5

    .line 38
    .line 39
    iget-object p6, p0, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->skuResp:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 40
    .line 41
    :cond_5
    move-object v3, p6

    .line 42
    and-int/lit8 p2, p8, 0x40

    .line 43
    .line 44
    if-eqz p2, :cond_6

    .line 45
    .line 46
    iget-object p7, p0, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->subscribeResp:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 47
    .line 48
    :cond_6
    move-object v4, p7

    .line 49
    move-object p2, p0

    .line 50
    move-object p3, p1

    .line 51
    move p4, p9

    .line 52
    move p5, v0

    .line 53
    move-object p6, v1

    .line 54
    move-object p7, v2

    .line 55
    move-object p8, v3

    .line 56
    move-object p9, v4

    .line 57
    invoke-virtual/range {p2 .. p9}, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->copy(Ljava/lang/String;IILjava/lang/Integer;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->currencySymbol:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->cycle:I

    .line 2
    .line 3
    return v0
.end method

.method public final component3()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->interval:I

    .line 2
    .line 3
    return v0
.end method

.method public final component4()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->productType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->originalPrice:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component6()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->skuResp:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component7()Lcom/startshorts/androidplayer/bean/subs/SubsSku;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->subscribeResp:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/lang/String;IILjava/lang/Integer;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v8, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;

    .line 2
    .line 3
    move-object v0, v8

    .line 4
    move-object v1, p1

    .line 5
    move v2, p2

    .line 6
    move v3, p3

    .line 7
    move-object v4, p4

    .line 8
    move-object v5, p5

    .line 9
    move-object v6, p6

    .line 10
    move-object/from16 v7, p7

    .line 11
    .line 12
    invoke-direct/range {v0 .. v7}, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;-><init>(Ljava/lang/String;IILjava/lang/Integer;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 13
    .line 14
    .line 15
    return-object v8
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
    instance-of v1, p1, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;

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
    check-cast p1, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->currencySymbol:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->currencySymbol:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget v1, p0, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->cycle:I

    .line 25
    .line 26
    iget v3, p1, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->cycle:I

    .line 27
    .line 28
    if-eq v1, v3, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget v1, p0, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->interval:I

    .line 32
    .line 33
    iget v3, p1, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->interval:I

    .line 34
    .line 35
    if-eq v1, v3, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->productType:Ljava/lang/Integer;

    .line 39
    .line 40
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->productType:Ljava/lang/Integer;

    .line 41
    .line 42
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_5

    .line 47
    .line 48
    return v2

    .line 49
    :cond_5
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->originalPrice:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->originalPrice:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_6

    .line 58
    .line 59
    return v2

    .line 60
    :cond_6
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->skuResp:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 61
    .line 62
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->skuResp:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 63
    .line 64
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-nez v1, :cond_7

    .line 69
    .line 70
    return v2

    .line 71
    :cond_7
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->subscribeResp:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 72
    .line 73
    iget-object p1, p1, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->subscribeResp:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

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

.method public final getCurrencySymbol()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->currencySymbol:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCycle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->cycle:I

    .line 2
    .line 3
    return v0
.end method

.method public final getInterval()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->interval:I

    .line 2
    .line 3
    return v0
.end method

.method public final getOriginalPrice()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->originalPrice:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getProductType()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->productType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSkuResp()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->skuResp:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSubscribeResp()Lcom/startshorts/androidplayer/bean/subs/SubsSku;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->subscribeResp:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->currencySymbol:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget v2, p0, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->cycle:I

    .line 15
    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    add-int/2addr v0, v2

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget v2, p0, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->interval:I

    .line 24
    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    add-int/2addr v0, v2

    .line 30
    mul-int/lit8 v0, v0, 0x1f

    .line 31
    .line 32
    iget-object v2, p0, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->productType:Ljava/lang/Integer;

    .line 33
    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    move v2, v1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    :goto_1
    add-int/2addr v0, v2

    .line 43
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    iget-object v2, p0, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->originalPrice:Ljava/lang/String;

    .line 46
    .line 47
    if-nez v2, :cond_2

    .line 48
    .line 49
    move v2, v1

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    :goto_2
    add-int/2addr v0, v2

    .line 56
    mul-int/lit8 v0, v0, 0x1f

    .line 57
    .line 58
    iget-object v2, p0, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->skuResp:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 59
    .line 60
    if-nez v2, :cond_3

    .line 61
    .line 62
    move v2, v1

    .line 63
    goto :goto_3

    .line 64
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    :goto_3
    add-int/2addr v0, v2

    .line 69
    mul-int/lit8 v0, v0, 0x1f

    .line 70
    .line 71
    iget-object v2, p0, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->subscribeResp:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 72
    .line 73
    if-nez v2, :cond_4

    .line 74
    .line 75
    goto :goto_4

    .line 76
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    :goto_4
    add-int/2addr v0, v1

    .line 81
    return v0
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
    const-string v1, "Ad2PayConfig(currencySymbol="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->currencySymbol:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", cycle="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->cycle:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", interval="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget v1, p0, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->interval:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", productType="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->productType:Ljava/lang/Integer;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", originalPrice="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->originalPrice:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", skuResp="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->skuResp:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", subscribeResp="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->subscribeResp:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
