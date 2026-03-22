.class public final Lvt/s0;
.super Ljava/lang/Object;
.source "InlineClassDescriptor.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final a(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlinx/serialization/KSerializer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;)",
            "Lkotlinx/serialization/descriptors/SerialDescriptor;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "primitiveSerializer"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lvt/r0;

    .line 12
    .line 13
    new-instance v1, Lvt/s0$a;

    .line 14
    .line 15
    invoke-direct {v1, p1}, Lvt/s0$a;-><init>(Lkotlinx/serialization/KSerializer;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0, v1}, Lvt/r0;-><init>(Ljava/lang/String;Lvt/m0;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method
