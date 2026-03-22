.class final Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter$b;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "MyCollectionHorizontalAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/mylist/MyCollection;",
        ">.ViewHolder;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemCollectionHorizontalBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic h:Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;Lcom/startshorts/androidplayer/databinding/ItemCollectionHorizontalBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemCollectionHorizontalBinding;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter$b;->h:Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter$b;->g:Lcom/startshorts/androidplayer/databinding/ItemCollectionHorizontalBinding;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemCollectionHorizontalBinding;

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
    check-cast p2, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter$b;->k(ILcom/startshorts/androidplayer/bean/mylist/MyCollection;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic g(ILjava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter$b;->l(ILcom/startshorts/androidplayer/bean/mylist/MyCollection;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j()Lcom/startshorts/androidplayer/databinding/ItemCollectionHorizontalBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter$b;->g:Lcom/startshorts/androidplayer/databinding/ItemCollectionHorizontalBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public k(ILcom/startshorts/androidplayer/bean/mylist/MyCollection;)V
    .locals 5
    .param p2    # Lcom/startshorts/androidplayer/bean/mylist/MyCollection;
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
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemCollectionHorizontalBinding;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemCollectionHorizontalBinding;->b:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 19
    .line 20
    new-instance v1, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 21
    .line 22
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter$b;->h:Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;

    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getCoverId()Ljava/lang/String;

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
    invoke-static {v2}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;->G(Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeWidth(I)V

    .line 55
    .line 56
    .line 57
    invoke-static {v2}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;->F(Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;)I

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
    invoke-static {v2}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;->E(Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;)F

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
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemCollectionHorizontalBinding;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemCollectionHorizontalBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 90
    .line 91
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getShortPlayName()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getContentTag()I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-ne p1, v3, :cond_0

    .line 103
    .line 104
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter$b;->h:Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;->J()Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-nez p1, :cond_0

    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemCollectionHorizontalBinding;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemCollectionHorizontalBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 117
    .line 118
    invoke-static {p1}, Ljk/b0;->l(Landroid/view/View;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemCollectionHorizontalBinding;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemCollectionHorizontalBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 126
    .line 127
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getContentTagText()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemCollectionHorizontalBinding;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemCollectionHorizontalBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 140
    .line 141
    invoke-static {p1}, Ljk/b0;->d(Landroid/view/View;)V

    .line 142
    .line 143
    .line 144
    :goto_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter$b;->h:Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;

    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemCollectionHorizontalBinding;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;->I(Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;Lcom/startshorts/androidplayer/databinding/ItemCollectionHorizontalBinding;)V

    .line 151
    .line 152
    .line 153
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter$b;->h:Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;

    .line 154
    .line 155
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemCollectionHorizontalBinding;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->isSelected()Z

    .line 160
    .line 161
    .line 162
    move-result p2

    .line 163
    invoke-static {p1, v0, p2}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;->H(Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;Lcom/startshorts/androidplayer/databinding/ItemCollectionHorizontalBinding;Z)V

    .line 164
    .line 165
    .line 166
    return-void
.end method

.method public l(ILcom/startshorts/androidplayer/bean/mylist/MyCollection;Ljava/util/List;)V
    .locals 4
    .param p2    # Lcom/startshorts/androidplayer/bean/mylist/MyCollection;
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
            "Lcom/startshorts/androidplayer/bean/mylist/MyCollection;",
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
    goto :goto_2

    .line 17
    :cond_0
    const-string/jumbo v0, "update_checkbox"

    .line 18
    .line 19
    .line 20
    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter$b;->h:Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemCollectionHorizontalBinding;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-static {v0, v2}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;->I(Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;Lcom/startshorts/androidplayer/databinding/ItemCollectionHorizontalBinding;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter$b;->h:Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemCollectionHorizontalBinding;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->isSelected()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    invoke-static {v0, v2, v3}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;->H(Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;Lcom/startshorts/androidplayer/databinding/ItemCollectionHorizontalBinding;Z)V

    .line 47
    .line 48
    .line 49
    move v0, v1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/4 v0, 0x1

    .line 52
    :goto_0
    const-string v2, "delete_item"

    .line 53
    .line 54
    invoke-interface {p3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p3

    .line 58
    if-eqz p3, :cond_2

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->i(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->h(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->f(ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iget-object p3, p0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter$b;->h:Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemCollectionHorizontalBinding;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->isSelected()Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    invoke-static {p3, v0, v2}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;->H(Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;Lcom/startshorts/androidplayer/databinding/ItemCollectionHorizontalBinding;Z)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    move v1, v0

    .line 84
    :goto_1
    if-eqz v1, :cond_3

    .line 85
    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter$b;->k(ILcom/startshorts/androidplayer/bean/mylist/MyCollection;)V

    .line 87
    .line 88
    .line 89
    :cond_3
    :goto_2
    return-void
.end method
