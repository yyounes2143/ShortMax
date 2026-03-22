.class final Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PassthroughConnectionPool.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/coroutines/PassthroughConnection;->withTransaction(Landroidx/room/Transactor$SQLiteTransactionType;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lrs/c<",
        "-",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "androidx.room.coroutines.PassthroughConnection$withTransaction$2"
    f = "PassthroughConnectionPool.kt"
    l = {
        0x67
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $block:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/room/TransactionScope<",
            "TR;>;",
            "Lrs/c<",
            "-TR;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $type:Landroidx/room/Transactor$SQLiteTransactionType;

.field label:I

.field final synthetic this$0:Landroidx/room/coroutines/PassthroughConnection;


# direct methods
.method constructor <init>(Landroidx/room/coroutines/PassthroughConnection;Landroidx/room/Transactor$SQLiteTransactionType;Lkotlin/jvm/functions/Function2;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/coroutines/PassthroughConnection;",
            "Landroidx/room/Transactor$SQLiteTransactionType;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/room/TransactionScope<",
            "TR;>;-",
            "Lrs/c<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lrs/c<",
            "-",
            "Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;->this$0:Landroidx/room/coroutines/PassthroughConnection;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;->$type:Landroidx/room/Transactor$SQLiteTransactionType;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;->$block:Lkotlin/jvm/functions/Function2;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Lrs/c;)Lrs/c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;->this$0:Landroidx/room/coroutines/PassthroughConnection;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;->$type:Landroidx/room/Transactor$SQLiteTransactionType;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;->$block:Lkotlin/jvm/functions/Function2;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, p1}, Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;-><init>(Landroidx/room/coroutines/PassthroughConnection;Landroidx/room/Transactor$SQLiteTransactionType;Lkotlin/jvm/functions/Function2;Lrs/c;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lrs/c;

    invoke-virtual {p0, p1}, Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;->invoke(Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lrs/c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;->create(Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;->label:I

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
    iget-object p1, p0, Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;->this$0:Landroidx/room/coroutines/PassthroughConnection;

    .line 28
    .line 29
    iget-object v1, p0, Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;->$type:Landroidx/room/Transactor$SQLiteTransactionType;

    .line 30
    .line 31
    iget-object v3, p0, Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;->$block:Lkotlin/jvm/functions/Function2;

    .line 32
    .line 33
    iput v2, p0, Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;->label:I

    .line 34
    .line 35
    invoke-static {p1, v1, v3, p0}, Landroidx/room/coroutines/PassthroughConnection;->access$transaction(Landroidx/room/coroutines/PassthroughConnection;Landroidx/room/Transactor$SQLiteTransactionType;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-ne p1, v0, :cond_2

    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_2
    :goto_0
    return-object p1
.end method
