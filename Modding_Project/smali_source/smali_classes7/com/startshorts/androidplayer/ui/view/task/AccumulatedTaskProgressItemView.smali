.class public final Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressItemView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "AccumulatedTaskProgressItemView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressItemView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final c:Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressItemView$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:Lcom/startshorts/androidplayer/databinding/ViewAccumulatedTaskProgressItemBinding;

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressItemView$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressItemView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressItemView;->c:Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressItemView$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

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

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x3

    .line 4
    iput p2, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressItemView;->b:I

    .line 5
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressItemView;->q(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final getBinding()Lcom/startshorts/androidplayer/databinding/ViewAccumulatedTaskProgressItemBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressItemView;->a:Lcom/startshorts/androidplayer/databinding/ViewAccumulatedTaskProgressItemBinding;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "binding"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getMState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressItemView;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public final q(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-static {p1, p0, v0}, Lcom/startshorts/androidplayer/databinding/ViewAccumulatedTaskProgressItemBinding;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/startshorts/androidplayer/databinding/ViewAccumulatedTaskProgressItemBinding;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressItemView;->setBinding(Lcom/startshorts/androidplayer/databinding/ViewAccumulatedTaskProgressItemBinding;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final r(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressItemView;->b:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    const/high16 v1, 0x3f800000    # 1.0f

    .line 8
    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    const/4 v0, 0x3

    .line 12
    if-eq p1, v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_0

    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressItemView;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewAccumulatedTaskProgressItemBinding;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ViewAccumulatedTaskProgressItemBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressItemView;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewAccumulatedTaskProgressItemBinding;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ViewAccumulatedTaskProgressItemBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 30
    .line 31
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->task_progress_bouns_future:I

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressItemView;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewAccumulatedTaskProgressItemBinding;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ViewAccumulatedTaskProgressItemBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sget v1, Lcom/startshorts/androidplayer/R$color;->v_light:I

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressItemView;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewAccumulatedTaskProgressItemBinding;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ViewAccumulatedTaskProgressItemBinding;->c:Landroid/widget/ImageView;

    .line 60
    .line 61
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->task_progress_future:I

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressItemView;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewAccumulatedTaskProgressItemBinding;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ViewAccumulatedTaskProgressItemBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 72
    .line 73
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressItemView;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewAccumulatedTaskProgressItemBinding;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ViewAccumulatedTaskProgressItemBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 81
    .line 82
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->task_progress_bouns_curr:I

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressItemView;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewAccumulatedTaskProgressItemBinding;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ViewAccumulatedTaskProgressItemBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 92
    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    sget v1, Lcom/startshorts/androidplayer/R$color;->t_b_100:I

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressItemView;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewAccumulatedTaskProgressItemBinding;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ViewAccumulatedTaskProgressItemBinding;->c:Landroid/widget/ImageView;

    .line 111
    .line 112
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->task_progress_curr:I

    .line 113
    .line 114
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressItemView;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewAccumulatedTaskProgressItemBinding;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ViewAccumulatedTaskProgressItemBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 123
    .line 124
    const v0, 0x3ecccccd    # 0.4f

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressItemView;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewAccumulatedTaskProgressItemBinding;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ViewAccumulatedTaskProgressItemBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 135
    .line 136
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->task_progress_bouns_curr:I

    .line 137
    .line 138
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressItemView;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewAccumulatedTaskProgressItemBinding;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ViewAccumulatedTaskProgressItemBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 146
    .line 147
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    sget v1, Lcom/startshorts/androidplayer/R$color;->t_b_100:I

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressItemView;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewAccumulatedTaskProgressItemBinding;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ViewAccumulatedTaskProgressItemBinding;->c:Landroid/widget/ImageView;

    .line 165
    .line 166
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->task_progress_pass:I

    .line 167
    .line 168
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 169
    .line 170
    .line 171
    :goto_0
    return-void
.end method

.method public final setBinding(Lcom/startshorts/androidplayer/databinding/ViewAccumulatedTaskProgressItemBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/databinding/ViewAccumulatedTaskProgressItemBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressItemView;->a:Lcom/startshorts/androidplayer/databinding/ViewAccumulatedTaskProgressItemBinding;

    .line 7
    .line 8
    return-void
.end method

.method public final setBonus(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "bonus"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressItemView;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewAccumulatedTaskProgressItemBinding;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewAccumulatedTaskProgressItemBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final setCoinRunVisibility(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setMState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressItemView;->b:I

    .line 2
    .line 3
    return-void
.end method

.method public final setTime(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "time"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressItemView;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewAccumulatedTaskProgressItemBinding;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewAccumulatedTaskProgressItemBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
