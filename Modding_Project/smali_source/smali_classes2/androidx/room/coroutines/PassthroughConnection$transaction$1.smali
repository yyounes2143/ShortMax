.class final Landroidx/room/coroutines/PassthroughConnection$transaction$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "PassthroughConnectionPool.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/coroutines/PassthroughConnection;->transaction(Landroidx/room/Transactor$SQLiteTransactionType;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/coroutines/jvm/internal/ContinuationImpl;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "androidx.room.coroutines.PassthroughConnection"
    f = "PassthroughConnectionPool.kt"
    l = {
        0x7f
    }
    m = "transaction"
.end annotation


# instance fields
.field I$0:I

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Landroidx/room/coroutines/PassthroughConnection;


# direct methods
.method constructor <init>(Landroidx/room/coroutines/PassthroughConnection;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/coroutines/PassthroughConnection;",
            "Lrs/c<",
            "-",
            "Landroidx/room/coroutines/PassthroughConnection$transaction$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/room/coroutines/PassthroughConnection$transaction$1;->this$0:Landroidx/room/coroutines/PassthroughConnection;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lrs/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/room/coroutines/PassthroughConnection$transaction$1;->result:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Landroidx/room/coroutines/PassthroughConnection$transaction$1;->label:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Landroidx/room/coroutines/PassthroughConnection$transaction$1;->label:I

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/room/coroutines/PassthroughConnection$transaction$1;->this$0:Landroidx/room/coroutines/PassthroughConnection;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {p1, v0, v0, p0}, Landroidx/room/coroutines/PassthroughConnection;->access$transaction(Landroidx/room/coroutines/PassthroughConnection;Landroidx/room/Transactor$SQLiteTransactionType;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
