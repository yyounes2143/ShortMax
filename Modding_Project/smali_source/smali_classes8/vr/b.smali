.class public final Lvr/b;
.super Ljava/lang/Object;
.source "Events.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvr/b$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nEvents.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Events.kt\nio/ktor/events/Events\n+ 2 LockFreeLinkedList.kt\nio/ktor/util/internal/LockFreeLinkedListHead\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,91:1\n785#2,6:92\n785#2,3:98\n788#2,3:102\n1#3:101\n*S KotlinDebug\n*F\n+ 1 Events.kt\nio/ktor/events/Events\n*L\n32#1:92,6\n45#1:98,3\n45#1:102,3\n*E\n"
    }
.end annotation


# instance fields
.field private final a:Las/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Las/b<",
            "Lvr/a<",
            "*>;",
            "Lio/ktor/util/internal/b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Las/b;

    .line 5
    .line 6
    invoke-direct {v0}, Las/b;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lvr/b;->a:Las/b;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Lvr/a;Ljava/lang/Object;)V
    .locals 5
    .param p1    # Lvr/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lvr/a<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    const-string v0, "definition"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lvr/b;->a:Las/b;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Las/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lio/ktor/util/internal/b;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    if-eqz p1, :cond_3

    .line 16
    .line 17
    invoke-virtual {p1}, Lio/ktor/util/internal/d;->e()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "null cannot be cast to non-null type io.ktor.util.internal.LockFreeLinkedListNode{ io.ktor.util.internal.LockFreeLinkedListKt.Node }"

    .line 22
    .line 23
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    check-cast v1, Lio/ktor/util/internal/d;

    .line 27
    .line 28
    move-object v2, v0

    .line 29
    :goto_0
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_2

    .line 34
    .line 35
    instance-of v3, v1, Lvr/b$a;

    .line 36
    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    move-object v3, v1

    .line 40
    check-cast v3, Lvr/b$a;

    .line 41
    .line 42
    :try_start_0
    invoke-virtual {v3}, Lvr/b$a;->k()Lkotlin/jvm/functions/Function1;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const-string v4, "null cannot be cast to non-null type kotlin.Function1<T of io.ktor.events.Events.raise$lambda$2, kotlin.Unit>{ io.ktor.events.EventsKt.EventHandler<T of io.ktor.events.Events.raise$lambda$2> }"

    .line 47
    .line 48
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/4 v4, 0x1

    .line 52
    invoke-static {v3, v4}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 57
    .line 58
    invoke-interface {v3, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :catchall_0
    move-exception v3

    .line 63
    if-eqz v2, :cond_0

    .line 64
    .line 65
    invoke-static {v2, v3}, Lms/d;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_0
    move-object v4, v0

    .line 72
    :goto_1
    if-nez v4, :cond_1

    .line 73
    .line 74
    move-object v2, v3

    .line 75
    :cond_1
    :goto_2
    invoke-virtual {v1}, Lio/ktor/util/internal/d;->f()Lio/ktor/util/internal/d;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    move-object v0, v2

    .line 81
    :cond_3
    if-nez v0, :cond_4

    .line 82
    .line 83
    return-void

    .line 84
    :cond_4
    throw v0
.end method
