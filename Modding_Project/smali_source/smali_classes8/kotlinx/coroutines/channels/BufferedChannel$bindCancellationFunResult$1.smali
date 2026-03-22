.class final synthetic Lkotlinx/coroutines/channels/BufferedChannel$bindCancellationFunResult$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "BufferedChannel.kt"

# interfaces
.implements Lat/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/BufferedChannel;->M(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/KFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lat/n<",
        "Ljava/lang/Throwable;",
        "Lkotlinx/coroutines/channels/a<",
        "+TE;>;",
        "Lkotlin/coroutines/CoroutineContext;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    .line 1
    const-string v5, "onCancellationChannelResultImplDoNotCall-5_sEAP8(Ljava/lang/Throwable;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V"

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    const/4 v1, 0x3

    .line 5
    const-class v3, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 6
    .line 7
    const-string v4, "onCancellationChannelResultImplDoNotCall"

    .line 8
    .line 9
    move-object v0, p0

    .line 10
    move-object v2, p1

    .line 11
    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Throwable;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 4
    .line 5
    invoke-static {v0, p1, p2, p3}, Lkotlinx/coroutines/channels/BufferedChannel;->x(Lkotlinx/coroutines/channels/BufferedChannel;Ljava/lang/Throwable;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    check-cast p2, Lkotlinx/coroutines/channels/a;

    .line 4
    .line 5
    invoke-virtual {p2}, Lkotlinx/coroutines/channels/a;->k()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    check-cast p3, Lkotlin/coroutines/CoroutineContext;

    .line 10
    .line 11
    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/channels/BufferedChannel$bindCancellationFunResult$1;->b(Ljava/lang/Throwable;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V

    .line 12
    .line 13
    .line 14
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p1
.end method
