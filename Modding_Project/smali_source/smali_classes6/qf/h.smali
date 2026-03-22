.class public final Lqf/h;
.super Ljava/lang/Object;
.source "SkuDataManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSkuDataManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SkuDataManager.kt\ncom/startshorts/androidplayer/manager/purchase/SkuDataManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,213:1\n1971#2,14:214\n774#2:228\n865#2,2:229\n1863#2:231\n1863#2,2:232\n1864#2:234\n774#2:235\n865#2,2:236\n1863#2:238\n1863#2,2:239\n1864#2:241\n1755#2,3:242\n1755#2,3:245\n1755#2,2:248\n1755#2,3:250\n1757#2:253\n1755#2,2:254\n1755#2,3:256\n1757#2:259\n1611#2,9:260\n1863#2:269\n1864#2:271\n1620#2:272\n1#3:270\n*S KotlinDebug\n*F\n+ 1 SkuDataManager.kt\ncom/startshorts/androidplayer/manager/purchase/SkuDataManager\n*L\n23#1:214,14\n54#1:228\n54#1:229,2\n54#1:231\n84#1:232,2\n54#1:234\n117#1:235\n117#1:236,2\n117#1:238\n147#1:239,2\n117#1:241\n172#1:242,3\n182#1:245,3\n198#1:248,2\n199#1:250,3\n198#1:253\n204#1:254,2\n205#1:256,3\n204#1:259\n34#1:260,9\n34#1:269\n34#1:271\n34#1:272\n34#1:270\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lqf/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lqf/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lqf/h;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lqf/h;->a:Lqf/h;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lqf/h;->k(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic b(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-static {p0}, Lqf/h;->l(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Ljava/lang/Iterable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final d(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscount()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getFirstAmount()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getPayAmount()F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    :goto_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuDetails()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    instance-of v2, v1, Lzc/e;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    check-cast v1, Lzc/e;

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move-object v1, v3

    .line 29
    :goto_1
    const-wide/16 v4, 0x0

    .line 30
    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-static {v1}, Ljk/k;->j(Lzc/e;)Lcom/startshorts/androidplayer/bean/subs/SubsPrice;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->getOriginPriceAmountMicros()J

    .line 40
    .line 41
    .line 42
    move-result-wide v1

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    move-wide v1, v4

    .line 45
    :goto_2
    long-to-float v1, v1

    .line 46
    const v2, 0x49742400    # 1000000.0f

    .line 47
    .line 48
    .line 49
    div-float/2addr v1, v2

    .line 50
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuDetails()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    instance-of v7, v6, Lzc/e;

    .line 55
    .line 56
    if-eqz v7, :cond_3

    .line 57
    .line 58
    move-object v3, v6

    .line 59
    check-cast v3, Lzc/e;

    .line 60
    .line 61
    :cond_3
    if-eqz v3, :cond_4

    .line 62
    .line 63
    invoke-static {v3}, Ljk/k;->j(Lzc/e;)Lcom/startshorts/androidplayer/bean/subs/SubsPrice;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    if-eqz v3, :cond_4

    .line 68
    .line 69
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->getDiscountPriceAmountMicros()J

    .line 70
    .line 71
    .line 72
    move-result-wide v4

    .line 73
    :cond_4
    long-to-float v3, v4

    .line 74
    div-float/2addr v3, v2

    .line 75
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscount()Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_5

    .line 80
    .line 81
    move v1, v3

    .line 82
    :cond_5
    const/4 v3, 0x0

    .line 83
    cmpg-float v3, v1, v3

    .line 84
    .line 85
    if-gtz v3, :cond_6

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_6
    move v0, v1

    .line 89
    :goto_3
    if-eqz v2, :cond_7

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getDiscountPriceText()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    goto :goto_4

    .line 96
    :cond_7
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getOriginPriceText()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    :goto_4
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-static {p1, p2, v0, p0}, Lqf/h;->e(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/Float;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method private static final e(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/Float;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Float;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    check-cast v1, Ljava/lang/Number;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    cmpg-float v0, v0, v1

    .line 23
    .line 24
    if-gez v0, :cond_1

    .line 25
    .line 26
    :cond_0
    iput-object p2, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 27
    .line 28
    iput-object p3, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method private static final h(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscount()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getFirstAmount()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getPayAmount()F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    :goto_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuDetails()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    instance-of v2, v1, Lzc/e;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    check-cast v1, Lzc/e;

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move-object v1, v3

    .line 29
    :goto_1
    const-wide/16 v4, 0x0

    .line 30
    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-static {v1}, Ljk/k;->j(Lzc/e;)Lcom/startshorts/androidplayer/bean/subs/SubsPrice;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->getOriginPriceAmountMicros()J

    .line 40
    .line 41
    .line 42
    move-result-wide v1

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    move-wide v1, v4

    .line 45
    :goto_2
    long-to-float v1, v1

    .line 46
    const v2, 0x49742400    # 1000000.0f

    .line 47
    .line 48
    .line 49
    div-float/2addr v1, v2

    .line 50
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuDetails()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    instance-of v7, v6, Lzc/e;

    .line 55
    .line 56
    if-eqz v7, :cond_3

    .line 57
    .line 58
    move-object v3, v6

    .line 59
    check-cast v3, Lzc/e;

    .line 60
    .line 61
    :cond_3
    if-eqz v3, :cond_4

    .line 62
    .line 63
    invoke-static {v3}, Ljk/k;->j(Lzc/e;)Lcom/startshorts/androidplayer/bean/subs/SubsPrice;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    if-eqz v3, :cond_4

    .line 68
    .line 69
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->getDiscountPriceAmountMicros()J

    .line 70
    .line 71
    .line 72
    move-result-wide v4

    .line 73
    :cond_4
    long-to-float v3, v4

    .line 74
    div-float/2addr v3, v2

    .line 75
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscount()Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_5

    .line 80
    .line 81
    move v1, v3

    .line 82
    :cond_5
    const/4 v3, 0x0

    .line 83
    cmpg-float v3, v1, v3

    .line 84
    .line 85
    if-gtz v3, :cond_6

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_6
    move v0, v1

    .line 89
    :goto_3
    if-eqz v2, :cond_7

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getDiscountPriceText()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    goto :goto_4

    .line 96
    :cond_7
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getOriginPriceText()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    :goto_4
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-static {p1, p2, p0, v0, v1}, Lqf/h;->i(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/Float;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method private static final i(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/Float;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            ">;",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            "Ljava/lang/Float;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    if-eqz p3, :cond_1

    .line 2
    .line 3
    iget-object p4, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 4
    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result p4

    .line 11
    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    check-cast v0, Ljava/lang/Number;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    cmpg-float p4, p4, v0

    .line 23
    .line 24
    if-gez p4, :cond_1

    .line 25
    .line 26
    :cond_0
    iput-object p3, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 27
    .line 28
    iput-object p2, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method private static final k(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Z
    .locals 2

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    const/4 v0, 0x5

    .line 18
    if-ne p0, v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :cond_1
    :goto_0
    return v1
.end method

.method private static final l(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Ljava/lang/Iterable;
    .locals 2

    .line 1
    const-string/jumbo v0, "sku"

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getProductExtendList()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    check-cast v0, Ljava/lang/Iterable;

    .line 14
    .line 15
    new-instance p0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getDiscountPercent()Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscount()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    invoke-static {p0}, Ljk/u;->d(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const/4 p0, 0x0

    .line 62
    :goto_1
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->r(Ljava/lang/Object;)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    :cond_3
    check-cast p0, Ljava/lang/Iterable;

    .line 67
    .line 68
    return-object p0
.end method


# virtual methods
.method public final c(Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string/jumbo v0, "subList"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, ""

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_0
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 17
    .line 18
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 22
    .line 23
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p1, Ljava/lang/Iterable;

    .line 29
    .line 30
    new-instance v3, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_3

    .line 44
    .line 45
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    move-object v5, v4

    .line 50
    check-cast v5, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 51
    .line 52
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    const/4 v7, 0x1

    .line 57
    if-eq v6, v7, :cond_2

    .line 58
    .line 59
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    const/4 v6, 0x5

    .line 64
    if-ne v5, v6, :cond_1

    .line 65
    .line 66
    :cond_2
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_c

    .line 79
    .line 80
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    check-cast v3, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 85
    .line 86
    sget-object v4, Lae/a;->a:Lae/a;

    .line 87
    .line 88
    invoke-virtual {v4}, Lae/a;->d()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    const-string v5, "huawei"

    .line 93
    .line 94
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-eqz v4, :cond_5

    .line 99
    .line 100
    invoke-static {v3, v0, v2}, Lqf/h;->d(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_5
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getProductExtendList()Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    check-cast v4, Ljava/util/Collection;

    .line 109
    .line 110
    if-eqz v4, :cond_b

    .line 111
    .line 112
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-eqz v4, :cond_6

    .line 117
    .line 118
    goto :goto_6

    .line 119
    :cond_6
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getProductExtendList()Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    if-eqz v4, :cond_4

    .line 124
    .line 125
    check-cast v4, Ljava/lang/Iterable;

    .line 126
    .line 127
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    if-eqz v5, :cond_4

    .line 136
    .line 137
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    check-cast v5, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 142
    .line 143
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getPayType()Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    sget-object v7, Lqf/e;->a:Lqf/e;

    .line 148
    .line 149
    invoke-virtual {v7}, Lqf/e;->a()I

    .line 150
    .line 151
    .line 152
    move-result v7

    .line 153
    if-nez v6, :cond_7

    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_7
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 157
    .line 158
    .line 159
    move-result v6

    .line 160
    if-ne v6, v7, :cond_8

    .line 161
    .line 162
    invoke-static {v3, v0, v2}, Lqf/h;->d(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 163
    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_8
    :goto_3
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->isFirstBuy()Ljava/lang/Boolean;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 171
    .line 172
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v6

    .line 176
    if-eqz v6, :cond_9

    .line 177
    .line 178
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getFirstAmount()Ljava/lang/Float;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    goto :goto_4

    .line 183
    :cond_9
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getPayAmount()Ljava/lang/Float;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    :goto_4
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->isFirstBuy()Ljava/lang/Boolean;

    .line 188
    .line 189
    .line 190
    move-result-object v8

    .line 191
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v7

    .line 195
    if-eqz v7, :cond_a

    .line 196
    .line 197
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getDiscountPriceText()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    goto :goto_5

    .line 202
    :cond_a
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getOriginPriceText()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    :goto_5
    invoke-static {v0, v2, v6, v5}, Lqf/h;->e(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/Float;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_b
    :goto_6
    invoke-static {v3, v0, v2}, Lqf/h;->d(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 211
    .line 212
    .line 213
    goto/16 :goto_1

    .line 214
    .line 215
    :cond_c
    iget-object p1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast p1, Ljava/lang/String;

    .line 218
    .line 219
    if-eqz p1, :cond_d

    .line 220
    .line 221
    invoke-static {p1}, Ljk/v;->q(Ljava/lang/String;)Lkotlin/Pair;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    goto :goto_7

    .line 226
    :cond_d
    const/4 p1, 0x0

    .line 227
    :goto_7
    if-eqz p1, :cond_e

    .line 228
    .line 229
    invoke-virtual {p1}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    check-cast p1, Ljava/lang/String;

    .line 234
    .line 235
    if-nez p1, :cond_f

    .line 236
    .line 237
    :cond_e
    const-string p1, "$"

    .line 238
    .line 239
    :cond_f
    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 240
    .line 241
    if-eqz v2, :cond_12

    .line 242
    .line 243
    check-cast v2, Ljava/lang/Float;

    .line 244
    .line 245
    const/4 v3, 0x0

    .line 246
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    if-eqz v2, :cond_10

    .line 251
    .line 252
    goto :goto_8

    .line 253
    :cond_10
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 254
    .line 255
    check-cast v0, Ljava/lang/Float;

    .line 256
    .line 257
    if-eqz v0, :cond_11

    .line 258
    .line 259
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 260
    .line 261
    .line 262
    move-result v3

    .line 263
    :cond_11
    const/4 v0, 0x7

    .line 264
    int-to-float v0, v0

    .line 265
    div-float/2addr v3, v0

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-static {v3}, Ljk/h;->a(F)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    return-object p1

    .line 286
    :cond_12
    :goto_8
    return-object v1
.end method

.method public final f(Ljava/util/List;)Lcom/startshorts/androidplayer/bean/subs/SubsSku;
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            ">;)",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string/jumbo v0, "subList"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    check-cast p1, Ljava/lang/Iterable;

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    :goto_0
    move-object p1, v0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move-object v1, v0

    .line 34
    check-cast v1, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 35
    .line 36
    invoke-static {v1}, Ljk/u;->a(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    move-object v3, v2

    .line 45
    check-cast v3, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 46
    .line 47
    invoke-static {v3}, Ljk/u;->a(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-ge v1, v3, :cond_3

    .line 52
    .line 53
    move-object v0, v2

    .line 54
    move v1, v3

    .line 55
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-nez v2, :cond_2

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :goto_1
    check-cast p1, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 63
    .line 64
    return-object p1
.end method

.method public final g(Ljava/util/List;)Lcom/startshorts/androidplayer/bean/subs/SubsSku;
    .locals 9
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            ">;)",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string/jumbo v0, "subList"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return-object v1

    .line 15
    :cond_0
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 16
    .line 17
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 21
    .line 22
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 23
    .line 24
    .line 25
    check-cast p1, Ljava/lang/Iterable;

    .line 26
    .line 27
    new-instance v3, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_3

    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    move-object v5, v4

    .line 47
    check-cast v5, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 48
    .line 49
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    const/4 v7, 0x1

    .line 54
    if-eq v6, v7, :cond_2

    .line 55
    .line 56
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    const/4 v6, 0x5

    .line 61
    if-ne v5, v6, :cond_1

    .line 62
    .line 63
    :cond_2
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-eqz v3, :cond_c

    .line 76
    .line 77
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    check-cast v3, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 82
    .line 83
    sget-object v4, Lae/a;->a:Lae/a;

    .line 84
    .line 85
    invoke-virtual {v4}, Lae/a;->d()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    const-string v5, "huawei"

    .line 90
    .line 91
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-eqz v4, :cond_5

    .line 96
    .line 97
    invoke-static {v3, v2, v0}, Lqf/h;->h(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_5
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getProductExtendList()Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    check-cast v4, Ljava/util/Collection;

    .line 106
    .line 107
    if-eqz v4, :cond_b

    .line 108
    .line 109
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    if-eqz v4, :cond_6

    .line 114
    .line 115
    goto :goto_6

    .line 116
    :cond_6
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getProductExtendList()Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    if-eqz v4, :cond_4

    .line 121
    .line 122
    check-cast v4, Ljava/lang/Iterable;

    .line 123
    .line 124
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    if-eqz v5, :cond_4

    .line 133
    .line 134
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    check-cast v5, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 139
    .line 140
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getPayType()Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    sget-object v7, Lqf/e;->a:Lqf/e;

    .line 145
    .line 146
    invoke-virtual {v7}, Lqf/e;->a()I

    .line 147
    .line 148
    .line 149
    move-result v7

    .line 150
    if-nez v6, :cond_7

    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_7
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    if-ne v6, v7, :cond_8

    .line 158
    .line 159
    invoke-static {v3, v2, v0}, Lqf/h;->h(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 160
    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_8
    :goto_3
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->isFirstBuy()Ljava/lang/Boolean;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 168
    .line 169
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v6

    .line 173
    if-eqz v6, :cond_9

    .line 174
    .line 175
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getFirstAmount()Ljava/lang/Float;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    goto :goto_4

    .line 180
    :cond_9
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getPayAmount()Ljava/lang/Float;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    :goto_4
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->isFirstBuy()Ljava/lang/Boolean;

    .line 185
    .line 186
    .line 187
    move-result-object v8

    .line 188
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v7

    .line 192
    if-eqz v7, :cond_a

    .line 193
    .line 194
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getDiscountPriceText()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    goto :goto_5

    .line 199
    :cond_a
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getOriginPriceText()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    :goto_5
    invoke-static {v2, v0, v3, v6, v5}, Lqf/h;->i(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/Float;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_b
    :goto_6
    invoke-static {v3, v2, v0}, Lqf/h;->h(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 208
    .line 209
    .line 210
    goto/16 :goto_1

    .line 211
    .line 212
    :cond_c
    iget-object p1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 213
    .line 214
    if-eqz p1, :cond_e

    .line 215
    .line 216
    check-cast p1, Ljava/lang/Float;

    .line 217
    .line 218
    const/4 v2, 0x0

    .line 219
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    if-eqz p1, :cond_d

    .line 224
    .line 225
    goto :goto_7

    .line 226
    :cond_d
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast p1, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 229
    .line 230
    return-object p1

    .line 231
    :cond_e
    :goto_7
    return-object v1
.end method

.method public final j(Ljava/util/List;)I
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            ">;)I"
        }
    .end annotation

    .line 1
    const-string/jumbo v0, "subList"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    .line 16
    .line 17
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->e0(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance v0, Lqf/f;

    .line 22
    .line 23
    invoke-direct {v0}, Lqf/f;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v0}, Lkotlin/sequences/j;->t(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    new-instance v0, Lqf/g;

    .line 31
    .line 32
    invoke-direct {v0}, Lqf/g;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-static {p1, v0}, Lkotlin/sequences/j;->z(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Lkotlin/sequences/j;->H(Lkotlin/sequences/Sequence;)Ljava/lang/Comparable;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Ljava/lang/Integer;

    .line 44
    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    :cond_1
    return v1
.end method

.method public final m(Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;)Z
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getPayType()Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget-object v0, Lqf/e;->a:Lqf/e;

    .line 8
    .line 9
    invoke-virtual {v0}, Lqf/e;->a()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eq p1, v0, :cond_1

    .line 21
    .line 22
    :goto_0
    const/4 p1, 0x1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const/4 p1, 0x0

    .line 25
    :goto_1
    return p1
.end method

.method public final n(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)Z
    .locals 3
    .param p1    # Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lae/a;->a:Lae/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lae/a;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    if-nez p1, :cond_1

    .line 12
    .line 13
    return v1

    .line 14
    :cond_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getProductExtendList()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_5

    .line 19
    .line 20
    check-cast p1, Ljava/lang/Iterable;

    .line 21
    .line 22
    instance-of v0, p1, Ljava/util/Collection;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    move-object v0, p1

    .line 27
    check-cast v0, Ljava/util/Collection;

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_5

    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getPayType()Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sget-object v2, Lqf/e;->a:Lqf/e;

    .line 57
    .line 58
    invoke-virtual {v2}, Lqf/e;->a()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-nez v0, :cond_4

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eq v0, v2, :cond_3

    .line 70
    .line 71
    :goto_0
    const/4 v1, 0x1

    .line 72
    :cond_5
    :goto_1
    return v1
.end method

.method public final o(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Z
    .locals 3
    .param p1    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lae/a;->a:Lae/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lae/a;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    if-nez p1, :cond_1

    .line 12
    .line 13
    return v1

    .line 14
    :cond_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getProductExtendList()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_5

    .line 19
    .line 20
    check-cast p1, Ljava/lang/Iterable;

    .line 21
    .line 22
    instance-of v0, p1, Ljava/util/Collection;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    move-object v0, p1

    .line 27
    check-cast v0, Ljava/util/Collection;

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_5

    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getPayType()Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sget-object v2, Lqf/e;->a:Lqf/e;

    .line 57
    .line 58
    invoke-virtual {v2}, Lqf/e;->a()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-nez v0, :cond_4

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eq v0, v2, :cond_3

    .line 70
    .line 71
    :goto_0
    const/4 v1, 0x1

    .line 72
    :cond_5
    :goto_1
    return v1
.end method

.method public final p(Ljava/util/List;Ljava/util/List;)Z
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/startshorts/androidplayer/bean/purchase/CoinSku;",
            ">;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lae/a;->a:Lae/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lae/a;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    move-object v0, p1

    .line 12
    check-cast v0, Ljava/util/Collection;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    :cond_1
    move-object v0, p2

    .line 23
    check-cast v0, Ljava/util/Collection;

    .line 24
    .line 25
    if-eqz v0, :cond_10

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    goto/16 :goto_8

    .line 34
    .line 35
    :cond_2
    const/4 v0, 0x1

    .line 36
    if-eqz p1, :cond_8

    .line 37
    .line 38
    check-cast p1, Ljava/lang/Iterable;

    .line 39
    .line 40
    instance-of v2, p1, Ljava/util/Collection;

    .line 41
    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    move-object v2, p1

    .line 45
    check-cast v2, Ljava/util/Collection;

    .line 46
    .line 47
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_3

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    :cond_4
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_8

    .line 63
    .line 64
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getProductExtendList()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    if-eqz v2, :cond_4

    .line 75
    .line 76
    check-cast v2, Ljava/lang/Iterable;

    .line 77
    .line 78
    instance-of v3, v2, Ljava/util/Collection;

    .line 79
    .line 80
    if-eqz v3, :cond_5

    .line 81
    .line 82
    move-object v3, v2

    .line 83
    check-cast v3, Ljava/util/Collection;

    .line 84
    .line 85
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-eqz v3, :cond_5

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-eqz v3, :cond_4

    .line 101
    .line 102
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    check-cast v3, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 107
    .line 108
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getPayType()Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    sget-object v4, Lqf/e;->a:Lqf/e;

    .line 113
    .line 114
    invoke-virtual {v4}, Lqf/e;->a()I

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-nez v3, :cond_7

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_7
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-eq v3, v4, :cond_6

    .line 126
    .line 127
    :goto_1
    move p1, v0

    .line 128
    goto :goto_3

    .line 129
    :cond_8
    :goto_2
    move p1, v1

    .line 130
    :goto_3
    if-eqz p2, :cond_e

    .line 131
    .line 132
    check-cast p2, Ljava/lang/Iterable;

    .line 133
    .line 134
    instance-of v2, p2, Ljava/util/Collection;

    .line 135
    .line 136
    if-eqz v2, :cond_9

    .line 137
    .line 138
    move-object v2, p2

    .line 139
    check-cast v2, Ljava/util/Collection;

    .line 140
    .line 141
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    if-eqz v2, :cond_9

    .line 146
    .line 147
    goto :goto_6

    .line 148
    :cond_9
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    :cond_a
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-eqz v2, :cond_e

    .line 157
    .line 158
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    check-cast v2, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 163
    .line 164
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getProductExtendList()Ljava/util/List;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    if-eqz v2, :cond_a

    .line 169
    .line 170
    check-cast v2, Ljava/lang/Iterable;

    .line 171
    .line 172
    instance-of v3, v2, Ljava/util/Collection;

    .line 173
    .line 174
    if-eqz v3, :cond_b

    .line 175
    .line 176
    move-object v3, v2

    .line 177
    check-cast v3, Ljava/util/Collection;

    .line 178
    .line 179
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    if-eqz v3, :cond_b

    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_b
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    if-eqz v3, :cond_a

    .line 195
    .line 196
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    check-cast v3, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 201
    .line 202
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getPayType()Ljava/lang/Integer;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    sget-object v4, Lqf/e;->a:Lqf/e;

    .line 207
    .line 208
    invoke-virtual {v4}, Lqf/e;->a()I

    .line 209
    .line 210
    .line 211
    move-result v4

    .line 212
    if-nez v3, :cond_d

    .line 213
    .line 214
    goto :goto_5

    .line 215
    :cond_d
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    if-eq v3, v4, :cond_c

    .line 220
    .line 221
    :goto_5
    move p2, v0

    .line 222
    goto :goto_7

    .line 223
    :cond_e
    :goto_6
    move p2, v1

    .line 224
    :goto_7
    if-nez p1, :cond_f

    .line 225
    .line 226
    if-eqz p2, :cond_10

    .line 227
    .line 228
    :cond_f
    move v1, v0

    .line 229
    :cond_10
    :goto_8
    return v1
.end method
