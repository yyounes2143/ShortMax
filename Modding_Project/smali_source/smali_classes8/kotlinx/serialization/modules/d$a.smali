.class public final Lkotlinx/serialization/modules/d$a;
.super Ljava/lang/Object;
.source "SerializersModuleCollector.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/modules/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static synthetic a(Lkotlinx/serialization/KSerializer;Ljava/util/List;)Lkotlinx/serialization/KSerializer;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlinx/serialization/modules/d$a;->c(Lkotlinx/serialization/KSerializer;Ljava/util/List;)Lkotlinx/serialization/KSerializer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static b(Lkotlinx/serialization/modules/d;Lkotlin/reflect/KClass;Lkotlinx/serialization/KSerializer;)V
    .locals 1
    .param p0    # Lkotlinx/serialization/modules/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/serialization/KSerializer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/modules/d;",
            "Lkotlin/reflect/KClass<",
            "TT;>;",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "kClass"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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
    new-instance v0, Lxt/c;

    .line 12
    .line 13
    invoke-direct {v0, p2}, Lxt/c;-><init>(Lkotlinx/serialization/KSerializer;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p0, p1, v0}, Lkotlinx/serialization/modules/d;->e(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private static c(Lkotlinx/serialization/KSerializer;Ljava/util/List;)Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
