.class final Lcom/startshorts/androidplayer/adapter/library/LibraryHomeAdapter$c;
.super Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;
.source "LibraryHomeAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/library/LibraryHomeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder<",
        "Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final i:Lcom/startshorts/androidplayer/databinding/ItemLibraryBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final j:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic k:Lcom/startshorts/androidplayer/adapter/library/LibraryHomeAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/library/LibraryHomeAdapter;Lcom/startshorts/androidplayer/databinding/ItemLibraryBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/library/LibraryHomeAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemLibraryBinding;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeAdapter$c;->k:Lcom/startshorts/androidplayer/adapter/library/LibraryHomeAdapter;

    .line 7
    .line 8
    invoke-virtual {p2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;-><init>(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeAdapter$c;->i:Lcom/startshorts/androidplayer/databinding/ItemLibraryBinding;

    .line 16
    .line 17
    new-instance p1, Lcom/startshorts/androidplayer/adapter/library/c;

    .line 18
    .line 19
    invoke-direct {p1}, Lcom/startshorts/androidplayer/adapter/library/c;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeAdapter$c;->j:Lms/i;

    .line 27
    .line 28
    return-void
.end method

.method public static synthetic g()F
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeAdapter$c;->i()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method private static final i()F
    .locals 1

    .line 1
    const/high16 v0, 0x40a00000    # 5.0f

    .line 2
    .line 3
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    return v0
.end method

.method private final j()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeAdapter$c;->j:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method


# virtual methods
.method public bridge synthetic e(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeAdapter$c;->h(ILcom/startshorts/androidplayer/bean/shorts/BaseShorts;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public h(ILcom/startshorts/androidplayer/bean/shorts/BaseShorts;)V
    .locals 5
    .param p2    # Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget-object p1, Lkk/f;->a:Lkk/f;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeAdapter$c;->i:Lcom/startshorts/androidplayer/databinding/ItemLibraryBinding;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemLibraryBinding;->c:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 9
    .line 10
    new-instance v1, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 11
    .line 12
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeAdapter$c;->k:Lcom/startshorts/androidplayer/adapter/library/LibraryHomeAdapter;

    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPicUrl()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object v3, Lid/c;->a:Lid/c;

    .line 25
    .line 26
    invoke-virtual {v3}, Lid/c;->b()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    invoke-virtual {v1, v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Lid/c;->a()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 38
    .line 39
    .line 40
    invoke-static {v2}, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeAdapter;->p(Lcom/startshorts/androidplayer/adapter/library/LibraryHomeAdapter;)I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeWidth(I)V

    .line 45
    .line 46
    .line 47
    invoke-static {v2}, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeAdapter;->o(Lcom/startshorts/androidplayer/adapter/library/LibraryHomeAdapter;)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeHeight(I)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeAdapter$c;->j()F

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerRadius(F)V

    .line 59
    .line 60
    .line 61
    const/4 v2, 0x1

    .line 62
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 63
    .line 64
    .line 65
    sget v2, Lcom/startshorts/androidplayer/R$drawable;->ic_cover_placeholder:I

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 68
    .line 69
    .line 70
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 71
    .line 72
    invoke-virtual {p1, v0, v1}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeAdapter$c;->i:Lcom/startshorts/androidplayer/databinding/ItemLibraryBinding;

    .line 76
    .line 77
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemLibraryBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 78
    .line 79
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeAdapter$c;->i:Lcom/startshorts/androidplayer/databinding/ItemLibraryBinding;

    .line 87
    .line 88
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemLibraryBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 89
    .line 90
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getSummary()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeAdapter$c;->i:Lcom/startshorts/androidplayer/databinding/ItemLibraryBinding;

    .line 98
    .line 99
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    sget v0, Lcom/startshorts/androidplayer/R$string;->common_current_ep:I

    .line 108
    .line 109
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getEpisodeNum()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    const-string v0, "getString(...)"

    .line 126
    .line 127
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeAdapter$c;->i:Lcom/startshorts/androidplayer/databinding/ItemLibraryBinding;

    .line 131
    .line 132
    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    sget v2, Lcom/startshorts/androidplayer/R$string;->common_total_ep:I

    .line 141
    .line 142
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getTotalEpisodes()I

    .line 143
    .line 144
    .line 145
    move-result p2

    .line 146
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    invoke-virtual {v1, v2, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeAdapter$c;->i:Lcom/startshorts/androidplayer/databinding/ItemLibraryBinding;

    .line 162
    .line 163
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemLibraryBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 164
    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string p1, " / "

    .line 174
    .line 175
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    .line 187
    .line 188
    return-void
.end method
