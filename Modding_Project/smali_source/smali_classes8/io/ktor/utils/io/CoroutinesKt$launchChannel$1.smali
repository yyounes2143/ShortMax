.class final Lio/ktor/utils/io/CoroutinesKt$launchChannel$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Coroutines.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/CoroutinesKt;->a(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lio/ktor/utils/io/b;ZLkotlin/jvm/functions/Function2;)Lio/ktor/utils/io/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic d:Lio/ktor/utils/io/b;


# direct methods
.method constructor <init>(Lio/ktor/utils/io/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/ktor/utils/io/CoroutinesKt$launchChannel$1;->d:Lio/ktor/utils/io/b;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lio/ktor/utils/io/CoroutinesKt$launchChannel$1;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lio/ktor/utils/io/CoroutinesKt$launchChannel$1;->d:Lio/ktor/utils/io/b;

    invoke-interface {v0, p1}, Lio/ktor/utils/io/e;->a(Ljava/lang/Throwable;)Z

    return-void
.end method
