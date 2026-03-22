.class public final Lcom/startshorts/androidplayer/bean/subs/SubsPrice;
.super Ljava/lang/Object;
.source "SubsPrice.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final billingCycleCount:I

.field private final discountCurrencyCode:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final discountPrice:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final discountPriceAmountMicros:J

.field private final originCurrencyCode:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final originPrice:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final originPriceAmountMicros:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JI)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "originCurrencyCode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "originPrice"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "discountCurrencyCode"

    .line 12
    .line 13
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "discountPrice"

    .line 17
    .line 18
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->originCurrencyCode:Ljava/lang/String;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->originPrice:Ljava/lang/String;

    .line 27
    .line 28
    iput-wide p3, p0, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->originPriceAmountMicros:J

    .line 29
    .line 30
    iput-object p5, p0, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->discountCurrencyCode:Ljava/lang/String;

    .line 31
    .line 32
    iput-object p6, p0, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->discountPrice:Ljava/lang/String;

    .line 33
    .line 34
    iput-wide p7, p0, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->discountPriceAmountMicros:J

    .line 35
    .line 36
    iput p9, p0, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->billingCycleCount:I

    .line 37
    .line 38
    return-void
.end method

.method public static synthetic copy$default(Lcom/startshorts/androidplayer/bean/subs/SubsPrice;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIILjava/lang/Object;)Lcom/startshorts/androidplayer/bean/subs/SubsPrice;
    .locals 10

    .line 1
    move-object v0, p0

    .line 2
    and-int/lit8 v1, p10, 0x1

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    iget-object v1, v0, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->originCurrencyCode:Ljava/lang/String;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, p1

    .line 10
    :goto_0
    and-int/lit8 v2, p10, 0x2

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    iget-object v2, v0, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->originPrice:Ljava/lang/String;

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move-object v2, p2

    .line 18
    :goto_1
    and-int/lit8 v3, p10, 0x4

    .line 19
    .line 20
    if-eqz v3, :cond_2

    .line 21
    .line 22
    iget-wide v3, v0, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->originPriceAmountMicros:J

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_2
    move-wide v3, p3

    .line 26
    :goto_2
    and-int/lit8 v5, p10, 0x8

    .line 27
    .line 28
    if-eqz v5, :cond_3

    .line 29
    .line 30
    iget-object v5, v0, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->discountCurrencyCode:Ljava/lang/String;

    .line 31
    .line 32
    goto :goto_3

    .line 33
    :cond_3
    move-object v5, p5

    .line 34
    :goto_3
    and-int/lit8 v6, p10, 0x10

    .line 35
    .line 36
    if-eqz v6, :cond_4

    .line 37
    .line 38
    iget-object v6, v0, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->discountPrice:Ljava/lang/String;

    .line 39
    .line 40
    goto :goto_4

    .line 41
    :cond_4
    move-object/from16 v6, p6

    .line 42
    .line 43
    :goto_4
    and-int/lit8 v7, p10, 0x20

    .line 44
    .line 45
    if-eqz v7, :cond_5

    .line 46
    .line 47
    iget-wide v7, v0, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->discountPriceAmountMicros:J

    .line 48
    .line 49
    goto :goto_5

    .line 50
    :cond_5
    move-wide/from16 v7, p7

    .line 51
    .line 52
    :goto_5
    and-int/lit8 v9, p10, 0x40

    .line 53
    .line 54
    if-eqz v9, :cond_6

    .line 55
    .line 56
    iget v9, v0, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->billingCycleCount:I

    .line 57
    .line 58
    goto :goto_6

    .line 59
    :cond_6
    move/from16 v9, p9

    .line 60
    .line 61
    :goto_6
    move-object p1, v1

    .line 62
    move-object p2, v2

    .line 63
    move-wide p3, v3

    .line 64
    move-object p5, v5

    .line 65
    move-object/from16 p6, v6

    .line 66
    .line 67
    move-wide/from16 p7, v7

    .line 68
    .line 69
    move/from16 p9, v9

    .line 70
    .line 71
    invoke-virtual/range {p0 .. p9}, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->copy(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JI)Lcom/startshorts/androidplayer/bean/subs/SubsPrice;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->originCurrencyCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->originPrice:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->originPriceAmountMicros:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->discountCurrencyCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->discountPrice:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component6()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->discountPriceAmountMicros:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component7()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->billingCycleCount:I

    .line 2
    .line 3
    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JI)Lcom/startshorts/androidplayer/bean/subs/SubsPrice;
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "originCurrencyCode"

    .line 2
    .line 3
    move-object v2, p1

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "originPrice"

    .line 8
    .line 9
    move-object v3, p2

    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "discountCurrencyCode"

    .line 14
    .line 15
    move-object/from16 v6, p5

    .line 16
    .line 17
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "discountPrice"

    .line 21
    .line 22
    move-object/from16 v7, p6

    .line 23
    .line 24
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;

    .line 28
    .line 29
    move-object v1, v0

    .line 30
    move-wide v4, p3

    .line 31
    move-wide/from16 v8, p7

    .line 32
    .line 33
    move/from16 v10, p9

    .line 34
    .line 35
    invoke-direct/range {v1 .. v10}, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JI)V

    .line 36
    .line 37
    .line 38
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
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
    instance-of v1, p1, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;

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
    check-cast p1, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->originCurrencyCode:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->originCurrencyCode:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->originPrice:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->originPrice:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-wide v3, p0, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->originPriceAmountMicros:J

    .line 36
    .line 37
    iget-wide v5, p1, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->originPriceAmountMicros:J

    .line 38
    .line 39
    cmp-long v1, v3, v5

    .line 40
    .line 41
    if-eqz v1, :cond_4

    .line 42
    .line 43
    return v2

    .line 44
    :cond_4
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->discountCurrencyCode:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->discountCurrencyCode:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_5

    .line 53
    .line 54
    return v2

    .line 55
    :cond_5
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->discountPrice:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->discountPrice:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_6

    .line 64
    .line 65
    return v2

    .line 66
    :cond_6
    iget-wide v3, p0, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->discountPriceAmountMicros:J

    .line 67
    .line 68
    iget-wide v5, p1, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->discountPriceAmountMicros:J

    .line 69
    .line 70
    cmp-long v1, v3, v5

    .line 71
    .line 72
    if-eqz v1, :cond_7

    .line 73
    .line 74
    return v2

    .line 75
    :cond_7
    iget v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->billingCycleCount:I

    .line 76
    .line 77
    iget p1, p1, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->billingCycleCount:I

    .line 78
    .line 79
    if-eq v1, p1, :cond_8

    .line 80
    .line 81
    return v2

    .line 82
    :cond_8
    return v0
