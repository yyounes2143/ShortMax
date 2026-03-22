.class public final Landroidx/datastore/DataStoreDelegateKt;
.super Ljava/lang/Object;
.source "DataStoreDelegate.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final dataStore(Ljava/lang/String;Landroidx/datastore/core/Serializer;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Lkotlin/jvm/functions/Function1;Lgt/g0;)Lkotlin/properties/c;
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/datastore/core/Serializer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Landroidx/datastore/core/Serializer<",
            "TT;>;",
            "Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/content/Context;",
            "+",
            "Ljava/util/List<",
            "+",
            "Landroidx/datastore/core/DataMigration<",
            "TT;>;>;>;",
            "Lgt/g0;",
            ")",
            "Lkotlin/properties/c<",
            "Landroid/content/Context;",
            "Landroidx/datastore/core/DataStore<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "fileName"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "serializer"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "produceMigrations"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "scope"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Landroidx/datastore/DataStoreSingletonDelegate;

    .line 22
    .line 23
    new-instance v3, Landroidx/datastore/OkioSerializerWrapper;

    .line 24
    .line 25
    invoke-direct {v3, p1}, Landroidx/datastore/OkioSerializerWrapper;-><init>(Landroidx/datastore/core/Serializer;)V

    .line 26
    .line 27
    .line 28
    move-object v1, v0

    .line 29
    move-object v2, p0

    .line 30
    move-object v4, p2

    .line 31
    move-object v5, p3

    .line 32
    move-object v6, p4

    .line 33
    invoke-direct/range {v1 .. v6}, Landroidx/datastore/DataStoreSingletonDelegate;-><init>(Ljava/lang/String;Landroidx/datastore/core/okio/OkioSerializer;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Lkotlin/jvm/functions/Function1;Lgt/g0;)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method public static synthetic dataStore$default(Ljava/lang/String;Landroidx/datastore/core/Serializer;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Lkotlin/jvm/functions/Function1;Lgt/g0;ILjava/lang/Object;)Lkotlin/properties/c;
    .locals 1

    .line 1
    and-int/lit8 p6, p5, 0x4

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p6, :cond_0

    .line 5
    .line 6
    move-object p2, v0

    .line 7
    :cond_0
    and-int/lit8 p6, p5, 0x8

    .line 8
    .line 9
    if-eqz p6, :cond_1

    .line 10
    .line 11
    sget-object p3, Landroidx/datastore/DataStoreDelegateKt$dataStore$1;->INSTANCE:Landroidx/datastore/DataStoreDelegateKt$dataStore$1;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p5, p5, 0x10

    .line 14
    .line 15
    if-eqz p5, :cond_2

    .line 16
    .line 17
    invoke-static {}, Lgt/q0;->b()Lgt/c0;

    .line 18
    .line 19
    .line 20
    move-result-object p4

    .line 21
    const/4 p5, 0x1

    .line 22
    invoke-static {v0, p5, v0}, Lgt/r1;->b(Lkotlinx/coroutines/r;ILjava/lang/Object;)Lgt/s;

    .line 23
    .line 24
    .line 25
    move-result-object p5

    .line 26
    invoke-virtual {p4, p5}, Lkotlin/coroutines/a;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 27
    .line 28
    .line 29
    move-result-object p4

    .line 30
    invoke-static {p4}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 31
    .line 32
    .line 33
    move-result-object p4

    .line 34
    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/datastore/DataStoreDelegateKt;->dataStore(Ljava/lang/String;Landroidx/datastore/core/Serializer;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Lkotlin/jvm/functions/Function1;Lgt/g0;)Lkotlin/properties/c;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method
