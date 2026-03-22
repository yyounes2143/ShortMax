.class public final Lcom/startshorts/androidplayer/bean/search/RedeemCode$Companion;
.super Ljava/lang/Object;
.source "RedeemCode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/bean/search/RedeemCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRedeemCode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RedeemCode.kt\ncom/startshorts/androidplayer/bean/search/RedeemCode$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,91:1\n1863#2,2:92\n*S KotlinDebug\n*F\n+ 1 RedeemCode.kt\ncom/startshorts/androidplayer/bean/search/RedeemCode$Companion\n*L\n74#1:92,2\n*E\n"
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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/bean/search/RedeemCode$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEquityListStr(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/search/RedeemCodeEquity;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Ljava/util/Collection;

    .line 3
    .line 4
    if-eqz v0, :cond_7

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_4

    .line 13
    .line 14
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    check-cast p1, Ljava/lang/Iterable;

    .line 20
    .line 21
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->o0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Ljava/lang/Iterable;

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_6

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lcom/startshorts/androidplayer/bean/search/RedeemCodeEquity;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/search/RedeemCodeEquity;->getType()Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-nez v2, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    const/16 v3, 0xb

    .line 55
    .line 56
    if-ne v2, v3, :cond_3

    .line 57
    .line 58
    const-string v1, "coin"

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/search/RedeemCodeEquity;->getType()Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    if-nez v1, :cond_4

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    const/16 v2, 0xc

    .line 73
    .line 74
    if-ne v1, v2, :cond_5

    .line 75
    .line 76
    const-string v1, "bonus"

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_5
    :goto_2
    const-string v1, ""

    .line 80
    .line 81
    :goto_3
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-lez v2, :cond_1

    .line 86
    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const/16 v1, 0x5f

    .line 96
    .line 97
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    const-string/jumbo v0, "toString(...)"

    .line 113
    .line 114
    .line 115
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    const-string v0, "_"

    .line 119
    .line 120
    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->Q0(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    goto :goto_5

    .line 125
    :cond_7
    :goto_4
    const-string p1, "none"

    .line 126
    .line 127
    :goto_5
    return-object p1
.end method

.method public final getStatusStr(I)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const-string p1, ""

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    const-string p1, "not_support"

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :pswitch_1
    const-string p1, "received"

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :pswitch_2
    const-string p1, "removed"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :pswitch_3
    const-string p1, "expired"

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :pswitch_4
    const-string p1, "have_been_collected"

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :pswitch_5
    const-string p1, "ban"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :pswitch_6
    const-string/jumbo p1, "using"

    .line 26
    .line 27
    .line 28
    :goto_0
    return-object p1

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
