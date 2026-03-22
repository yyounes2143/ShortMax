.class final Landroidx/room/support/QueryInterceptorDatabase$query$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "QueryInterceptorDatabase.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/support/QueryInterceptorDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;
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
    c = "androidx.room.support.QueryInterceptorDatabase$query$3"
    f = "QueryInterceptorDatabase.android.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $query:Landroidx/sqlite/db/SupportSQLiteQuery;

.field final synthetic $queryInterceptorProgram:Landroidx/room/support/QueryInterceptorProgram;

.field label:I

.field final synthetic this$0:Landroidx/room/support/QueryInterceptorDatabase;


# direct methods
.method constructor <init>(Landroidx/room/support/QueryInterceptorDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Landroidx/room/support/QueryInterceptorProgram;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/support/QueryInterceptorDatabase;",
            "Landroidx/sqlite/db/SupportSQLiteQuery;",
            "Landroidx/room/support/QueryInterceptorProgram;",
            "Lrs/c<",
            "-",
            "Landroidx/room/support/QueryInterceptorDatabase$query$3;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/room/support/QueryInterceptorDatabase$query$3;->this$0:Landroidx/room/support/QueryInterceptorDatabase;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/room/support/QueryInterceptorDatabase$query$3;->$query:Landroidx/sqlite/db/SupportSQLiteQuery;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/room/support/QueryInterceptorDatabase$query$3;->$queryInterceptorProgram:Landroidx/room/support/QueryInterceptorProgram;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 9
    .line 10
    .line 11
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
    new-instance p1, Landroidx/room/support/QueryInterceptorDatabase$query$3;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/room/support/QueryInterceptorDatabase$query$3;->this$0:Landroidx/room/support/QueryInterceptorDatabase;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/room/support/QueryInterceptorDatabase$query$3;->$query:Landroidx/sqlite/db/SupportSQLiteQuery;

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/room/support/QueryInterceptorDatabase$query$3;->$queryInterceptorProgram:Landroidx/room/support/QueryInterceptorProgram;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Landroidx/room/support/QueryInterceptorDatabase$query$3;-><init>(Landroidx/room/support/QueryInterceptorDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Landroidx/room/support/QueryInterceptorProgram;Lrs/c;)V

    .line 10
    .line 11
    .line 12
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
    invoke-virtual {p0, p1, p2}, Landroidx/room/support/QueryInterceptorDatabase$query$3;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Landroidx/room/support/QueryInterceptorDatabase$query$3;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/room/support/QueryInterceptorDatabase$query$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Landroidx/room/support/QueryInterceptorDatabase$query$3;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroidx/room/support/QueryInterceptorDatabase$query$3;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Landroidx/room/support/QueryInterceptorDatabase$query$3;->this$0:Landroidx/room/support/QueryInterceptorDatabase;

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/room/support/QueryInterceptorDatabase;->access$getQueryCallback$p(Landroidx/room/support/QueryInterceptorDatabase;)Landroidx/room/RoomDatabase$QueryCallback;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Landroidx/room/support/QueryInterceptorDatabase$query$3;->$query:Landroidx/sqlite/db/SupportSQLiteQuery;

    .line 18
    .line 19
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteQuery;->getSql()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Landroidx/room/support/QueryInterceptorDatabase$query$3;->$queryInterceptorProgram:Landroidx/room/support/QueryInterceptorProgram;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroidx/room/support/QueryInterceptorProgram;->getBindArgsCache$room_runtime()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {p1, v0, v1}, Landroidx/room/RoomDatabase$QueryCallback;->onQuery(Ljava/lang/String;Ljava/util/List;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Landroidx/room/support/QueryInterceptorDatabase$query$3;->$queryInterceptorProgram:Landroidx/room/support/QueryInterceptorProgram;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/room/support/QueryInterceptorProgram;->close()V

    .line 35
    .line 36
    .line 37
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 38
    .line 39
    return-object p1

    .line 40
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 43
    .line 44
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1
.end method
