.class final Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$b;
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
    name = "b"
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
        "SMAP\nDiscoverModuleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$BannerViewHolder2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,2303:1\n1863#2,2:2304\n*S KotlinDebug\n*F\n+ 1 DiscoverModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$BannerViewHolder2\n*L\n1187#1:2304,2\n*E\n"
    }
.end annotation


# instance fields
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleBanner2Binding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic h:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleBanner2Binding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleBanner2Binding;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$b;->h:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$b;->g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleBanner2Binding;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic j(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$b;->m(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Landroid/view/View;I)V

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
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$b;->k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleBanner2Binding;

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$b;->l(ILcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleBanner2Binding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$b;->g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleBanner2Binding;

    .line 2
    .line 3
    return-object v0
.end method

.method public l(ILcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V
    .locals 11
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
    new-instance v2, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;

    .line 10
    .line 11
    invoke-direct {v2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance p1, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$b;->k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleBanner2Binding;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-direct {p1, v0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;-><init>(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$b;->h:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 32
    .line 33
    invoke-virtual {p1, v2}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->D(Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 34
    .line 35
    .line 36
    const v1, 0x3f543958    # 0.829f

    .line 37
    .line 38
    .line 39
    const/16 v7, 0x8

    .line 40
    .line 41
    invoke-virtual {p1, v7, v1}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->O(IF)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 42
    .line 43
    .line 44
    sget-object v1, Lfk/z;->a:Lfk/z;

    .line 45
    .line 46
    invoke-virtual {v1}, Lfk/z;->b()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->M(I)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 51
    .line 52
    .line 53
    const/high16 v1, 0x42340000    # 45.0f

    .line 54
    .line 55
    invoke-static {v1}, Ljk/g;->a(F)I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    invoke-static {v1}, Ljk/g;->a(F)I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-virtual {p1, v3, v1}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->Q(II)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 64
    .line 65
    .line 66
    const/4 v8, 0x1

    .line 67
    invoke-virtual {p1, v8}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->E(Z)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 68
    .line 69
    .line 70
    const/16 v1, 0xbb8

    .line 71
    .line 72
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->G(I)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 73
    .line 74
    .line 75
    const/16 v1, 0x1f4

    .line 76
    .line 77
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->R(I)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->j0()Landroidx/lifecycle/Lifecycle;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->A(Landroidx/lifecycle/Lifecycle;)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 85
    .line 86
    .line 87
    const/4 v9, 0x0

    .line 88
    invoke-virtual {p1, v9}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->P(Z)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 89
    .line 90
    .line 91
    new-instance v1, Lcom/startshorts/androidplayer/adapter/discover/x;

    .line 92
    .line 93
    invoke-direct {v1, p2, v0}, Lcom/startshorts/androidplayer/adapter/discover/x;-><init>(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->J(Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$c;)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 97
    .line 98
    .line 99
    new-instance v10, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$b$a;

    .line 100
    .line 101
    move-object v1, v10

    .line 102
    move-object v3, p1

    .line 103
    move-object v4, v0

    .line 104
    move-object v5, p2

    .line 105
    move-object v6, p0

    .line 106
    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$b$a;-><init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$b;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v10}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->B(Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$b;)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getShortPlayResponseList()Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    if-eqz v1, :cond_0

    .line 117
    .line 118
    move-object v2, v1

    .line 119
    check-cast v2, Ljava/lang/Iterable;

    .line 120
    .line 121
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    if-eqz v3, :cond_0

    .line 130
    .line 131
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    check-cast v3, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 136
    .line 137
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getBannerId()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->setModuleId(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getTitle()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->setModuleName(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getRecommendId()Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->setRecommendId(Ljava/lang/Integer;)V

    .line 156
    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_0
    if-eqz v1, :cond_1

    .line 160
    .line 161
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    check-cast v2, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 166
    .line 167
    if-eqz v2, :cond_1

    .line 168
    .line 169
    invoke-static {v0, v9, v2, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->c0(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPicUrl()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-nez v0, :cond_1

    .line 181
    .line 182
    sget-object v0, Lkk/f;->a:Lkk/f;

    .line 183
    .line 184
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$b;->k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleBanner2Binding;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    iget-object v3, v3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleBanner2Binding;->c:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 189
    .line 190
    new-instance v4, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 191
    .line 192
    invoke-direct {v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPicUrl()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    invoke-virtual {v4, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    new-instance v2, Ld4/a;

    .line 203
    .line 204
    const/4 v5, 0x5

    .line 205
    invoke-direct {v2, v8, v5}, Ld4/a;-><init>(II)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v4, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setIterativeBoxBlurPostProcessor(Ld4/a;)V

    .line 209
    .line 210
    .line 211
    new-instance v2, Lz2/a;

    .line 212
    .line 213
    invoke-direct {v2}, Lz2/a;-><init>()V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v4, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setControllerListener(Lz2/a;)V

    .line 217
    .line 218
    .line 219
    sget-object v2, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;->p:Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3$a;

    .line 220
    .line 221
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3$a;->b()I

    .line 222
    .line 223
    .line 224
    move-result v5

    .line 225
    div-int/2addr v5, v7

    .line 226
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3$a;->a()I

    .line 230
    .line 231
    .line 232
    move-result v5

    .line 233
    div-int/2addr v5, v7

    .line 234
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3$a;->d()I

    .line 238
    .line 239
    .line 240
    move-result v5

    .line 241
    div-int/2addr v5, v7

    .line 242
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeWidth(I)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3$a;->c()I

    .line 246
    .line 247
    .line 248
    move-result v2

    .line 249
    div-int/2addr v2, v7

    .line 250
    invoke-virtual {v4, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeHeight(I)V

    .line 251
    .line 252
    .line 253
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 254
    .line 255
    invoke-virtual {v0, v3, v4}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 256
    .line 257
    .line 258
    :cond_1
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->g(Ljava/util/List;)V

    .line 259
    .line 260
    .line 261
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$b;->h:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 262
    .line 263
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 264
    .line 265
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->e0(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Ljava/lang/ref/WeakReference;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$b;->k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleBanner2Binding;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleBanner2Binding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 276
    .line 277
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 278
    .line 279
    .line 280
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 281
    .line 282
    sget-object v2, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;->p:Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3$a;

    .line 283
    .line 284
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3$a;->c()I

    .line 285
    .line 286
    .line 287
    move-result v2

    .line 288
    const/4 v3, -0x1

    .line 289
    invoke-direct {v1, v3, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 290
    .line 291
    .line 292
    iput v9, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 293
    .line 294
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getTopMargin()I

    .line 295
    .line 296
    .line 297
    move-result p2

    .line 298
    iput p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 299
    .line 300
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 301
    .line 302
    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    .line 304
    .line 305
    return-void
.end method
