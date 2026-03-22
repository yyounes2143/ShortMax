.class public final Lgt/t1;
.super Ljava/lang/Object;
.source "ThreadContextElement.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nThreadContextElement.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThreadContextElement.kt\nkotlinx/coroutines/ThreadContextElementKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,285:1\n263#1:286\n1#2:287\n*S KotlinDebug\n*F\n+ 1 ThreadContextElement.kt\nkotlinx/coroutines/ThreadContextElementKt\n*L\n284#1:286\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Ljava/lang/ThreadLocal;Ljava/lang/Object;)Lgt/s1;
    .locals 1
    .param p0    # Ljava/lang/ThreadLocal;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ThreadLocal<",
            "TT;>;TT;)",
            "Lgt/s1<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lmt/i0;

    .line 2
    .line 3
    invoke-direct {v0, p1, p0}, Lmt/i0;-><init>(Ljava/lang/Object;Ljava/lang/ThreadLocal;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
