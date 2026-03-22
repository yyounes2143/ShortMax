.class final Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$a;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "SearchModuleAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/search/SearchModule;",
        ">.ViewHolder;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemSearchActBannerBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic h:Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;Lcom/startshorts/androidplayer/databinding/ItemSearchActBannerBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemSearchActBannerBinding;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$a;->h:Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$a;->g:Lcom/startshorts/androidplayer/databinding/ItemSearchActBannerBinding;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic j(I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$a;->m(I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final m(I)Lkotlin/Unit;
    .locals 4

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    new-instance v1, Lcom/startshorts/androidplayer/bean/act/ResourceIndex;

    .line 4
    .line 5
    sget-object v2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    invoke-direct {v1, p0, v2, v3}, Lcom/startshorts/androidplayer/bean/act/ResourceIndex;-><init>(IJ)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lud/b;->O4(Lcom/startshorts/androidplayer/bean/act/ResourceIndex;)V

    .line 15
    .line 16
    .line 17
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p0
.end method


# virtual methods
.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$a;->k()Lcom/startshorts/androidplayer/databinding/ItemSearchActBannerBinding;

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
    check-cast p2, Lcom/startshorts/androidplayer/bean/search/SearchModule;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$a;->l(ILcom/startshorts/androidplayer/bean/search/SearchModule;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k()Lcom/startshorts/androidplayer/databinding/ItemSearchActBannerBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$a;->g:Lcom/startshorts/androidplayer/databinding/ItemSearchActBannerBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public l(ILcom/startshorts/androidplayer/bean/search/SearchModule;)V
    .locals 21
    .param p2    # Lcom/startshorts/androidplayer/bean/search/SearchModule;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "item"

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-super/range {p0 .. p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->f(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$a;->h:Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;->W()Landroidx/lifecycle/Lifecycle;

    .line 16
    .line 17
    .line 18
    move-result-object v9

    .line 19
    if-nez v9, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$a;->k()Lcom/startshorts/androidplayer/databinding/ItemSearchActBannerBinding;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemSearchActBannerBinding;->a:Landroid/widget/FrameLayout;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 29
    .line 30
    .line 31
    iget-object v1, v0, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$a;->h:Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;

    .line 32
    .line 33
    invoke-static {v1}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;->T(Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;)Ljava/lang/ref/WeakReference;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 v1, 0x0

    .line 47
    :goto_0
    const/4 v14, 0x0

    .line 48
    if-nez v1, :cond_4

    .line 49
    .line 50
    iget-object v1, v0, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$a;->h:Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;

    .line 51
    .line 52
    const-string v3, "create ActBanner"

    .line 53
    .line 54
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->r(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    new-instance v1, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;

    .line 58
    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$a;->k()Lcom/startshorts/androidplayer/databinding/ItemSearchActBannerBinding;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v3}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    const-string v4, "getContext(...)"

    .line 72
    .line 73
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-direct {v1, v3}, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;-><init>(Landroid/content/Context;)V

    .line 77
    .line 78
    .line 79
    iget-object v3, v0, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$a;->h:Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;

    .line 80
    .line 81
    sget-object v4, Lud/b;->a:Lud/b;

    .line 82
    .line 83
    invoke-virtual {v4}, Lud/b;->B1()Lcom/startshorts/androidplayer/bean/act/ResourceIndex;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    sget-object v6, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->a:Lcom/startshorts/androidplayer/manager/act/ActResourceManager;

    .line 88
    .line 89
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->A()Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v10

    .line 93
    if-nez v5, :cond_2

    .line 94
    .line 95
    new-instance v5, Lcom/startshorts/androidplayer/bean/act/ResourceIndex;

    .line 96
    .line 97
    sget-object v6, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 98
    .line 99
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 100
    .line 101
    .line 102
    move-result-wide v6

    .line 103
    invoke-direct {v5, v14, v6, v7}, Lcom/startshorts/androidplayer/bean/act/ResourceIndex;-><init>(IJ)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, v5}, Lud/b;->O4(Lcom/startshorts/androidplayer/bean/act/ResourceIndex;)V

    .line 107
    .line 108
    .line 109
    move v7, v14

    .line 110
    goto :goto_2

    .line 111
    :cond_2
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/act/ResourceIndex;->getIndex()I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/act/ResourceIndex;->getTime()J

    .line 116
    .line 117
    .line 118
    move-result-wide v16

    .line 119
    sget-object v5, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 120
    .line 121
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 122
    .line 123
    .line 124
    move-result-wide v18

    .line 125
    sget-object v15, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 126
    .line 127
    const/16 v20, 0x1

    .line 128
    .line 129
    invoke-virtual/range {v15 .. v20}, Lcom/startshorts/androidplayer/utils/TimeUtil;->n(JJI)Z

    .line 130
    .line 131
    .line 132
    move-result v5

    .line 133
    if-eqz v5, :cond_3

    .line 134
    .line 135
    move v4, v14

    .line 136
    goto :goto_1

    .line 137
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 138
    .line 139
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    rem-int/2addr v4, v5

    .line 144
    :goto_1
    move v7, v4

    .line 145
    :goto_2
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 146
    .line 147
    sget-object v5, Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter;->q:Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter$a;

    .line 148
    .line 149
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter$a;->a()I

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    const/4 v6, -0x1

    .line 154
    invoke-direct {v4, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;->V()Ljava/lang/ref/WeakReference;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    sget-object v3, Lfk/z;->a:Lfk/z;

    .line 165
    .line 166
    invoke-virtual {v3}, Lfk/z;->m()I

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    int-to-float v6, v3

    .line 171
    new-instance v8, Lcom/startshorts/androidplayer/adapter/search/a;

    .line 172
    .line 173
    invoke-direct {v8}, Lcom/startshorts/androidplayer/adapter/search/a;-><init>()V

    .line 174
    .line 175
    .line 176
    const/16 v12, 0x80

    .line 177
    .line 178
    const/4 v13, 0x0

    .line 179
    const-string v5, "search_banner"

    .line 180
    .line 181
    const/4 v11, 0x0

    .line 182
    move-object v3, v1

    .line 183
    invoke-static/range {v3 .. v13}, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;->B(Lcom/startshorts/androidplayer/ui/view/act/ActBanner;Ljava/lang/ref/WeakReference;Ljava/lang/String;FILkotlin/jvm/functions/Function1;Landroidx/lifecycle/Lifecycle;Ljava/util/List;Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;ILjava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    iget-object v3, v0, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$a;->h:Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;

    .line 187
    .line 188
    new-instance v4, Ljava/lang/ref/WeakReference;

    .line 189
    .line 190
    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    invoke-static {v3, v4}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;->U(Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;Ljava/lang/ref/WeakReference;)V

    .line 194
    .line 195
    .line 196
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$a;->k()Lcom/startshorts/androidplayer/databinding/ItemSearchActBannerBinding;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    iget-object v3, v3, Lcom/startshorts/androidplayer/databinding/ItemSearchActBannerBinding;->a:Landroid/widget/FrameLayout;

    .line 201
    .line 202
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/search/SearchModule;->getTopMargin()I

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    invoke-virtual {v3, v14, v1, v14, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 210
    .line 211
    .line 212
    return-void
.end method
