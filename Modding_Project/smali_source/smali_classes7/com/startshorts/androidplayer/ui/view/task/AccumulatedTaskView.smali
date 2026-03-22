.class public final Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskView;
.super Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;
.source "AccumulatedTaskView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAccumulatedTaskView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccumulatedTaskView.kt\ncom/startshorts/androidplayer/ui/view/task/AccumulatedTaskView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,197:1\n774#2:198\n865#2,2:199\n*S KotlinDebug\n*F\n+ 1 AccumulatedTaskView.kt\ncom/startshorts/androidplayer/ui/view/task/AccumulatedTaskView\n*L\n167#1:198\n167#1:199,2\n*E\n"
    }
.end annotation


# static fields
.field public static final h:Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskView$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private b:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Landroid/widget/HorizontalScrollView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskView$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskView;->h:Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskView$a;

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
    const/4 p1, -0x1

    .line 10
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskView;->g:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public getLayoutResource()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->view_accumulated_task:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMWatchNowTv()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskView;->f:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setMWatchNowTv(Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskView;->f:Landroid/widget/TextView;

    .line 2
    .line 3
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
    sget p1, Lcom/startshorts/androidplayer/R$id;->accumulated_task_limited_time_tv:I

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroid/widget/TextView;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskView;->b:Landroid/widget/TextView;

    .line 15
    .line 16
    sget p1, Lcom/startshorts/androidplayer/R$id;->accumulated_task_coin_bonus_tv:I

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/widget/TextView;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskView;->c:Landroid/widget/TextView;

    .line 25
    .line 26
    sget p1, Lcom/startshorts/androidplayer/R$id;->accumulated_task_progress_view:I

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressView;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskView;->d:Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressView;

    .line 35
    .line 36
    sget p1, Lcom/startshorts/androidplayer/R$id;->accumulated_task_scroll_view:I

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Landroid/widget/HorizontalScrollView;

    .line 43
    .line 44
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskView;->e:Landroid/widget/HorizontalScrollView;

    .line 45
    .line 46
    sget p1, Lcom/startshorts/androidplayer/R$id;->watch_now_tv:I

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Landroid/widget/TextView;

    .line 53
    .line 54
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskView;->f:Landroid/widget/TextView;

    .line 55
    .line 56
    return-void
.end method
