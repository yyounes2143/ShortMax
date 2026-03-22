.class final Landroidx/lifecycle/FlowExtKt$flowWithLifecycle$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FlowExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/FlowExtKt$flowWithLifecycle$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "androidx.lifecycle.FlowExtKt$flowWithLifecycle$1$1"
    f = "FlowExt.kt"
    l = {
        0x5a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $$this$callbackFlow:Ljt/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljt/h<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $this_flowWithLifecycle:Lkt/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkt/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method constructor <init>(Lkt/b;Ljt/h;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkt/b<",
            "+TT;>;",
            "Ljt/h<",
            "-TT;>;",
            "Lrs/c<",
            "-",
            "Landroidx/lifecycle/FlowExtKt$flowWithLifecycle$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/FlowExtKt$flowWithLifecycle$1$1;->$this_flowWithLifecycle:Lkt/b;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/lifecycle/FlowExtKt$flowWithLifecycle$1$1;->$$this$callbackFlow:Ljt/h;

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
    .locals 2
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
    new-instance p1, Landroidx/lifecycle/FlowExtKt$flowWithLifecycle$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/lifecycle/FlowExtKt$flowWithLifecycle$1$1;->$this_flowWithLifecycle:Lkt/b;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/lifecycle/FlowExtKt$flowWithLifecycle$1$1;->$$this$callbackFlow:Ljt/h;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Landroidx/lifecycle/FlowExtKt$flowWithLifecycle$1$1;-><init>(Lkt/b;Ljt/h;Lrs/c;)V

    .line 8
    .line 9
    .line 10
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
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/FlowExtKt$flowWithLifecycle$1$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/FlowExtKt$flowWithLifecycle$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/FlowExtKt$flowWithLifecycle$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/FlowExtKt$flowWithLifecycle$1$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Landroidx/lifecycle/FlowExtKt$flowWithLifecycle$1$1;->label:I

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
    iget-object p1, p0, Landroidx/lifecycle/FlowExtKt$flowWithLifecycle$1$1;->$this_flowWithLifecycle:Lkt/b;

    .line 28
    .line 29
    new-instance v1, Landroidx/lifecycle/FlowExtKt$flowWithLifecycle$1$1$1;

    .line 30
    .line 31
    iget-object v3, p0, Landroidx/lifecycle/FlowExtKt$flowWithLifecycle$1$1;->$$this$callbackFlow:Ljt/h;

    .line 32
    .line 33
    invoke-direct {v1, v3}, Landroidx/lifecycle/FlowExtKt$flowWithLifecycle$1$1$1;-><init>(Ljt/h;)V

    .line 34
    .line 35
    .line 36
    iput v2, p0, Landroidx/lifecycle/FlowExtKt$flowWithLifecycle$1$1;->label:I

    .line 37
    .line 38
    invoke-interface {p1, v1, p0}, Lkt/b;->collect(Lkt/c;Lrs/c;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-ne p1, v0, :cond_2

    .line 43
    .line 44
    return-object v0

    .line 45
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 46
    .line 47
    return-object p1
.end method
