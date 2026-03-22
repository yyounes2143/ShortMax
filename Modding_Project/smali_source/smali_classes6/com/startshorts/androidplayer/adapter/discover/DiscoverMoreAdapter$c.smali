.class final Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$c;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "DiscoverMoreAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
        ">.ViewHolder;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDiscoverMoreAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverMoreAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$OtherViewHolder\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,218:1\n256#2,2:219\n256#2,2:221\n256#2,2:223\n*S KotlinDebug\n*F\n+ 1 DiscoverMoreAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$OtherViewHolder\n*L\n166#1:219,2\n168#1:221,2\n173#1:223,2\n*E\n"
    }
.end annotation


# instance fields
.field private final g:I

.field private final h:Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreOtherBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;ILcom/startshorts/androidplayer/databinding/ItemDiscoverMoreOtherBinding;)V
    .locals 1
    .param p2    # I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreOtherBinding;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$c;->i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput p2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$c;->g:I

    .line 12
    .line 13
    iput-object p3, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$c;->h:Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreOtherBinding;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic j(Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$c;->o(Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final n(Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$c;->g:I

    .line 2
    .line 3
    const/16 v1, 0xc

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    if-ne v0, v1, :cond_4

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->getCanShowDiscountTag()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_4

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$c;->k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreOtherBinding;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreOtherBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$c;->i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;->M()Ljava/lang/Long;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const-wide/16 v4, 0x0

    .line 28
    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 32
    .line 33
    .line 34
    move-result-wide v6

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move-wide v6, v4

    .line 37
    :goto_0
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;->L()Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 44
    .line 45
    .line 46
    move-result-wide v4

    .line 47
    :cond_1
    sget-object v1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 50
    .line 51
    .line 52
    move-result-wide v8

    .line 53
    cmp-long v3, v8, v6

    .line 54
    .line 55
    if-ltz v3, :cond_3

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 58
    .line 59
    .line 60
    move-result-wide v6

    .line 61
    cmp-long v1, v6, v4

    .line 62
    .line 63
    if-lez v1, :cond_2

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    const/4 v2, 0x0

    .line 67
    :cond_3
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->getShortPlaySubscript()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    .line 81
    new-instance p1, Lcom/startshorts/androidplayer/adapter/discover/a1;

    .line 82
    .line 83
    invoke-direct {p1, v0}, Lcom/startshorts/androidplayer/adapter/discover/a1;-><init>(Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;)V

    .line 84
    .line 85
    .line 86
    const-wide/16 v1, 0x1f4

    .line 87
    .line 88
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 89
    .line 90
    .line 91
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_4
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$c;->k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreOtherBinding;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreOtherBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 100
    .line 101
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 102
    .line 103
    .line 104
    :goto_2
    return-void
.end method

.method private static final o(Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$c;->k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreOtherBinding;

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
    check-cast p2, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$c;->l(ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic g(ILjava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$c;->m(ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreOtherBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$c;->h:Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreOtherBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public l(ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V
    .locals 9
    .param p2    # Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "item"

    .line 3
    .line 4
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->f(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$c;->k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreOtherBinding;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreOtherBinding;->b:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 15
    .line 16
    const-string v1, "coverIv"

    .line 17
    .line 18
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    const/high16 v3, 0x41c00000    # 24.0f

    .line 25
    .line 26
    invoke-static {v3}, Ljk/g;->a(F)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    move v4, v3

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v4, v1

    .line 33
    :goto_0
    const/high16 v3, 0x41b00000    # 22.0f

    .line 34
    .line 35
    invoke-static {v3}, Ljk/g;->a(F)I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    const/4 v7, 0x5

    .line 40
    const/4 v8, 0x0

    .line 41
    const/4 v3, 0x0

    .line 42
    const/4 v5, 0x0

    .line 43
    invoke-static/range {v2 .. v8}, Ljk/b0;->i(Landroid/view/View;IIIIILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    sget-object v2, Lkk/f;->a:Lkk/f;

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$c;->k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreOtherBinding;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    iget-object v3, v3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreOtherBinding;->b:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 53
    .line 54
    new-instance v4, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 55
    .line 56
    invoke-direct {v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 57
    .line 58
    .line 59
    iget-object v5, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$c;->i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;

    .line 60
    .line 61
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPicUrl()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    invoke-virtual {v4, v6}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    sget-object v6, Lid/c;->a:Lid/c;

    .line 69
    .line 70
    invoke-virtual {v6}, Lid/c;->b()I

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    invoke-virtual {v4, v7}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v6}, Lid/c;->a()I

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    invoke-virtual {v4, v6}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 82
    .line 83
    .line 84
    invoke-static {v5}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;->I(Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;)I

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    invoke-virtual {v4, v6}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeWidth(I)V

    .line 89
    .line 90
    .line 91
    invoke-static {v5}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;->H(Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;)I

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    invoke-virtual {v4, v6}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeHeight(I)V

    .line 96
    .line 97
    .line 98
    sget v6, Lcom/startshorts/androidplayer/R$drawable;->ic_cover_placeholder:I

    .line 99
    .line 100
    invoke-virtual {v4, v6}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, v0}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 104
    .line 105
    .line 106
    invoke-static {v5}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;->F(Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;)F

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerRadius(F)V

    .line 111
    .line 112
    .line 113
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 114
    .line 115
    invoke-virtual {v2, v3, v4}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 116
    .line 117
    .line 118
    iget v2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$c;->g:I

    .line 119
    .line 120
    const/4 v3, 0x6

    .line 121
    const/16 v4, 0x8

    .line 122
    .line 123
    if-ne v2, v3, :cond_2

    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$c;->k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreOtherBinding;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreOtherBinding;->f:Landroid/widget/ImageView;

    .line 130
    .line 131
    iget-object v3, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$c;->i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;

    .line 132
    .line 133
    add-int/lit8 v5, p1, 0x1

    .line 134
    .line 135
    const/16 v6, 0xa

    .line 136
    .line 137
    if-le v5, v6, :cond_1

    .line 138
    .line 139
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 150
    .line 151
    .line 152
    invoke-static {v3}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;->G(Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;)[Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    aget-object p1, v1, p1

    .line 157
    .line 158
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 163
    .line 164
    .line 165
    :goto_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_2
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$c;->k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreOtherBinding;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreOtherBinding;->f:Landroid/widget/ImageView;

    .line 174
    .line 175
    const-string v1, "rankNumIv"

    .line 176
    .line 177
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 181
    .line 182
    .line 183
    :goto_2
    invoke-direct {p0, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$c;->n(Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$c;->k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreOtherBinding;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreOtherBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 191
    .line 192
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayName()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$c;->k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreOtherBinding;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreOtherBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 204
    .line 205
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getSummary()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getEpisodeNum()I

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    if-ltz p1, :cond_4

    .line 217
    .line 218
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getTotalEpisodes()I

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    if-lez p1, :cond_4

    .line 223
    .line 224
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$c;->k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreOtherBinding;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreOtherBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 229
    .line 230
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$c;->k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreOtherBinding;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreOtherBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 235
    .line 236
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    sget v2, Lcom/startshorts/androidplayer/R$string;->common_current_ep:I

    .line 241
    .line 242
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getEpisodeNum()I

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    if-nez v3, :cond_3

    .line 247
    .line 248
    goto :goto_3

    .line 249
    :cond_3
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getEpisodeNum()I

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    :goto_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$c;->k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreOtherBinding;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreOtherBinding;->h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 273
    .line 274
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$c;->k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreOtherBinding;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreOtherBinding;->h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 279
    .line 280
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    sget v1, Lcom/startshorts/androidplayer/R$string;->common_total_ep:I

    .line 285
    .line 286
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getTotalEpisodes()I

    .line 287
    .line 288
    .line 289
    move-result p2

    .line 290
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object p2

    .line 294
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object p2

    .line 298
    invoke-virtual {v0, v1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object p2

    .line 302
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    .line 304
    .line 305
    :cond_4
    return-void
.end method

.method public m(ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Ljava/util/List;)V
    .locals 1
    .param p2    # Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "payloads"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_3

    .line 7
    .line 8
    const-string v0, "ignore_refresh"

    .line 9
    .line 10
    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string/jumbo v0, "update_episode_num"

    .line 18
    .line 19
    .line 20
    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$c;->k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreOtherBinding;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreOtherBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$c;->k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreOtherBinding;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    iget-object p3, p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreOtherBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 37
    .line 38
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    sget v0, Lcom/startshorts/androidplayer/R$string;->common_current_ep:I

    .line 43
    .line 44
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getEpisodeNum()I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-virtual {p3, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const-string/jumbo v0, "update_discount_tag"

    .line 65
    .line 66
    .line 67
    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p3

    .line 71
    if-eqz p3, :cond_2

    .line 72
    .line 73
    invoke-direct {p0, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$c;->n(Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->h(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$c;->l(ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V

    .line 81
    .line 82
    .line 83
    :cond_3
    :goto_0
    return-void
.end method
