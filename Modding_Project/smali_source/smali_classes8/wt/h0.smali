.class public final Lwt/h0;
.super Ljava/lang/Object;
.source "JsonStreams.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final a(Lkotlinx/serialization/json/a;Lwt/z;Lst/l;Ljava/lang/Object;)V
    .locals 3
    .param p0    # Lkotlinx/serialization/json/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lwt/z;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lst/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/json/a;",
            "Lwt/z;",
            "Lst/l<",
            "-TT;>;TT;)V"
        }
    .end annotation

    .line 1
    const-string v0, "json"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "writer"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "serializer"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lwt/s0;

    .line 17
    .line 18
    sget-object v1, Lkotlinx/serialization/json/internal/WriteMode;->OBJ:Lkotlinx/serialization/json/internal/WriteMode;

    .line 19
    .line 20
    invoke-static {}, Lkotlinx/serialization/json/internal/WriteMode;->getEntries()Lss/a;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    new-array v2, v2, [Lkotlinx/serialization/json/q;

    .line 29
    .line 30
    invoke-direct {v0, p1, p0, v1, v2}, Lwt/s0;-><init>(Lwt/z;Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/internal/WriteMode;[Lkotlinx/serialization/json/q;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p2, p3}, Lwt/s0;->encodeSerializableValue(Lst/l;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
