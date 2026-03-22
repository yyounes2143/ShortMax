.class public final Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;
.super Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;
.source "DiscountSubscribeDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment<",
        "Lcom/startshorts/androidplayer/databinding/DialogDiscountSubscribeBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDiscountSubscribeDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscountSubscribeDialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog\n+ 2 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,196:1\n470#2:197\n470#2:198\n470#2:199\n470#2:200\n*S KotlinDebug\n*F\n+ 1 DiscountSubscribeDialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog\n*L\n80#1:197\n108#1:198\n137#1:199\n139#1:200\n*E\n"
    }
.end annotation


# static fields
.field public static final n:Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private i:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private j:Lkotlin/jvm/functions/Function0;
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

.field private k:Lcom/startshorts/androidplayer/bean/discount/DiscountSubscribeInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private l:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private m:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;->n:Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog$a;

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
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;->i:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic F(Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;->Q(Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic G(Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;Ljava/lang/String;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;->O(Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;Ljava/lang/String;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic H(Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;->P(Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic I(Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;Ljava/lang/String;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;->N(Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;Ljava/lang/String;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final J()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;->m:Lkotlinx/coroutines/r;

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
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;->m:Lkotlinx/coroutines/r;

    .line 22
    .line 23
    return-void
.end method

.method private final K(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Ljk/u;->c(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Ljk/h;->b(F)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method private final L()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogDiscountSubscribeBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogDiscountSubscribeBinding;->a:Landroid/widget/ImageView;

    .line 8
    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog$b;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog$b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final M(Lcom/startshorts/androidplayer/bean/discount/DiscountSubscribeInfo;)V
    .locals 11

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogDiscountSubscribeBinding;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogDiscountSubscribeBinding;->k:Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discount/DiscountSubscribeInfo;->getDiscountTitle()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    const-string v1, "#FFDEA9"

    .line 20
    .line 21
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const-string v2, "#FF5E40"

    .line 26
    .line 27
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const-string v3, "#FF4AF3"

    .line 32
    .line 33
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    filled-new-array {v1, v2, v3}, [I

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const/4 v2, 0x0

    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-virtual {v0, v1, v3, v2}, Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;->setColor([I[FI)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discount/DiscountSubscribeInfo;->getSubscribeSkuResponse()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_7

    .line 51
    .line 52
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;->K(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;->l:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 57
    .line 58
    if-eqz v2, :cond_1

    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayCode()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    move-object v8, v2

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    move-object v8, v3

    .line 67
    :goto_0
    sget-object v4, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 68
    .line 69
    iget-object v5, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;->i:Ljava/lang/String;

    .line 70
    .line 71
    const-string v6, "current_membership_upgrade"

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    move-object v7, v1

    .line 78
    invoke-virtual/range {v4 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->p0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    sget-object v2, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;->a:Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;

    .line 82
    .line 83
    sget-object v4, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 84
    .line 85
    new-instance v5, Ljava/util/Date;

    .line 86
    .line 87
    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-static {v5}, Ljk/f;->a(Ljava/util/Date;)Ljava/util/Date;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/utils/TimeUtil;->f(Ljava/util/Date;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    const/4 v5, 0x1

    .line 99
    invoke-virtual {v2, v4, v5}, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;->w(Ljava/lang/String;Z)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getDiscountTime()Ljava/lang/Long;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    if-nez v4, :cond_2

    .line 107
    .line 108
    sget-object v4, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 109
    .line 110
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 111
    .line 112
    .line 113
    move-result-wide v4

    .line 114
    const v6, 0x1b7740

    .line 115
    .line 116
    .line 117
    int-to-long v6, v6

    .line 118
    add-long/2addr v4, v6

    .line 119
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-virtual {v0, v4}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->setDiscountTime(Ljava/lang/Long;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/bean/discount/DiscountSubscribeInfo;->setSubscribeSkuResponse(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 127
    .line 128
    .line 129
    sget-object v4, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 130
    .line 131
    const-string v5, "DiscountSubscribeDialog"

    .line 132
    .line 133
    const-string v6, "saveDiscountSubscribe time"

    .line 134
    .line 135
    invoke-virtual {v4, v5, v6}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;->v(Lcom/startshorts/androidplayer/bean/discount/DiscountSubscribeInfo;)V

    .line 139
    .line 140
    .line 141
    :cond_2
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogDiscountSubscribeBinding;

    .line 146
    .line 147
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogDiscountSubscribeBinding;->j:Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;

    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getOriginPriceText()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    if-eqz v2, :cond_3

    .line 154
    .line 155
    invoke-static {v2}, Ljk/v;->q(Ljava/lang/String;)Lkotlin/Pair;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    :cond_3
    if-eqz v3, :cond_4

    .line 160
    .line 161
    invoke-virtual {v3}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    check-cast v2, Ljava/lang/CharSequence;

    .line 166
    .line 167
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    .line 169
    .line 170
    :cond_4
    const-string v2, "#FFFFFF"

    .line 171
    .line 172
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    const-string v4, "#FFE5C3"

    .line 177
    .line 178
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    invoke-virtual {p1, v3, v5}, Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;->setColor(II)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogDiscountSubscribeBinding;

    .line 190
    .line 191
    iget-object v5, p1, Lcom/startshorts/androidplayer/databinding/DialogDiscountSubscribeBinding;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 192
    .line 193
    const-string p1, "layContent"

    .line 194
    .line 195
    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    new-instance v8, Lcom/startshorts/androidplayer/ui/fragment/purchase/k;

    .line 199
    .line 200
    invoke-direct {v8, p0, v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/k;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    const/4 v9, 0x1

    .line 204
    const/4 v10, 0x0

    .line 205
    const-wide/16 v6, 0x0

    .line 206
    .line 207
    invoke-static/range {v5 .. v10}, Ljk/b0;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogDiscountSubscribeBinding;

    .line 215
    .line 216
    iget-object v5, p1, Lcom/startshorts/androidplayer/databinding/DialogDiscountSubscribeBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 217
    .line 218
    const-string p1, "tvDiscountSubs"

    .line 219
    .line 220
    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    new-instance v8, Lcom/startshorts/androidplayer/ui/fragment/purchase/l;

    .line 224
    .line 225
    invoke-direct {v8, p0, v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/l;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-static/range {v5 .. v10}, Ljk/b0;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogDiscountSubscribeBinding;

    .line 236
    .line 237
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogDiscountSubscribeBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;

    .line 238
    .line 239
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    .line 245
    .line 246
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 247
    .line 248
    .line 249
    move-result v1

    .line 250
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    invoke-virtual {p1, v1, v3}, Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;->setColor(II)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogDiscountSubscribeBinding;

    .line 262
    .line 263
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogDiscountSubscribeBinding;->i:Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;

    .line 264
    .line 265
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    invoke-virtual {p1, v1, v2}, Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;->setColor(II)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getDiscountTime()Ljava/lang/Long;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    const-wide/16 v0, 0x0

    .line 281
    .line 282
    if-eqz p1, :cond_5

    .line 283
    .line 284
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 285
    .line 286
    .line 287
    move-result-wide v2

    .line 288
    goto :goto_1

    .line 289
    :cond_5
    move-wide v2, v0

    .line 290
    :goto_1
    sget-object p1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 291
    .line 292
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 293
    .line 294
    .line 295
    move-result-wide v4

    .line 296
    sub-long/2addr v2, v4

    .line 297
    const/16 p1, 0x3e8

    .line 298
    .line 299
    int-to-long v4, p1

    .line 300
    div-long/2addr v2, v4

    .line 301
    cmp-long p1, v2, v0

    .line 302
    .line 303
    if-gtz p1, :cond_6

    .line 304
    .line 305
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;->dismiss()V

    .line 306
    .line 307
    .line 308
    return-void

    .line 309
    :cond_6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;->J()V

    .line 310
    .line 311
    .line 312
    sget-object p1, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 313
    .line 314
    long-to-int v0, v2

    .line 315
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/purchase/m;

    .line 316
    .line 317
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/m;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;)V

    .line 318
    .line 319
    .line 320
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/purchase/n;

    .line 321
    .line 322
    invoke-direct {v2, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/n;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {p1, v0, v1, v2}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->d(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/r;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;->m:Lkotlinx/coroutines/r;

    .line 330
    .line 331
    :cond_7
    return-void
.end method

.method private static final N(Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;Ljava/lang/String;Landroid/view/View;)Lkotlin/Unit;
    .locals 8

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;->k:Lcom/startshorts/androidplayer/bean/discount/DiscountSubscribeInfo;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discount/DiscountSubscribeInfo;->getSubscribeSkuResponse()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object p2, v0

    .line 17
    :goto_0
    if-eqz p2, :cond_2

    .line 18
    .line 19
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;->l:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayCode()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :cond_1
    move-object v5, v0

    .line 28
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;->i:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    const-string v7, "image"

    .line 37
    .line 38
    const-string v3, "current_membership_upgrade"

    .line 39
    .line 40
    move-object v4, p1

    .line 41
    invoke-virtual/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->n0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;->dismiss()V

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;->j:Lkotlin/jvm/functions/Function0;

    .line 48
    .line 49
    if-eqz p0, :cond_3

    .line 50
    .line 51
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 55
    .line 56
    return-object p0
.end method

.method private static final O(Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;Ljava/lang/String;Landroid/view/View;)Lkotlin/Unit;
    .locals 8

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;->k:Lcom/startshorts/androidplayer/bean/discount/DiscountSubscribeInfo;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discount/DiscountSubscribeInfo;->getSubscribeSkuResponse()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object p2, v0

    .line 17
    :goto_0
    if-eqz p2, :cond_2

    .line 18
    .line 19
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;->l:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayCode()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :cond_1
    move-object v5, v0

    .line 28
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;->i:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    const-string v7, "confirm_btn"

    .line 37
    .line 38
    const-string v3, "current_membership_upgrade"

    .line 39
    .line 40
    move-object v4, p1

    .line 41
    invoke-virtual/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->n0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;->dismiss()V

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;->j:Lkotlin/jvm/functions/Function0;

    .line 48
    .line 49
    if-eqz p0, :cond_3

    .line 50
    .line 51
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 55
    .line 56
    return-object p0
.end method

.method private static final P(Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;I)Lkotlin/Unit;
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 2
    .line 3
    int-to-long v1, p1

    .line 4
    const/4 p1, 0x1

    .line 5
    invoke-virtual {v0, v1, v2, p1}, Lcom/startshorts/androidplayer/utils/TimeUtil;->c(JZ)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcom/startshorts/androidplayer/databinding/DialogDiscountSubscribeBinding;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/startshorts/androidplayer/databinding/DialogDiscountSubscribeBinding;->h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p0
.end method

.method private static final Q(Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method


# virtual methods
.method public final R(Lcom/startshorts/androidplayer/bean/discount/DiscountSubscribeInfo;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/discount/DiscountSubscribeInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;->k:Lcom/startshorts/androidplayer/bean/discount/DiscountSubscribeInfo;

    .line 2
    .line 3
    return-void
.end method

.method public final S(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;->l:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    return-void
.end method

.method public final T(Lkotlin/jvm/functions/Function0;)V
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;->j:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public dismiss()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;->k:Lcom/startshorts/androidplayer/bean/discount/DiscountSubscribeInfo;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discount/DiscountSubscribeInfo;->getSubscribeSkuResponse()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v1

    .line 12
    :goto_0
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;->K(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;->l:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayCode()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :cond_1
    move-object v6, v1

    .line 27
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 28
    .line 29
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;->i:Ljava/lang/String;

    .line 30
    .line 31
    const-string v4, "current_membership_upgrade"

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    invoke-virtual/range {v2 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->o0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->dismiss()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public i()F
    .locals 1

    .line 1
    const v0, 0x3f4ccccd    # 0.8f

    .line 2
    .line 3
    .line 4
    return v0
.end method

.method public k()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->dialog_discount_subscribe:I

    .line 2
    .line 3
    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "DiscountSubscribeDialog"

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
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    const-string p2, "from"

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-nez p1, :cond_2

    .line 32
    .line 33
    :cond_1
    const-string p1, ""

    .line 34
    .line 35
    :cond_2
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;->i:Ljava/lang/String;

    .line 36
    .line 37
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;->L()V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;->k:Lcom/startshorts/androidplayer/bean/discount/DiscountSubscribeInfo;

    .line 41
    .line 42
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;->M(Lcom/startshorts/androidplayer/bean/discount/DiscountSubscribeInfo;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public p()I
    .locals 2

    .line 1
    sget-object v0, Lfk/v;->a:Lfk/v;

    .line 2
    .line 3
    invoke-virtual {v0}, Lfk/v;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sget-object v1, Lfk/z;->a:Lfk/z;

    .line 16
    .line 17
    invoke-virtual {v1}, Lfk/z;->o()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    :goto_0
    sub-int/2addr v0, v1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    sget-object v1, Lfk/z;->a:Lfk/z;

    .line 30
    .line 31
    invoke-virtual {v1}, Lfk/z;->o()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    mul-int/lit8 v1, v1, 0x2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :goto_1
    return v0
.end method
