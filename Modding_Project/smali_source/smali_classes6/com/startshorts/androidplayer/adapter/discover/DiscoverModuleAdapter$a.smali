.class final Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$a;
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
    name = "a"
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
        "SMAP\nDiscoverModuleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$BannerViewHolder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,2303:1\n1863#2,2:2304\n*S KotlinDebug\n*F\n+ 1 DiscoverModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$BannerViewHolder\n*L\n1113#1:2304,2\n*E\n"
    }
.end annotation


# instance fields
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleBannerBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic h:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleBannerBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleBannerBinding;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$a;->h:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$a;->g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleBannerBinding;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic j(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$a;->m(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Landroid/view/View;I)V

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
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$a;->k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleBannerBinding;

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$a;->l(ILcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleBannerBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$a;->g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleBannerBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public l(ILcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V
    .locals 6
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
    new-instance p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;

    .line 10
    .line 11
    invoke-direct {p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$a;->k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleBannerBinding;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;-><init>(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$a;->h:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->D(Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 34
    .line 35
    .line 36
    const/16 v2, 0x8

    .line 37
    .line 38
    const v3, 0x3f543958    # 0.829f

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2, v3}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->O(IF)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 42
    .line 43
    .line 44
    sget-object v2, Lfk/z;->a:Lfk/z;

    .line 45
    .line 46
    invoke-virtual {v2}, Lfk/z;->b()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    invoke-virtual {v0, v3}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->M(I)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Lfk/z;->l()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-virtual {v2}, Lfk/z;->l()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    invoke-virtual {v0, v3, v2}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->Q(II)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 62
    .line 63
    .line 64
    const/4 v2, 0x1

    .line 65
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->E(Z)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 66
    .line 67
    .line 68
    const/16 v2, 0xbb8

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->G(I)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 71
    .line 72
    .line 73
    const/16 v2, 0x1f4

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->R(I)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->j0()Landroidx/lifecycle/Lifecycle;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->A(Landroidx/lifecycle/Lifecycle;)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 83
    .line 84
    .line 85
    const/4 v2, 0x0

    .line 86
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->P(Z)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 87
    .line 88
    .line 89
    new-instance v3, Lcom/startshorts/androidplayer/adapter/discover/w;

    .line 90
    .line 91
    invoke-direct {v3, p2, v1}, Lcom/startshorts/androidplayer/adapter/discover/w;-><init>(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v3}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->J(Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$c;)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 95
    .line 96
    .line 97
    new-instance v3, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$a$a;

    .line 98
    .line 99
    invoke-direct {v3, p1, v0, v1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$a$a;-><init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v3}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->B(Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$b;)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getShortPlayResponseList()Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    if-eqz p1, :cond_0

    .line 110
    .line 111
    move-object v3, p1

    .line 112
    check-cast v3, Ljava/lang/Iterable;

    .line 113
    .line 114
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-eqz v4, :cond_0

    .line 123
    .line 124
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    check-cast v4, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 129
    .line 130
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getBannerId()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->setModuleId(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getTitle()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->setModuleName(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getRecommendId()Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->setRecommendId(Ljava/lang/Integer;)V

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_0
    if-eqz p1, :cond_1

    .line 153
    .line 154
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    check-cast v3, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 159
    .line 160
    if-eqz v3, :cond_1

    .line 161
    .line 162
    invoke-static {v1, v2, v3, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->c0(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V

    .line 163
    .line 164
    .line 165
    :cond_1
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->g(Ljava/util/List;)V

    .line 166
    .line 167
    .line 168
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$a;->h:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 169
    .line 170
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 171
    .line 172
    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    invoke-static {p1, v1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->e0(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Ljava/lang/ref/WeakReference;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$a;->k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleBannerBinding;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleBannerBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 183
    .line 184
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$a;->k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleBannerBinding;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleBannerBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 192
    .line 193
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 194
    .line 195
    sget-object v3, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;->p:Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter$a;

    .line 196
    .line 197
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter$a;->c()I

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    const/4 v4, -0x1

    .line 202
    invoke-direct {v1, v4, v3}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 203
    .line 204
    .line 205
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 206
    .line 207
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getTopMargin()I

    .line 208
    .line 209
    .line 210
    move-result p2

    .line 211
    iput p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 212
    .line 213
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 214
    .line 215
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    .line 217
    .line 218
    return-void
.end method
