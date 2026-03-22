.class public final Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;
.source "DailyTaskAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$a;,
        Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$b;,
        Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$c;,
        Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final t:Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private o:Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$c;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private p:I

.field private q:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final r:I

.field private final s:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;->t:Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    .line 7
    .line 8
    const/16 v0, 0x1e

    .line 9
    .line 10
    iput v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;->p:I

    .line 11
    .line 12
    const/high16 v0, 0x42200000    # 40.0f

    .line 13
    .line 14
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iput v1, p0, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;->r:I

    .line 19
    .line 20
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iput v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;->s:I

    .line 25
    .line 26
    return-void
.end method

.method public static final synthetic E(Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;->s:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic F(Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;->r:I

    .line 2
    .line 3
    return p0
.end method

.method private final G()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;->q:Lkotlinx/coroutines/r;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    const-string v0, "cancelCountDownJob"

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->r(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iput-object v1, p0, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;->q:Lkotlinx/coroutines/r;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final H()Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;->o:Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public final I(Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$c;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;->o:Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$c;

    .line 2
    .line 3
    return-void
.end method

.method public final J(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;->p:I

    .line 2
    .line 3
    return-void
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->hasCompleted()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x4

    .line 18
    :cond_1
    return v0
.end method

.method public p()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public q()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "DailyTaskAdapter"

    .line 2
    .line 3
    return-object v0
.end method

.method public x(Landroid/view/ViewGroup;II)Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "II)",
            "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
            "Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;",
            ">.ViewHolder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p3, "parent"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p3, 0x4

    .line 7
    if-ne p2, p3, :cond_0

    .line 8
    .line 9
    new-instance p2, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$d;

    .line 10
    .line 11
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_watch_ad_bonus_watched:I

    .line 12
    .line 13
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusWatchedBinding;

    .line 18
    .line 19
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$d;-><init>(Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusWatchedBinding;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance p2, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$b;

    .line 24
    .line 25
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_watch_ad_bonus_enable_watch:I

    .line 26
    .line 27
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusEnableWatchBinding;

    .line 32
    .line 33
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$b;-><init>(Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusEnableWatchBinding;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-object p2
.end method

.method public z()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->z()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;->G()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
