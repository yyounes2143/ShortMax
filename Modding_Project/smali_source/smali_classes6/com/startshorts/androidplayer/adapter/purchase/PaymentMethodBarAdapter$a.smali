.class final Lcom/startshorts/androidplayer/adapter/purchase/PaymentMethodBarAdapter$a;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "PaymentMethodBarAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/purchase/PaymentMethodBarAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;",
        ">.ViewHolder;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPaymentMethodBarAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentMethodBarAdapter.kt\ncom/startshorts/androidplayer/adapter/purchase/PaymentMethodBarAdapter$PaymentMethodViewHolder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,60:1\n1#2:61\n*E\n"
    }
.end annotation


# instance fields
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemPaymentMethodBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic h:Lcom/startshorts/androidplayer/adapter/purchase/PaymentMethodBarAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/purchase/PaymentMethodBarAdapter;Lcom/startshorts/androidplayer/databinding/ItemPaymentMethodBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/purchase/PaymentMethodBarAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemPaymentMethodBinding;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/purchase/PaymentMethodBarAdapter$a;->h:Lcom/startshorts/androidplayer/adapter/purchase/PaymentMethodBarAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/purchase/PaymentMethodBarAdapter$a;->g:Lcom/startshorts/androidplayer/databinding/ItemPaymentMethodBinding;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/purchase/PaymentMethodBarAdapter$a;->j()Lcom/startshorts/androidplayer/databinding/ItemPaymentMethodBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic f(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/purchase/PaymentMethodBarAdapter$a;->k(ILcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j()Lcom/startshorts/androidplayer/databinding/ItemPaymentMethodBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/purchase/PaymentMethodBarAdapter$a;->g:Lcom/startshorts/androidplayer/databinding/ItemPaymentMethodBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public k(ILcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;)V
    .locals 4
    .param p2    # Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->f(ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getLabelDiscountPercent()Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v0, 0x0

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move p1, v0

    .line 22
    :goto_0
    if-lez p1, :cond_3

    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getLabelSkuType()Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    const/4 v1, 0x2

    .line 36
    if-ne p1, v1, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/purchase/PaymentMethodBarAdapter$a;->j()Lcom/startshorts/androidplayer/databinding/ItemPaymentMethodBinding;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemPaymentMethodBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/purchase/PaymentMethodBarAdapter$a;->j()Lcom/startshorts/androidplayer/databinding/ItemPaymentMethodBinding;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemPaymentMethodBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 49
    .line 50
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    sget v2, Lcom/startshorts/androidplayer/R$string;->payment_discount_coins_label:I

    .line 55
    .line 56
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getLabelDiscountPercent()Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/purchase/PaymentMethodBarAdapter$a;->j()Lcom/startshorts/androidplayer/databinding/ItemPaymentMethodBinding;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemPaymentMethodBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/purchase/PaymentMethodBarAdapter$a;->j()Lcom/startshorts/androidplayer/databinding/ItemPaymentMethodBinding;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemPaymentMethodBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 87
    .line 88
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    sget v2, Lcom/startshorts/androidplayer/R$string;->discount_label_off:I

    .line 93
    .line 94
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getLabelDiscountPercent()Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    .line 112
    .line 113
    :goto_2
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/purchase/PaymentMethodBarAdapter$a;->j()Lcom/startshorts/androidplayer/databinding/ItemPaymentMethodBinding;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemPaymentMethodBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 118
    .line 119
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 120
    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/purchase/PaymentMethodBarAdapter$a;->j()Lcom/startshorts/androidplayer/databinding/ItemPaymentMethodBinding;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemPaymentMethodBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 128
    .line 129
    const/16 v1, 0x8

    .line 130
    .line 131
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 132
    .line 133
    .line 134
    :goto_3
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getLogoIcon()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    const/4 v1, 0x1

    .line 139
    if-eqz p1, :cond_4

    .line 140
    .line 141
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-nez p1, :cond_5

    .line 146
    .line 147
    :cond_4
    move v0, v1

    .line 148
    :cond_5
    if-nez v0, :cond_6

    .line 149
    .line 150
    sget-object p1, Lkk/f;->a:Lkk/f;

    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/purchase/PaymentMethodBarAdapter$a;->j()Lcom/startshorts/androidplayer/databinding/ItemPaymentMethodBinding;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemPaymentMethodBinding;->c:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 157
    .line 158
    new-instance v2, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 159
    .line 160
    invoke-direct {v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getLogoIcon()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 171
    .line 172
    invoke-virtual {p1, v0, v2}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 173
    .line 174
    .line 175
    :cond_6
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->isSelected()Z

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    if-eqz p1, :cond_7

    .line 180
    .line 181
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/purchase/PaymentMethodBarAdapter$a;->j()Lcom/startshorts/androidplayer/databinding/ItemPaymentMethodBinding;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemPaymentMethodBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 186
    .line 187
    sget p2, Lcom/startshorts/androidplayer/R$drawable;->bg_payment_method_item_selected:I

    .line 188
    .line 189
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 190
    .line 191
    .line 192
    goto :goto_4

    .line 193
    :cond_7
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/purchase/PaymentMethodBarAdapter$a;->j()Lcom/startshorts/androidplayer/databinding/ItemPaymentMethodBinding;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemPaymentMethodBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 198
    .line 199
    sget p2, Lcom/startshorts/androidplayer/R$drawable;->bg_payment_method_item:I

    .line 200
    .line 201
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 202
    .line 203
    .line 204
    :goto_4
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/purchase/PaymentMethodBarAdapter$a;->j()Lcom/startshorts/androidplayer/databinding/ItemPaymentMethodBinding;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemPaymentMethodBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 209
    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    const-string p2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    .line 215
    .line 216
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 220
    .line 221
    iget-object p2, p0, Lcom/startshorts/androidplayer/adapter/purchase/PaymentMethodBarAdapter$a;->h:Lcom/startshorts/androidplayer/adapter/purchase/PaymentMethodBarAdapter;

    .line 222
    .line 223
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->getItemCount()I

    .line 224
    .line 225
    .line 226
    move-result p2

    .line 227
    const/4 v0, 0x4

    .line 228
    if-gt p2, v0, :cond_8

    .line 229
    .line 230
    sget-object p2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 231
    .line 232
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    .line 233
    .line 234
    .line 235
    move-result p2

    .line 236
    const/high16 v0, 0x42000000    # 32.0f

    .line 237
    .line 238
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    sub-int/2addr p2, v0

    .line 243
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/purchase/PaymentMethodBarAdapter$a;->h:Lcom/startshorts/androidplayer/adapter/purchase/PaymentMethodBarAdapter;

    .line 244
    .line 245
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->getItemCount()I

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    sub-int/2addr v0, v1

    .line 250
    const/high16 v1, 0x41000000    # 8.0f

    .line 251
    .line 252
    invoke-static {v1}, Ljk/g;->a(F)I

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    mul-int/2addr v0, v1

    .line 257
    sub-int/2addr p2, v0

    .line 258
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/purchase/PaymentMethodBarAdapter$a;->h:Lcom/startshorts/androidplayer/adapter/purchase/PaymentMethodBarAdapter;

    .line 259
    .line 260
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->getItemCount()I

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    div-int/2addr p2, v0

    .line 265
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 266
    .line 267
    goto :goto_5

    .line 268
    :cond_8
    const/high16 p2, 0x42a00000    # 80.0f

    .line 269
    .line 270
    invoke-static {p2}, Ljk/g;->a(F)I

    .line 271
    .line 272
    .line 273
    move-result p2

    .line 274
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 275
    .line 276
    :goto_5
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/purchase/PaymentMethodBarAdapter$a;->j()Lcom/startshorts/androidplayer/databinding/ItemPaymentMethodBinding;

    .line 277
    .line 278
    .line 279
    move-result-object p2

    .line 280
    iget-object p2, p2, Lcom/startshorts/androidplayer/databinding/ItemPaymentMethodBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 281
    .line 282
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    .line 284
    .line 285
    return-void
.end method
