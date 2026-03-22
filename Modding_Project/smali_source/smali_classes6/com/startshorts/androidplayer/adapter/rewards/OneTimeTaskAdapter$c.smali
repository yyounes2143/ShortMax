.class final Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter$c;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "OneTimeTaskAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/task/Task;",
        ">.ViewHolder;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemNoviceTaskBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic h:Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter;Lcom/startshorts/androidplayer/databinding/ItemNoviceTaskBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemNoviceTaskBinding;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter$c;->h:Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter$c;->g:Lcom/startshorts/androidplayer/databinding/ItemNoviceTaskBinding;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter$c;->j()Lcom/startshorts/androidplayer/databinding/ItemNoviceTaskBinding;

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
    check-cast p2, Lcom/startshorts/androidplayer/bean/task/Task;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter$c;->k(ILcom/startshorts/androidplayer/bean/task/Task;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j()Lcom/startshorts/androidplayer/databinding/ItemNoviceTaskBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter$c;->g:Lcom/startshorts/androidplayer/databinding/ItemNoviceTaskBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public k(ILcom/startshorts/androidplayer/bean/task/Task;)V
    .locals 4
    .param p2    # Lcom/startshorts/androidplayer/bean/task/Task;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

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
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter$c;->j()Lcom/startshorts/androidplayer/databinding/ItemNoviceTaskBinding;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemNoviceTaskBinding;->e:Landroid/widget/ImageView;

    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/task/Task;->isHotVisible()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/16 v0, 0x8

    .line 24
    .line 25
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    sget-object p1, Lkk/f;->a:Lkk/f;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter$c;->j()Lcom/startshorts/androidplayer/databinding/ItemNoviceTaskBinding;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemNoviceTaskBinding;->d:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 35
    .line 36
    new-instance v1, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 37
    .line 38
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter$c;->h:Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter;

    .line 42
    .line 43
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/task/Task;->getIcon()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v2}, Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter;->E(Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter;)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 55
    .line 56
    .line 57
    invoke-static {v2}, Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter;->E(Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter;)I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 62
    .line 63
    .line 64
    invoke-static {v2}, Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter;->E(Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter;)I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeWidth(I)V

    .line 69
    .line 70
    .line 71
    invoke-static {v2}, Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter;->E(Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter;)I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeHeight(I)V

    .line 76
    .line 77
    .line 78
    const/4 v2, 0x1

    .line 79
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCircleCrop(Z)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/task/Task;->getTaskDefaultResIcon()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 87
    .line 88
    .line 89
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 90
    .line 91
    invoke-virtual {p1, v0, v1}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter$c;->j()Lcom/startshorts/androidplayer/databinding/ItemNoviceTaskBinding;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemNoviceTaskBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 99
    .line 100
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/task/Task;->getTaskName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/task/Task;->acceptable()Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_1

    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter$c;->j()Lcom/startshorts/androidplayer/databinding/ItemNoviceTaskBinding;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemNoviceTaskBinding;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 118
    .line 119
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->bg_unity_task_button:I

    .line 120
    .line 121
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter$c;->j()Lcom/startshorts/androidplayer/databinding/ItemNoviceTaskBinding;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemNoviceTaskBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter$c;->j()Lcom/startshorts/androidplayer/databinding/ItemNoviceTaskBinding;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemNoviceTaskBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 135
    .line 136
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    sget v1, Lcom/startshorts/androidplayer/R$color;->color_rewards_fragment_unity_task_btn:I

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter$c;->j()Lcom/startshorts/androidplayer/databinding/ItemNoviceTaskBinding;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemNoviceTaskBinding;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 155
    .line 156
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->bg_task_button:I

    .line 157
    .line 158
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter$c;->j()Lcom/startshorts/androidplayer/databinding/ItemNoviceTaskBinding;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemNoviceTaskBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 166
    .line 167
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter$c;->j()Lcom/startshorts/androidplayer/databinding/ItemNoviceTaskBinding;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemNoviceTaskBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 172
    .line 173
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    sget v1, Lcom/startshorts/androidplayer/R$color;->v_light:I

    .line 178
    .line 179
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 184
    .line 185
    .line 186
    :goto_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter$c;->j()Lcom/startshorts/androidplayer/databinding/ItemNoviceTaskBinding;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemNoviceTaskBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 191
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .line 196
    .line 197
    const/16 v1, 0x2b

    .line 198
    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/task/Task;->getTaskBonus()I

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter$c;->j()Lcom/startshorts/androidplayer/databinding/ItemNoviceTaskBinding;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemNoviceTaskBinding;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 221
    .line 222
    new-instance v0, Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter$c$a;

    .line 223
    .line 224
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter$c;->h:Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter;

    .line 225
    .line 226
    invoke-direct {v0, v1, p2}, Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter$c$a;-><init>(Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter;Lcom/startshorts/androidplayer/bean/task/Task;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    .line 231
    .line 232
    return-void
.end method
