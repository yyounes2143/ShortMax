.class public final Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView$d;
.super Lyd/d;
.source "AccumulatedDailyTaskView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->I(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;

.field final synthetic f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic g:I


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView$d;->e:Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView$d;->f:Ljava/util/List;

    .line 4
    .line 5
    iput p3, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView$d;->g:I

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    const/4 p2, 0x0

    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    invoke-direct {p0, v0, v1, p1, p2}, Lyd/d;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView$d;->e:Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->y(Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;)Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView$b;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView$d;->f:Ljava/util/List;

    .line 15
    .line 16
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView$d;->g:I

    .line 17
    .line 18
    invoke-interface {p1, v0, v1}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView$b;->d(Ljava/util/List;I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
