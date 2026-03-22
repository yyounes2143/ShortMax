.class public final Lcom/google/protobuf/OptionKtKt;
.super Ljava/lang/Object;
.source "OptionKt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOptionKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OptionKt.kt\ncom/google/protobuf/OptionKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,78:1\n1#2:79\n*E\n"
    }
.end annotation


# direct methods
.method public static final -initializeoption(Lkotlin/jvm/functions/Function1;)Lcom/google/protobuf/Option;
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
            "Lcom/google/protobuf/OptionKt$Dsl;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/google/protobuf/Option;"
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
    sget-object v0, Lcom/google/protobuf/OptionKt$Dsl;->Companion:Lcom/google/protobuf/OptionKt$Dsl$Companion;

    .line 7
    .line 8
    invoke-static {}, Lcom/google/protobuf/Option;->newBuilder()Lcom/google/protobuf/Option$Builder;

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
    invoke-virtual {v0, v1}, Lcom/google/protobuf/OptionKt$Dsl$Companion;->_create(Lcom/google/protobuf/Option$Builder;)Lcom/google/protobuf/OptionKt$Dsl;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/protobuf/OptionKt$Dsl;->_build()Lcom/google/protobuf/Option;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public static final copy(Lcom/google/protobuf/Option;Lkotlin/jvm/functions/Function1;)Lcom/google/protobuf/Option;
    .locals 2
    .param p0    # Lcom/google/protobuf/Option;
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
            "Lcom/google/protobuf/Option;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/protobuf/OptionKt$Dsl;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/google/protobuf/Option;"
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
    sget-object v0, Lcom/google/protobuf/OptionKt$Dsl;->Companion:Lcom/google/protobuf/OptionKt$Dsl$Companion;

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
    check-cast p0, Lcom/google/protobuf/Option$Builder;

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Lcom/google/protobuf/OptionKt$Dsl$Companion;->_create(Lcom/google/protobuf/Option$Builder;)Lcom/google/protobuf/OptionKt$Dsl;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/google/protobuf/OptionKt$Dsl;->_build()Lcom/google/protobuf/Option;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public static final getValueOrNull(Lcom/google/protobuf/OptionOrBuilder;)Lcom/google/protobuf/Any;
    .locals 1
    .param p0    # Lcom/google/protobuf/OptionOrBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lcom/google/protobuf/OptionOrBuilder;->hasValue()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {p0}, Lcom/google/protobuf/OptionOrBuilder;->getValue()Lcom/google/protobuf/Any;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return-object p0
.end method
