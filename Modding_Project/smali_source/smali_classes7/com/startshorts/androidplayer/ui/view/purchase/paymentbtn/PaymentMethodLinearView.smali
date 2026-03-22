.class public final Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodLinearView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "PaymentMethodLinearView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPaymentMethodLinearView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentMethodLinearView.kt\ncom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodLinearView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 BindingAdapter.kt\ncom/drake/brv/BindingAdapter$BindingViewHolder\n+ 5 BindingAdapter.kt\ncom/drake/brv/BindingAdapter\n*L\n1#1,138:1\n295#2,2:139\n1863#2,2:141\n2632#2,3:143\n295#2,2:146\n1872#2,3:149\n1#3:148\n1160#4,7:152\n243#5,6:159\n*S KotlinDebug\n*F\n+ 1 PaymentMethodLinearView.kt\ncom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodLinearView\n*L\n96#1:139,2\n100#1:141,2\n104#1:143,3\n118#1:146,2\n73#1:149,3\n50#1:152,7\n47#1:159,6\n*E\n"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Z

.field private c:I

.field private d:I

.field public e:Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBarLinearBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodLinearView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodLinearView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodLinearView;->a:Ljava/util/List;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodLinearView;->c:I

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodLinearView;->d:I

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodLinearView;->t(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic q(Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodLinearView;Lcom/drake/brv/BindingAdapter;Landroidx/recyclerview/widget/RecyclerView;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodLinearView;->u(Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodLinearView;Lcom/drake/brv/BindingAdapter;Landroidx/recyclerview/widget/RecyclerView;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic r(Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodLinearView;Lcom/drake/brv/BindingAdapter$BindingViewHolder;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodLinearView;->v(Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodLinearView;Lcom/drake/brv/BindingAdapter$BindingViewHolder;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic s(Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodLinearView;Lcom/drake/brv/BindingAdapter$BindingViewHolder;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodLinearView;->w(Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodLinearView;Lcom/drake/brv/BindingAdapter$BindingViewHolder;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final u(Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodLinearView;Lcom/drake/brv/BindingAdapter;Landroidx/recyclerview/widget/RecyclerView;)Lkotlin/Unit;
    .locals 3

    .line 1
    const-string v0, "$this$setup"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "it"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget p2, Lcom/startshorts/androidplayer/R$layout;->item_payment_method_linear:I

    .line 12
    .line 13
    const-class v0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/drake/brv/BindingAdapter;->q()Ljava/util/Map;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v2, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodLinearView$initView$lambda$4$$inlined$addType$1;

    .line 34
    .line 35
    invoke-direct {v2, p2}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodLinearView$initView$lambda$4$$inlined$addType$1;-><init>(I)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p1}, Lcom/drake/brv/BindingAdapter;->y()Ljava/util/Map;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    new-instance v2, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodLinearView$initView$lambda$4$$inlined$addType$2;

    .line 51
    .line 52
    invoke-direct {v2, p2}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodLinearView$initView$lambda$4$$inlined$addType$2;-><init>(I)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    :goto_0
    new-instance p2, Ltj/h;

    .line 59
    .line 60
    invoke-direct {p2, p0}, Ltj/h;-><init>(Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodLinearView;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2}, Lcom/drake/brv/BindingAdapter;->D(Lkotlin/jvm/functions/Function1;)V

    .line 64
    .line 65
    .line 66
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 67
    .line 68
    return-object p0
.end method

.method private static final v(Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodLinearView;Lcom/drake/brv/BindingAdapter$BindingViewHolder;)Lkotlin/Unit;
    .locals 10

    .line 1
    const-string v0, "$this$onBind"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->j()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->l()Landroidx/viewbinding/ViewBinding;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "null cannot be cast to non-null type com.startshorts.androidplayer.databinding.ItemPaymentMethodLinearBinding"

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    const-class v1, Landroid/view/View;

    .line 21
    .line 22
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-class v3, Lcom/startshorts/androidplayer/databinding/ItemPaymentMethodLinearBinding;

    .line 27
    .line 28
    const-string v4, "b"

    .line 29
    .line 30
    invoke-virtual {v3, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 35
    .line 36
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    check-cast v1, Lcom/startshorts/androidplayer/databinding/ItemPaymentMethodLinearBinding;

    .line 48
    .line 49
    invoke-virtual {p1, v1}, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->n(Landroidx/viewbinding/ViewBinding;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 54
    .line 55
    invoke-direct {p0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :cond_1
    invoke-virtual {p1}, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->l()Landroidx/viewbinding/ViewBinding;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    if-eqz v1, :cond_9

    .line 64
    .line 65
    check-cast v1, Lcom/startshorts/androidplayer/databinding/ItemPaymentMethodLinearBinding;

    .line 66
    .line 67
    :goto_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getDiscountPercent()Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    const/4 v3, 0x0

    .line 72
    if-eqz v2, :cond_2

    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    move v2, v3

    .line 80
    :goto_1
    if-lez v2, :cond_4

    .line 81
    .line 82
    iget v2, p0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodLinearView;->d:I

    .line 83
    .line 84
    const/4 v4, 0x2

    .line 85
    if-ne v2, v4, :cond_3

    .line 86
    .line 87
    iget-object v2, v1, Lcom/startshorts/androidplayer/databinding/ItemPaymentMethodLinearBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodLinearView;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBarLinearBinding;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    iget-object v4, v4, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBarLinearBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 94
    .line 95
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    sget v5, Lcom/startshorts/androidplayer/R$string;->payment_discount_coins_label:I

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getDiscountPercent()Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_3
    iget-object v2, v1, Lcom/startshorts/androidplayer/databinding/ItemPaymentMethodLinearBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodLinearView;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBarLinearBinding;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    iget-object v4, v4, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBarLinearBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 128
    .line 129
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    sget v5, Lcom/startshorts/androidplayer/R$string;->discount_label_off:I

    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getDiscountPercent()Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    .line 153
    .line 154
    :goto_2
    iget-object v2, v1, Lcom/startshorts/androidplayer/databinding/ItemPaymentMethodLinearBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 155
    .line 156
    invoke-static {v2}, Ljk/b0;->l(Landroid/view/View;)V

    .line 157
    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_4
    iget-object v2, v1, Lcom/startshorts/androidplayer/databinding/ItemPaymentMethodLinearBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 161
    .line 162
    invoke-static {v2}, Ljk/b0;->e(Landroid/view/View;)V

    .line 163
    .line 164
    .line 165
    :goto_3
    iget-object v2, v1, Lcom/startshorts/androidplayer/databinding/ItemPaymentMethodLinearBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 166
    .line 167
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getPayTypeName()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getLogoIcon()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    if-eqz v2, :cond_5

    .line 179
    .line 180
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-nez v2, :cond_6

    .line 185
    .line 186
    :cond_5
    const/4 v3, 0x1

    .line 187
    :cond_6
    if-nez v3, :cond_7

    .line 188
    .line 189
    sget-object v2, Lkk/f;->a:Lkk/f;

    .line 190
    .line 191
    iget-object v3, v1, Lcom/startshorts/androidplayer/databinding/ItemPaymentMethodLinearBinding;->a:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 192
    .line 193
    new-instance v4, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 194
    .line 195
    invoke-direct {v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getLogoIcon()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 206
    .line 207
    invoke-virtual {v2, v3, v4}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 208
    .line 209
    .line 210
    :cond_7
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->isSelected()Z

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    if-eqz v2, :cond_8

    .line 215
    .line 216
    iget-object v2, v1, Lcom/startshorts/androidplayer/databinding/ItemPaymentMethodLinearBinding;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 217
    .line 218
    sget v3, Lcom/startshorts/androidplayer/R$drawable;->iv_pay_type_selected:I

    .line 219
    .line 220
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 221
    .line 222
    .line 223
    goto :goto_4

    .line 224
    :cond_8
    iget-object v2, v1, Lcom/startshorts/androidplayer/databinding/ItemPaymentMethodLinearBinding;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 225
    .line 226
    sget v3, Lcom/startshorts/androidplayer/R$drawable;->iv_pay_type_unselected:I

    .line 227
    .line 228
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 229
    .line 230
    .line 231
    :goto_4
    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    const-string v1, "getRoot(...)"

    .line 236
    .line 237
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    new-instance v7, Ltj/i;

    .line 241
    .line 242
    invoke-direct {v7, v0, p0, p1}, Ltj/i;-><init>(Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodLinearView;Lcom/drake/brv/BindingAdapter$BindingViewHolder;)V

    .line 243
    .line 244
    .line 245
    const/4 v8, 0x1

    .line 246
    const/4 v9, 0x0

    .line 247
    const-wide/16 v5, 0x0

    .line 248
    .line 249
    invoke-static/range {v4 .. v9}, Ljk/b0;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 253
    .line 254
    return-object p0

    .line 255
    :cond_9
    new-instance p0, Ljava/lang/NullPointerException;

    .line 256
    .line 257
    invoke-direct {p0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    throw p0
.end method

.method private static final w(Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodLinearView;Lcom/drake/brv/BindingAdapter$BindingViewHolder;Landroid/view/View;)Lkotlin/Unit;
    .locals 6

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p3, 0x1

    .line 7
    invoke-virtual {p0, p3}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->setSelected(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p1, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodLinearView;->a:Ljava/util/List;

    .line 11
    .line 12
    check-cast v0, Ljava/lang/Iterable;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    move v2, v1

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_2

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    add-int/lit8 v4, v2, 0x1

    .line 31
    .line 32
    if-gez v2, :cond_0

    .line 33
    .line 34
    invoke-static {}, Lkotlin/collections/CollectionsKt;->y()V

    .line 35
    .line 36
    .line 37
    :cond_0
    check-cast v3, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 38
    .line 39
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getPosition()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-ne v2, v5, :cond_1

    .line 44
    .line 45
    invoke-virtual {v3, p3}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->setSelected(Z)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {v3, v1}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->setSelected(Z)V

    .line 50
    .line 51
    .line 52
    :goto_1
    move v2, v4

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getPayType()Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    if-eqz p0, :cond_3

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    goto :goto_2

    .line 65
    :cond_3
    sget-object p0, Lqf/e;->a:Lqf/e;

    .line 66
    .line 67
    invoke-virtual {p0}, Lqf/e;->a()I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    :goto_2
    iput p0, p1, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodLinearView;->c:I

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodLinearView;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBarLinearBinding;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    iget-object p0, p0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBarLinearBinding;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 78
    .line 79
    const-string p2, "rvPaymentMethod"

    .line 80
    .line 81
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p1, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodLinearView;->a:Ljava/util/List;

    .line 85
    .line 86
    invoke-static {p0, p1}, Lo1/b;->f(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)V

    .line 87
    .line 88
    .line 89
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 90
    .line 91
    return-object p0
.end method


# virtual methods
.method public final getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBarLinearBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodLinearView;->e:Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBarLinearBinding;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "binding"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getPayType()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodLinearView;->c:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, -0x1

    .line 12
    if-eq v1, v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    sget-object v0, Lqf/e;->a:Lqf/e;

    .line 24
    .line 25
    invoke-virtual {v0}, Lqf/e;->a()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    :goto_1
    return v0
.end method

.method public final setBinding(Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBarLinearBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBarLinearBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodLinearView;->e:Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBarLinearBinding;

    .line 7
    .line 8
    return-void
.end method

.method public final t(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p2, "context"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 p2, 0x1

    .line 11
    invoke-static {p1, p0, p2}, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBarLinearBinding;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBarLinearBinding;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodLinearView;->setBinding(Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBarLinearBinding;)V

    .line 16
    .line 17
    .line 18
    sget-object p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a0()Lcom/startshorts/androidplayer/bean/account/Account;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/account/Account;->getSupportOneTouchPayment()Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p1, 0x0

    .line 38
    :goto_0
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodLinearView;->b:Z

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodLinearView;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBarLinearBinding;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object v0, p1, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBarLinearBinding;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 45
    .line 46
    const-string p1, "rvPaymentMethod"

    .line 47
    .line 48
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/16 v5, 0xf

    .line 52
    .line 53
    const/4 v6, 0x0

    .line 54
    const/4 v1, 0x0

    .line 55
    const/4 v2, 0x0

    .line 56
    const/4 v3, 0x0

    .line 57
    const/4 v4, 0x0

    .line 58
    invoke-static/range {v0 .. v6}, Lo1/b;->e(Landroidx/recyclerview/widget/RecyclerView;IZZZILjava/lang/Object;)Landroidx/recyclerview/widget/RecyclerView;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    new-instance p2, Ltj/g;

    .line 63
    .line 64
    invoke-direct {p2, p0}, Ltj/g;-><init>(Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodLinearView;)V

    .line 65
    .line 66
    .line 67
    invoke-static {p1, p2}, Lo1/b;->g(Landroidx/recyclerview/widget/RecyclerView;Lkotlin/jvm/functions/Function2;)Lcom/drake/brv/BindingAdapter;

    .line 68
    .line 69
    .line 70
    return-void
.end method
