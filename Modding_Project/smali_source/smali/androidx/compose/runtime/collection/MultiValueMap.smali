.class public final Landroidx/compose/runtime/collection/MultiValueMap;
.super Ljava/lang/Object;
.source "MultiValueMap.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMultiValueMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultiValueMap.kt\nandroidx/compose/runtime/collection/MultiValueMap\n+ 2 ScatterMap.kt\nandroidx/collection/MutableScatterMap\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 ObjectList.kt\nandroidx/collection/ObjectListKt\n+ 5 ScatterMap.kt\nandroidx/collection/ScatterMap\n+ 6 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 7 ObjectList.kt\nandroidx/collection/ObjectList\n+ 8 ObjectList.kt\nandroidx/collection/MutableObjectList\n*L\n1#1,141:1\n694#2,5:142\n701#2,8:151\n4802#3,4:147\n1516#4:159\n372#5,3:160\n329#5,6:163\n339#5,3:170\n342#5,9:174\n375#5:183\n1399#6:169\n1270#6:173\n287#7,6:184\n84#7:194\n943#8,4:190\n947#8,8:195\n*S KotlinDebug\n*F\n+ 1 MultiValueMap.kt\nandroidx/compose/runtime/collection/MultiValueMap\n*L\n44#1:142,5\n44#1:151,8\n45#1:147,4\n107#1:159\n108#1:160,3\n108#1:163,6\n108#1:170,3\n108#1:174,9\n108#1:183\n108#1:169\n108#1:173\n121#1:184,6\n132#1:194\n132#1:190,4\n132#1:195,8\n*E\n"
    }
.end annotation


