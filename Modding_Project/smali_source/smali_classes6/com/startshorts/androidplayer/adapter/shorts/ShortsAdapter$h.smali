.class final Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$h;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "ShortsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;",
        ">.ViewHolder;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemShortsTrailerBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic h:Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;Lcom/startshorts/androidplayer/databinding/ItemShortsTrailerBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemShortsTrailerBinding;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$h;->h:Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$h;->g:Lcom/startshorts/androidplayer/databinding/ItemShortsTrailerBinding;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic j(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$h;->p(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$h;->o(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final o(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/bean/eventbus/ReservationNotificationEvent;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-direct {v1, p0, v2}, Lcom/startshorts/androidplayer/bean/eventbus/ReservationNotificationEvent;-><init>(IZ)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lau/c;->l(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method

.method private static final p(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/bean/eventbus/ReservationNotificationEvent;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v1, p0, v2}, Lcom/startshorts/androidplayer/bean/eventbus/ReservationNotificationEvent;-><init>(IZ)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lau/c;->l(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method


# virtual methods
.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$h;->l()Lcom/startshorts/androidplayer/databinding/ItemShortsTrailerBinding;

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
    check-cast p2, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$h;->m(ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic g(ILjava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$h;->n(ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()Lcom/startshorts/androidplayer/databinding/ItemShortsTrailerBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$h;->g:Lcom/startshorts/androidplayer/databinding/ItemShortsTrailerBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public m(ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V
    .locals 12
    .param p2    # Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;
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
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$h;->l()Lcom/startshorts/androidplayer/databinding/ItemShortsTrailerBinding;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemShortsTrailerBinding;->a:Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/ShortsTrailerAdapterView;

    .line 14
    .line 15
    const-string v1, "adapterView"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$h;->h:Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;

    .line 21
    .line 22
    invoke-static {v1, p2, v0}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;->H(Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;)V

    .line 23
    .line 24
    .line 25
    sget v1, Lcom/startshorts/androidplayer/R$id;->coming_soon_button:I

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ComingSoonShortsChip;

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    instance-of v3, v2, Landroidx/fragment/app/FragmentActivity;

    .line 40
    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    check-cast v2, Landroidx/fragment/app/FragmentActivity;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 v2, 0x0

    .line 47
    :goto_0
    const/4 v11, 0x0

    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    if-eqz v3, :cond_1

    .line 55
    .line 56
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getBindShortPlayId()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayCode()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->isReservation()Ljava/lang/Boolean;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 69
    .line 70
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    new-instance v2, Lcom/startshorts/androidplayer/adapter/shorts/a;

    .line 75
    .line 76
    invoke-direct {v2, p2}, Lcom/startshorts/androidplayer/adapter/shorts/a;-><init>(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V

    .line 77
    .line 78
    .line 79
    invoke-static {v2, v11}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    move-object v9, v2

    .line 84
    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 85
    .line 86
    new-instance v2, Lcom/startshorts/androidplayer/adapter/shorts/b;

    .line 87
    .line 88
    invoke-direct {v2, p2}, Lcom/startshorts/androidplayer/adapter/shorts/b;-><init>(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V

    .line 89
    .line 90
    .line 91
    invoke-static {v2, v11}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    move-object v10, v2

    .line 96
    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 97
    .line 98
    const/4 v7, 0x0

    .line 99
    const/4 v8, 0x0

    .line 100
    move-object v2, v1

    .line 101
    invoke-virtual/range {v2 .. v10}, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;->I(Landroidx/fragment/app/FragmentManager;ILjava/lang/String;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 102
    .line 103
    .line 104
    :cond_1
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getFirstDramId()I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-lez v2, :cond_2

    .line 109
    .line 110
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->isRelease()Ljava/lang/Boolean;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 115
    .line 116
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-eqz v2, :cond_2

    .line 121
    .line 122
    const/16 v11, 0x8

    .line 123
    .line 124
    :cond_2
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 125
    .line 126
    .line 127
    :cond_3
    sget v1, Lcom/startshorts/androidplayer/R$id;->watch_now_button:I

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    check-cast v1, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;

    .line 134
    .line 135
    if-eqz v1, :cond_4

    .line 136
    .line 137
    new-instance v2, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$h$a;

    .line 138
    .line 139
    iget-object v3, p0, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$h;->h:Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;

    .line 140
    .line 141
    invoke-direct {v2, v3, p1, p2}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$h$a;-><init>(Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    .line 146
    .line 147
    :cond_4
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->isRelease()Ljava/lang/Boolean;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 152
    .line 153
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-eqz v1, :cond_5

    .line 158
    .line 159
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$h;->h:Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;

    .line 160
    .line 161
    invoke-static {v1, v0}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;->J(Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;)V

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_5
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$h;->h:Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;

    .line 166
    .line 167
    invoke-static {v1, v0}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;->G(Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;)V

    .line 168
    .line 169
    .line 170
    :goto_1
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$h;->h:Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;

    .line 171
    .line 172
    invoke-static {v1, p1, p2, v0}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;->I(Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;)V

    .line 173
    .line 174
    .line 175
    return-void
.end method

.method public n(ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;Ljava/util/List;)V
    .locals 1
    .param p2    # Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;
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
            "Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;",
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
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->i(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->h(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    if-eqz p2, :cond_2

    .line 13
    .line 14
    const-string v0, "ignore_refresh"

    .line 15
    .line 16
    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string/jumbo v0, "update_collect_info"

    .line 24
    .line 25
    .line 26
    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p3

    .line 30
    if-eqz p3, :cond_1

    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isTrailer()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->isRelease()Ljava/lang/Boolean;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 43
    .line 44
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$h;->l()Lcom/startshorts/androidplayer/databinding/ItemShortsTrailerBinding;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemShortsTrailerBinding;->a:Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/ShortsTrailerAdapterView;

    .line 55
    .line 56
    const/4 p3, 0x1

    .line 57
    invoke-virtual {p1, p3}, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->u(I)Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;->e(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$h;->m(ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    :goto_0
    return-void
.end method
