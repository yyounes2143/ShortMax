.class final Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$a;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "DiscoverMoreAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;
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
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreComingSoonBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic h:Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreComingSoonBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreComingSoonBinding;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$a;->h:Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$a;->g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreComingSoonBinding;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$a;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreComingSoonBinding;

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$a;->k(ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreComingSoonBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$a;->g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreComingSoonBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public k(ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V
    .locals 14
    .param p2    # Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super/range {p0 .. p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->f(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$a;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreComingSoonBinding;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v3, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreComingSoonBinding;->b:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 16
    .line 17
    const-string v0, "coverIv"

    .line 18
    .line 19
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    const/high16 v0, 0x41c00000    # 24.0f

    .line 25
    .line 26
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    :goto_0
    move v5, v0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    goto :goto_0

    .line 34
    :goto_1
    const/high16 v0, 0x41b00000    # 22.0f

    .line 35
    .line 36
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    const/4 v8, 0x5

    .line 41
    const/4 v9, 0x0

    .line 42
    const/4 v4, 0x0

    .line 43
    const/4 v6, 0x0

    .line 44
    invoke-static/range {v3 .. v9}, Ljk/b0;->i(Landroid/view/View;IIIIILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    sget-object v0, Lkk/f;->a:Lkk/f;

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$a;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreComingSoonBinding;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreComingSoonBinding;->b:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 54
    .line 55
    new-instance v3, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 56
    .line 57
    invoke-direct {v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 58
    .line 59
    .line 60
    move-object v13, p0

    .line 61
    iget-object v4, v13, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$a;->h:Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;

    .line 62
    .line 63
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPicUrl()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v3, v5}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    sget-object v5, Lid/c;->a:Lid/c;

    .line 71
    .line 72
    invoke-virtual {v5}, Lid/c;->b()I

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    invoke-virtual {v3, v6}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v5}, Lid/c;->a()I

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    invoke-virtual {v3, v5}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 84
    .line 85
    .line 86
    invoke-static {v4}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;->I(Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;)I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    invoke-virtual {v3, v5}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeWidth(I)V

    .line 91
    .line 92
    .line 93
    invoke-static {v4}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;->H(Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;)I

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    invoke-virtual {v3, v5}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeHeight(I)V

    .line 98
    .line 99
    .line 100
    sget v5, Lcom/startshorts/androidplayer/R$drawable;->ic_cover_placeholder:I

    .line 101
    .line 102
    invoke-virtual {v3, v5}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 103
    .line 104
    .line 105
    const/4 v5, 0x1

    .line 106
    invoke-virtual {v3, v5}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 107
    .line 108
    .line 109
    invoke-static {v4}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;->F(Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;)F

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerRadius(F)V

    .line 114
    .line 115
    .line 116
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 117
    .line 118
    invoke-virtual {v0, v1, v3}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 119
    .line 120
    .line 121
    sget-object v1, Lze/c;->a:Lze/c;

    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$a;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreComingSoonBinding;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$a;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreComingSoonBinding;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    iget-object v4, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreComingSoonBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 136
    .line 137
    const-string/jumbo v0, "shortsNameTv"

    .line 138
    .line 139
    .line 140
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$a;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreComingSoonBinding;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreComingSoonBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 148
    .line 149
    const-string v6, "dateTv"

    .line 150
    .line 151
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$a;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreComingSoonBinding;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    iget-object v6, v6, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreComingSoonBinding;->a:Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;

    .line 159
    .line 160
    const-string v7, "comingSoonCp"

    .line 161
    .line 162
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter$a;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreComingSoonBinding;

    .line 166
    .line 167
    .line 168
    move-result-object v7

    .line 169
    iget-object v7, v7, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreComingSoonBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 170
    .line 171
    add-int/2addr v5, p1

    .line 172
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object v8

    .line 176
    const/16 v11, 0x80

    .line 177
    .line 178
    const/4 v12, 0x0

    .line 179
    const/4 v10, 0x1

    .line 180
    move-object/from16 v2, p2

    .line 181
    .line 182
    move-object v5, v0

    .line 183
    invoke-static/range {v1 .. v12}, Lze/c;->f(Lze/c;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;Landroid/widget/TextView;Ljava/lang/Integer;Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;ZILjava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    return-void
.end method
