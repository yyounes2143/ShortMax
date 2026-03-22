.class public final Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressView;
.super Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;
.source "AccumulatedTaskProgressView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAccumulatedTaskProgressView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccumulatedTaskProgressView.kt\ncom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,73:1\n1872#2,3:74\n*S KotlinDebug\n*F\n+ 1 AccumulatedTaskProgressView.kt\ncom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressView\n*L\n36#1:74,3\n*E\n"
    }
.end annotation


# instance fields
.field private b:Landroid/widget/ProgressBar;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Landroid/widget/FrameLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final v(I)Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x3c

    .line 2
    .line 3
    if-ge p1, v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 p1, 0x73

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    div-int/2addr p1, v0

    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p1, "min"

    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    :goto_0
    return-object p1
.end method


# virtual methods
.method public getLayoutResource()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->view_accumulated_task_progress:I

    .line 2
    .line 3
    return v0
.end method

.method public final setProgressBarMax(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressView;->b:Landroid/widget/ProgressBar;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public u(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p2, "context"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget p1, Lcom/startshorts/androidplayer/R$id;->accumulated_task_progress_bar:I

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroid/widget/ProgressBar;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressView;->b:Landroid/widget/ProgressBar;

    .line 15
    .line 16
    sget p1, Lcom/startshorts/androidplayer/R$id;->accumulated_task_progress_container:I

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/widget/FrameLayout;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressView;->c:Landroid/widget/FrameLayout;

    .line 25
    .line 26
    return-void
.end method

.method public final w(IILjava/util/List;I)V
    .locals 9
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;",
            ">;I)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "tasks"

    .line 3
    .line 4
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressView;->c:Landroid/widget/FrameLayout;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 12
    .line 13
    .line 14
    :cond_0
    check-cast p3, Ljava/lang/Iterable;

    .line 15
    .line 16
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    const/4 v1, 0x0

    .line 21
    move v2, v1

    .line 22
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_6

    .line 27
    .line 28
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    add-int/lit8 v4, v2, 0x1

    .line 33
    .line 34
    if-gez v2, :cond_1

    .line 35
    .line 36
    invoke-static {}, Lkotlin/collections/CollectionsKt;->y()V

    .line 37
    .line 38
    .line 39
    :cond_1
    check-cast v3, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;

    .line 40
    .line 41
    new-instance v5, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressItemView;

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    const-string v7, "getContext(...)"

    .line 48
    .line 49
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-direct {v5, v6}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressItemView;-><init>(Landroid/content/Context;)V

    .line 53
    .line 54
    .line 55
    new-instance v6, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const/16 v7, 0x2b

    .line 61
    .line 62
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->getBonus()I

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    invoke-virtual {v5, v6}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressItemView;->setBonus(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->getPayTime()I

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    invoke-direct {p0, v6}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressView;->v(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    invoke-virtual {v5, v6}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressItemView;->setTime(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->isReceive()Z

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    if-eqz v6, :cond_2

    .line 95
    .line 96
    invoke-virtual {v5, v0}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressItemView;->r(I)V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_2
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->getPayTime()I

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    if-lt p4, v6, :cond_3

    .line 105
    .line 106
    const/4 v6, 0x2

    .line 107
    invoke-virtual {v5, v6}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressItemView;->r(I)V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_3
    const/4 v6, 0x3

    .line 112
    invoke-virtual {v5, v6}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressItemView;->r(I)V

    .line 113
    .line 114
    .line 115
    :goto_1
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->isReceive()Z

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-nez v3, :cond_4

    .line 120
    .line 121
    add-int/lit8 v3, p2, 0x1

    .line 122
    .line 123
    if-gt v2, v3, :cond_4

    .line 124
    .line 125
    invoke-virtual {v5, v1}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressItemView;->setCoinRunVisibility(I)V

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_4
    const/16 v3, 0x8

    .line 130
    .line 131
    invoke-virtual {v5, v3}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressItemView;->setCoinRunVisibility(I)V

    .line 132
    .line 133
    .line 134
    :goto_2
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressView;->c:Landroid/widget/FrameLayout;

    .line 135
    .line 136
    if-eqz v3, :cond_5

    .line 137
    .line 138
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 139
    .line 140
    const/high16 v7, 0x42c00000    # 96.0f

    .line 141
    .line 142
    invoke-static {v7}, Ljk/g;->a(F)I

    .line 143
    .line 144
    .line 145
    move-result v7

    .line 146
    const/4 v8, -0x2

    .line 147
    invoke-direct {v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 148
    .line 149
    .line 150
    mul-int/lit8 v2, v2, 0x50

    .line 151
    .line 152
    int-to-float v2, v2

    .line 153
    const/high16 v7, 0x41180000    # 9.5f

    .line 154
    .line 155
    add-float/2addr v2, v7

    .line 156
    invoke-static {v2}, Ljk/g;->a(F)I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 161
    .line 162
    .line 163
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 164
    .line 165
    invoke-virtual {v3, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    .line 167
    .line 168
    :cond_5
    move v2, v4

    .line 169
    goto/16 :goto_0

    .line 170
    .line 171
    :cond_6
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressView;->b:Landroid/widget/ProgressBar;

    .line 172
    .line 173
    if-eqz p2, :cond_7

    .line 174
    .line 175
    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 176
    .line 177
    .line 178
    :cond_7
    return-void
.end method
