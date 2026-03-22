.class public final Lcom/google/protobuf/Int32ValueKtKt;
.super Ljava/lang/Object;
.source "Int32ValueKt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nInt32ValueKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Int32ValueKt.kt\ncom/google/protobuf/Int32ValueKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,51:1\n1#2:52\n*E\n"
    }
.end annotation


# direct methods
.method public static final -initializeint32Value(Lkotlin/jvm/functions/Function1;)Lcom/google/protobuf/Int32Value;
    .locals 3
    .param p0    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/protobuf/Int32ValueKt$Dsl;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/google/protobuf/Int32Value;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "block"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/google/protobuf/Int32ValueKt$Dsl;->Companion:Lcom/google/protobuf/Int32ValueKt$Dsl$Companion;

    .line 7
    .line 8
    invoke-static {}, Lcom/google/protobuf/Int32Value;->newBuilder()Lcom/google/protobuf/Int32Value$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "newBuilder()"

    .line 13
    .line 14
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/google/protobuf/Int32ValueKt$Dsl$Companion;->_create(Lcom/google/protobuf/Int32Value$Builder;)Lcom/google/protobuf/Int32ValueKt$Dsl;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/protobuf/Int32ValueKt$Dsl;->_build()Lcom/google/protobuf/Int32Value;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public static final copy(Lcom/google/protobuf/Int32Value;Lkotlin/jvm/functions/Function1;)Lcom/google/protobuf/Int32Value;
    .locals 2
    .param p0    # Lcom/google/protobuf/Int32Value;
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
            "Lcom/google/protobuf/Int32Value;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/protobuf/Int32ValueKt$Dsl;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/google/protobuf/Int32Value;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "block"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/google/protobuf/Int32ValueKt$Dsl;->Companion:Lcom/google/protobuf/Int32ValueKt$Dsl$Companion;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v1, "this.toBuilder()"

    .line 18
    .line 19
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    check-cast p0, Lcom/google/protobuf/Int32Value$Builder;

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Lcom/google/protobuf/Int32ValueKt$Dsl$Companion;->_create(Lcom/google/protobuf/Int32Value$Builder;)Lcom/google/protobuf/Int32ValueKt$Dsl;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/google/protobuf/Int32ValueKt$Dsl;->_build()Lcom/google/protobuf/Int32Value;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method
