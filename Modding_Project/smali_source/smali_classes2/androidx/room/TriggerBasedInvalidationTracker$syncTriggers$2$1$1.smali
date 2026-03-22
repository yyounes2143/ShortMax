.class final Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "InvalidationTracker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/TriggerBasedInvalidationTracker;->syncTriggers$room_runtime(Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/room/Transactor;",
        "Lrs/c<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "androidx.room.TriggerBasedInvalidationTracker$syncTriggers$2$1$1"
    f = "InvalidationTracker.kt"
    l = {
        0x133,
        0x139
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $tablesToSync:[Landroidx/room/ObservedTableStates$ObserveOp;

.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/room/TriggerBasedInvalidationTracker;


# direct methods
.method constructor <init>([Landroidx/room/ObservedTableStates$ObserveOp;Landroidx/room/TriggerBasedInvalidationTracker;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/room/ObservedTableStates$ObserveOp;",
            "Landroidx/room/TriggerBasedInvalidationTracker;",
            "Lrs/c<",
            "-",
            "Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;->$tablesToSync:[Landroidx/room/ObservedTableStates$ObserveOp;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;->this$0:Landroidx/room/TriggerBasedInvalidationTracker;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 3
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
    new-instance v0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;->$tablesToSync:[Landroidx/room/ObservedTableStates$ObserveOp;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;->this$0:Landroidx/room/TriggerBasedInvalidationTracker;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;-><init>([Landroidx/room/ObservedTableStates$ObserveOp;Landroidx/room/TriggerBasedInvalidationTracker;Lrs/c;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public final invoke(Landroidx/room/Transactor;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/Transactor;",
            "Lrs/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Landroidx/room/Transactor;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;->invoke(Landroidx/room/Transactor;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    iget-object v1, p0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;->L$0:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v1, Landroidx/room/Transactor;

    .line 30
    .line 31
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;->L$0:Ljava/lang/Object;

    .line 39
    .line 40
    move-object v1, p1

    .line 41
    check-cast v1, Landroidx/room/Transactor;

    .line 42
    .line 43
    iput-object v1, p0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;->L$0:Ljava/lang/Object;

    .line 44
    .line 45
    iput v3, p0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;->label:I

    .line 46
    .line 47
    invoke-interface {v1, p0}, Landroidx/room/Transactor;->inTransaction(Lrs/c;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-ne p1, v0, :cond_3

    .line 52
    .line 53
    return-object v0

    .line 54
    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_4

    .line 61
    .line 62
    const/4 p1, 0x0

    .line 63
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    return-object p1

    .line 68
    :cond_4
    sget-object p1, Landroidx/room/Transactor$SQLiteTransactionType;->IMMEDIATE:Landroidx/room/Transactor$SQLiteTransactionType;

    .line 69
    .line 70
    new-instance v4, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1$1;

    .line 71
    .line 72
    iget-object v5, p0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;->$tablesToSync:[Landroidx/room/ObservedTableStates$ObserveOp;

    .line 73
    .line 74
    iget-object v6, p0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;->this$0:Landroidx/room/TriggerBasedInvalidationTracker;

    .line 75
    .line 76
    const/4 v7, 0x0

    .line 77
    invoke-direct {v4, v5, v6, v1, v7}, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1$1;-><init>([Landroidx/room/ObservedTableStates$ObserveOp;Landroidx/room/TriggerBasedInvalidationTracker;Landroidx/room/Transactor;Lrs/c;)V

    .line 78
    .line 79
    .line 80
    iput-object v7, p0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;->L$0:Ljava/lang/Object;

    .line 81
    .line 82
    iput v2, p0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1;->label:I

    .line 83
    .line 84
    invoke-interface {v1, p1, v4, p0}, Landroidx/room/Transactor;->withTransaction(Landroidx/room/Transactor$SQLiteTransactionType;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    if-ne p1, v0, :cond_5

    .line 89
    .line 90
    return-object v0

    .line 91
    :cond_5
    :goto_1
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    return-object p1
.end method
