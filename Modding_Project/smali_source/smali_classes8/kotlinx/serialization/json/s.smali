.class public final Lkotlinx/serialization/json/s;
.super Ljava/lang/Object;
.source "Json.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final a(Lkotlinx/serialization/json/a;Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/json/a;
    .locals 1
    .param p0    # Lkotlinx/serialization/json/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/json/a;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlinx/serialization/json/c;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlinx/serialization/json/a;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "from"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "builderAction"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lkotlinx/serialization/json/c;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lkotlinx/serialization/json/c;-><init>(Lkotlinx/serialization/json/a;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lkotlinx/serialization/json/c;->a()Lkotlinx/serialization/json/e;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    new-instance p1, Lkotlinx/serialization/json/r;

    .line 24
    .line 25
    invoke-virtual {v0}, Lkotlinx/serialization/json/c;->b()Lxt/a;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-direct {p1, p0, v0}, Lkotlinx/serialization/json/r;-><init>(Lkotlinx/serialization/json/e;Lxt/a;)V

    .line 30
    .line 31
    .line 32
    return-object p1
.end method

.method public static synthetic b(Lkotlinx/serialization/json/a;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/json/a;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    sget-object p0, Lkotlinx/serialization/json/a;->d:Lkotlinx/serialization/json/a$a;

    .line 6
    .line 7
    :cond_0
    invoke-static {p0, p1}, Lkotlinx/serialization/json/s;->a(Lkotlinx/serialization/json/a;Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/json/a;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
