.class public final Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SubSkuCardView.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/ui/view/purchase/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final o:Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

.field private b:Z

.field private c:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private h:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private i:Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private j:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private k:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private l:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private m:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private n:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->o:Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView$a;

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

    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 4
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private static final A(ZILcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;I)Lkotlin/Unit;
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
    int-to-long v2, p3

    .line 9
    const/4 p3, 0x1

    .line 10
    invoke-virtual {v1, v2, v3, p3}, Lcom/startshorts/androidplayer/utils/TimeUtil;->c(JZ)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    sget-object p0, Lfk/u;->a:Lfk/u;

    .line 20
    .line 21
    sget p3, Lcom/startshorts/androidplayer/R$string;->discount_label_off:I

    .line 22
    .line 23
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0, p3, p1}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string p1, " | "

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object p0, p2, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->k:Landroid/widget/TextView;

    .line 44
    .line 45
    if-eqz p0, :cond_1

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 55
    .line 56
    return-object p0
.end method

.method private static final B(ZLcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;I)Lkotlin/Unit;
    .locals 2

    .line 1
    if-nez p0, :cond_1

    .line 2
    .line 3
    iget-object p0, p1, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->k:Landroid/widget/TextView;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object p0, p1, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->k:Landroid/widget/TextView;

    .line 11
    .line 12
    if-eqz p0, :cond_2

    .line 13
    .line 14
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 15
    .line 16
    sget v1, Lcom/startshorts/androidplayer/R$string;->discount_label_off:I

    .line 17
    .line 18
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {v0, v1, p2}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object p0, p1, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->k:Landroid/widget/TextView;

    .line 35
    .line 36
    if-eqz p0, :cond_2

    .line 37
    .line 38
    invoke-static {p0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    :goto_0
    iget-object p0, p1, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->d:Lkotlin/jvm/functions/Function0;

    .line 42
    .line 43
    if-eqz p0, :cond_3

    .line 44
    .line 45
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    return-object p0
.end method

.method private final C()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->x()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string v0, "mSubSku"

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->isHighlight()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_6

    .line 19
    .line 20
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->e:Landroid/view/View;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->bg_sub_sku_highlight_small:I

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->g:Landroid/view/View;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->bg_sub_sku_highlight_small_selected:I

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 36
    .line 37
    .line 38
    :cond_2
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->f:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    sget-object v1, Lkk/f;->a:Lkk/f;

    .line 43
    .line 44
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->getVipIconFrescoConfig()Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v1, v0, v2}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 49
    .line 50
    .line 51
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_sub_highlight_vip:I

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;->setActualImageResource(I)V

    .line 54
    .line 55
    .line 56
    :cond_3
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->h:Landroid/widget/TextView;

    .line 57
    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    sget v2, Lcom/startshorts/androidplayer/R$color;->template_subs_desc_sel:I

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    .line 72
    .line 73
    :cond_4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->i:Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;

    .line 74
    .line 75
    if-eqz v0, :cond_5

    .line 76
    .line 77
    const-string v1, "#BE6102"

    .line 78
    .line 79
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    const-string v2, "#652100"

    .line 84
    .line 85
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;->setColor(II)V

    .line 90
    .line 91
    .line 92
    :cond_5
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->j:Landroid/widget/TextView;

    .line 93
    .line 94
    if-eqz v0, :cond_c

    .line 95
    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    sget v2, Lcom/startshorts/androidplayer/R$color;->sub_sku_through_price:I

    .line 101
    .line 102
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->e:Landroid/view/View;

    .line 111
    .line 112
    if-eqz v0, :cond_7

    .line 113
    .line 114
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->bg_sub_sku_small:I

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 117
    .line 118
    .line 119
    :cond_7
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->g:Landroid/view/View;

    .line 120
    .line 121
    if-eqz v0, :cond_8

    .line 122
    .line 123
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->bg_sub_sku_small_selected:I

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 126
    .line 127
    .line 128
    :cond_8
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->f:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 129
    .line 130
    if-eqz v0, :cond_9

    .line 131
    .line 132
    sget-object v1, Lkk/f;->a:Lkk/f;

    .line 133
    .line 134
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->getVipIconFrescoConfig()Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v1, v0, v2}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 139
    .line 140
    .line 141
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_sub_not_highlight_vip:I

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;->setActualImageResource(I)V

    .line 144
    .line 145
    .line 146
    :cond_9
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->h:Landroid/widget/TextView;

    .line 147
    .line 148
    if-eqz v0, :cond_a

    .line 149
    .line 150
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    sget v2, Lcom/startshorts/androidplayer/R$color;->template_subs_desc_nor:I

    .line 155
    .line 156
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 161
    .line 162
    .line 163
    :cond_a
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->i:Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;

    .line 164
    .line 165
    if-eqz v0, :cond_b

    .line 166
    .line 167
    const-string v1, "#FFEACB"

    .line 168
    .line 169
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    const-string v2, "#F3AD63"

    .line 174
    .line 175
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;->setColor(II)V

    .line 180
    .line 181
    .line 182
    :cond_b
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->j:Landroid/widget/TextView;

    .line 183
    .line 184
    if-eqz v0, :cond_c

    .line 185
    .line 186
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    sget v2, Lcom/startshorts/androidplayer/R$color;->gray_20:I

    .line 191
    .line 192
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 197
    .line 198
    .line 199
    :cond_c
    :goto_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->w()V

    .line 200
    .line 201
    .line 202
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->v()V

    .line 203
    .line 204
    .line 205
    return-void
