.class public final Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;
.super Lcom/drake/brv/BindingAdapter;
.source "DownloadChooseListAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDownloadChooseListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadChooseListAdapter.kt\ncom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter\n+ 2 BindingAdapter.kt\ncom/drake/brv/BindingAdapter\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 BindingAdapter.kt\ncom/drake/brv/BindingAdapter$BindingViewHolder\n*L\n1#1,226:1\n243#2,6:227\n1872#3,3:233\n1863#3,2:236\n1863#3,2:238\n1872#3,3:240\n774#3:243\n865#3,2:244\n1160#4,7:246\n*S KotlinDebug\n*F\n+ 1 DownloadChooseListAdapter.kt\ncom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter\n*L\n33#1:227,6\n130#1:233,3\n147#1:236,2\n161#1:238,2\n173#1:240,3\n186#1:243\n186#1:244,2\n35#1:246,7\n*E\n"
    }
.end annotation


# instance fields
.field private final M:Landroidx/lifecycle/LifecycleOwner;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final N:Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private O:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;)V
    .locals 2
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "viewmodel"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/drake/brv/BindingAdapter;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;->M:Landroidx/lifecycle/LifecycleOwner;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;->N:Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;

    .line 17
    .line 18
    sget p1, Lcom/startshorts/androidplayer/R$layout;->item_vip_choose:I

    .line 19
    .line 20
    const-class p2, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;

    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/Class;->getModifiers()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/drake/brv/BindingAdapter;->q()Ljava/util/Map;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter$special$$inlined$addType$1;

    .line 41
    .line 42
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter$special$$inlined$addType$1;-><init>(I)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/drake/brv/BindingAdapter;->y()Ljava/util/Map;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter$special$$inlined$addType$2;

    .line 58
    .line 59
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter$special$$inlined$addType$2;-><init>(I)V

    .line 60
    .line 61
    .line 62
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    :goto_0
    new-instance p1, Lvh/b;

    .line 66
    .line 67
    invoke-direct {p1, p0}, Lvh/b;-><init>(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p1}, Lcom/drake/brv/BindingAdapter;->D(Lkotlin/jvm/functions/Function1;)V

    .line 71
    .line 72
    .line 73
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1, p0}, Lau/c;->p(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public static synthetic L(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;ILandroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;->U(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;ILandroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic M(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;->S(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic N(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;Lcom/drake/brv/BindingAdapter$BindingViewHolder;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;->O(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;Lcom/drake/brv/BindingAdapter$BindingViewHolder;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final O(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;Lcom/drake/brv/BindingAdapter$BindingViewHolder;)Lkotlin/Unit;
    .locals 10

    .line 1
    const-string v0, "$this$onBind"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->l()Landroidx/viewbinding/ViewBinding;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "null cannot be cast to non-null type com.startshorts.androidplayer.databinding.ItemVipChooseBinding"

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    const-class v0, Landroid/view/View;

    .line 15
    .line 16
    filled-new-array {v0}, [Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-class v2, Lcom/startshorts/androidplayer/databinding/ItemVipChooseBinding;

    .line 21
    .line 22
    const-string v3, "b"

    .line 23
    .line 24
    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 29
    .line 30
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ItemVipChooseBinding;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->n(Landroidx/viewbinding/ViewBinding;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 48
    .line 49
    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p0

    .line 53
    :cond_1
    invoke-virtual {p1}, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->l()Landroidx/viewbinding/ViewBinding;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-eqz v0, :cond_6

    .line 58
    .line 59
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ItemVipChooseBinding;

    .line 60
    .line 61
    :goto_0
    invoke-virtual {p1}, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->j()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->k()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;->M:Landroidx/lifecycle/LifecycleOwner;

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 74
    .line 75
    .line 76
    iget-object v2, v0, Lcom/startshorts/androidplayer/databinding/ItemVipChooseBinding;->f:Landroid/widget/TextView;

    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->getEpisode()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getEpisodeNum()I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    const-string v2, "getRoot(...)"

    .line 98
    .line 99
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    new-instance v7, Lvh/c;

    .line 103
    .line 104
    invoke-direct {v7, p0, v1, p1}, Lvh/c;-><init>(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;I)V

    .line 105
    .line 106
    .line 107
    const/4 v8, 0x1

    .line 108
    const/4 v9, 0x0

    .line 109
    const-wide/16 v5, 0x0

    .line 110
    .line 111
    invoke-static/range {v4 .. v9}, Ljk/b0;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;->N:Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;

    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;->A()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    const/16 p1, 0x8

    .line 121
    .line 122
    const/4 v2, 0x0

    .line 123
    if-eqz p0, :cond_3

    .line 124
    .line 125
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->getEpisode()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getEpisodeNum()I

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getEpisodeNum()I

    .line 134
    .line 135
    .line 136
    move-result p0

    .line 137
    if-ne v3, p0, :cond_3

    .line 138
    .line 139
    iget-object p0, v0, Lcom/startshorts/androidplayer/databinding/ItemVipChooseBinding;->f:Landroid/widget/TextView;

    .line 140
    .line 141
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    .line 143
    .line 144
    iget-object p0, v0, Lcom/startshorts/androidplayer/databinding/ItemVipChooseBinding;->e:Lcom/airbnb/lottie/LottieAnimationView;

    .line 145
    .line 146
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->isSelect()Z

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    if-eqz p0, :cond_2

    .line 154
    .line 155
    iget-object p0, v0, Lcom/startshorts/androidplayer/databinding/ItemVipChooseBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 156
    .line 157
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->bg_download_cur_item_selected:I

    .line 158
    .line 159
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_2
    iget-object p0, v0, Lcom/startshorts/androidplayer/databinding/ItemVipChooseBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 164
    .line 165
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->bg_download_cur_item_unselected:I

    .line 166
    .line 167
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_3
    iget-object p0, v0, Lcom/startshorts/androidplayer/databinding/ItemVipChooseBinding;->f:Landroid/widget/TextView;

    .line 172
    .line 173
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 174
    .line 175
    .line 176
    iget-object p0, v0, Lcom/startshorts/androidplayer/databinding/ItemVipChooseBinding;->e:Lcom/airbnb/lottie/LottieAnimationView;

    .line 177
    .line 178
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->isSelect()Z

    .line 182
    .line 183
    .line 184
    move-result p0

    .line 185
    if-eqz p0, :cond_4

    .line 186
    .line 187
    iget-object p0, v0, Lcom/startshorts/androidplayer/databinding/ItemVipChooseBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 188
    .line 189
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->bg_download_item_selected:I

    .line 190
    .line 191
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 192
    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_4
    iget-object p0, v0, Lcom/startshorts/androidplayer/databinding/ItemVipChooseBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 196
    .line 197
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->bg_download_item_unselected:I

    .line 198
    .line 199
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 200
    .line 201
    .line 202
    :goto_1
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->getDownloadStatus()I

    .line 203
    .line 204
    .line 205
    move-result p0

    .line 206
    packed-switch p0, :pswitch_data_0

    .line 207
    .line 208
    .line 209
    goto :goto_2

    .line 210
    :pswitch_0
    iget-object p0, v0, Lcom/startshorts/androidplayer/databinding/ItemVipChooseBinding;->d:Landroid/widget/ImageView;

    .line 211
    .line 212
    invoke-static {p0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 213
    .line 214
    .line 215
    iget-object p0, v0, Lcom/startshorts/androidplayer/databinding/ItemVipChooseBinding;->c:Lcom/airbnb/lottie/LottieAnimationView;

    .line 216
    .line 217
    invoke-static {p0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 218
    .line 219
    .line 220
    iget-object p0, v0, Lcom/startshorts/androidplayer/databinding/ItemVipChooseBinding;->b:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 221
    .line 222
    invoke-static {p0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 223
    .line 224
    .line 225
    goto :goto_2

    .line 226
    :pswitch_1
    iget-object p0, v0, Lcom/startshorts/androidplayer/databinding/ItemVipChooseBinding;->d:Landroid/widget/ImageView;

    .line 227
    .line 228
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->ic_download_err:I

    .line 229
    .line 230
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 231
    .line 232
    .line 233
    iget-object p0, v0, Lcom/startshorts/androidplayer/databinding/ItemVipChooseBinding;->d:Landroid/widget/ImageView;

    .line 234
    .line 235
    invoke-static {p0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 236
    .line 237
    .line 238
    iget-object p0, v0, Lcom/startshorts/androidplayer/databinding/ItemVipChooseBinding;->c:Lcom/airbnb/lottie/LottieAnimationView;

    .line 239
    .line 240
    invoke-static {p0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 241
    .line 242
    .line 243
    iget-object p0, v0, Lcom/startshorts/androidplayer/databinding/ItemVipChooseBinding;->b:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 244
    .line 245
    invoke-static {p0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 246
    .line 247
    .line 248
    goto :goto_2

    .line 249
    :pswitch_2
    iget-object p0, v0, Lcom/startshorts/androidplayer/databinding/ItemVipChooseBinding;->d:Landroid/widget/ImageView;

    .line 250
    .line 251
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->ic_download_finish:I

    .line 252
    .line 253
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 254
    .line 255
    .line 256
    iget-object p0, v0, Lcom/startshorts/androidplayer/databinding/ItemVipChooseBinding;->d:Landroid/widget/ImageView;

    .line 257
    .line 258
    invoke-static {p0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 259
    .line 260
    .line 261
    iget-object p0, v0, Lcom/startshorts/androidplayer/databinding/ItemVipChooseBinding;->c:Lcom/airbnb/lottie/LottieAnimationView;

    .line 262
    .line 263
    invoke-static {p0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 264
    .line 265
    .line 266
    iget-object p0, v0, Lcom/startshorts/androidplayer/databinding/ItemVipChooseBinding;->b:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 267
    .line 268
    invoke-static {p0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 269
    .line 270
    .line 271
    goto :goto_2

    .line 272
    :pswitch_3
    iget-object p0, v0, Lcom/startshorts/androidplayer/databinding/ItemVipChooseBinding;->d:Landroid/widget/ImageView;

    .line 273
    .line 274
    invoke-static {p0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 275
    .line 276
    .line 277
    iget-object p0, v0, Lcom/startshorts/androidplayer/databinding/ItemVipChooseBinding;->c:Lcom/airbnb/lottie/LottieAnimationView;

    .line 278
    .line 279
    invoke-static {p0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 280
    .line 281
    .line 282
    iget-object p0, v0, Lcom/startshorts/androidplayer/databinding/ItemVipChooseBinding;->b:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 283
    .line 284
    invoke-static {p0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 285
    .line 286
    .line 287
    iget-object p0, v0, Lcom/startshorts/androidplayer/databinding/ItemVipChooseBinding;->b:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 288
    .line 289
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->getDownloadInfo()Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    if-eqz p1, :cond_5

    .line 294
    .line 295
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getShowProgress()I

    .line 296
    .line 297
    .line 298
    move-result v2

    .line 299
    :cond_5
    invoke-virtual {p0, v2}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setProgress(I)V

    .line 300
    .line 301
    .line 302
    goto :goto_2

    .line 303
    :pswitch_4
    iget-object p0, v0, Lcom/startshorts/androidplayer/databinding/ItemVipChooseBinding;->d:Landroid/widget/ImageView;

    .line 304
    .line 305
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->ic_download_wait:I

    .line 306
    .line 307
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 308
    .line 309
    .line 310
    iget-object p0, v0, Lcom/startshorts/androidplayer/databinding/ItemVipChooseBinding;->d:Landroid/widget/ImageView;

    .line 311
    .line 312
    invoke-static {p0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 313
    .line 314
    .line 315
    iget-object p0, v0, Lcom/startshorts/androidplayer/databinding/ItemVipChooseBinding;->c:Lcom/airbnb/lottie/LottieAnimationView;

    .line 316
    .line 317
    invoke-static {p0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 318
    .line 319
    .line 320
    iget-object p0, v0, Lcom/startshorts/androidplayer/databinding/ItemVipChooseBinding;->b:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 321
    .line 322
    invoke-static {p0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 323
    .line 324
    .line 325
    :goto_2
    invoke-static {}, Lau/c;->b()Lau/d;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->invalidateAll()V

    .line 329
    .line 330
    .line 331
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 332
    .line 333
    return-object p0

    .line 334
    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    .line 335
    .line 336
    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    throw p0

    .line 340
    nop

    .line 341
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final S(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;)Lkotlin/Unit;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;->N:Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lgt/g0;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v4, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter$downloadSelected$2$1;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-direct {v4, p0, v0}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter$downloadSelected$2$1;-><init>(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;Lrs/c;)V

    .line 11
    .line 12
    .line 13
    const/4 v5, 0x3

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 18
    .line 19
    .line 20
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p0
.end method

.method private static final U(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;ILandroid/view/View;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;->O:Lkotlin/jvm/functions/Function2;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p0
.end method


# virtual methods
.method public final P()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;->N:Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;->C()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Iterable;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->isSelect()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->setSelect(Z)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;->N:Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;->D()Landroidx/lifecycle/MutableLiveData;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;->N:Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;->E()Landroidx/lifecycle/MutableLiveData;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final Q()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;->N:Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;->C()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->isSelect()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->isSelectAble()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;->N:Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;->D()Landroidx/lifecycle/MutableLiveData;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    if-nez v1, :cond_2

    .line 53
    .line 54
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;->N:Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;->E()Landroidx/lifecycle/MutableLiveData;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    return-void
.end method

.method public final R(Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;I)V
    .locals 9
    .param p1    # Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;->N:Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;->C()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Iterable;

    .line 8
    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    move-object v3, v2

    .line 29
    check-cast v3, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;

    .line 30
    .line 31
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->isSelect()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableList(Ljava/lang/Object;)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    if-nez p1, :cond_3

    .line 53
    .line 54
    return-void

    .line 55
    :cond_3
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 56
    .line 57
    new-instance v4, Landroid/os/Bundle;

    .line 58
    .line 59
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->getShortPlayCode()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-nez v1, :cond_4

    .line 67
    .line 68
    const-string v1, "0"

    .line 69
    .line 70
    :cond_4
    const-string v3, "from"

    .line 71
    .line 72
    invoke-virtual {v4, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-string v1, "episode"

    .line 76
    .line 77
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;->Y(Ljava/util/List;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v4, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 85
    .line 86
    const/4 v7, 0x4

    .line 87
    const/4 v8, 0x0

    .line 88
    const-string v3, "download_click"

    .line 89
    .line 90
    const-wide/16 v5, 0x0

    .line 91
    .line 92
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    sget-object v1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->a:Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;

    .line 96
    .line 97
    new-instance v2, Lvh/a;

    .line 98
    .line 99
    invoke-direct {v2, p0}, Lvh/a;-><init>(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->d0(Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;Ljava/util/List;ILkotlin/jvm/functions/Function0;)V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public final T()Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;->N:Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;

    .line 2
    .line 3
    return-object v0
.end method

.method public final V()V
    .locals 1

    .line 1
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lau/c;->r(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final W()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;->N:Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;->C()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Iterable;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->isSelect()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->isSelectAble()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->setSelect(Z)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;->N:Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;->E()Landroidx/lifecycle/MutableLiveData;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;->Q()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final X(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;->O:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-void
.end method

.method public final Y(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    move-object v1, p1

    .line 12
    check-cast v1, Ljava/lang/Iterable;

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_2

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    add-int/lit8 v4, v2, 0x1

    .line 30
    .line 31
    if-gez v2, :cond_0

    .line 32
    .line 33
    invoke-static {}, Lkotlin/collections/CollectionsKt;->y()V

    .line 34
    .line 35
    .line 36
    :cond_0
    check-cast v3, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;

    .line 37
    .line 38
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->getEpisode()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getEpisodeNum()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    add-int/lit8 v5, v5, -0x1

    .line 51
    .line 52
    if-ne v2, v5, :cond_1

    .line 53
    .line 54
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const/16 v3, 0x2c

    .line 67
    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    :goto_1
    move v2, v4

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    const-string v0, "toString(...)"

    .line 85
    .line 86
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-object p1
.end method

.method public final handleDownloadStateEvent(Lcom/startshorts/androidplayer/ui/activity/download/b;)V
    .locals 8
    .param p1    # Lcom/startshorts/androidplayer/ui/activity/download/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Lcom/startshorts/androidplayer/ui/activity/download/b$e;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;->N:Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lgt/g0;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    new-instance v5, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter$handleDownloadStateEvent$1;

    .line 18
    .line 19
    invoke-direct {v5, p0, v1}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter$handleDownloadStateEvent$1;-><init>(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;Lrs/c;)V

    .line 20
    .line 21
    .line 22
    const/4 v6, 0x3

    .line 23
    const/4 v7, 0x0

    .line 24
    const/4 v3, 0x0

    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-static/range {v2 .. v7}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 27
    .line 28
    .line 29
    goto/16 :goto_4

    .line 30
    .line 31
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/ui/activity/download/b$c;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 36
    .line 37
    .line 38
    goto/16 :goto_4

    .line 39
    .line 40
    :cond_1
    instance-of v0, p1, Lcom/startshorts/androidplayer/ui/activity/download/b$f;

    .line 41
    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    instance-of v2, p1, Lcom/startshorts/androidplayer/ui/activity/download/b$d;

    .line 45
    .line 46
    if-eqz v2, :cond_a

    .line 47
    .line 48
    :cond_2
    if-eqz v0, :cond_3

    .line 49
    .line 50
    check-cast p1, Lcom/startshorts/androidplayer/ui/activity/download/b$f;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/download/b$f;->a()Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    goto :goto_1

    .line 57
    :cond_3
    instance-of v0, p1, Lcom/startshorts/androidplayer/ui/activity/download/b$d;

    .line 58
    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    check-cast p1, Lcom/startshorts/androidplayer/ui/activity/download/b$d;

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/download/b$d;->a()Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    goto :goto_0

    .line 68
    :cond_4
    move-object p1, v1

    .line 69
    :goto_0
    if-nez p1, :cond_5

    .line 70
    .line 71
    return-void

    .line 72
    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v2, "chose adapter\u53d8\u5316\uff1a"

    .line 78
    .line 79
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {v0}, Luh/s;->b(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;->N:Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;->C()Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-lez v2, :cond_a

    .line 103
    .line 104
    check-cast v0, Ljava/lang/Iterable;

    .line 105
    .line 106
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    const/4 v2, -0x1

    .line 111
    const/4 v3, 0x0

    .line 112
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-eqz v4, :cond_9

    .line 117
    .line 118
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    add-int/lit8 v5, v3, 0x1

    .line 123
    .line 124
    if-gez v3, :cond_6

    .line 125
    .line 126
    invoke-static {}, Lkotlin/collections/CollectionsKt;->y()V

    .line 127
    .line 128
    .line 129
    :cond_6
    check-cast v4, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;

    .line 130
    .line 131
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getCacheKey()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->getDownloadInfo()Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    if-eqz v7, :cond_7

    .line 140
    .line 141
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getCacheKey()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    goto :goto_3

    .line 146
    :cond_7
    move-object v7, v1

    .line 147
    :goto_3
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v6

    .line 151
    if-eqz v6, :cond_8

    .line 152
    .line 153
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->getDownloadInfo()Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 154
    .line 155
    .line 156
    move v2, v3

    .line 157
    :cond_8
    move v3, v5

    .line 158
    goto :goto_2

    .line 159
    :cond_9
    if-ltz v2, :cond_a

    .line 160
    .line 161
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 162
    .line 163
    .line 164
    :cond_a
    :goto_4
    return-void
.end method
