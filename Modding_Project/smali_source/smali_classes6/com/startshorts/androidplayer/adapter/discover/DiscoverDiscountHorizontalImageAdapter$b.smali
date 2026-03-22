.class final Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter$b;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "DiscoverDiscountHorizontalImageAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
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
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverDiscountRectanglePictureBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic h:Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter;Lcom/startshorts/androidplayer/databinding/ItemDiscoverDiscountRectanglePictureBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemDiscoverDiscountRectanglePictureBinding;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter$b;->h:Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter$b;->g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverDiscountRectanglePictureBinding;

    .line 12
    .line 13
    return-void
.end method

.method private final m(Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverDiscountRectanglePictureBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverDiscountRectanglePictureBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter$b;->h:Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter;->H()Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getValidStartTime()Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-wide/16 v3, 0x0

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 22
    .line 23
    .line 24
    move-result-wide v5

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-wide v5, v3

    .line 27
    :goto_0
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter;->H()Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getValidEndTime()Ljava/lang/Long;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 38
    .line 39
    .line 40
    move-result-wide v3

    .line 41
    :cond_1
    sget-object v1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 44
    .line 45
    .line 46
    move-result-wide v7

    .line 47
    cmp-long v2, v7, v5

    .line 48
    .line 49
    if-ltz v2, :cond_3

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 52
    .line 53
    .line 54
    move-result-wide v1

    .line 55
    cmp-long v1, v1, v3

    .line 56
    .line 57
    if-lez v1, :cond_2

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    const/4 v1, 0x0

    .line 61
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_3
    :goto_1
    const/16 v1, 0x8

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    :goto_2
    if-eqz p1, :cond_4

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->getShortPlaySubscript()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    goto :goto_3

    .line 77
    :cond_4
    const/4 p1, 0x0

    .line 78
    :goto_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    .line 84
    .line 85
    const/4 p1, 0x1

    .line 86
    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 87
    .line 88
    .line 89
    return-void
.end method


# virtual methods
.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverDiscountRectanglePictureBinding;

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter$b;->k(ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic g(ILjava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter$b;->l(ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverDiscountRectanglePictureBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter$b;->g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverDiscountRectanglePictureBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public k(ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V
    .locals 5
    .param p2    # Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;
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
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverDiscountRectanglePictureBinding;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverDiscountRectanglePictureBinding;->a:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const/16 v2, 0x20

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getId()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    sget-object p1, Lkk/f;->a:Lkk/f;

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverDiscountRectanglePictureBinding;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverDiscountRectanglePictureBinding;->a:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 59
    .line 60
    new-instance v1, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 61
    .line 62
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 63
    .line 64
    .line 65
    iget-object v2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter$b;->h:Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter;

    .line 66
    .line 67
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPicUrl()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    sget-object v3, Lid/c;->a:Lid/c;

    .line 75
    .line 76
    invoke-virtual {v3}, Lid/c;->b()I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    invoke-virtual {v1, v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Lid/c;->a()I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 88
    .line 89
    .line 90
    invoke-static {v2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter;->G(Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter;)I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeWidth(I)V

    .line 95
    .line 96
    .line 97
    invoke-static {v2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter;->F(Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter;)I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeHeight(I)V

    .line 102
    .line 103
    .line 104
    sget v3, Lcom/startshorts/androidplayer/R$drawable;->ic_cover_placeholder:I

    .line 105
    .line 106
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 107
    .line 108
    .line 109
    const/4 v3, 0x1

    .line 110
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 111
    .line 112
    .line 113
    invoke-static {v2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter;->E(Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter;)F

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerRadius(F)V

    .line 118
    .line 119
    .line 120
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 121
    .line 122
    invoke-virtual {p1, v0, v1}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverDiscountRectanglePictureBinding;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverDiscountRectanglePictureBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 130
    .line 131
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayName()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    .line 137
    .line 138
    invoke-direct {p0, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter$b;->m(Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V

    .line 139
    .line 140
    .line 141
    sget-object p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->C:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;

    .line 142
    .line 143
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverDiscountRectanglePictureBinding;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverDiscountRectanglePictureBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 148
    .line 149
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPlayNum()Ljava/lang/Long;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    invoke-virtual {p1, v0, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;->i(Landroid/widget/TextView;Ljava/lang/Long;)V

    .line 154
    .line 155
    .line 156
    return-void
.end method

.method public l(ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Ljava/util/List;)V
    .locals 1
    .param p2    # Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;
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
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
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
    if-eqz p2, :cond_2

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
    goto :goto_0

    .line 17
    :cond_0
    const-string/jumbo v0, "update_discount_tag"

    .line 18
    .line 19
    .line 20
    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    if-eqz p3, :cond_1

    .line 25
    .line 26
    invoke-direct {p0, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter$b;->m(Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->h(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverDiscountHorizontalImageAdapter$b;->k(ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    :goto_0
    return-void
.end method
