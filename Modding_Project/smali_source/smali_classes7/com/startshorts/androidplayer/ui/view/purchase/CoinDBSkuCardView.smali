.class public final Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "CoinDBSkuCardView.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/ui/view/purchase/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView$a;,
        Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final j:Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

.field private b:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private h:J

.field private i:Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView$b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->j:Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p1, -0x1

    .line 5
    iput-wide p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->h:J

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic q(Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->w(Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic r(Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->x(Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final t()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->c:Landroid/widget/TextView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "mCoinSku"

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->a:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 9
    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    move-object v3, v1

    .line 16
    :cond_0
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getCoins()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->a:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    move-object v0, v1

    .line 35
    :cond_2
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuType()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/4 v3, 0x7

    .line 40
    if-ne v0, v3, :cond_5

    .line 41
    .line 42
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->a:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 43
    .line 44
    if-nez v0, :cond_3

    .line 45
    .line 46
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    move-object v0, v1

    .line 50
    :cond_3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getKeepGiveCoins()Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-nez v0, :cond_4

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_9

    .line 62
    .line 63
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->a:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 64
    .line 65
    if-nez v0, :cond_6

    .line 66
    .line 67
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    move-object v0, v1

    .line 71
    :cond_6
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuType()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eq v0, v3, :cond_a

    .line 76
    .line 77
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->a:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 78
    .line 79
    if-nez v0, :cond_7

    .line 80
    .line 81
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    move-object v0, v1

    .line 85
    :cond_7
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getProductGiveCoins()Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    if-nez v0, :cond_8

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-nez v0, :cond_a

    .line 97
    .line 98
    :cond_9
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->d:Landroid/widget/TextView;

    .line 99
    .line 100
    if-eqz v0, :cond_10

    .line 101
    .line 102
    const/4 v3, 0x4

    .line 103
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 104
    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_a
    :goto_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->a:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 108
    .line 109
    if-nez v0, :cond_b

    .line 110
    .line 111
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    move-object v0, v1

    .line 115
    :cond_b
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuType()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    const/16 v4, 0x2b

    .line 120
    .line 121
    if-ne v0, v3, :cond_d

    .line 122
    .line 123
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->d:Landroid/widget/TextView;

    .line 124
    .line 125
    if-eqz v0, :cond_f

    .line 126
    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->a:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 136
    .line 137
    if-nez v4, :cond_c

    .line 138
    .line 139
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    move-object v4, v1

    .line 143
    :cond_c
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getKeepGiveCoins()Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_d
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->d:Landroid/widget/TextView;

    .line 159
    .line 160
    if-eqz v0, :cond_f

    .line 161
    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->a:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 171
    .line 172
    if-nez v4, :cond_e

    .line 173
    .line 174
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    move-object v4, v1

    .line 178
    :cond_e
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getProductGiveCoins()Ljava/lang/Integer;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    .line 191
    .line 192
    :cond_f
    :goto_2
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->d:Landroid/widget/TextView;

    .line 193
    .line 194
    if-eqz v0, :cond_10

    .line 195
    .line 196
    const/4 v3, 0x0

    .line 197
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 198
    .line 199
    .line 200
    :cond_10
    :goto_3
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->e:Landroid/widget/TextView;

    .line 201
    .line 202
    if-eqz v0, :cond_14

    .line 203
    .line 204
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->a:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 205
    .line 206
    if-nez v3, :cond_11

    .line 207
    .line 208
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    move-object v3, v1

    .line 212
    :cond_11
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getPriceText()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    if-eqz v3, :cond_12

    .line 217
    .line 218
    goto :goto_5

    .line 219
    :cond_12
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->a:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 220
    .line 221
    if-nez v3, :cond_13

    .line 222
    .line 223
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    goto :goto_4

    .line 227
    :cond_13
    move-object v1, v3

    .line 228
    :goto_4
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getOriginPriceText()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    :goto_5
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    .line 234
    .line 235
    :cond_14
    return-void
.end method

.method private static final w(Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;I)Lkotlin/Unit;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 7
    .line 8
    int-to-long v2, p1

    .line 9
    const/4 p1, 0x1

    .line 10
    invoke-virtual {v1, v2, v3, p1}, Lcom/startshorts/androidplayer/utils/TimeUtil;->c(JZ)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->a:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    const-string v2, "mCoinSku"

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    move-object p1, v1

    .line 28
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->isSubscriptValid()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->a:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 35
    .line 36
    if-nez p1, :cond_1

    .line 37
    .line 38
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move-object v1, p1

    .line 43
    :goto_0
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSubscript()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    const-string p1, ""

    .line 49
    .line 50
    :goto_1
    if-eqz p1, :cond_4

    .line 51
    .line 52
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_3

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    const-string v1, " | "

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->f:Landroid/widget/TextView;

    .line 68
    .line 69
    if-eqz p0, :cond_5

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    :cond_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 79
    .line 80
    return-object p0
.end method

.method private static final x(Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->u()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->i:Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView$b;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-interface {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView$b;->onExpired()V

    .line 9
    .line 10
    .line 11
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method


# virtual methods
.method public final getMListener()Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView$b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->i:Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public i(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->a:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "mCoinSku"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->setSelect(Z)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/startshorts/androidplayer/R$id;->bg_view:I

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->b:Landroid/view/View;

    .line 11
    .line 12
    sget v0, Lcom/startshorts/androidplayer/R$id;->coin_tv:I

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/widget/TextView;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->c:Landroid/widget/TextView;

    .line 21
    .line 22
    sget v0, Lcom/startshorts/androidplayer/R$id;->bonus_tv:I

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/widget/TextView;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->d:Landroid/widget/TextView;

    .line 31
    .line 32
    sget v0, Lcom/startshorts/androidplayer/R$id;->price_tv:I

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/widget/TextView;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->e:Landroid/widget/TextView;

    .line 41
    .line 42
    sget v0, Lcom/startshorts/androidplayer/R$id;->countdown_label_right_tv:I

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Landroid/widget/TextView;

    .line 49
    .line 50
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->f:Landroid/widget/TextView;

    .line 51
    .line 52
    return-void
.end method

.method public final s()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->g:Lkotlinx/coroutines/r;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 13
    .line 14
    const-string v2, "CoinDBSkuCardView"

    .line 15
    .line 16
    const-string v3, "cancelCountDownJob"

    .line 17
    .line 18
    invoke-virtual {v0, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->g:Lkotlinx/coroutines/r;

    .line 22
    .line 23
    return-void
.end method

.method public final setListener(Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView$b;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->i:Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView$b;

    .line 7
    .line 8
    return-void
.end method

.method public final setMListener(Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView$b;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->i:Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView$b;

    .line 2
    .line 3
    return-void
.end method

.method public final setSelect(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->b:Landroid/view/View;

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->bg_coin_db_sku_card_selected:I

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->b:Landroid/view/View;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->bg_coin_db_sku_card:I

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    return-void
.end method

.method public final setSku(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "coinSku"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->a:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->t()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final u()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->a:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "mCoinSku"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->isSubscriptValid()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->f:Landroid/widget/TextView;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->a:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 23
    .line 24
    if-nez v3, :cond_1

    .line 25
    .line 26
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move-object v1, v3

    .line 31
    :goto_0
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSubscript()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->f:Landroid/widget/TextView;

    .line 39
    .line 40
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_3
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->f:Landroid/widget/TextView;

    .line 45
    .line 46
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 47
    .line 48
    .line 49
    :goto_1
    return-void
.end method

.method public final v()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->s()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-wide v2, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->h:J

    .line 11
    .line 12
    const-wide/16 v4, -0x1

    .line 13
    .line 14
    cmp-long v4, v2, v4

    .line 15
    .line 16
    const/16 v5, 0x3e8

    .line 17
    .line 18
    if-nez v4, :cond_1

    .line 19
    .line 20
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->a:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 21
    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    const-string v2, "mCoinSku"

    .line 25
    .line 26
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    :cond_0
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getRetentionSeconds()J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    int-to-long v4, v5

    .line 35
    div-long/2addr v0, v4

    .line 36
    add-long/2addr v0, v2

    .line 37
    iput-wide v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->h:J

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    int-to-long v4, v5

    .line 41
    div-long/2addr v0, v4

    .line 42
    sub-long/2addr v2, v0

    .line 43
    :goto_0
    const-wide/16 v0, 0x0

    .line 44
    .line 45
    cmp-long v0, v2, v0

    .line 46
    .line 47
    if-gtz v0, :cond_2

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->u()V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->f:Landroid/widget/TextView;

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 61
    .line 62
    long-to-int v1, v2

    .line 63
    new-instance v2, Lcom/startshorts/androidplayer/ui/view/purchase/c;

    .line 64
    .line 65
    invoke-direct {v2, p0}, Lcom/startshorts/androidplayer/ui/view/purchase/c;-><init>(Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;)V

    .line 66
    .line 67
    .line 68
    new-instance v3, Lcom/startshorts/androidplayer/ui/view/purchase/d;

    .line 69
    .line 70
    invoke-direct {v3, p0}, Lcom/startshorts/androidplayer/ui/view/purchase/d;-><init>(Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1, v2, v3}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->d(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/r;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinDBSkuCardView;->g:Lkotlinx/coroutines/r;

    .line 78
    .line 79
    :goto_1
    return-void
.end method
