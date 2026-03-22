.class public final Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionRedeemCodeDialog;
.super Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;
.source "ImmersionRedeemCodeDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionRedeemCodeDialog$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment<",
        "Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionRedeemCodeBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nImmersionRedeemCodeDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionRedeemCodeDialog.kt\ncom/startshorts/androidplayer/ui/fragment/immersion/ImmersionRedeemCodeDialog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,137:1\n1863#2,2:138\n*S KotlinDebug\n*F\n+ 1 ImmersionRedeemCodeDialog.kt\ncom/startshorts/androidplayer/ui/fragment/immersion/ImmersionRedeemCodeDialog\n*L\n61#1:138,2\n*E\n"
    }
.end annotation


# static fields
.field public static final k:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionRedeemCodeDialog$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private i:Lcom/startshorts/androidplayer/bean/search/RedeemCode;

.field private final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionRedeemCodeDialog$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionRedeemCodeDialog$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionRedeemCodeDialog;->k:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionRedeemCodeDialog$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/startshorts/androidplayer/R$layout;->dialog_fragment_immersion_redeem_code:I

    .line 5
    .line 6
    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionRedeemCodeDialog;->j:I

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic F(Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionRedeemCodeDialog;->J(Landroid/widget/ImageView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic G(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionRedeemCodeDialog;Lcom/startshorts/androidplayer/bean/search/RedeemCode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionRedeemCodeDialog;->i:Lcom/startshorts/androidplayer/bean/search/RedeemCode;

    .line 2
    .line 3
    return-void
.end method

.method private final H(Lcom/startshorts/androidplayer/bean/search/RedeemCodeEquity;)Landroid/view/View;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget v1, Lcom/startshorts/androidplayer/R$layout;->item_dialog_fragment_episode_redeem_code_equity:I

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-static {v0, v1, v2, v3}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ItemDialogFragmentEpisodeRedeemCodeEquityBinding;

    .line 18
    .line 19
    iget-object v1, v0, Lcom/startshorts/androidplayer/databinding/ItemDialogFragmentEpisodeRedeemCodeEquityBinding;->e:Landroid/widget/ImageView;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/search/RedeemCodeEquity;->getType()Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/16 v3, 0xb

    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    sget v2, Lcom/startshorts/androidplayer/R$drawable;->ic_redeem_code_coin_1:I

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    sget v2, Lcom/startshorts/androidplayer/R$drawable;->ic_redeem_code_bonus_1:I

    .line 40
    .line 41
    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 42
    .line 43
    .line 44
    iget-object v1, v0, Lcom/startshorts/androidplayer/databinding/ItemDialogFragmentEpisodeRedeemCodeEquityBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 45
    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const/16 v3, 0x2b

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/search/RedeemCodeEquity;->getValue()Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    iget-object v1, v0, Lcom/startshorts/androidplayer/databinding/ItemDialogFragmentEpisodeRedeemCodeEquityBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/search/RedeemCodeEquity;->getText()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    const-string v0, "getRoot(...)"

    .line 88
    .line 89
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    return-object p1
.end method

.method private final I()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionRedeemCodeBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionRedeemCodeBinding;->b:Landroid/widget/ImageView;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionRedeemCodeDialog;->i:Lcom/startshorts/androidplayer/bean/search/RedeemCode;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    const-string v4, "mRedeemCode"

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    move-object v2, v3

    .line 24
    :cond_0
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/search/RedeemCode;->getEquity()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/4 v5, 0x1

    .line 33
    if-ne v2, v5, :cond_1

    .line 34
    .line 35
    const/high16 v2, 0x43520000    # 210.0f

    .line 36
    .line 37
    invoke-static {v2}, Ljk/g;->a(F)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/high16 v2, 0x43820000    # 260.0f

    .line 43
    .line 44
    invoke-static {v2}, Ljk/g;->a(F)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    :goto_0
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionRedeemCodeDialog;->i:Lcom/startshorts/androidplayer/bean/search/RedeemCode;

    .line 54
    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    move-object v0, v3

    .line 61
    :cond_2
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/search/RedeemCode;->getEquity()Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Ljava/lang/Iterable;

    .line 66
    .line 67
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_3

    .line 76
    .line 77
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Lcom/startshorts/androidplayer/bean/search/RedeemCodeEquity;

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    check-cast v2, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionRedeemCodeBinding;

    .line 88
    .line 89
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionRedeemCodeBinding;->d:Landroid/widget/LinearLayout;

    .line 90
    .line 91
    invoke-direct {p0, v1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionRedeemCodeDialog;->H(Lcom/startshorts/androidplayer/bean/search/RedeemCodeEquity;)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionRedeemCodeBinding;

    .line 104
    .line 105
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionRedeemCodeBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 106
    .line 107
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionRedeemCodeDialog;->i:Lcom/startshorts/androidplayer/bean/search/RedeemCode;

    .line 108
    .line 109
    if-nez v1, :cond_4

    .line 110
    .line 111
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    move-object v1, v3

    .line 115
    :cond_4
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/search/RedeemCode;->getStatus()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    const/4 v2, 0x5

    .line 120
    if-ne v1, v2, :cond_5

    .line 121
    .line 122
    sget v1, Lcom/startshorts/androidplayer/R$string;->redeem_code_dialog_fragment_received:I

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_5
    sget v1, Lcom/startshorts/androidplayer/R$string;->redeem_code_dialog_fragment_receive_benefits:I

    .line 126
    .line 127
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionRedeemCodeBinding;

    .line 135
    .line 136
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionRedeemCodeBinding;->a:Landroid/widget/ImageView;

    .line 137
    .line 138
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/immersion/c0;

    .line 139
    .line 140
    invoke-direct {v1, v0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/c0;-><init>(Landroid/widget/ImageView;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 144
    .line 145
    .line 146
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionRedeemCodeDialog$b;

    .line 147
    .line 148
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionRedeemCodeDialog$b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionRedeemCodeDialog;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    .line 153
    .line 154
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionRedeemCodeDialog;->i:Lcom/startshorts/androidplayer/bean/search/RedeemCode;

    .line 155
    .line 156
    if-nez v0, :cond_6

    .line 157
    .line 158
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_6
    move-object v3, v0

    .line 163
    :goto_3
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/search/RedeemCode;->getStatus()I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-ne v0, v2, :cond_7

    .line 168
    .line 169
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionRedeemCodeBinding;

    .line 174
    .line 175
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionRedeemCodeBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 176
    .line 177
    sget v1, Lcom/startshorts/androidplayer/R$string;->redeem_code_dialog_fragment_received:I

    .line 178
    .line 179
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    sget v2, Lcom/startshorts/androidplayer/R$color;->color_redeem_code_dialog_fragment_disable_btn:I

    .line 187
    .line 188
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 193
    .line 194
    .line 195
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->bg_redeem_code_disable_btn_1:I

    .line 196
    .line 197
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 198
    .line 199
    .line 200
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionRedeemCodeDialog$c;

    .line 201
    .line 202
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionRedeemCodeDialog$c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionRedeemCodeDialog;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    .line 207
    .line 208
    goto :goto_4

    .line 209
    :cond_7
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionRedeemCodeBinding;

    .line 214
    .line 215
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionRedeemCodeBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 216
    .line 217
    sget v1, Lcom/startshorts/androidplayer/R$string;->redeem_code_dialog_fragment_receive_benefits:I

    .line 218
    .line 219
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 220
    .line 221
    .line 222
    const/4 v1, -0x1

    .line 223
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 224
    .line 225
    .line 226
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->bg_redeem_code_btn_1:I

    .line 227
    .line 228
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 229
    .line 230
    .line 231
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionRedeemCodeDialog$d;

    .line 232
    .line 233
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionRedeemCodeDialog$d;-><init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionRedeemCodeDialog;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    .line 238
    .line 239
    :goto_4
    return-void
.end method

.method private static final J(Landroid/widget/ImageView;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 7
    .line 8
    .line 9
    const/high16 v1, 0x41800000    # 16.0f

    .line 10
    .line 11
    invoke-static {v1}, Ljk/g;->a(F)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 16
    .line 17
    sub-int/2addr v2, v1

    .line 18
    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 19
    .line 20
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 21
    .line 22
    sub-int/2addr v2, v1

    .line 23
    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 24
    .line 25
    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 26
    .line 27
    add-int/2addr v2, v1

    .line 28
    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 29
    .line 30
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 31
    .line 32
    add-int/2addr v2, v1

    .line 33
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 34
    .line 35
    new-instance v1, Landroid/view/TouchDelegate;

    .line 36
    .line 37
    invoke-direct {v1, v0, p0}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    instance-of v0, p0, Landroid/view/View;

    .line 45
    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    check-cast p0, Landroid/view/View;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 p0, 0x0

    .line 52
    :goto_0
    if-eqz p0, :cond_1

    .line 53
    .line 54
    invoke-virtual {p0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void
.end method


# virtual methods
.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionRedeemCodeDialog;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "ImmersionRedeemCodeDialog"

    .line 2
    .line 3
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionRedeemCodeDialog;->i:Lcom/startshorts/androidplayer/bean/search/RedeemCode;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->dismiss()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    const/4 p2, 0x0

    .line 24
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionRedeemCodeDialog;->I()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public p()I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    return v0
.end method
