.class public final Lwt/a1;
.super Ljava/lang/Object;
.source "TreeJsonEncoder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static synthetic a(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/serialization/json/JsonElement;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lwt/a1;->e(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/serialization/json/JsonElement;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lwt/a1;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final c(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lut/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lut/e;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lut/l;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    sget-object v0, Lut/l$b;->a:Lut/l$b;

    .line 14
    .line 15
    if-ne p0, v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    :goto_1
    return p0
.end method

.method public static final d(Lkotlinx/serialization/json/a;Ljava/lang/Object;Lst/l;)Lkotlinx/serialization/json/JsonElement;
    .locals 3
    .param p0    # Lkotlinx/serialization/json/a;
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
            "TT;",
            "Lst/l<",
            "-TT;>;)",
            "Lkotlinx/serialization/json/JsonElement;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "json"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "serializer"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 12
    .line 13
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lwt/k0;

    .line 17
    .line 18
    new-instance v2, Lwt/z0;

    .line 19
    .line 20
    invoke-direct {v2, v0}, Lwt/z0;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, p0, v2}, Lwt/k0;-><init>(Lkotlinx/serialization/json/a;Lkotlin/jvm/functions/Function1;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p2, p1}, Lwt/e;->encodeSerializableValue(Lst/l;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 30
    .line 31
    if-nez p0, :cond_0

    .line 32
    .line 33
    const-string p0, "result"

    .line 34
    .line 35
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    check-cast p0, Lkotlinx/serialization/json/JsonElement;

    .line 41
    .line 42
    :goto_0
    return-object p0
.end method

.method private static final e(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/serialization/json/JsonElement;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 7
    .line 8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method
