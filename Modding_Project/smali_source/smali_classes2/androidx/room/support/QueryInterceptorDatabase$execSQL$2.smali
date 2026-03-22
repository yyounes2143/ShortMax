.class final Landroidx/room/support/QueryInterceptorDatabase$execSQL$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "QueryInterceptorDatabase.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/support/QueryInterceptorDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
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
    c = "androidx.room.support.QueryInterceptorDatabase$execSQL$2"
    f = "QueryInterceptorDatabase.android.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $argsCopy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $sql:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Landroidx/room/support/QueryInterceptorDatabase;


# direct methods
.method constructor <init>(Landroidx/room/support/QueryInterceptorDatabase;Ljava/lang/String;Ljava/util/List;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/support/QueryInterceptorDatabase;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lrs/c<",
            "-",
            "Landroidx/room/support/QueryInterceptorDatabase$execSQL$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/room/support/QueryInterceptorDatabase$execSQL$2;->this$0:Landroidx/room/support/QueryInterceptorDatabase;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/room/support/QueryInterceptorDatabase$execSQL$2;->$sql:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/room/support/QueryInterceptorDatabase$execSQL$2;->$argsCopy:Ljava/util/List;

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
    new-instance p1, Landroidx/room/support/QueryInterceptorDatabase$execSQL$2;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/room/support/QueryInterceptorDatabase$execSQL$2;->this$0:Landroidx/room/support/QueryInterceptorDatabase;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/room/support/QueryInterceptorDatabase$execSQL$2;->$sql:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/room/support/QueryInterceptorDatabase$execSQL$2;->$argsCopy:Ljava/util/List;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Landroidx/room/support/QueryInterceptorDatabase$execSQL$2;-><init>(Landroidx/room/support/QueryInterceptorDatabase;Ljava/lang/String;Ljava/util/List;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Landroidx/room/support/QueryInterceptorDatabase$execSQL$2;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Landroidx/room/support/QueryInterceptorDatabase$execSQL$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/room/support/QueryInterceptorDatabase$execSQL$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Landroidx/room/support/QueryInterceptorDatabase$execSQL$2;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v0, p0, Landroidx/room/support/QueryInterceptorDatabase$execSQL$2;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Landroidx/room/support/QueryInterceptorDatabase$execSQL$2;->this$0:Landroidx/room/support/QueryInterceptorDatabase;

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/room/support/QueryInterceptorDatabase;->access$getQueryCallback$p(Landroidx/room/support/QueryInterceptorDatabase;)Landroidx/room/RoomDatabase$QueryCallback;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Landroidx/room/support/QueryInterceptorDatabase$execSQL$2;->$sql:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/room/support/QueryInterceptorDatabase$execSQL$2;->$argsCopy:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {p1, v0, v1}, Landroidx/room/RoomDatabase$QueryCallback;->onQuery(Ljava/lang/String;Ljava/util/List;)V

    .line 22
    .line 23
    .line 24
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 30
    .line 31
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1
.end method
