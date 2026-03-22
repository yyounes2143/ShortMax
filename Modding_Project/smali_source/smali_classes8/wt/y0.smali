.class public final Lwt/y0;
.super Ljava/lang/Object;
.source "TreeJsonDecoder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final a(Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/JsonElement;Lst/c;)Ljava/lang/Object;
    .locals 8
    .param p0    # Lkotlinx/serialization/json/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlinx/serialization/json/JsonElement;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lst/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/json/a;",
            "Lkotlinx/serialization/json/JsonElement;",
            "Lst/c<",
            "+TT;>;)TT;"
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
    const-string v0, "element"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "deserializer"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    instance-of v0, p1, Lkotlinx/serialization/json/JsonObject;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    new-instance v0, Lwt/j0;

    .line 21
    .line 22
    move-object v3, p1

    .line 23
    check-cast v3, Lkotlinx/serialization/json/JsonObject;

    .line 24
    .line 25
    const/16 v6, 0xc

    .line 26
    .line 27
    const/4 v7, 0x0

    .line 28
    const/4 v4, 0x0

    .line 29
    const/4 v5, 0x0

    .line 30
    move-object v1, v0

    .line 31
    move-object v2, p0

    .line 32
    invoke-direct/range {v1 .. v7}, Lwt/j0;-><init>(Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    instance-of v0, p1, Lkotlinx/serialization/json/JsonArray;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    new-instance v0, Lwt/l0;

    .line 41
    .line 42
    check-cast p1, Lkotlinx/serialization/json/JsonArray;

    .line 43
    .line 44
    invoke-direct {v0, p0, p1}, Lwt/l0;-><init>(Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/JsonArray;)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    instance-of v0, p1, Lkotlinx/serialization/json/t;

    .line 49
    .line 50
    if-nez v0, :cond_3

    .line 51
    .line 52
    sget-object v0, Lkotlinx/serialization/json/JsonNull;->INSTANCE:Lkotlinx/serialization/json/JsonNull;

    .line 53
    .line 54
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 62
    .line 63
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 64
    .line 65
    .line 66
    throw p0

    .line 67
    :cond_3
    :goto_0
    new-instance v6, Lwt/f0;

    .line 68
    .line 69
    move-object v2, p1

    .line 70
    check-cast v2, Lkotlinx/serialization/json/JsonPrimitive;

    .line 71
    .line 72
    const/4 v4, 0x4

    .line 73
    const/4 v5, 0x0

    .line 74
    const/4 v3, 0x0

    .line 75
    move-object v0, v6

    .line 76
    move-object v1, p0

    .line 77
    invoke-direct/range {v0 .. v5}, Lwt/f0;-><init>(Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/JsonElement;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 78
    .line 79
    .line 80
    :goto_1
    invoke-virtual {v0, p2}, Lwt/c;->decodeSerializableValue(Lst/c;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    return-object p0
.end method

.method public static final b(Lkotlinx/serialization/json/a;Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;Lst/c;)Ljava/lang/Object;
    .locals 2
    .param p0    # Lkotlinx/serialization/json/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/serialization/json/JsonObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lst/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/json/a;",
            "Ljava/lang/String;",
            "Lkotlinx/serialization/json/JsonObject;",
            "Lst/c<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "discriminator"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "element"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "deserializer"

    .line 17
    .line 18
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lwt/j0;

    .line 22
    .line 23
    invoke-interface {p3}, Lst/c;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-direct {v0, p0, p2, p1, v1}, Lwt/j0;-><init>(Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p3}, Lwt/c;->decodeSerializableValue(Lst/c;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method
