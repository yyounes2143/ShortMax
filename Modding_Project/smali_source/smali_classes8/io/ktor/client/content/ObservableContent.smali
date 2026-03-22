.class public final Lio/ktor/client/content/ObservableContent;
.super Lxr/b$c;
.source "ObservableContent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lxr/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lkotlin/coroutines/CoroutineContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lat/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lat/n<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Lio/ktor/utils/io/ByteReadChannel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lxr/b;Lkotlin/coroutines/CoroutineContext;Lat/n;)V
    .locals 1
    .param p1    # Lxr/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxr/b;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lat/n<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "delegate"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callContext"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "listener"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lxr/b$c;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lio/ktor/client/content/ObservableContent;->a:Lxr/b;

    .line 20
    .line 21
    iput-object p2, p0, Lio/ktor/client/content/ObservableContent;->b:Lkotlin/coroutines/CoroutineContext;

    .line 22
    .line 23
    iput-object p3, p0, Lio/ktor/client/content/ObservableContent;->c:Lat/n;

    .line 24
    .line 25
    instance-of p3, p1, Lxr/b$a;

    .line 26
    .line 27
    if-eqz p3, :cond_0

    .line 28
    .line 29
    check-cast p1, Lxr/b$a;

    .line 30
    .line 31
    invoke-virtual {p1}, Lxr/b$a;->d()[B

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p1}, Lio/ktor/utils/io/c;->a([B)Lio/ktor/utils/io/ByteReadChannel;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    instance-of p3, p1, Lxr/b$b;

    .line 41
    .line 42
    if-eqz p3, :cond_1

    .line 43
    .line 44
    sget-object p1, Lio/ktor/utils/io/ByteReadChannel;->a:Lio/ktor/utils/io/ByteReadChannel$Companion;

    .line 45
    .line 46
    invoke-virtual {p1}, Lio/ktor/utils/io/ByteReadChannel$Companion;->a()Lio/ktor/utils/io/ByteReadChannel;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    instance-of p3, p1, Lxr/b$c;

    .line 52
    .line 53
    if-eqz p3, :cond_2

    .line 54
    .line 55
    check-cast p1, Lxr/b$c;

    .line 56
    .line 57
    invoke-virtual {p1}, Lxr/b$c;->d()Lio/ktor/utils/io/ByteReadChannel;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    instance-of p1, p1, Lxr/b$d;

    .line 63
    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    sget-object p1, Lgt/e1;->a:Lgt/e1;

    .line 67
    .line 68
    new-instance p3, Lio/ktor/client/content/ObservableContent$content$1;

    .line 69
    .line 70
    const/4 v0, 0x0

    .line 71
    invoke-direct {p3, p0, v0}, Lio/ktor/client/content/ObservableContent$content$1;-><init>(Lio/ktor/client/content/ObservableContent;Lrs/c;)V

    .line 72
    .line 73
    .line 74
    const/4 v0, 0x1

    .line 75
    invoke-static {p1, p2, v0, p3}, Lio/ktor/utils/io/CoroutinesKt;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;ZLkotlin/jvm/functions/Function2;)Lio/ktor/utils/io/n;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-interface {p1}, Lio/ktor/utils/io/n;->getChannel()Lio/ktor/utils/io/ByteReadChannel;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    :goto_0
    iput-object p1, p0, Lio/ktor/client/content/ObservableContent;->d:Lio/ktor/utils/io/ByteReadChannel;

    .line 84
    .line 85
    return-void

    .line 86
    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 87
    .line 88
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 89
    .line 90
    .line 91
    throw p1
.end method

.method public static final synthetic e(Lio/ktor/client/content/ObservableContent;)Lxr/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/ktor/client/content/ObservableContent;->a:Lxr/b;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/content/ObservableContent;->a:Lxr/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lxr/b;->a()Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public b()Lio/ktor/http/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/content/ObservableContent;->a:Lxr/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lxr/b;->b()Lio/ktor/http/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public c()Lwr/f;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/content/ObservableContent;->a:Lxr/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lxr/b;->c()Lwr/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public d()Lio/ktor/utils/io/ByteReadChannel;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/content/ObservableContent;->d:Lio/ktor/utils/io/ByteReadChannel;

    .line 2
    .line 3
    iget-object v1, p0, Lio/ktor/client/content/ObservableContent;->b:Lkotlin/coroutines/CoroutineContext;

    .line 4
    .line 5
    invoke-virtual {p0}, Lio/ktor/client/content/ObservableContent;->a()Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v3, p0, Lio/ktor/client/content/ObservableContent;->c:Lat/n;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3}, Lio/ktor/client/utils/ByteChannelUtilsKt;->a(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Long;Lat/n;)Lio/ktor/utils/io/ByteReadChannel;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method
