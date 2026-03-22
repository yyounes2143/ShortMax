.class public final Lcom/moloco/sdk/internal/ortb/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSubstituteAuctionPriceMacros.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubstituteAuctionPriceMacros.kt\ncom/moloco/sdk/internal/ortb/SubstituteAuctionPriceMacrosKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,40:1\n1557#2:41\n1628#2,2:42\n1557#2:44\n1628#2,3:45\n1630#2:48\n*S KotlinDebug\n*F\n+ 1 SubstituteAuctionPriceMacros.kt\ncom/moloco/sdk/internal/ortb/SubstituteAuctionPriceMacrosKt\n*L\n14#1:41\n14#1:42,2\n16#1:44\n16#1:45,3\n14#1:48\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lkotlin/text/Regex;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlin/text/Regex;

    .line 2
    .line 3
    const-string v1, "\\$\\{AUCTION_PRICE\\}"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/moloco/sdk/internal/ortb/e;->a:Lkotlin/text/Regex;

    .line 9
    .line 10
    return-void
.end method

.method public static final a(Lcom/moloco/sdk/internal/ortb/model/e;)Lcom/moloco/sdk/internal/ortb/model/e;
    .locals 9
    .param p0    # Lcom/moloco/sdk/internal/ortb/model/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/ortb/model/e;->c()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    const/16 v1, 0xa

    .line 13
    .line 14
    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/moloco/sdk/internal/ortb/model/s;

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/moloco/sdk/internal/ortb/model/s;->c()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    new-instance v3, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_1

    .line 59
    .line 60
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    check-cast v4, Lcom/moloco/sdk/internal/ortb/model/c;

    .line 65
    .line 66
    invoke-virtual {v4}, Lcom/moloco/sdk/internal/ortb/model/c;->e()F

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    invoke-virtual {v4}, Lcom/moloco/sdk/internal/ortb/model/c;->a()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    invoke-static {v6, v7}, Lcom/moloco/sdk/internal/ortb/e;->b(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-virtual {v4}, Lcom/moloco/sdk/internal/ortb/model/c;->c()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    if-eqz v7, :cond_0

    .line 87
    .line 88
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    invoke-static {v7, v8}, Lcom/moloco/sdk/internal/ortb/e;->b(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    goto :goto_2

    .line 97
    :cond_0
    const/4 v7, 0x0

    .line 98
    :goto_2
    invoke-virtual {v4}, Lcom/moloco/sdk/internal/ortb/model/c;->d()Lcom/moloco/sdk/internal/ortb/model/d;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    new-instance v8, Lcom/moloco/sdk/internal/ortb/model/c;

    .line 103
    .line 104
    invoke-direct {v8, v6, v5, v7, v4}, Lcom/moloco/sdk/internal/ortb/model/c;-><init>(Ljava/lang/String;FLjava/lang/String;Lcom/moloco/sdk/internal/ortb/model/d;)V

    .line 105
    .line 106
    .line 107
    invoke-interface {v3, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_1
    new-instance v2, Lcom/moloco/sdk/internal/ortb/model/s;

    .line 112
    .line 113
    invoke-direct {v2, v3}, Lcom/moloco/sdk/internal/ortb/model/s;-><init>(Ljava/util/List;)V

    .line 114
    .line 115
    .line 116
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_2
    new-instance p0, Lcom/moloco/sdk/internal/ortb/model/e;

    .line 121
    .line 122
    invoke-direct {p0, v0}, Lcom/moloco/sdk/internal/ortb/model/e;-><init>(Ljava/util/List;)V

    .line 123
    .line 124
    .line 125
    return-object p0
.end method

.method public static final b(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Float;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/moloco/sdk/internal/ortb/e;->a:Lkotlin/text/Regex;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Float;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    :cond_0
    const-string p1, ""

    .line 17
    .line 18
    :cond_1
    invoke-virtual {v0, p0, p1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
