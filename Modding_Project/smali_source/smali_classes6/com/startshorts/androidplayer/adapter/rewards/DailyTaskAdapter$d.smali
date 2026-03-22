.class final Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$d;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "DailyTaskAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;",
        ">.ViewHolder;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusWatchedBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic h:Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusWatchedBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusWatchedBinding;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$d;->h:Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$d;->g:Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusWatchedBinding;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$d;->j()Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusWatchedBinding;

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
    check-cast p2, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$d;->k(ILcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j()Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusWatchedBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$d;->g:Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusWatchedBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public k(ILcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;)V
    .locals 4
    .param p2    # Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;
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
    sget-object p1, Lkk/f;->a:Lkk/f;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$d;->j()Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusWatchedBinding;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusWatchedBinding;->c:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 16
    .line 17
    new-instance v1, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 18
    .line 19
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$d;->h:Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;

    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getIcon()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v2}, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;->F(Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 36
    .line 37
    .line 38
    invoke-static {v2}, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;->E(Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 43
    .line 44
    .line 45
    invoke-static {v2}, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;->F(Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeWidth(I)V

    .line 50
    .line 51
    .line 52
    invoke-static {v2}, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;->E(Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeHeight(I)V

    .line 57
    .line 58
    .line 59
    sget v2, Lcom/startshorts/androidplayer/R$drawable;->task_cions_icon:I

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 62
    .line 63
    .line 64
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 65
    .line 66
    invoke-virtual {p1, v0, v1}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$d;->j()Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusWatchedBinding;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusWatchedBinding;->c:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 74
    .line 75
    const/4 v0, 0x0

    .line 76
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getTaskDescription()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->isContinuedTaskType()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_0

    .line 88
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string p1, " ("

    .line 98
    .line 99
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getCompletedCount()Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const/16 p1, 0x2f

    .line 110
    .line 111
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getSumCount()Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const/16 p1, 0x29

    .line 122
    .line 123
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$d;->j()Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusWatchedBinding;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusWatchedBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 135
    .line 136
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$d;->j()Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusWatchedBinding;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusWatchedBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 144
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    const/16 v1, 0x2b

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getRewardValue()Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    .line 168
    .line 169
    return-void
.end method
