.class public final Ljk/u;
.super Ljava/lang/Object;
.source "SkuExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSkuExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SkuExt.kt\ncom/startshorts/androidplayer/utils/ext/SkuExtKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,269:1\n774#2:270\n865#2,2:271\n1611#2,9:273\n1863#2:282\n1864#2:284\n1620#2:285\n774#2:286\n865#2,2:287\n1971#2,14:289\n774#2:303\n865#2,2:304\n1971#2,14:306\n1611#2,9:320\n1863#2:329\n1864#2:331\n1620#2:332\n1#3:283\n1#3:330\n1#3:333\n*S KotlinDebug\n*F\n+ 1 SkuExt.kt\ncom/startshorts/androidplayer/utils/ext/SkuExtKt\n*L\n199#1:270\n199#1:271,2\n199#1:273,9\n199#1:282\n199#1:284\n199#1:285\n208#1:286\n208#1:287,2\n209#1:289,14\n216#1:303\n216#1:304,2\n217#1:306,14\n224#1:320,9\n224#1:329\n224#1:331\n224#1:332\n199#1:283\n224#1:330\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)I
    .locals 5
    .param p0    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getProductExtendList()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_5

    .line 11
    .line 12
    check-cast v0, Ljava/lang/Iterable;

    .line 13
    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    move-object v3, v2

    .line 34
    check-cast v3, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getPayType()Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    sget-object v4, Lqf/e;->a:Lqf/e;

    .line 41
    .line 42
    invoke-virtual {v4}, Lqf/e;->a()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-nez v3, :cond_1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eq v3, v4, :cond_0

    .line 54
    .line 55
    :goto_1
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_4

    .line 73
    .line 74
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    check-cast v2, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 79
    .line 80
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getDiscountPercent()Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    if-eqz v2, :cond_3

    .line 85
    .line 86
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_4
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->E0(Ljava/lang/Iterable;)Ljava/lang/Comparable;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Ljava/lang/Integer;

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_5
    const/4 v0, 0x0

    .line 98
    :goto_3
    invoke-static {p0}, Ljk/u;->d(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)I

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    filled-new-array {v0, p0}, [Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->s([Ljava/lang/Object;)Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    check-cast p0, Ljava/lang/Iterable;

    .line 115
    .line 116
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->E0(Ljava/lang/Iterable;)Ljava/lang/Comparable;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    check-cast p0, Ljava/lang/Integer;

    .line 121
    .line 122
    if-eqz p0, :cond_6

    .line 123
    .line 124
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 125
    .line 126
    .line 127
    move-result p0

    .line 128
    goto :goto_4

    .line 129
    :cond_6
    const/4 p0, 0x0

    .line 130
    :goto_4
    return p0
.end method

.method public static final b(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;
    .locals 5
    .param p0    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getProductExtendList()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/4 v0, 0x0

    .line 11
    if-eqz p0, :cond_9

    .line 12
    .line 13
    check-cast p0, Ljava/lang/Iterable;

    .line 14
    .line 15
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    move-object v3, v2

    .line 35
    check-cast v3, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getPayType()Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    sget-object v4, Lqf/e;->a:Lqf/e;

    .line 42
    .line 43
    invoke-virtual {v4}, Lqf/e;->a()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-nez v3, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eq v3, v4, :cond_0

    .line 55
    .line 56
    :goto_1
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-nez v1, :cond_3

    .line 69
    .line 70
    goto :goto_4

    .line 71
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-nez v1, :cond_4

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_4
    move-object v1, v0

    .line 83
    check-cast v1, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getDiscountPercent()Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    const/4 v2, 0x0

    .line 90
    if-eqz v1, :cond_5

    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    goto :goto_2

    .line 97
    :cond_5
    move v1, v2

    .line 98
    :cond_6
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    move-object v4, v3

    .line 103
    check-cast v4, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 104
    .line 105
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getDiscountPercent()Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    if-eqz v4, :cond_7

    .line 110
    .line 111
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    goto :goto_3

    .line 116
    :cond_7
    move v4, v2

    .line 117
    :goto_3
    if-ge v1, v4, :cond_8

    .line 118
    .line 119
    move-object v0, v3

    .line 120
    move v1, v4

    .line 121
    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-nez v3, :cond_6

    .line 126
    .line 127
    :goto_4
    check-cast v0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 128
    .line 129
    :cond_9
    return-object v0
.end method

.method public static final c(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)F
    .locals 7
    .param p0    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuDetails()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    instance-of v0, p0, Lzc/e;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    check-cast p0, Lzc/e;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object p0, v1

    .line 19
    :goto_0
    const/4 v0, 0x0

    .line 20
    if-eqz p0, :cond_4

    .line 21
    .line 22
    invoke-static {p0}, Ljk/k;->j(Lzc/e;)Lcom/startshorts/androidplayer/bean/subs/SubsPrice;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const-wide/16 v3, 0x0

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->getOriginPriceAmountMicros()J

    .line 31
    .line 32
    .line 33
    move-result-wide v5

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move-wide v5, v3

    .line 36
    :goto_1
    invoke-static {p0}, Ljk/k;->j(Lzc/e;)Lcom/startshorts/androidplayer/bean/subs/SubsPrice;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    if-eqz p0, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->getDiscountPriceAmountMicros()J

    .line 43
    .line 44
    .line 45
    move-result-wide v3

    .line 46
    :cond_2
    cmp-long p0, v5, v3

    .line 47
    .line 48
    if-lez p0, :cond_4

    .line 49
    .line 50
    sub-long/2addr v5, v3

    .line 51
    long-to-float p0, v5

    .line 52
    const v2, 0x49742400    # 1000000.0f

    .line 53
    .line 54
    .line 55
    div-float/2addr p0, v2

    .line 56
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    cmpl-float v2, v2, v0

    .line 65
    .line 66
    if-lez v2, :cond_3

    .line 67
    .line 68
    move-object v1, p0

    .line 69
    :cond_3
    if-eqz v1, :cond_4

    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    :cond_4
    return v0
.end method

.method public static final d(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)I
    .locals 9
    .param p0    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuDetails()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    instance-of v0, p0, Lzc/e;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    check-cast p0, Lzc/e;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    const/4 v0, 0x0

    .line 19
    if-eqz p0, :cond_3

    .line 20
    .line 21
    invoke-static {p0}, Ljk/k;->j(Lzc/e;)Lcom/startshorts/androidplayer/bean/subs/SubsPrice;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-wide/16 v2, 0x0

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->getOriginPriceAmountMicros()J

    .line 30
    .line 31
    .line 32
    move-result-wide v4

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move-wide v4, v2

    .line 35
    :goto_1
    invoke-static {p0}, Ljk/k;->j(Lzc/e;)Lcom/startshorts/androidplayer/bean/subs/SubsPrice;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    if-eqz p0, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->getDiscountPriceAmountMicros()J

    .line 42
    .line 43
    .line 44
    move-result-wide v6

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    move-wide v6, v2

    .line 47
    :goto_2
    sget-object p0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 48
    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v8, "originLong = "

    .line 55
    .line 56
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v8, " discountLong = "

    .line 63
    .line 64
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    const-string v8, "SkuExt"

    .line 75
    .line 76
    invoke-virtual {p0, v8, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    cmp-long p0, v4, v6

    .line 80
    .line 81
    if-lez p0, :cond_3

    .line 82
    .line 83
    cmp-long p0, v4, v2

    .line 84
    .line 85
    if-lez p0, :cond_3

    .line 86
    .line 87
    cmp-long p0, v6, v2

    .line 88
    .line 89
    if-lez p0, :cond_3

    .line 90
    .line 91
    sub-long v1, v4, v6

    .line 92
    .line 93
    long-to-float p0, v1

    .line 94
    long-to-float v1, v4

    .line 95
    div-float/2addr p0, v1

    .line 96
    const/16 v1, 0x64

    .line 97
    .line 98
    int-to-float v2, v1

    .line 99
    mul-float/2addr p0, v2

    .line 100
    invoke-static {p0}, Ljk/h;->b(F)I

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    invoke-static {p0, v0, v1}, Lkotlin/ranges/e;->n(III)I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    :cond_3
    return v0
.end method

.method public static final e(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)I
    .locals 4
    .param p0    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getPayAmount()F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getFirstAmount()F

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    cmpl-float v1, v0, p0

    .line 15
    .line 16
    const/16 v2, 0x64

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    if-lez v1, :cond_0

    .line 20
    .line 21
    cmpl-float v1, v0, v3

    .line 22
    .line 23
    if-lez v1, :cond_0

    .line 24
    .line 25
    cmpl-float v1, p0, v3

    .line 26
    .line 27
    if-lez v1, :cond_0

    .line 28
    .line 29
    sub-float p0, v0, p0

    .line 30
    .line 31
    div-float/2addr p0, v0

    .line 32
    int-to-float v0, v2

    .line 33
    mul-float v3, p0, v0

    .line 34
    .line 35
    :cond_0
    invoke-static {v3}, Ljk/h;->b(F)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-static {p0, v0, v2}, Lkotlin/ranges/e;->n(III)I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    return p0
.end method

.method public static final f(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lzc/e;)V
    .locals 5
    .param p0    # Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lzc/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "skuDetails"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setSkuDetails(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const/16 v1, 0x24

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getActivityPrice()F

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setPriceText(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getOriginalPrice()F

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setOriginPriceText(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lzc/e;->b()Lzc/e$a;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-nez p1, :cond_0

    .line 65
    .line 66
    return-void

    .line 67
    :cond_0
    invoke-static {p1}, Ljk/k;->b(Lzc/e$a;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sget-object v1, Lcom/startshorts/androidplayer/utils/BillingUtil;->a:Lcom/startshorts/androidplayer/utils/BillingUtil;

    .line 72
    .line 73
    invoke-virtual {p1}, Lzc/e$a;->b()J

    .line 74
    .line 75
    .line 76
    move-result-wide v2

    .line 77
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getDisRate()F

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/startshorts/androidplayer/utils/BillingUtil;->b(JFLjava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    sget-object v2, Lfk/n;->a:Lfk/n;

    .line 86
    .line 87
    invoke-virtual {p1}, Lzc/e$a;->c()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {v2, p1}, Lfk/n;->a(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-lez p1, :cond_1

    .line 99
    .line 100
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setPriceText(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setOriginPriceText(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :cond_1
    return-void
.end method

.method public static final g(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lzc/e;)V
    .locals 1
    .param p0    # Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lzc/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "skuDetails"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setSkuDetails(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Ljk/k;->c(Lzc/e;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setPriceText(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lzc/e;->b()Lzc/e$a;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    if-nez p0, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    sget-object p1, Lfk/n;->a:Lfk/n;

    .line 29
    .line 30
    invoke-virtual {p0}, Lzc/e$a;->c()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p1, p0}, Lfk/n;->a(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public static final h(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lzc/e;)V
    .locals 4
    .param p0    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lzc/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "skuDetails"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->setSkuDetails(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lzc/e;->a()Lcom/shorttv/aar/billing/bean/ProductDataType;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sget-object v1, Lcom/shorttv/aar/billing/bean/ProductDataType;->GOOGLE_PRODUCT:Lcom/shorttv/aar/billing/bean/ProductDataType;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    invoke-static {p1}, Ljk/k;->f(Lzc/e;)Lcom/startshorts/androidplayer/bean/subs/SubsFormattedPrice;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p1}, Lzc/e;->a()Lcom/shorttv/aar/billing/bean/ProductDataType;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sget-object v1, Lcom/shorttv/aar/billing/bean/ProductDataType;->GOOGLE_SKU:Lcom/shorttv/aar/billing/bean/ProductDataType;

    .line 33
    .line 34
    if-ne v0, v1, :cond_1

    .line 35
    .line 36
    invoke-static {p1}, Ljk/k;->g(Lzc/e;)Lcom/startshorts/androidplayer/bean/subs/SubsFormattedPrice;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p1}, Lzc/e;->a()Lcom/shorttv/aar/billing/bean/ProductDataType;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sget-object v1, Lcom/shorttv/aar/billing/bean/ProductDataType;->HUAWEI_SKU:Lcom/shorttv/aar/billing/bean/ProductDataType;

    .line 46
    .line 47
    if-ne v0, v1, :cond_2

    .line 48
    .line 49
    invoke-static {p1}, Ljk/k;->e(Lzc/e;)Lcom/startshorts/androidplayer/bean/subs/SubsFormattedPrice;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    move-object v0, v2

    .line 55
    :goto_0
    const/4 v1, 0x0

    .line 56
    if-nez v0, :cond_3

    .line 57
    .line 58
    invoke-virtual {p0, v1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->setEnableDiscountByGp(Z)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsFormattedPrice;->getOriginPrice()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {p0, v3}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->setOriginPriceText(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsFormattedPrice;->getDiscountPrice()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {p0, v3}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->setDiscountPriceText(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsFormattedPrice;->getDiscountPrice()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-lez v3, :cond_4

    .line 85
    .line 86
    const/4 v1, 0x1

    .line 87
    :cond_4
    invoke-virtual {p0, v1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->setEnableDiscountByGp(Z)V

    .line 88
    .line 89
    .line 90
    :goto_1
    sget-object v1, Lfk/n;->a:Lfk/n;

    .line 91
    .line 92
    if-eqz v0, :cond_5

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsFormattedPrice;->getCurrencyCode()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    :cond_5
    invoke-virtual {v1, v2}, Lfk/n;->a(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscount()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_6

    .line 106
    .line 107
    invoke-static {p1}, Ljk/k;->i(Lzc/e;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->setOfferToken(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_6
    invoke-static {p1}, Ljk/k;->h(Lzc/e;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->setOfferToken(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    :goto_2
    return-void
.end method

.method public static final i(Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;Ljava/util/List;)V
    .locals 3
    .param p0    # Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Ljava/util/Collection;

    .line 8
    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    instance-of v1, v0, Lzc/e;

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    check-cast v0, Lzc/e;

    .line 37
    .line 38
    invoke-virtual {v0}, Lzc/e;->d()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->getSkuId()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->isSubscription()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    invoke-static {p0, v0}, Ljk/u;->m(Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;Lzc/e;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    :goto_1
    return-void
.end method

.method public static final j(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Ljava/util/List;Z)V
    .locals 3
    .param p0    # Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/purchase/CoinSku;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Ljava/util/Collection;

    .line 8
    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_4

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    instance-of v1, v0, Lzc/e;

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    check-cast v0, Lzc/e;

    .line 37
    .line 38
    invoke-virtual {v0}, Lzc/e;->d()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGpSkuId()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuType()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    const/16 v1, 0x8

    .line 57
    .line 58
    if-eq p1, v1, :cond_3

    .line 59
    .line 60
    if-eqz p2, :cond_2

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    invoke-static {p0, v0}, Ljk/u;->g(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lzc/e;)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    :goto_0
    invoke-static {p0, v0}, Ljk/u;->f(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lzc/e;)V

    .line 68
    .line 69
    .line 70
    :cond_4
    :goto_1
    return-void
.end method

.method public static final k(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/util/List;)V
    .locals 3
    .param p0    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Ljava/util/Collection;

    .line 8
    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    instance-of v1, v0, Lzc/e;

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    check-cast v0, Lzc/e;

    .line 37
    .line 38
    invoke-virtual {v0}, Lzc/e;->d()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-static {p0, v0}, Ljk/u;->h(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lzc/e;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    :goto_1
    return-void
.end method

.method public static synthetic l(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Ljava/util/List;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-static {p0, p1, p2}, Ljk/u;->j(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Ljava/util/List;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final m(Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;Lzc/e;)V
    .locals 3
    .param p0    # Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lzc/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "skuDetails"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lzc/e;->a()Lcom/shorttv/aar/billing/bean/ProductDataType;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Lcom/shorttv/aar/billing/bean/ProductDataType;->GOOGLE_PRODUCT:Lcom/shorttv/aar/billing/bean/ProductDataType;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    invoke-static {p1}, Ljk/k;->f(Lzc/e;)Lcom/startshorts/androidplayer/bean/subs/SubsFormattedPrice;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p1}, Lzc/e;->a()Lcom/shorttv/aar/billing/bean/ProductDataType;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sget-object v1, Lcom/shorttv/aar/billing/bean/ProductDataType;->GOOGLE_SKU:Lcom/shorttv/aar/billing/bean/ProductDataType;

    .line 30
    .line 31
    if-ne v0, v1, :cond_1

    .line 32
    .line 33
    invoke-static {p1}, Ljk/k;->g(Lzc/e;)Lcom/startshorts/androidplayer/bean/subs/SubsFormattedPrice;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {p1}, Lzc/e;->a()Lcom/shorttv/aar/billing/bean/ProductDataType;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sget-object v1, Lcom/shorttv/aar/billing/bean/ProductDataType;->HUAWEI_SKU:Lcom/shorttv/aar/billing/bean/ProductDataType;

    .line 43
    .line 44
    if-ne v0, v1, :cond_2

    .line 45
    .line 46
    invoke-static {p1}, Ljk/k;->e(Lzc/e;)Lcom/startshorts/androidplayer/bean/subs/SubsFormattedPrice;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    move-object p1, v2

    .line 52
    :goto_0
    sget-object v0, Lfk/n;->a:Lfk/n;

    .line 53
    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsFormattedPrice;->getCurrencyCode()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    :cond_3
    invoke-virtual {v0, v2}, Lfk/n;->a(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const/4 v0, 0x0

    .line 64
    if-nez p1, :cond_4

    .line 65
    .line 66
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->setEnableDiscountByGp(Z)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_4
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsFormattedPrice;->getDiscountPrice()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-lez p1, :cond_5

    .line 79
    .line 80
    const/4 v0, 0x1

    .line 81
    :cond_5
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->setEnableDiscountByGp(Z)V

    .line 82
    .line 83
    .line 84
    :goto_1
    return-void
.end method
