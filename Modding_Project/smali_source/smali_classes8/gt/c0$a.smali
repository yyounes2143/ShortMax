.class public final Lgt/c0$a;
.super Lkotlin/coroutines/b;
.source "CoroutineDispatcher.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgt/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/b<",
        "Lkotlin/coroutines/c;",
        "Lgt/c0;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    sget-object v0, Lkotlin/coroutines/c;->F8:Lkotlin/coroutines/c$b;

    new-instance v1, Lgt/b0;

    invoke-direct {v1}, Lgt/b0;-><init>()V

    .line 3
    invoke-direct {p0, v0, v1}, Lkotlin/coroutines/b;-><init>(Lkotlin/coroutines/CoroutineContext$b;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lgt/c0$a;-><init>()V

    return-void
.end method

.method public static synthetic c(Lkotlin/coroutines/CoroutineContext$Element;)Lgt/c0;
    .locals 0

    .line 1
    invoke-static {p0}, Lgt/c0$a;->d(Lkotlin/coroutines/CoroutineContext$Element;)Lgt/c0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final d(Lkotlin/coroutines/CoroutineContext$Element;)Lgt/c0;
    .locals 1

    .line 1
    instance-of v0, p0, Lgt/c0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lgt/c0;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return-object p0
.end method
