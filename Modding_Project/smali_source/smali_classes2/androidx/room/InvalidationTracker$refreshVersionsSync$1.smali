.class final Landroidx/room/InvalidationTracker$refreshVersionsSync$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "InvalidationTracker.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/InvalidationTracker;->refreshVersionsSync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lgt/g0;",
        "Lrs/c<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "androidx.room.InvalidationTracker$refreshVersionsSync$1"
    f = "InvalidationTracker.android.kt"
    l = {
        0x159
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Landroidx/room/InvalidationTracker;


# direct methods
.method constructor <init>(Landroidx/room/InvalidationTracker;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/InvalidationTracker;",
            "Lrs/c<",
            "-",
            "Landroidx/room/InvalidationTracker$refreshVersionsSync$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/room/InvalidationTracker$refreshVersionsSync$1;->this$0:Landroidx/room/InvalidationTracker;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Landroidx/room/InvalidationTracker$refreshVersionsSync$1;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/room/InvalidationTracker$refreshVersionsSync$1;->this$0:Landroidx/room/InvalidationTracker;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Landroidx/room/InvalidationTracker$refreshVersionsSync$1;-><init>(Landroidx/room/InvalidationTracker;Lrs/c;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public final invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/room/InvalidationTracker$refreshVersionsSync$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Landroidx/room/InvalidationTracker$refreshVersionsSync$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/room/InvalidationTracker$refreshVersionsSync$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Landroidx/room/InvalidationTracker$refreshVersionsSync$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Landroidx/room/InvalidationTracker$refreshVersionsSync$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Landroidx/room/InvalidationTracker$refreshVersionsSync$1;->this$0:Landroidx/room/InvalidationTracker;

    .line 28
    .line 29
    invoke-static {p1}, Landroidx/room/InvalidationTracker;->access$getImplementation$p(Landroidx/room/InvalidationTracker;)Landroidx/room/TriggerBasedInvalidationTracker;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/4 v1, 0x0

    .line 34
    new-array v1, v1, [Ljava/lang/String;

    .line 35
    .line 36
    iget-object v3, p0, Landroidx/room/InvalidationTracker$refreshVersionsSync$1;->this$0:Landroidx/room/InvalidationTracker;

    .line 37
    .line 38
    invoke-static {v3}, Landroidx/room/InvalidationTracker;->access$getOnRefreshScheduled$p(Landroidx/room/InvalidationTracker;)Lkotlin/jvm/functions/Function0;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    iget-object v4, p0, Landroidx/room/InvalidationTracker$refreshVersionsSync$1;->this$0:Landroidx/room/InvalidationTracker;

    .line 43
    .line 44
    invoke-static {v4}, Landroidx/room/InvalidationTracker;->access$getOnRefreshCompleted$p(Landroidx/room/InvalidationTracker;)Lkotlin/jvm/functions/Function0;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    iput v2, p0, Landroidx/room/InvalidationTracker$refreshVersionsSync$1;->label:I

    .line 49
    .line 50
    invoke-virtual {p1, v1, v3, v4, p0}, Landroidx/room/TriggerBasedInvalidationTracker;->refreshInvalidation$room_runtime([Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lrs/c;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-ne p1, v0, :cond_2

    .line 55
    .line 56
    return-object v0

    .line 57
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 58
    .line 59
    return-object p1
.end method
