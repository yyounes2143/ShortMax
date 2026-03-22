.class final Lcom/startshorts/androidplayer/adapter/discover/DiscoverComingSoonAdapter$a;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "DiscoverComingSoonAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/discover/DiscoverComingSoonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
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


# instance fields
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverComingSoonBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic h:Lcom/startshorts/androidplayer/adapter/discover/DiscoverComingSoonAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverComingSoonAdapter;Lcom/startshorts/androidplayer/databinding/ItemDiscoverComingSoonBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/discover/DiscoverComingSoonAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemDiscoverComingSoonBinding;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverComingSoonAdapter$a;->h:Lcom/startshorts/androidplayer/adapter/discover/DiscoverComingSoonAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverComingSoonAdapter$a;->g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverComingSoonBinding;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverComingSoonAdapter$a;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverComingSoonBinding;

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverComingSoonAdapter$a;->k(ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverComingSoonBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverComingSoonAdapter$a;->g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverComingSoonBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public k(ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V
    .locals 15
    .param p2    # Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p1

    .line 3
    .line 4
    const-string v2, "item"

    .line 5
    .line 6
    move-object/from16 v4, p2

    .line 7
    .line 8
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super/range {p0 .. p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->f(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverComingSoonAdapter$a;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverComingSoonBinding;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ItemDiscoverComingSoonBinding;->b:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 19
    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 26
    .line 27
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    sget v6, Lcom/startshorts/androidplayer/R$string;->banner_pic:I

    .line 32
    .line 33
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const/16 v5, 0x20

    .line 44
    .line 45
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getId()I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    sget-object v2, Lkk/f;->a:Lkk/f;

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverComingSoonAdapter$a;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverComingSoonBinding;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    iget-object v3, v3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverComingSoonBinding;->b:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 69
    .line 70
    new-instance v5, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 71
    .line 72
    invoke-direct {v5}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 73
    .line 74
    .line 75
    iget-object v6, v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverComingSoonAdapter$a;->h:Lcom/startshorts/androidplayer/adapter/discover/DiscoverComingSoonAdapter;

    .line 76
    .line 77
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPicUrl()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    invoke-virtual {v5, v7}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    sget-object v7, Lid/c;->a:Lid/c;

    .line 85
    .line 86
    invoke-virtual {v7}, Lid/c;->b()I

    .line 87
    .line 88
    .line 89
    move-result v8

    .line 90
    invoke-virtual {v5, v8}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v7}, Lid/c;->a()I

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    invoke-virtual {v5, v7}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 98
    .line 99
    .line 100
    invoke-static {v6}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverComingSoonAdapter;->G(Lcom/startshorts/androidplayer/adapter/discover/DiscoverComingSoonAdapter;)I

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    invoke-virtual {v5, v7}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeWidth(I)V

    .line 105
    .line 106
    .line 107
    invoke-static {v6}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverComingSoonAdapter;->F(Lcom/startshorts/androidplayer/adapter/discover/DiscoverComingSoonAdapter;)I

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    invoke-virtual {v5, v7}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeHeight(I)V

    .line 112
    .line 113
    .line 114
    sget v7, Lcom/startshorts/androidplayer/R$drawable;->ic_cover_placeholder:I

    .line 115
    .line 116
    invoke-virtual {v5, v7}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 117
    .line 118
    .line 119
    const/4 v7, 0x1

    .line 120
    invoke-virtual {v5, v7}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 121
    .line 122
    .line 123
    invoke-static {v6}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverComingSoonAdapter;->E(Lcom/startshorts/androidplayer/adapter/discover/DiscoverComingSoonAdapter;)F

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    invoke-virtual {v5, v6}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerRadius(F)V

    .line 128
    .line 129
    .line 130
    sget-object v6, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 131
    .line 132
    invoke-virtual {v2, v3, v5}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 133
    .line 134
    .line 135
    sget-object v3, Lze/c;->a:Lze/c;

    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverComingSoonAdapter$a;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverComingSoonBinding;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-virtual {v2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverComingSoonAdapter$a;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverComingSoonBinding;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    iget-object v6, v2, Lcom/startshorts/androidplayer/databinding/ItemDiscoverComingSoonBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 150
    .line 151
    const-string/jumbo v2, "shortsNameTv"

    .line 152
    .line 153
    .line 154
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverComingSoonAdapter$a;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverComingSoonBinding;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ItemDiscoverComingSoonBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 162
    .line 163
    const-string v8, "dateTv"

    .line 164
    .line 165
    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverComingSoonAdapter$a;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverComingSoonBinding;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    iget-object v8, v8, Lcom/startshorts/androidplayer/databinding/ItemDiscoverComingSoonBinding;->a:Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;

    .line 173
    .line 174
    const-string v9, "comingSoonCp"

    .line 175
    .line 176
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    add-int/2addr v1, v7

    .line 180
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 181
    .line 182
    .line 183
    move-result-object v10

    .line 184
    const/16 v13, 0x1a0

    .line 185
    .line 186
    const/4 v14, 0x0

    .line 187
    const/4 v9, 0x0

    .line 188
    const/4 v11, 0x0

    .line 189
    const/4 v12, 0x0

    .line 190
    move-object v7, v2

    .line 191
    invoke-static/range {v3 .. v14}, Lze/c;->f(Lze/c;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;Landroid/widget/TextView;Ljava/lang/Integer;Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;ZILjava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    return-void
.end method
