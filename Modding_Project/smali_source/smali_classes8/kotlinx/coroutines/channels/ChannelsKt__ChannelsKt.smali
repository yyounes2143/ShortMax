.class final synthetic Lkotlinx/coroutines/channels/ChannelsKt__ChannelsKt;
.super Ljava/lang/Object;
.source "Channels.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nChannels.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Channels.kt\nkotlinx/coroutines/channels/ChannelsKt__ChannelsKt\n+ 2 Channel.kt\nkotlinx/coroutines/channels/ChannelKt\n*L\n1#1,61:1\n1009#2,2:62\n*S KotlinDebug\n*F\n+ 1 Channels.kt\nkotlinx/coroutines/channels/ChannelsKt__ChannelsKt\n*L\n37#1:62,2\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Lkotlinx/coroutines/channels/h;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0    # Lkotlinx/coroutines/channels/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/h<",
            "-TE;>;TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/h;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lkotlinx/coroutines/channels/a$c;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lkotlin/Unit;

    .line 10
    .line 11
    sget-object p0, Lkotlinx/coroutines/channels/a;->b:Lkotlinx/coroutines/channels/a$b;

    .line 12
    .line 13
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/a$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__ChannelsKt$trySendBlocking$2;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-direct {v0, p0, p1, v1}, Lkotlinx/coroutines/channels/ChannelsKt__ChannelsKt$trySendBlocking$2;-><init>(Lkotlinx/coroutines/channels/h;Ljava/lang/Object;Lrs/c;)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    invoke-static {v1, v0, p0, v1}, Lgt/e;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lkotlinx/coroutines/channels/a;

    .line 32
    .line 33
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/a;->k()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method