.end method

.method private final getVipIconFrescoConfig()Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;
    .locals 4

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/facebook/drawee/generic/RoundingParams;

    .line 11
    .line 12
    invoke-direct {v1}, Lcom/facebook/drawee/generic/RoundingParams;-><init>()V

    .line 13
    .line 14
    .line 15
    const/high16 v2, 0x41000000    # 8.0f

    .line 16
    .line 17
    invoke-static {v2}, Ljk/g;->b(F)F

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-virtual {v1, v3, v2, v3, v3}, Lcom/facebook/drawee/generic/RoundingParams;->p(FFFF)Lcom/facebook/drawee/generic/RoundingParams;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setRoundingParams(Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 27
    .line 28
    .line 29
    return-object v0
.end method

.method public static synthetic q(ZLcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->B(ZLcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic r(ZILcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->A(ZILcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final t(ILjava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "mSubSku"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuDetails()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    instance-of v2, v0, Lzc/e;

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    check-cast v0, Lzc/e;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move-object v0, v1

    .line 24
    :goto_0
    const-string v2, ""

    .line 25
    .line 26
    if-eqz v0, :cond_7

    .line 27
    .line 28
    invoke-static {v0}, Ljk/k;->j(Lzc/e;)Lcom/startshorts/androidplayer/bean/subs/SubsPrice;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_7

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->getOriginPriceAmountMicros()J

    .line 35
    .line 36
    .line 37
    move-result-wide v3

    .line 38
    long-to-float v0, v3

    .line 39
    const v3, 0x49742400    # 1000000.0f

    .line 40
    .line 41
    .line 42
    div-float/2addr v0, v3

    .line 43
    const/4 v3, 0x7

    .line 44
    const/4 v4, 0x1

    .line 45
    if-eq p1, v4, :cond_4

    .line 46
    .line 47
    const/4 v5, 0x2

    .line 48
    const/16 v6, 0x16d

    .line 49
    .line 50
    if-eq p1, v5, :cond_3

    .line 51
    .line 52
    const/4 v5, 0x4

    .line 53
    if-eq p1, v5, :cond_2

    .line 54
    .line 55
    const/4 v5, 0x5

    .line 56
    if-eq p1, v5, :cond_4

    .line 57
    .line 58
    const/4 v5, 0x6

    .line 59
    if-eq p1, v5, :cond_3

    .line 60
    .line 61
    if-eq p1, v3, :cond_2

    .line 62
    .line 63
    return-object v2

    .line 64
    :cond_2
    :goto_1
    int-to-float p1, v6

    .line 65
    :goto_2
    div-float/2addr v0, p1

    .line 66
    goto :goto_3

    .line 67
    :cond_3
    const/16 p1, 0xc

    .line 68
    .line 69
    int-to-float p1, p1

    .line 70
    mul-float/2addr v0, p1

    .line 71
    goto :goto_1

    .line 72
    :cond_4
    int-to-float p1, v3

    .line 73
    goto :goto_2

    .line 74
    :goto_3
    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 75
    .line 76
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 77
    .line 78
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const-string v2, "%.2f"

    .line 91
    .line 92
    invoke-static {p1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const-string v0, "format(...)"

    .line 97
    .line 98
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    if-eqz p2, :cond_5

    .line 102
    .line 103
    invoke-static {p2}, Ljk/v;->q(Ljava/lang/String;)Lkotlin/Pair;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    :cond_5
    if-eqz v1, :cond_6

    .line 108
    .line 109
    new-instance p2, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    sget v0, Lcom/startshorts/androidplayer/R$string;->template_unlock_dialog_day_price:I

    .line 135
    .line 136
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    const-string p2, "getString(...)"

    .line 145
    .line 146
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    return-object p1

    .line 150
    :cond_7
    return-object v2
.end method

.method private final u(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->formatRenewPrice()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    sget v0, Lcom/startshorts/androidplayer/R$string;->subs_type_view_new_style_desc:I

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v0, "getString(...)"

    .line 22
    .line 23
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p1, " \u00b7 "

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    sget v1, Lcom/startshorts/androidplayer/R$string;->subs_type_view_new_style_desc:I

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    return-object p1
.end method

.method private final v()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "mSubSku"

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
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscount()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->j:Landroid/widget/TextView;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

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
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getOriginPriceText()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->j:Landroid/widget/TextView;

    .line 39
    .line 40
    if-eqz v0, :cond_6

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    invoke-static {v0, v1}, Ljk/y;->j(Landroid/widget/TextView;Z)V

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_3
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 48
    .line 49
    if-nez v0, :cond_4

    .line 50
    .line 51
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    move-object v0, v1

    .line 55
    :cond_4
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 60
    .line 61
    if-nez v3, :cond_5

    .line 62
    .line 63
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_5
    move-object v1, v3

    .line 68
    :goto_1
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getOriginPriceText()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-direct {p0, v0, v1}, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->t(ILjava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->j:Landroid/widget/TextView;

    .line 77
    .line 78
    if-eqz v1, :cond_6

    .line 79
    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const/16 v3, 0x2248

    .line 86
    .line 87
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    .line 99
    .line 100
    :cond_6
    :goto_2
    return-void
.end method

.method private final w()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "mSubSku"

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
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getInSubscription()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget v1, Lcom/startshorts/androidplayer/R$string;->profile_subscription_view_subscribed:I

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_2

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    move-object v0, v1

    .line 37
    :cond_2
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscount()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 44
    .line 45
    if-nez v0, :cond_3

    .line 46
    .line 47
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    move-object v1, v0

    .line 52
    :goto_0
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getDiscountPriceText()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    goto :goto_2

    .line 57
    :cond_4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 58
    .line 59
    if-nez v0, :cond_5

    .line 60
    .line 61
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_5
    move-object v1, v0

    .line 66
    :goto_1
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getOriginPriceText()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    :goto_2
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->h:Landroid/widget/TextView;

    .line 71
    .line 72
    if-eqz v1, :cond_6

    .line 73
    .line 74
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    :cond_6
    return-void
.end method

.method private final x()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->i:Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    sget-object v1, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->Companion:Lcom/startshorts/androidplayer/bean/subs/SubsSku$Companion;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const-string v4, "mSubSku"

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    move-object v2, v3

    .line 18
    :cond_0
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku$Companion;->getCardName(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 30
    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move-object v3, v1

    .line 38
    :goto_0
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->isBigCard()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_2

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    invoke-static {v0, v1}, Landroidx/core/widget/TextViewCompat;->setAutoSizeTextTypeWithDefaults(Landroid/widget/TextView;I)V

    .line 46
    .line 47
    .line 48
    const/16 v2, 0xc

    .line 49
    .line 50
    const/4 v3, 0x2

    .line 51
    const/16 v4, 0x9

    .line 52
    .line 53
    invoke-static {v0, v4, v2, v1, v3}, Landroidx/core/widget/TextViewCompat;->setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V

    .line 54
    .line 55
    .line 56
    :cond_2
    return-void
.end method

.method private final z()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->x()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const-string v2, "mSubSku"

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    move-object v0, v1

    .line 15
    :cond_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->isHighlight()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_a

    .line 20
    .line 21
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->e:Landroid/view/View;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    sget v3, Lcom/startshorts/androidplayer/R$drawable;->bg_sub_sku_big_highlight:I

    .line 26
    .line 27
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->l:Landroid/widget/ImageView;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    sget v3, Lcom/startshorts/androidplayer/R$drawable;->ic_template_subs_diamond_sel:I

    .line 35
    .line 36
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 37
    .line 38
    .line 39
    :cond_2
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->g:Landroid/view/View;

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    sget v3, Lcom/startshorts/androidplayer/R$drawable;->bg_sub_big_card_selected:I

    .line 44
    .line 45
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 46
    .line 47
    .line 48
    :cond_3
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->f:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 49
    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    sget v3, Lcom/startshorts/androidplayer/R$drawable;->ic_subscribe_vip:I

    .line 53
    .line 54
    invoke-virtual {v0, v3}, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;->setActualImageResource(I)V

    .line 55
    .line 56
    .line 57
    :cond_4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->i:Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;

    .line 58
    .line 59
    if-eqz v0, :cond_5

    .line 60
    .line 61
    const-string v3, "#BE6102"

    .line 62
    .line 63
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    const-string v4, "#652100"

    .line 68
    .line 69
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    invoke-virtual {v0, v3, v4}, Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;->setColor(II)V

    .line 74
    .line 75
    .line 76
    :cond_5
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->h:Landroid/widget/TextView;

    .line 77
    .line 78
    if-eqz v0, :cond_6

    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    sget v4, Lcom/startshorts/androidplayer/R$color;->template_subs_desc_sel:I

    .line 85
    .line 86
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    .line 92
    .line 93
    :cond_6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->j:Landroid/widget/TextView;

    .line 94
    .line 95
    if-eqz v0, :cond_7

    .line 96
    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    sget v4, Lcom/startshorts/androidplayer/R$color;->template_subs_desc_sel:I

    .line 102
    .line 103
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    .line 109
    .line 110
    :cond_7
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->m:Landroid/widget/TextView;

    .line 111
    .line 112
    if-eqz v0, :cond_8

    .line 113
    .line 114
    sget v3, Lcom/startshorts/androidplayer/R$drawable;->bg_subs_template_desc_sel:I

    .line 115
    .line 116
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 117
    .line 118
    .line 119
    :cond_8
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->m:Landroid/widget/TextView;

    .line 120
    .line 121
    if-eqz v0, :cond_9

    .line 122
    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    sget v4, Lcom/startshorts/androidplayer/R$color;->template_subs_desc_sel:I

    .line 128
    .line 129
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    .line 135
    .line 136
    :cond_9
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->n:Landroid/widget/TextView;

    .line 137
    .line 138
    if-eqz v0, :cond_14

    .line 139
    .line 140
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    sget v4, Lcom/startshorts/androidplayer/R$color;->template_subs_renew_tip_sel:I

    .line 145
    .line 146
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    .line 152
    .line 153
    goto/16 :goto_0

    .line 154
    .line 155
    :cond_a
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->e:Landroid/view/View;

    .line 156
    .line 157
    if-eqz v0, :cond_b

    .line 158
    .line 159
    sget v3, Lcom/startshorts/androidplayer/R$drawable;->bg_sub_sku_big_not_highlight:I

    .line 160
    .line 161
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 162
    .line 163
    .line 164
    :cond_b
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->l:Landroid/widget/ImageView;

    .line 165
    .line 166
    if-eqz v0, :cond_c

    .line 167
    .line 168
    sget v3, Lcom/startshorts/androidplayer/R$drawable;->ic_template_subs_diamond_nor:I

    .line 169
    .line 170
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 171
    .line 172
    .line 173
    :cond_c
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->g:Landroid/view/View;

    .line 174
    .line 175
    if-eqz v0, :cond_d

    .line 176
    .line 177
    sget v3, Lcom/startshorts/androidplayer/R$drawable;->bg_sub_sku_small_selected:I

    .line 178
    .line 179
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 180
    .line 181
    .line 182
    :cond_d
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->f:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 183
    .line 184
    if-eqz v0, :cond_e

    .line 185
    .line 186
    sget v3, Lcom/startshorts/androidplayer/R$drawable;->ic_subscribe_vip_no:I

    .line 187
    .line 188
    invoke-virtual {v0, v3}, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;->setActualImageResource(I)V

    .line 189
    .line 190
    .line 191
    :cond_e
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->i:Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;

    .line 192
    .line 193
    if-eqz v0, :cond_f

    .line 194
    .line 195
    const-string v3, "#FFEACB"

    .line 196
    .line 197
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    const-string v4, "#F3AD63"

    .line 202
    .line 203
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    move-result v4

    .line 207
    invoke-virtual {v0, v3, v4}, Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;->setColor(II)V

    .line 208
    .line 209
    .line 210
    :cond_f
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->h:Landroid/widget/TextView;

    .line 211
    .line 212
    if-eqz v0, :cond_10

    .line 213
    .line 214
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    sget v4, Lcom/startshorts/androidplayer/R$color;->v_light:I

    .line 219
    .line 220
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 225
    .line 226
    .line 227
    :cond_10
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->j:Landroid/widget/TextView;

    .line 228
    .line 229
    if-eqz v0, :cond_11

    .line 230
    .line 231
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    sget v4, Lcom/startshorts/androidplayer/R$color;->v_light:I

    .line 236
    .line 237
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 242
    .line 243
    .line 244
    :cond_11
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->m:Landroid/widget/TextView;

    .line 245
    .line 246
    if-eqz v0, :cond_12

    .line 247
    .line 248
    sget v3, Lcom/startshorts/androidplayer/R$drawable;->bg_subs_template_desc_nor:I

    .line 249
    .line 250
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 251
    .line 252
    .line 253
    :cond_12
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->m:Landroid/widget/TextView;

    .line 254
    .line 255
    if-eqz v0, :cond_13

    .line 256
    .line 257
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    sget v4, Lcom/startshorts/androidplayer/R$color;->v_light:I

    .line 262
    .line 263
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    .line 264
    .line 265
    .line 266
    move-result v3

    .line 267
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 268
    .line 269
    .line 270
    :cond_13
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->n:Landroid/widget/TextView;

    .line 271
    .line 272
    if-eqz v0, :cond_14

    .line 273
    .line 274
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    sget v4, Lcom/startshorts/androidplayer/R$color;->template_subs_renew_tip_nor:I

    .line 279
    .line 280
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    .line 281
    .line 282
    .line 283
    move-result v3

    .line 284
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 285
    .line 286
    .line 287
    :cond_14
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 288
    .line 289
    if-nez v0, :cond_15

    .line 290
    .line 291
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    move-object v0, v1

    .line 295
    :cond_15
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscount()Z

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    const/4 v3, 0x2

    .line 300
    if-eqz v0, :cond_1e

    .line 301
    .line 302
    sget-object v0, Lqf/h;->a:Lqf/h;

    .line 303
    .line 304
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 305
    .line 306
    if-nez v4, :cond_16

    .line 307
    .line 308
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    move-object v4, v1

    .line 312
    :cond_16
    invoke-virtual {v0, v4}, Lqf/h;->o(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Z

    .line 313
    .line 314
    .line 315
    move-result v0

    .line 316
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 317
    .line 318
    if-nez v4, :cond_17

    .line 319
    .line 320
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    move-object v4, v1

    .line 324
    :cond_17
    invoke-static {v4}, Ljk/u;->d(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)I

    .line 325
    .line 326
    .line 327
    move-result v4

    .line 328
    if-le v4, v3, :cond_1b

    .line 329
    .line 330
    iget-object v5, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 331
    .line 332
    if-nez v5, :cond_18

    .line 333
    .line 334
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    move-object v5, v1

    .line 338
    :cond_18
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getExpireTime()J

    .line 339
    .line 340
    .line 341
    move-result-wide v5

    .line 342
    sget-object v7, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 343
    .line 344
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 345
    .line 346
    .line 347
    move-result-wide v7

    .line 348
    sub-long/2addr v5, v7

    .line 349
    const/16 v7, 0x3e8

    .line 350
    .line 351
    int-to-long v7, v7

    .line 352
    div-long/2addr v5, v7

    .line 353
    sget-object v7, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->a:Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;

    .line 354
    .line 355
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->f()Z

    .line 356
    .line 357
    .line 358
    move-result v7

    .line 359
    if-eqz v7, :cond_19

    .line 360
    .line 361
    const-wide/16 v7, 0x0

    .line 362
    .line 363
    cmp-long v7, v5, v7

    .line 364
    .line 365
    if-lez v7, :cond_19

    .line 366
    .line 367
    iget-object v7, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->k:Landroid/widget/TextView;

    .line 368
    .line 369
    invoke-static {v7}, Ljk/b0;->l(Landroid/view/View;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->s()V

    .line 373
    .line 374
    .line 375
    sget-object v7, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 376
    .line 377
    long-to-int v5, v5

    .line 378
    new-instance v6, Lcom/startshorts/androidplayer/ui/view/purchase/n;

    .line 379
    .line 380
    invoke-direct {v6, v0, v4, p0}, Lcom/startshorts/androidplayer/ui/view/purchase/n;-><init>(ZILcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;)V

    .line 381
    .line 382
    .line 383
    new-instance v8, Lcom/startshorts/androidplayer/ui/view/purchase/o;

    .line 384
    .line 385
    invoke-direct {v8, v0, p0, v4}, Lcom/startshorts/androidplayer/ui/view/purchase/o;-><init>(ZLcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;I)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v7, v5, v6, v8}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->d(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/r;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->c:Lkotlinx/coroutines/r;

    .line 393
    .line 394
    goto :goto_1

    .line 395
    :cond_19
    if-nez v0, :cond_1a

    .line 396
    .line 397
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->k:Landroid/widget/TextView;

    .line 398
    .line 399
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 400
    .line 401
    .line 402
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->k:Landroid/widget/TextView;

    .line 403
    .line 404
    if-eqz v0, :cond_1c

    .line 405
    .line 406
    sget-object v5, Lfk/u;->a:Lfk/u;

    .line 407
    .line 408
    sget v6, Lcom/startshorts/androidplayer/R$string;->discount_label_off:I

    .line 409
    .line 410
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v4

    .line 414
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v4

    .line 418
    invoke-virtual {v5, v6, v4}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v4

    .line 422
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    .line 424
    .line 425
    goto :goto_1

    .line 426
    :cond_1a
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->k:Landroid/widget/TextView;

    .line 427
    .line 428
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 429
    .line 430
    .line 431
    goto :goto_1

    .line 432
    :cond_1b
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->k:Landroid/widget/TextView;

    .line 433
    .line 434
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 435
    .line 436
    .line 437
    :cond_1c
    :goto_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->n:Landroid/widget/TextView;

    .line 438
    .line 439
    if-eqz v0, :cond_1f

    .line 440
    .line 441
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 442
    .line 443
    if-nez v4, :cond_1d

    .line 444
    .line 445
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    move-object v4, v1

    .line 449
    :cond_1d
    invoke-direct {p0, v4}, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->u(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v4

    .line 453
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    .line 455
    .line 456
    goto :goto_2

    .line 457
    :cond_1e
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->k:Landroid/widget/TextView;

    .line 458
    .line 459
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 460
    .line 461
    .line 462
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->n:Landroid/widget/TextView;

    .line 463
    .line 464
    if-eqz v0, :cond_1f

    .line 465
    .line 466
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 467
    .line 468
    .line 469
    move-result-object v4

    .line 470
    sget v5, Lcom/startshorts/androidplayer/R$string;->subs_type_view_new_style_desc:I

    .line 471
    .line 472
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v4

    .line 476
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    .line 478
    .line 479
    :cond_1f
    :goto_2
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 480
    .line 481
    if-nez v0, :cond_20

    .line 482
    .line 483
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    goto :goto_3

    .line 487
    :cond_20
    move-object v1, v0

    .line 488
    :goto_3
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 489
    .line 490
    .line 491
    move-result v0

    .line 492
    const/4 v1, 0x1

    .line 493
    if-eq v0, v1, :cond_23

    .line 494
    .line 495
    if-eq v0, v3, :cond_22

    .line 496
    .line 497
    const/4 v1, 0x4

    .line 498
    if-eq v0, v1, :cond_21

    .line 499
    .line 500
    const/4 v1, 0x5

    .line 501
    if-eq v0, v1, :cond_23

    .line 502
    .line 503
    const/4 v1, 0x6

    .line 504
    if-eq v0, v1, :cond_22

    .line 505
    .line 506
    const/4 v1, 0x7

    .line 507
    if-eq v0, v1, :cond_21

    .line 508
    .line 509
    const-string v0, ""

    .line 510
    .line 511
    goto :goto_4

    .line 512
    :cond_21
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 513
    .line 514
    sget v1, Lcom/startshorts/androidplayer/R$string;->profile_subscription_view_annual_pro_card_desc:I

    .line 515
    .line 516
    invoke-virtual {v0, v1}, Lfk/u;->d(I)Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v0

    .line 520
    goto :goto_4

    .line 521
    :cond_22
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 522
    .line 523
    sget v1, Lcom/startshorts/androidplayer/R$string;->profile_subscription_view_monthly_pro_card_desc:I

    .line 524
    .line 525
    invoke-virtual {v0, v1}, Lfk/u;->d(I)Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    goto :goto_4

    .line 530
    :cond_23
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 531
    .line 532
    sget v1, Lcom/startshorts/androidplayer/R$string;->profile_subscription_view_weekly_pro_card_desc:I

    .line 533
    .line 534
    invoke-virtual {v0, v1}, Lfk/u;->d(I)Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    :goto_4
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 539
    .line 540
    .line 541
    move-result v1

    .line 542
    if-nez v1, :cond_24

    .line 543
    .line 544
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->m:Landroid/widget/TextView;

    .line 545
    .line 546
    if-eqz v0, :cond_26

    .line 547
    .line 548
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 549
    .line 550
    .line 551
    goto :goto_5

    .line 552
    :cond_24
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->m:Landroid/widget/TextView;

    .line 553
    .line 554
    if-eqz v1, :cond_25

    .line 555
    .line 556
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    .line 558
    .line 559
    :cond_25
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->m:Landroid/widget/TextView;

    .line 560
    .line 561
    if-eqz v0, :cond_26

    .line 562
    .line 563
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 564
    .line 565
    .line 566
    :cond_26
    :goto_5
    const-string v0, "th"

    .line 567
    .line 568
    const-string v1, "ar"

    .line 569
    .line 570
    const-string v2, "zh_cn"

    .line 571
    .line 572
    const-string v3, "zh"

    .line 573
    .line 574
    const-string v4, "en"

    .line 575
    .line 576
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v0

    .line 580
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    sget-object v1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 585
    .line 586
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->e()Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v1

    .line 590
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 591
    .line 592
    .line 593
    move-result v0

    .line 594
    if-eqz v0, :cond_27

    .line 595
    .line 596
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->m:Landroid/widget/TextView;

    .line 597
    .line 598
    if-eqz v0, :cond_28

    .line 599
    .line 600
    const/high16 v1, 0x41200000    # 10.0f

    .line 601
    .line 602
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 603
    .line 604
    .line 605
    goto :goto_6

    .line 606
    :cond_27
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->m:Landroid/widget/TextView;

    .line 607
    .line 608
    if-eqz v0, :cond_28

    .line 609
    .line 610
    const/high16 v1, 0x41100000    # 9.0f

    .line 611
    .line 612
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 613
    .line 614
    .line 615
    :cond_28
    :goto_6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->w()V

    .line 616
    .line 617
    .line 618
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->v()V

    .line 619
    .line 620
    .line 621
    return-void
.end method


# virtual methods
.method public final getOnExpired()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->d:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSku()Lcom/startshorts/androidplayer/bean/subs/SubsSku;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "mSubSku"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    return-object v0
.end method

.method public i(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "mSubSku"

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
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->setSelect(Z)V

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
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->e:Landroid/view/View;

    .line 11
    .line 12
    sget v0, Lcom/startshorts/androidplayer/R$id;->vip_iv:I

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->f:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 21
    .line 22
    sget v0, Lcom/startshorts/androidplayer/R$id;->bg_selected_view:I

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->g:Landroid/view/View;

    .line 29
    .line 30
    sget v0, Lcom/startshorts/androidplayer/R$id;->sku_type_name_tv:I

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->i:Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;

    .line 39
    .line 40
    sget v0, Lcom/startshorts/androidplayer/R$id;->sku_price_tv:I

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Landroid/widget/TextView;

    .line 47
    .line 48
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->h:Landroid/widget/TextView;

    .line 49
    .line 50
    sget v0, Lcom/startshorts/androidplayer/R$id;->sku_desc_price_tv:I

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Landroid/widget/TextView;

    .line 57
    .line 58
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->j:Landroid/widget/TextView;

    .line 59
    .line 60
    sget v0, Lcom/startshorts/androidplayer/R$id;->sku_label_tv:I

    .line 61
    .line 62
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Landroid/widget/TextView;

    .line 67
    .line 68
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->k:Landroid/widget/TextView;

    .line 69
    .line 70
    sget v0, Lcom/startshorts/androidplayer/R$id;->diamond_iv:I

    .line 71
    .line 72
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Landroid/widget/ImageView;

    .line 77
    .line 78
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->l:Landroid/widget/ImageView;

    .line 79
    .line 80
    sget v0, Lcom/startshorts/androidplayer/R$id;->sku_desc_tv:I

    .line 81
    .line 82
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Landroid/widget/TextView;

    .line 87
    .line 88
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->m:Landroid/widget/TextView;

    .line 89
    .line 90
    sget v0, Lcom/startshorts/androidplayer/R$id;->sku_renew_tv:I

    .line 91
    .line 92
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Landroid/widget/TextView;

    .line 97
    .line 98
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->n:Landroid/widget/TextView;

    .line 99
    .line 100
    return-void
.end method

.method public final s()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->c:Lkotlinx/coroutines/r;

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
    const-string v2, "ReproductionSubsView"

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
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->c:Lkotlinx/coroutines/r;

    .line 22
    .line 23
    return-void
.end method

.method public final setOnExpired(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->d:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public final setOnRight(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->b:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setSelect(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->g:Landroid/view/View;

    .line 4
    .line 5
    invoke-static {p1}, Ljk/b0;->l(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->g:Landroid/view/View;

    .line 10
    .line 11
    invoke-static {p1}, Ljk/b0;->e(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public final setSku(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "subSku"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const-string p1, "mSubSku"

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->isBigCard()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->z()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->C()V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public final y()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->b:Z

    .line 2
    .line 3
    return v0
.end method
