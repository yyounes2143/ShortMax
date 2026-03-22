.class public final Lcom/startshorts/androidplayer/ui/view/task/TaskCoinView;
.super Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;
.source "TaskCoinView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/task/TaskCoinView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTaskCoinView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskCoinView.kt\ncom/startshorts/androidplayer/ui/view/task/TaskCoinView\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,144:1\n254#2:145\n*S KotlinDebug\n*F\n+ 1 TaskCoinView.kt\ncom/startshorts/androidplayer/ui/view/task/TaskCoinView\n*L\n136#1:145\n*E\n"
    }
.end annotation


# static fields
.field public static final n:Lcom/startshorts/androidplayer/ui/view/task/TaskCoinView$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/ImageView;

.field public f:Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/TextView;

.field private i:I

.field private j:J

.field private k:Z

.field private l:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private m:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/task/TaskCoinView$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/view/task/TaskCoinView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/view/task/TaskCoinView;->n:Lcom/startshorts/androidplayer/ui/view/task/TaskCoinView$a;

    .line 8
    .line 9
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
    const-string p1, ""

    .line 10
    .line 11
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/task/TaskCoinView;->l:Ljava/lang/String;

    .line 12
    .line 13
    const-string p1, "TASK_MODE_NEWBIE"

    .line 14
    .line 15
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/task/TaskCoinView;->m:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public getLayoutResource()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->view_task_coin:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMBonus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/task/TaskCoinView;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMCoinProgressBar()Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/task/TaskCoinView;->f:Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "mCoinProgressBar"

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

.method public final getMLimitedTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/ui/view/task/TaskCoinView;->j:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getMScene()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/task/TaskCoinView;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTaskMode()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/task/TaskCoinView;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setLastTask(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/task/TaskCoinView;->k:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setMBonus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/task/TaskCoinView;->i:I

    .line 2
    .line 3
    return-void
.end method

.method public final setMCoinProgressBar(Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/task/TaskCoinView;->f:Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;

    .line 7
    .line 8
    return-void
.end method

.method public final setMLimitedTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/startshorts/androidplayer/ui/view/task/TaskCoinView;->j:J

    .line 2
    .line 3
    return-void
.end method

.method public final setMScene(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/task/TaskCoinView;->l:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setTaskMode(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/task/TaskCoinView;->m:Ljava/lang/String;

    .line 7
    .line 8
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
    sget p2, Lcom/startshorts/androidplayer/R$id;->task_coin_content_cl:I

    .line 7
    .line 8
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/view/task/TaskCoinView;->b:Landroid/view/View;

    .line 13
    .line 14
    sget p2, Lcom/startshorts/androidplayer/R$id;->task_coin_limited_tv:I

    .line 15
    .line 16
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    check-cast p2, Landroid/widget/TextView;

    .line 21
    .line 22
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/view/task/TaskCoinView;->c:Landroid/widget/TextView;

    .line 23
    .line 24
    sget p2, Lcom/startshorts/androidplayer/R$id;->bg_coin_view:I

    .line 25
    .line 26
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/view/task/TaskCoinView;->d:Landroid/view/View;

    .line 31
    .line 32
    sget p2, Lcom/startshorts/androidplayer/R$id;->coin_iv:I

    .line 33
    .line 34
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    check-cast p2, Landroid/widget/ImageView;

    .line 39
    .line 40
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/view/task/TaskCoinView;->e:Landroid/widget/ImageView;

    .line 41
    .line 42
    if-nez p2, :cond_0

    .line 43
    .line 44
    const-string p2, "mCoinIv"

    .line 45
    .line 46
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/4 p2, 0x0

    .line 50
    :cond_0
    sget p3, Lcom/startshorts/androidplayer/R$string;->profile_fragment_coins:I

    .line 51
    .line 52
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    sget p1, Lcom/startshorts/androidplayer/R$id;->coin_progress_bar:I

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/view/task/TaskCoinView;->setMCoinProgressBar(Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;)V

    .line 68
    .line 69
    .line 70
    sget p1, Lcom/startshorts/androidplayer/R$id;->bg_coin_got_view:I

    .line 71
    .line 72
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/task/TaskCoinView;->g:Landroid/view/View;

    .line 77
    .line 78
    sget p1, Lcom/startshorts/androidplayer/R$id;->task_coin_bonus_tv:I

    .line 79
    .line 80
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Landroid/widget/TextView;

    .line 85
    .line 86
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/task/TaskCoinView;->h:Landroid/widget/TextView;

    .line 87
    .line 88
    return-void
.end method