.end method

.method public final getBillingCycleCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->billingCycleCount:I

    .line 2
    .line 3
    return v0
.end method

.method public final getDiscountCurrencyCode()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->discountCurrencyCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDiscountPrice()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->discountPrice:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDiscountPriceAmountMicros()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->discountPriceAmountMicros:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getOriginCurrencyCode()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->originCurrencyCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOriginPrice()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->originPrice:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOriginPriceAmountMicros()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->originPriceAmountMicros:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->originCurrencyCode:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->originPrice:Ljava/lang/String;

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
    iget-wide v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->originPriceAmountMicros:J

    .line 19
    .line 20
    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

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
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->discountCurrencyCode:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->discountPrice:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

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
    iget-wide v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->discountPriceAmountMicros:J

    .line 46
    .line 47
    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

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
    iget v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->billingCycleCount:I

    .line 55
    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    add-int/2addr v0, v1

    .line 61
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
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
    const-string v1, "SubsPrice(originCurrencyCode="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->originCurrencyCode:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", originPrice="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->originPrice:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", originPriceAmountMicros="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-wide v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->originPriceAmountMicros:J

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", discountCurrencyCode="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->discountCurrencyCode:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", discountPrice="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->discountPrice:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", discountPriceAmountMicros="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-wide v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->discountPriceAmountMicros:J

    .line 62
    .line 63
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", billingCycleCount="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->billingCycleCount:I

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
