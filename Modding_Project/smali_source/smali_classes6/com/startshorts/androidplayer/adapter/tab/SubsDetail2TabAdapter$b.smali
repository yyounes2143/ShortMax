.class final Lcom/startshorts/androidplayer/adapter/tab/SubsDetail2TabAdapter$b;
.super Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$SelectableViewHolder;
.source "SubsDetail2TabAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/tab/SubsDetail2TabAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter<",
        "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
        ">.SelectableViewHolder;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSubsDetail2TabAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubsDetail2TabAdapter.kt\ncom/startshorts/androidplayer/adapter/tab/SubsDetail2TabAdapter$TabViewHolder\n+ 2 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,80:1\n470#2:81\n470#2:82\n*S KotlinDebug\n*F\n+ 1 SubsDetail2TabAdapter.kt\ncom/startshorts/androidplayer/adapter/tab/SubsDetail2TabAdapter$TabViewHolder\n*L\n40#1:81\n49#1:82\n*E\n"
    }
.end annotation


# instance fields
.field private final h:Lcom/startshorts/androidplayer/databinding/ItemSubsdetail2TabBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic i:Lcom/startshorts/androidplayer/adapter/tab/SubsDetail2TabAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/tab/SubsDetail2TabAdapter;Lcom/startshorts/androidplayer/databinding/ItemSubsdetail2TabBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/tab/SubsDetail2TabAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemSubsdetail2TabBinding;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/tab/SubsDetail2TabAdapter$b;->i:Lcom/startshorts/androidplayer/adapter/tab/SubsDetail2TabAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$SelectableViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/tab/SubsDetail2TabAdapter$b;->h:Lcom/startshorts/androidplayer/databinding/ItemSubsdetail2TabBinding;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/tab/SubsDetail2TabAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemSubsdetail2TabBinding;

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
    check-cast p2, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/tab/SubsDetail2TabAdapter$b;->k(ILcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j()Lcom/startshorts/androidplayer/databinding/ItemSubsdetail2TabBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/tab/SubsDetail2TabAdapter$b;->h:Lcom/startshorts/androidplayer/databinding/ItemSubsdetail2TabBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public k(ILcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 5
    .param p2    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
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
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/tab/SubsDetail2TabAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemSubsdetail2TabBinding;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemSubsdetail2TabBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;

    .line 14
    .line 15
    sget-object v0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->Companion:Lcom/startshorts/androidplayer/bean/subs/SubsSku$Companion;

    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku$Companion;->getCardName(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->isSelected()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/4 v1, 0x0

    .line 33
    const/4 v2, 0x0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    const/high16 v0, 0x41900000    # 18.0f

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 45
    .line 46
    sget v3, Lcom/startshorts/androidplayer/R$string;->typeface_bold:I

    .line 47
    .line 48
    invoke-virtual {v0, v3}, Lfk/u;->d(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {p1, v0}, Ljk/y;->n(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string v0, "#F6610F"

    .line 56
    .line 57
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const-string v3, "#FEDAA4"

    .line 62
    .line 63
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    const-string v4, "#FFFFFF"

    .line 68
    .line 69
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    filled-new-array {v0, v3, v4}, [I

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {p1, v0, v1, v2}, Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;->setColor([I[FI)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    const/high16 v0, 0x41600000    # 14.0f

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 84
    .line 85
    .line 86
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 90
    .line 91
    sget v3, Lcom/startshorts/androidplayer/R$string;->typeface_semi_bold:I

    .line 92
    .line 93
    invoke-virtual {v0, v3}, Lfk/u;->d(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {p1, v0}, Ljk/y;->n(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string v0, "#828386"

    .line 101
    .line 102
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    filled-new-array {v3, v4, v0}, [I

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {p1, v0, v1, v2}, Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;->setColor([I[FI)V

    .line 119
    .line 120
    .line 121
    :goto_0
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->isSelected()Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    const/4 v0, 0x4

    .line 126
    if-eqz p1, :cond_1

    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/tab/SubsDetail2TabAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemSubsdetail2TabBinding;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemSubsdetail2TabBinding;->d:Landroid/view/View;

    .line 133
    .line 134
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/tab/SubsDetail2TabAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemSubsdetail2TabBinding;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemSubsdetail2TabBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 142
    .line 143
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/tab/SubsDetail2TabAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemSubsdetail2TabBinding;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemSubsdetail2TabBinding;->d:Landroid/view/View;

    .line 152
    .line 153
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 154
    .line 155
    .line 156
    invoke-static {p2}, Ljk/u;->a(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)I

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    if-lez p1, :cond_2

    .line 161
    .line 162
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/tab/SubsDetail2TabAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemSubsdetail2TabBinding;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    iget-object p2, p2, Lcom/startshorts/androidplayer/databinding/ItemSubsdetail2TabBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 167
    .line 168
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 169
    .line 170
    .line 171
    sget-object p2, Lfk/u;->a:Lfk/u;

    .line 172
    .line 173
    sget v0, Lcom/startshorts/androidplayer/R$string;->discount_label_off:I

    .line 174
    .line 175
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-virtual {p2, v0, p1}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/tab/SubsDetail2TabAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemSubsdetail2TabBinding;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    iget-object p2, p2, Lcom/startshorts/androidplayer/databinding/ItemSubsdetail2TabBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 192
    .line 193
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_2
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/tab/SubsDetail2TabAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemSubsdetail2TabBinding;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemSubsdetail2TabBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 202
    .line 203
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 204
    .line 205
    .line 206
    :goto_1
    return-void
.end method
