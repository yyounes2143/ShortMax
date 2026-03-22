.class public final Landroidx/collection/FloatObjectMapKt;
.super Ljava/lang/Object;
.source "FloatObjectMap.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFloatObjectMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FloatObjectMap.kt\nandroidx/collection/FloatObjectMapKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1017:1\n1#2:1018\n*E\n"
    }
.end annotation


# static fields
.field private static final EmptyFloatObjectMap:Landroidx/collection/MutableFloatObjectMap;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/collection/MutableFloatObjectMap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/collection/MutableFloatObjectMap;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/collection/FloatObjectMapKt;->EmptyFloatObjectMap:Landroidx/collection/MutableFloatObjectMap;

    .line 8
    .line 9
    return-void
.end method

.method public static final buildFloatObjectMap(ILkotlin/jvm/functions/Function1;)Landroidx/collection/FloatObjectMap;
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/collection/MutableFloatObjectMap<",
            "TV;>;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/collection/FloatObjectMap<",
            "TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "builderAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroidx/collection/MutableFloatObjectMap;

    invoke-direct {v0, p0}, Landroidx/collection/MutableFloatObjectMap;-><init>(I)V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static final buildFloatObjectMap(Lkotlin/jvm/functions/Function1;)Landroidx/collection/FloatObjectMap;
    .locals 4
    .param p0    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/collection/MutableFloatObjectMap<",
            "TV;>;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/collection/FloatObjectMap<",
            "TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "builderAction"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroidx/collection/MutableFloatObjectMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatObjectMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static final emptyFloatObjectMap()Landroidx/collection/FloatObjectMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/collection/FloatObjectMap<",
            "TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/collection/FloatObjectMapKt;->EmptyFloatObjectMap:Landroidx/collection/MutableFloatObjectMap;

    .line 2
    .line 3
    const-string v1, "null cannot be cast to non-null type androidx.collection.FloatObjectMap<V of androidx.collection.FloatObjectMapKt.emptyFloatObjectMap>"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static final floatObjectMapOf()Landroidx/collection/FloatObjectMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/collection/FloatObjectMap<",
            "TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/collection/FloatObjectMapKt;->EmptyFloatObjectMap:Landroidx/collection/MutableFloatObjectMap;

    const-string v1, "null cannot be cast to non-null type androidx.collection.FloatObjectMap<V of androidx.collection.FloatObjectMapKt.floatObjectMapOf>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final floatObjectMapOf(FLjava/lang/Object;)Landroidx/collection/FloatObjectMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(FTV;)",
            "Landroidx/collection/FloatObjectMap<",
            "TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Landroidx/collection/MutableFloatObjectMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatObjectMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    return-object v0
.end method

.method public static final floatObjectMapOf(FLjava/lang/Object;FLjava/lang/Object;)Landroidx/collection/FloatObjectMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(FTV;FTV;)",
            "Landroidx/collection/FloatObjectMap<",
            "TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    new-instance v0, Landroidx/collection/MutableFloatObjectMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatObjectMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    .line 5
    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    return-object v0
.end method

.method public static final floatObjectMapOf(FLjava/lang/Object;FLjava/lang/Object;FLjava/lang/Object;)Landroidx/collection/FloatObjectMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(FTV;FTV;FTV;)",
            "Landroidx/collection/FloatObjectMap<",
            "TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 6
    new-instance v0, Landroidx/collection/MutableFloatObjectMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatObjectMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 7
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    .line 8
    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    .line 9
    invoke-virtual {v0, p4, p5}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    return-object v0
.end method

.method public static final floatObjectMapOf(FLjava/lang/Object;FLjava/lang/Object;FLjava/lang/Object;FLjava/lang/Object;)Landroidx/collection/FloatObjectMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(FTV;FTV;FTV;FTV;)",
            "Landroidx/collection/FloatObjectMap<",
            "TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 10
    new-instance v0, Landroidx/collection/MutableFloatObjectMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatObjectMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    .line 12
    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    .line 13
    invoke-virtual {v0, p4, p5}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    .line 14
    invoke-virtual {v0, p6, p7}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    return-object v0
.end method

.method public static final floatObjectMapOf(FLjava/lang/Object;FLjava/lang/Object;FLjava/lang/Object;FLjava/lang/Object;FLjava/lang/Object;)Landroidx/collection/FloatObjectMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(FTV;FTV;FTV;FTV;FTV;)",
            "Landroidx/collection/FloatObjectMap<",
            "TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 15
    new-instance v0, Landroidx/collection/MutableFloatObjectMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatObjectMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 16
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    .line 17
    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    .line 18
    invoke-virtual {v0, p4, p5}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    .line 19
    invoke-virtual {v0, p6, p7}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    .line 20
    invoke-virtual {v0, p8, p9}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    return-object v0
.end method

.method public static final mutableFloatObjectMapOf()Landroidx/collection/MutableFloatObjectMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/collection/MutableFloatObjectMap<",
            "TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/collection/MutableFloatObjectMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatObjectMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final mutableFloatObjectMapOf(FLjava/lang/Object;)Landroidx/collection/MutableFloatObjectMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(FTV;)",
            "Landroidx/collection/MutableFloatObjectMap<",
            "TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Landroidx/collection/MutableFloatObjectMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatObjectMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    return-object v0
.end method

.method public static final mutableFloatObjectMapOf(FLjava/lang/Object;FLjava/lang/Object;)Landroidx/collection/MutableFloatObjectMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(FTV;FTV;)",
            "Landroidx/collection/MutableFloatObjectMap<",
            "TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    new-instance v0, Landroidx/collection/MutableFloatObjectMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatObjectMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    .line 5
    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    return-object v0
.end method

.method public static final mutableFloatObjectMapOf(FLjava/lang/Object;FLjava/lang/Object;FLjava/lang/Object;)Landroidx/collection/MutableFloatObjectMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(FTV;FTV;FTV;)",
            "Landroidx/collection/MutableFloatObjectMap<",
            "TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 6
    new-instance v0, Landroidx/collection/MutableFloatObjectMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatObjectMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 7
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    .line 8
    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    .line 9
    invoke-virtual {v0, p4, p5}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    return-object v0
.end method

.method public static final mutableFloatObjectMapOf(FLjava/lang/Object;FLjava/lang/Object;FLjava/lang/Object;FLjava/lang/Object;)Landroidx/collection/MutableFloatObjectMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(FTV;FTV;FTV;FTV;)",
            "Landroidx/collection/MutableFloatObjectMap<",
            "TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 10
    new-instance v0, Landroidx/collection/MutableFloatObjectMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatObjectMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    .line 12
    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    .line 13
    invoke-virtual {v0, p4, p5}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    .line 14
    invoke-virtual {v0, p6, p7}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    return-object v0
.end method

.method public static final mutableFloatObjectMapOf(FLjava/lang/Object;FLjava/lang/Object;FLjava/lang/Object;FLjava/lang/Object;FLjava/lang/Object;)Landroidx/collection/MutableFloatObjectMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(FTV;FTV;FTV;FTV;FTV;)",
            "Landroidx/collection/MutableFloatObjectMap<",
            "TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 15
    new-instance v0, Landroidx/collection/MutableFloatObjectMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatObjectMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 16
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    .line 17
    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    .line 18
    invoke-virtual {v0, p4, p5}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    .line 19
    invoke-virtual {v0, p6, p7}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    .line 20
    invoke-virtual {v0, p8, p9}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    return-object v0
.end method
