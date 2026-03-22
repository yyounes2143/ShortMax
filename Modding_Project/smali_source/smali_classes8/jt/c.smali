.class public final synthetic Ljt/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lat/n;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final synthetic c:Lpt/i;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lkotlinx/coroutines/channels/BufferedChannel;Lpt/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ljt/c;->a:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Ljt/c;->b:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 7
    .line 8
    iput-object p3, p0, Ljt/c;->c:Lpt/i;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Ljt/c;->a:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v1, p0, Ljt/c;->b:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 4
    .line 5
    iget-object v2, p0, Ljt/c;->c:Lpt/i;

    .line 6
    .line 7
    move-object v3, p1

    .line 8
    check-cast v3, Ljava/lang/Throwable;

    .line 9
    .line 10
    move-object v5, p3

    .line 11
    check-cast v5, Lkotlin/coroutines/CoroutineContext;

    .line 12
    .line 13
    move-object v4, p2

    .line 14
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/channels/BufferedChannel;->b(Ljava/lang/Object;Lkotlinx/coroutines/channels/BufferedChannel;Lpt/i;Ljava/lang/Throwable;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)Lkotlin/Unit;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method
