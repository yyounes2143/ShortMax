.class final Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$c;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "DiscoverModuleAdapter.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;",
        ">.ViewHolder;",
        "Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$l;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDiscoverModuleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$BannerViewHolder3\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,2303:1\n1863#2,2:2304\n256#3,2:2306\n256#3,2:2308\n*S KotlinDebug\n*F\n+ 1 DiscoverModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$BannerViewHolder3\n*L\n1279#1:2304,2\n1321#1:2306,2\n1323#1:2308,2\n*E\n"
    }
.end annotation


# instance fields
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleBanner3Binding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic h:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleBanner3Binding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleBanner3Binding;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$c;->h:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$c;->g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleBanner3Binding;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic j(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$c;->m(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final m(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getShortPlayResponseList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-static {p2, p3}, Lkotlin/collections/CollectionsKt;->t0(Ljava/util/List;I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    invoke-static {p1, p0, p2, p3}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->b0(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$l$a;->a(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$l;)Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public b(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$l$a;->b(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$l;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$c;->k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleBanner3Binding;

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
    check-cast p2, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$c;->l(ILcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleBanner3Binding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$c;->g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleBanner3Binding;

    .line 2
    .line 3
    return-object v0
.end method

.method public l(ILcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V
    .locals 8
    .param p2    # Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;
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
    sget-object p1, Lfk/z;->a:Lfk/z;

    .line 10
    .line 11
    invoke-virtual {p1}, Lfk/z;->j()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    new-instance v1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter4;

    .line 16
    .line 17
    invoke-direct {v1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter4;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v2, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$c;->k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleBanner3Binding;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-direct {v2, v3}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    iget-object v3, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$c;->h:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 38
    .line 39
    invoke-virtual {v2, v1}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->D(Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lfk/z;->a()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->M(I)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v0, v0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->Q(II)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 50
    .line 51
    .line 52
    const/4 p1, 0x1

    .line 53
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->E(Z)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 54
    .line 55
    .line 56
    const/16 v0, 0xbb8

    .line 57
    .line 58
    invoke-virtual {v2, v0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->G(I)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 59
    .line 60
    .line 61
    const/16 v0, 0x1f4

    .line 62
    .line 63
    invoke-virtual {v2, v0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->R(I)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->j0()Landroidx/lifecycle/Lifecycle;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v2, v0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->A(Landroidx/lifecycle/Lifecycle;)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 71
    .line 72
    .line 73
    const/4 v0, 0x0

    .line 74
    invoke-virtual {v2, v0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->P(Z)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 75
    .line 76
    .line 77
    new-instance v1, Lcom/startshorts/androidplayer/adapter/discover/y;

    .line 78
    .line 79
    invoke-direct {v1, p2, v3}, Lcom/startshorts/androidplayer/adapter/discover/y;-><init>(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v1}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->J(Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$c;)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 83
    .line 84
    .line 85
    new-instance v1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$c$a;

    .line 86
    .line 87
    invoke-direct {v1, v2, p0, v3, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$c$a;-><init>(Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$c;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v1}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->B(Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$b;)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getShortPlayResponseList()Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    if-eqz v1, :cond_0

    .line 98
    .line 99
    move-object v4, v1

    .line 100
    check-cast v4, Ljava/lang/Iterable;

    .line 101
    .line 102
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    if-eqz v5, :cond_0

    .line 111
    .line 112
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    check-cast v5, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 117
    .line 118
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getBannerId()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    invoke-virtual {v5, v6}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->setModuleId(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getTitle()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    invoke-virtual {v5, v6}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->setModuleName(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getRecommendId()Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    invoke-virtual {v5, v6}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->setRecommendId(Ljava/lang/Integer;)V

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_0
    if-eqz v1, :cond_1

    .line 141
    .line 142
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    check-cast v4, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 147
    .line 148
    if-eqz v4, :cond_1

    .line 149
    .line 150
    invoke-static {v3, v0, v4, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->c0(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V

    .line 151
    .line 152
    .line 153
    :cond_1
    invoke-virtual {v2, v1}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->g(Ljava/util/List;)V

    .line 154
    .line 155
    .line 156
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$c;->h:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 157
    .line 158
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 159
    .line 160
    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    invoke-static {v1, v3}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->e0(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Ljava/lang/ref/WeakReference;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$c;->k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleBanner3Binding;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleBanner3Binding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 171
    .line 172
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$c;->k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleBanner3Binding;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleBanner3Binding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 180
    .line 181
    new-instance v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 182
    .line 183
    sget-object v4, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter4;->m:Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter4$a;

    .line 184
    .line 185
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter4$a;->c()I

    .line 186
    .line 187
    .line 188
    move-result v5

    .line 189
    const/4 v6, -0x1

    .line 190
    invoke-direct {v3, v6, v5}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 191
    .line 192
    .line 193
    iput v0, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 194
    .line 195
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getTopMargin()I

    .line 196
    .line 197
    .line 198
    move-result v5

    .line 199
    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 200
    .line 201
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 202
    .line 203
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getShortPlayResponseList()Ljava/util/List;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    const/4 v2, 0x0

    .line 211
    if-eqz v1, :cond_2

    .line 212
    .line 213
    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->t0(Ljava/util/List;I)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    check-cast v1, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 218
    .line 219
    goto :goto_1

    .line 220
    :cond_2
    move-object v1, v2

    .line 221
    :goto_1
    const/16 v3, 0x8

    .line 222
    .line 223
    if-eqz v1, :cond_5

    .line 224
    .line 225
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->getBannerContent()Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    if-eqz v5, :cond_3

    .line 230
    .line 231
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->getCoverId()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    goto :goto_2

    .line 236
    :cond_3
    move-object v5, v2

    .line 237
    :goto_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 238
    .line 239
    .line 240
    move-result v5

    .line 241
    if-nez v5, :cond_5

    .line 242
    .line 243
    sget-object v5, Lkk/f;->a:Lkk/f;

    .line 244
    .line 245
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$c;->k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleBanner3Binding;

    .line 246
    .line 247
    .line 248
    move-result-object v6

    .line 249
    iget-object v6, v6, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleBanner3Binding;->c:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 250
    .line 251
    new-instance v7, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 252
    .line 253
    invoke-direct {v7}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->getBannerContent()Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    if-eqz v1, :cond_4

    .line 261
    .line 262
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->getCoverId()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    :cond_4
    invoke-virtual {v7, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    new-instance v1, Ld4/a;

    .line 270
    .line 271
    const/4 v2, 0x5

    .line 272
    invoke-direct {v1, p1, v2}, Ld4/a;-><init>(II)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v7, v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setIterativeBoxBlurPostProcessor(Ld4/a;)V

    .line 276
    .line 277
    .line 278
    new-instance v1, Lz2/a;

    .line 279
    .line 280
    invoke-direct {v1}, Lz2/a;-><init>()V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v7, v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setControllerListener(Lz2/a;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter4$a;->b()I

    .line 287
    .line 288
    .line 289
    move-result v1

    .line 290
    div-int/2addr v1, v3

    .line 291
    invoke-virtual {v7, v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter4$a;->a()I

    .line 295
    .line 296
    .line 297
    move-result v1

    .line 298
    div-int/2addr v1, v3

    .line 299
    invoke-virtual {v7, v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter4$a;->d()I

    .line 303
    .line 304
    .line 305
    move-result v1

    .line 306
    div-int/2addr v1, v3

    .line 307
    invoke-virtual {v7, v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeWidth(I)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter4$a;->c()I

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    div-int/2addr v1, v3

    .line 315
    invoke-virtual {v7, v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeHeight(I)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v5, v6, v7}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 319
    .line 320
    .line 321
    :cond_5
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$c;->k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleBanner3Binding;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleBanner3Binding;->b:Lcom/startshorts/androidplayer/ui/view/discover/BannerIndicatorCircleView;

    .line 326
    .line 327
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getShortPlayResponseList()Ljava/util/List;

    .line 328
    .line 329
    .line 330
    move-result-object p2

    .line 331
    if-eqz p2, :cond_6

    .line 332
    .line 333
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 334
    .line 335
    .line 336
    move-result p2

    .line 337
    goto :goto_3

    .line 338
    :cond_6
    move p2, v0

    .line 339
    :goto_3
    if-gt p2, p1, :cond_7

    .line 340
    .line 341
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 345
    .line 346
    .line 347
    goto :goto_4

    .line 348
    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v1, p2}, Lcom/startshorts/androidplayer/ui/view/discover/BannerIndicatorCircleView;->setMax(I)V

    .line 355
    .line 356
    .line 357
    :goto_4
    return-void
.end method
