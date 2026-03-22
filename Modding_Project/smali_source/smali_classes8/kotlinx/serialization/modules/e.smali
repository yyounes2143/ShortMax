.class public final Lkotlinx/serialization/modules/e;
.super Ljava/lang/Object;
.source "SerializersModule.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSerializersModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SerializersModule.kt\nkotlinx/serialization/modules/SerializersModuleKt\n+ 2 SerializersModuleBuilders.kt\nkotlinx/serialization/modules/SerializersModuleBuildersKt\n*L\n1#1,245:1\n31#2,3:246\n31#2,3:249\n*S KotlinDebug\n*F\n+ 1 SerializersModule.kt\nkotlinx/serialization/modules/SerializersModuleKt\n*L\n97#1:246,3\n109#1:249,3\n*E\n"
    }
.end annotation


# static fields
.field private static final a:Lxt/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v7, Lkotlinx/serialization/modules/b;

    .line 2
    .line 3
    invoke-static {}, Lkotlin/collections/p0;->i()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {}, Lkotlin/collections/p0;->i()Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {}, Lkotlin/collections/p0;->i()Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-static {}, Lkotlin/collections/p0;->i()Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-static {}, Lkotlin/collections/p0;->i()Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    const/4 v6, 0x0

    .line 24
    move-object v0, v7

    .line 25
    invoke-direct/range {v0 .. v6}, Lkotlinx/serialization/modules/b;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Z)V

    .line 26
    .line 27
    .line 28
    sput-object v7, Lkotlinx/serialization/modules/e;->a:Lxt/a;

    .line 29
    .line 30
    return-void
.end method

.method public static final a()Lxt/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/serialization/modules/e;->a:Lxt/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final b(Lxt/a;Lxt/a;)Lxt/a;
    .locals 1
    .param p0    # Lxt/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lxt/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
    const-string v0, "other"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lkotlinx/serialization/modules/c;

    .line 12
    .line 13
    invoke-direct {v0}, Lkotlinx/serialization/modules/c;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lkotlinx/serialization/modules/c;->g(Lxt/a;)V

    .line 17
    .line 18
    .line 19
    new-instance p0, Lkotlinx/serialization/modules/e$a;

    .line 20
    .line 21
    invoke-direct {p0, v0}, Lkotlinx/serialization/modules/e$a;-><init>(Lkotlinx/serialization/modules/c;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p0}, Lxt/a;->a(Lkotlinx/serialization/modules/d;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lkotlinx/serialization/modules/c;->f()Lxt/a;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public static final c(Lxt/a;Lxt/a;)Lxt/a;
    .locals 1
    .param p0    # Lxt/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lxt/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
    const-string v0, "other"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lkotlinx/serialization/modules/c;

    .line 12
    .line 13
    invoke-direct {v0}, Lkotlinx/serialization/modules/c;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lkotlinx/serialization/modules/c;->g(Lxt/a;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lkotlinx/serialization/modules/c;->g(Lxt/a;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lkotlinx/serialization/modules/c;->f()Lxt/a;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method