# instance fields
.field private final map:Landroidx/collection/MutableScatterMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private synthetic constructor <init>(Landroidx/collection/MutableScatterMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/collection/MultiValueMap;->map:Landroidx/collection/MutableScatterMap;

    .line 5
    .line 6
    return-void
.end method

.method public static final add-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;TK;TV;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterMap;->findInsertIndex(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-eqz v1, :cond_1

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    iget-object v2, p0, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    .line 15
    .line 16
    aget-object v2, v2, v0

    .line 17
    .line 18
    :goto_1
    invoke-static {v2}, Lkotlin/jvm/internal/TypeIntrinsics;->isMutableList(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    if-nez v2, :cond_2

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_2
    instance-of v3, v2, Landroidx/collection/MutableObjectList;

    .line 25
    .line 26
    if-eqz v3, :cond_3

    .line 27
    .line 28
    const-string v3, "null cannot be cast to non-null type androidx.collection.MutableObjectList<kotlin.Any>"

    .line 29
    .line 30
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    check-cast v2, Landroidx/collection/MutableObjectList;

    .line 34
    .line 35
    invoke-virtual {v2, p2}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-object p2, v2

    .line 39
    goto :goto_2

    .line 40
    :cond_3
    invoke-static {v2, p2}, Landroidx/collection/ObjectListKt;->mutableObjectListOf(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/collection/MutableObjectList;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    :goto_2
    if-eqz v1, :cond_4

    .line 45
    .line 46
    not-int v0, v0

    .line 47
    iget-object v1, p0, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    .line 48
    .line 49
    aput-object p1, v1, v0

    .line 50
    .line 51
    iget-object p0, p0, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    .line 52
    .line 53
    aput-object p2, p0, v0

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_4
    iget-object p0, p0, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    .line 57
    .line 58
    aput-object p2, p0, v0

    .line 59
    .line 60
    :goto_3
    return-void
.end method

.method public static final synthetic box-impl(Landroidx/collection/MutableScatterMap;)Landroidx/compose/runtime/collection/MultiValueMap;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/runtime/collection/MultiValueMap;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/compose/runtime/collection/MultiValueMap;-><init>(Landroidx/collection/MutableScatterMap;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final clear-impl(Landroidx/collection/MutableScatterMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/collection/MutableScatterMap;->clear()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static constructor-impl(Landroidx/collection/MutableScatterMap;)Landroidx/collection/MutableScatterMap;
    .locals 0
    .param p0    # Landroidx/collection/MutableScatterMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public static synthetic constructor-impl$default(Landroidx/collection/MutableScatterMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)Landroidx/collection/MutableScatterMap;
    .locals 1

    .line 1
    const/4 p2, 0x1

    .line 2
    and-int/2addr p1, p2

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    new-instance p0, Landroidx/collection/MutableScatterMap;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, p2, v0}, Landroidx/collection/MutableScatterMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {p0}, Landroidx/compose/runtime/collection/MultiValueMap;->constructor-impl(Landroidx/collection/MutableScatterMap;)Landroidx/collection/MutableScatterMap;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static final contains-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;TK;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/collection/ScatterMap;->contains(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static equals-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Landroidx/compose/runtime/collection/MultiValueMap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Landroidx/compose/runtime/collection/MultiValueMap;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MultiValueMap;->unbox-impl()Landroidx/collection/MutableScatterMap;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_1

    .line 18
    .line 19
    return v1

    .line 20
    :cond_1
    const/4 p0, 0x1

    .line 21
    return p0
.end method

.method public static final equals-impl0(Landroidx/collection/MutableScatterMap;Landroidx/collection/MutableScatterMap;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final forEachValue-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;TK;",
            "Lkotlin/jvm/functions/Function1<",
            "-TV;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    instance-of p1, p0, Landroidx/collection/MutableObjectList;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    check-cast p0, Landroidx/collection/ObjectList;

    .line 12
    .line 13
    iget-object p1, p0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 14
    .line 15
    iget p0, p0, Landroidx/collection/ObjectList;->_size:I

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    :goto_0
    if-ge v0, p0, :cond_1

    .line 19
    .line 20
    aget-object v1, p1, v0

    .line 21
    .line 22
    const-string v2, "null cannot be cast to non-null type V of androidx.compose.runtime.collection.MultiValueMap"

    .line 23
    .line 24
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    add-int/lit8 v0, v0, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method public static final get-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)Landroidx/collection/ObjectList;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;TK;)",
            "Landroidx/collection/ObjectList<",
            "TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Landroidx/collection/ObjectListKt;->emptyObjectList()Landroidx/collection/ObjectList;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    instance-of p1, p0, Landroidx/collection/MutableObjectList;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    check-cast p0, Landroidx/collection/ObjectList;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-static {p0}, Landroidx/collection/ObjectListKt;->objectListOf(Ljava/lang/Object;)Landroidx/collection/ObjectList;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :goto_0
    return-object p0
.end method

.method public static hashCode-impl(Landroidx/collection/MutableScatterMap;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/collection/ScatterMap;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final isEmpty-impl(Landroidx/collection/MutableScatterMap;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/collection/ScatterMap;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final isNotEmpty-impl(Landroidx/collection/MutableScatterMap;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/collection/ScatterMap;->isNotEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final removeFirst-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;TK;)TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    instance-of v1, v0, Landroidx/collection/MutableObjectList;

    .line 10
    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    check-cast v0, Landroidx/collection/MutableObjectList;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroidx/collection/MutableObjectList;->removeAt(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0}, Landroidx/collection/ObjectList;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {v0}, Landroidx/collection/ObjectList;->getSize()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/4 v3, 0x1

    .line 34
    if-ne v2, v3, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0}, Landroidx/collection/ObjectList;->first()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p0, p1, v0}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    move-object v0, v1

    .line 44
    goto :goto_0

    .line 45
    :cond_3
    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    :goto_0
    return-object v0
.end method

.method public static final removeLast-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;TK;)TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    instance-of v1, v0, Landroidx/collection/MutableObjectList;

    .line 10
    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    check-cast v0, Landroidx/collection/MutableObjectList;

    .line 14
    .line 15
    invoke-static {v0}, Landroidx/compose/runtime/collection/ExtensionsKt;->removeLast(Landroidx/collection/MutableObjectList;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "null cannot be cast to non-null type V of androidx.compose.runtime.collection.MultiValueMap"

    .line 20
    .line 21
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/collection/ObjectList;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-virtual {v0}, Landroidx/collection/ObjectList;->getSize()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/4 v3, 0x1

    .line 38
    if-ne v2, v3, :cond_2

    .line 39
    .line 40
    invoke-virtual {v0}, Landroidx/collection/ObjectList;->first()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p0, p1, v0}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    move-object v0, v1

    .line 48
    goto :goto_0

    .line 49
    :cond_3
    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    :goto_0
    return-object v0
.end method

.method public static final removeValueIf-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;TK;",
            "Lkotlin/jvm/functions/Function1<",
            "-TV;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    instance-of v1, v0, Landroidx/collection/MutableObjectList;

    .line 8
    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    check-cast v0, Landroidx/collection/MutableObjectList;

    .line 12
    .line 13
    iget v1, v0, Landroidx/collection/ObjectList;->_size:I

    .line 14
    .line 15
    iget-object v2, v0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-static {v3, v1}, Lkotlin/ranges/e;->v(II)Lkotlin/ranges/IntRange;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v4}, Lkotlin/ranges/d;->c()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    invoke-virtual {v4}, Lkotlin/ranges/d;->d()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-gt v5, v4, :cond_1

    .line 31
    .line 32
    :goto_0
    sub-int v6, v5, v3

    .line 33
    .line 34
    aget-object v7, v2, v5

    .line 35
    .line 36
    aput-object v7, v2, v6

    .line 37
    .line 38
    aget-object v6, v2, v5

    .line 39
    .line 40
    invoke-interface {p2, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    check-cast v6, Ljava/lang/Boolean;

    .line 45
    .line 46
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-eqz v6, :cond_0

    .line 51
    .line 52
    add-int/lit8 v3, v3, 0x1

    .line 53
    .line 54
    :cond_0
    if-eq v5, v4, :cond_1

    .line 55
    .line 56
    add-int/lit8 v5, v5, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const/4 p2, 0x0

    .line 60
    sub-int v4, v1, v3

    .line 61
    .line 62
    invoke-static {v2, p2, v4, v1}, Lkotlin/collections/n;->C([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 63
    .line 64
    .line 65
    iget p2, v0, Landroidx/collection/ObjectList;->_size:I

    .line 66
    .line 67
    sub-int/2addr p2, v3

    .line 68
    iput p2, v0, Landroidx/collection/ObjectList;->_size:I

    .line 69
    .line 70
    invoke-virtual {v0}, Landroidx/collection/ObjectList;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    if-eqz p2, :cond_2

    .line 75
    .line 76
    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    :cond_2
    invoke-virtual {v0}, Landroidx/collection/ObjectList;->getSize()I

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    if-nez p2, :cond_4

    .line 84
    .line 85
    invoke-virtual {v0}, Landroidx/collection/ObjectList;->first()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-virtual {p0, p1, p2}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    check-cast p2, Ljava/lang/Boolean;

    .line 98
    .line 99
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    if-eqz p2, :cond_4

    .line 104
    .line 105
    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    :cond_4
    :goto_1
    return-void
.end method

.method public static toString-impl(Landroidx/collection/MutableScatterMap;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "MultiValueMap(map="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const/16 p0, 0x29

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static final values-impl(Landroidx/collection/MutableScatterMap;)Landroidx/collection/ObjectList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/collection/ObjectList<",
            "TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/collection/ScatterMap;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Landroidx/collection/ObjectListKt;->emptyObjectList()Landroidx/collection/ObjectList;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance v0, Landroidx/collection/MutableObjectList;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-direct {v0, v2, v3, v1}, Landroidx/collection/MutableObjectList;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    .line 21
    .line 22
    iget-object p0, p0, Landroidx/collection/ScatterMap;->metadata:[J

    .line 23
    .line 24
    array-length v3, p0

    .line 25
    add-int/lit8 v3, v3, -0x2

    .line 26
    .line 27
    if-ltz v3, :cond_5

    .line 28
    .line 29
    move v4, v2

    .line 30
    :goto_0
    aget-wide v5, p0, v4

    .line 31
    .line 32
    not-long v7, v5

    .line 33
    const/4 v9, 0x7

    .line 34
    shl-long/2addr v7, v9

    .line 35
    and-long/2addr v7, v5

    .line 36
    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    and-long/2addr v7, v9

    .line 42
    cmp-long v7, v7, v9

    .line 43
    .line 44
    if-eqz v7, :cond_4

    .line 45
    .line 46
    sub-int v7, v4, v3

    .line 47
    .line 48
    not-int v7, v7

    .line 49
    ushr-int/lit8 v7, v7, 0x1f

    .line 50
    .line 51
    const/16 v8, 0x8

    .line 52
    .line 53
    rsub-int/lit8 v7, v7, 0x8

    .line 54
    .line 55
    move v9, v2

    .line 56
    :goto_1
    if-ge v9, v7, :cond_3

    .line 57
    .line 58
    const-wide/16 v10, 0xff

    .line 59
    .line 60
    and-long/2addr v10, v5

    .line 61
    const-wide/16 v12, 0x80

    .line 62
    .line 63
    cmp-long v10, v10, v12

    .line 64
    .line 65
    if-gez v10, :cond_2

    .line 66
    .line 67
    shl-int/lit8 v10, v4, 0x3

    .line 68
    .line 69
    add-int/2addr v10, v9

    .line 70
    aget-object v10, v1, v10

    .line 71
    .line 72
    instance-of v11, v10, Landroidx/collection/MutableObjectList;

    .line 73
    .line 74
    if-eqz v11, :cond_1

    .line 75
    .line 76
    const-string v11, "null cannot be cast to non-null type androidx.collection.MutableObjectList<V of androidx.compose.runtime.collection.MultiValueMap>"

    .line 77
    .line 78
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    check-cast v10, Landroidx/collection/MutableObjectList;

    .line 82
    .line 83
    invoke-virtual {v0, v10}, Landroidx/collection/MutableObjectList;->addAll(Landroidx/collection/ObjectList;)Z

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_1
    const-string v11, "null cannot be cast to non-null type V of androidx.compose.runtime.collection.MultiValueMap"

    .line 88
    .line 89
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v10}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    :cond_2
    :goto_2
    shr-long/2addr v5, v8

    .line 96
    add-int/lit8 v9, v9, 0x1

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    if-ne v7, v8, :cond_5

    .line 100
    .line 101
    :cond_4
    if-eq v4, v3, :cond_5

    .line 102
    .line 103
    add-int/lit8 v4, v4, 0x1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_5
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/collection/MultiValueMap;->map:Landroidx/collection/MutableScatterMap;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/runtime/collection/MultiValueMap;->equals-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/collection/MultiValueMap;->map:Landroidx/collection/MutableScatterMap;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/runtime/collection/MultiValueMap;->hashCode-impl(Landroidx/collection/MutableScatterMap;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/collection/MultiValueMap;->map:Landroidx/collection/MutableScatterMap;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/runtime/collection/MultiValueMap;->toString-impl(Landroidx/collection/MutableScatterMap;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final synthetic unbox-impl()Landroidx/collection/MutableScatterMap;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/collection/MultiValueMap;->map:Landroidx/collection/MutableScatterMap;

    .line 2
    .line 3
    return-object v0
.end method
