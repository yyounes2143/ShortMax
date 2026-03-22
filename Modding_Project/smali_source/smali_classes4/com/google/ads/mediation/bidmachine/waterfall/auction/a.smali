.class public final Lcom/google/ads/mediation/bidmachine/waterfall/auction/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/mediation/bidmachine/common/auction/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Llp/c;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 7

    .line 1
    const-string v0, "mediationAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "onSuccess"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "incorrectContent(...)"

    .line 12
    .line 13
    if-nez p2, :cond_1

    .line 14
    .line 15
    if-eqz p4, :cond_0

    .line 16
    .line 17
    const-string p1, "Auction result is null."

    .line 18
    .line 19
    invoke-static {p1}, Lfr/a;->h(Ljava/lang/String;)Lfr/a;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void

    .line 30
    :cond_1
    invoke-interface {p2}, Llp/c;->getDeal()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    const-string v2, ":"

    .line 37
    .line 38
    filled-new-array {v2}, [Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const/4 v5, 0x6

    .line 43
    const/4 v6, 0x0

    .line 44
    const/4 v3, 0x0

    .line 45
    const/4 v4, 0x0

    .line 46
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    const/4 v2, 0x1

    .line 53
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->t0(Ljava/util/List;I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Ljava/lang/String;

    .line 58
    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    invoke-static {v1}, Lcom/google/ads/mediation/bidmachine/common/f;->a(Ljava/lang/Object;)Ljava/lang/Double;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const/4 v1, 0x0

    .line 67
    :goto_0
    if-nez v1, :cond_4

    .line 68
    .line 69
    if-eqz p4, :cond_3

    .line 70
    .line 71
    const-string p1, "Deal price is null."

    .line 72
    .line 73
    invoke-static {p1}, Lfr/a;->h(Ljava/lang/String;)Lfr/a;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    :cond_3
    return-void

    .line 84
    :cond_4
    invoke-interface {p2}, Llp/c;->getPrice()D

    .line 85
    .line 86
    .line 87
    move-result-wide v2

    .line 88
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 89
    .line 90
    .line 91
    move-result-wide v0

    .line 92
    cmpg-double p2, v2, v0

    .line 93
    .line 94
    if-gez p2, :cond_6

    .line 95
    .line 96
    if-eqz p4, :cond_5

    .line 97
    .line 98
    const-string p1, "Ad price is lower than deal price."

    .line 99
    .line 100
    invoke-static {p1}, Lfr/a;->i(Ljava/lang/String;)Lfr/a;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    const-string p2, "internal(...)"

    .line 105
    .line 106
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    :cond_5
    return-void

    .line 113
    :cond_6
    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    return-void
.end method
