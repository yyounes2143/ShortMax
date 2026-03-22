.class public final Lmt/k0;
.super Ljava/lang/Object;
.source "ThreadLocal.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final a(Lmt/a0;)Ljava/lang/ThreadLocal;
    .locals 0
    .param p0    # Lmt/a0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lmt/a0;",
            ")",
            "Ljava/lang/ThreadLocal<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance p0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
