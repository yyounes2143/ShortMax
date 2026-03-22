.class final Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter$b;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "RecentlyWatchedHorizontalAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;",
        ">.ViewHolder;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedHorizontalBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic h:Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedHorizontalBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedHorizontalBinding;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter$b;->h:Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter$b;->g:Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedHorizontalBinding;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic j(Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter$b;->n(Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final n(Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;->J()Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter$b;->k()Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedHorizontalBinding;

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
    check-cast p2, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter$b;->l(ILcom/startshorts/androidplayer/bean/mylist/WatchHistory;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic g(ILjava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter$b;->m(ILcom/startshorts/androidplayer/bean/mylist/WatchHistory;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k()Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedHorizontalBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter$b;->g:Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedHorizontalBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public l(ILcom/startshorts/androidplayer/bean/mylist/WatchHistory;)V
    .locals 5
    .param p2    # Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;
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
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->h(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    sget-object p1, Lkk/f;->a:Lkk/f;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter$b;->k()Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedHorizontalBinding;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedHorizontalBinding;->b:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 19
    .line 20
    new-instance v1, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 21
    .line 22
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter$b;->h:Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;

    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;->getCoverId()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sget-object v3, Lid/c;->a:Lid/c;

    .line 35
    .line 36
    invoke-virtual {v3}, Lid/c;->b()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    invoke-virtual {v1, v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Lid/c;->a()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 48
    .line 49
    .line 50
    invoke-static {v2}, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;->G(Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeWidth(I)V

    .line 55
    .line 56
    .line 57
    invoke-static {v2}, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;->F(Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;)I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeHeight(I)V

    .line 62
    .line 63
    .line 64
    sget v3, Lcom/startshorts/androidplayer/R$drawable;->ic_cover_placeholder:I

    .line 65
    .line 66
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 67
    .line 68
    .line 69
    const/4 v3, 0x1

    .line 70
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 71
    .line 72
    .line 73
    invoke-static {v2}, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;->E(Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;)F

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerRadius(F)V

    .line 78
    .line 79
    .line 80
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 81
    .line 82
    invoke-virtual {p1, v0, v1}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter$b;->k()Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedHorizontalBinding;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedHorizontalBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 90
    .line 91
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;->getShortPlayName()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter$b;->k()Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedHorizontalBinding;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedHorizontalBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter$b;->k()Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedHorizontalBinding;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedHorizontalBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    sget v1, Lcom/startshorts/androidplayer/R$string;->common_current_ep:I

    .line 115
    .line 116
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;->getEpisodeNum()I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter$b;->k()Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedHorizontalBinding;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedHorizontalBinding;->i:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 140
    .line 141
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter$b;->k()Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedHorizontalBinding;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedHorizontalBinding;->i:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 146
    .line 147
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    sget v1, Lcom/startshorts/androidplayer/R$string;->common_total_ep:I

    .line 152
    .line 153
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;->getTotalEpisodes()I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    .line 171
    .line 172
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter$b;->h:Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;

    .line 173
    .line 174
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter$b;->k()Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedHorizontalBinding;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;->I(Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedHorizontalBinding;)V

    .line 179
    .line 180
    .line 181
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter$b;->h:Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;

    .line 182
    .line 183
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter$b;->k()Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedHorizontalBinding;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->isSelected()Z

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    invoke-static {p1, v0, v1}, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;->H(Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedHorizontalBinding;Z)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter$b;->k()Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedHorizontalBinding;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedHorizontalBinding;->e:Landroidx/appcompat/widget/AppCompatImageView;

    .line 199
    .line 200
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;->isCollect()I

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    if-ne v0, v3, :cond_0

    .line 205
    .line 206
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->ic_recently_collected:I

    .line 207
    .line 208
    goto :goto_0

    .line 209
    :cond_0
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->ic_recently_un_collect:I

    .line 210
    .line 211
    :goto_0
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter$b;->k()Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedHorizontalBinding;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedHorizontalBinding;->e:Landroidx/appcompat/widget/AppCompatImageView;

    .line 219
    .line 220
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter$b;->h:Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;

    .line 221
    .line 222
    new-instance v1, Lcom/startshorts/androidplayer/adapter/mylist/c;

    .line 223
    .line 224
    invoke-direct {v1, v0, p2}, Lcom/startshorts/androidplayer/adapter/mylist/c;-><init>(Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    .line 229
    .line 230
    return-void
.end method

.method public m(ILcom/startshorts/androidplayer/bean/mylist/WatchHistory;Ljava/util/List;)V
    .locals 4
    .param p2    # Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;
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
            "Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;",
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
    if-eqz p2, :cond_4

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
    goto/16 :goto_2

    .line 17
    .line 18
    :cond_0
    const-string/jumbo v0, "update_checkbox"

    .line 19
    .line 20
    .line 21
    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter$b;->h:Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter$b;->k()Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedHorizontalBinding;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {v0, v2}, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;->I(Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedHorizontalBinding;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter$b;->h:Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter$b;->k()Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedHorizontalBinding;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->isSelected()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-static {v0, v2, v3}, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;->H(Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedHorizontalBinding;Z)V

    .line 48
    .line 49
    .line 50
    move v0, v1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/4 v0, 0x1

    .line 53
    :goto_0
    const-string v2, "delete_item"

    .line 54
    .line 55
    invoke-interface {p3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_2

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->i(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->h(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->f(ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter$b;->h:Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter$b;->k()Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedHorizontalBinding;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->isSelected()Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    invoke-static {v0, v2, v3}, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;->H(Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter;Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedHorizontalBinding;Z)V

    .line 81
    .line 82
    .line 83
    move v0, v1

    .line 84
    :cond_2
    const-string/jumbo v2, "update_episode_num"

    .line 85
    .line 86
    .line 87
    invoke-interface {p3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result p3

    .line 91
    if-eqz p3, :cond_3

    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter$b;->k()Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedHorizontalBinding;

    .line 94
    .line 95
    .line 96
    move-result-object p3

    .line 97
    iget-object p3, p3, Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedHorizontalBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter$b;->k()Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedHorizontalBinding;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemRecentlyWatchedHorizontalBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 104
    .line 105
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    sget v2, Lcom/startshorts/androidplayer/R$string;->common_current_ep:I

    .line 110
    .line 111
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;->getEpisodeNum()I

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_3
    move v1, v0

    .line 132
    :goto_1
    if-eqz v1, :cond_4

    .line 133
    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedHorizontalAdapter$b;->l(ILcom/startshorts/androidplayer/bean/mylist/WatchHistory;)V

    .line 135
    .line 136
    .line 137
    :cond_4
    :goto_2
    return-void
.end method
