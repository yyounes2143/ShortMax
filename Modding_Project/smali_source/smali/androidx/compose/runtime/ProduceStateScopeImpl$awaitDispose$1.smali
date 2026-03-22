.class final Landroidx/compose/runtime/ProduceStateScopeImpl$awaitDispose$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "ProduceState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/ProduceStateScopeImpl;->awaitDispose(Lkotlin/jvm/functions/Function0;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "androidx.compose.runtime.ProduceStateScopeImpl"
    f = "ProduceState.kt"
    l = {
        0xd0
    }
    m = "awaitDispose"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Landroidx/compose/runtime/ProduceStateScopeImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/ProduceStateScopeImpl<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/runtime/ProduceStateScopeImpl;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/ProduceStateScopeImpl<",
            "TT;>;",
            "Lrs/c<",
            "-",
            "Landroidx/compose/runtime/ProduceStateScopeImpl$awaitDispose$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/runtime/ProduceStateScopeImpl$awaitDispose$1;->this$0:Landroidx/compose/runtime/ProduceStateScopeImpl;

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
    iput-object p1, p0, Landroidx/compose/runtime/ProduceStateScopeImpl$awaitDispose$1;->result:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Landroidx/compose/runtime/ProduceStateScopeImpl$awaitDispose$1;->label:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Landroidx/compose/runtime/ProduceStateScopeImpl$awaitDispose$1;->label:I

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/compose/runtime/ProduceStateScopeImpl$awaitDispose$1;->this$0:Landroidx/compose/runtime/ProduceStateScopeImpl;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0, p0}, Landroidx/compose/runtime/ProduceStateScopeImpl;->awaitDispose(Lkotlin/jvm/functions/Function0;Lrs/c;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
