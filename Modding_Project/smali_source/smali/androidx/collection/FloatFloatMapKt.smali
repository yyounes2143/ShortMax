.class public final Landroidx/collection/FloatFloatMapKt;
.super Ljava/lang/Object;
.source "FloatFloatMap.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFloatFloatMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FloatFloatMap.kt\nandroidx/collection/FloatFloatMapKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1036:1\n1#2:1037\n*E\n"
    }
.end annotation


# static fields
.field private static final EmptyFloatFloatMap:Landroidx/collection/MutableFloatFloatMap;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/collection/MutableFloatFloatMap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/collection/MutableFloatFloatMap;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/collection/FloatFloatMapKt;->EmptyFloatFloatMap:Landroidx/collection/MutableFloatFloatMap;

    .line 8
    .line 9
    return-void
.end method

.method public static final buildFloatFloatMap(ILkotlin/jvm/functions/Function1;)Landroidx/collection/FloatFloatMap;
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/collection/MutableFloatFloatMap;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/collection/FloatFloatMap;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "builderAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroidx/collection/MutableFloatFloatMap;

    invoke-direct {v0, p0}, Landroidx/collection/MutableFloatFloatMap;-><init>(I)V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static final buildFloatFloatMap(Lkotlin/jvm/functions/Function1;)Landroidx/collection/FloatFloatMap;
    .locals 4
    .param p0    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/collection/MutableFloatFloatMap;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/collection/FloatFloatMap;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "builderAction"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroidx/collection/MutableFloatFloatMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatFloatMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static final emptyFloatFloatMap()Landroidx/collection/FloatFloatMap;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/collection/FloatFloatMapKt;->EmptyFloatFloatMap:Landroidx/collection/MutableFloatFloatMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final floatFloatMapOf()Landroidx/collection/FloatFloatMap;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/collection/FloatFloatMapKt;->EmptyFloatFloatMap:Landroidx/collection/MutableFloatFloatMap;

    return-object v0
.end method

.method public static final floatFloatMapOf(FF)Landroidx/collection/FloatFloatMap;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Landroidx/collection/MutableFloatFloatMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatFloatMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    return-object v0
.end method

.method public static final floatFloatMapOf(FFFF)Landroidx/collection/FloatFloatMap;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    new-instance v0, Landroidx/collection/MutableFloatFloatMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatFloatMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    .line 5
    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    return-object v0
.end method

.method public static final floatFloatMapOf(FFFFFF)Landroidx/collection/FloatFloatMap;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 6
    new-instance v0, Landroidx/collection/MutableFloatFloatMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatFloatMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 7
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    .line 8
    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    .line 9
    invoke-virtual {v0, p4, p5}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    return-object v0
.end method

.method public static final floatFloatMapOf(FFFFFFFF)Landroidx/collection/FloatFloatMap;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 10
    new-instance v0, Landroidx/collection/MutableFloatFloatMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatFloatMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    .line 12
    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    .line 13
    invoke-virtual {v0, p4, p5}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    .line 14
    invoke-virtual {v0, p6, p7}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    return-object v0
.end method

.method public static final floatFloatMapOf(FFFFFFFFFF)Landroidx/collection/FloatFloatMap;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 15
    new-instance v0, Landroidx/collection/MutableFloatFloatMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatFloatMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 16
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    .line 17
    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    .line 18
    invoke-virtual {v0, p4, p5}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    .line 19
    invoke-virtual {v0, p6, p7}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    .line 20
    invoke-virtual {v0, p8, p9}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    return-object v0
.end method

.method public static final mutableFloatFloatMapOf()Landroidx/collection/MutableFloatFloatMap;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/collection/MutableFloatFloatMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatFloatMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final mutableFloatFloatMapOf(FF)Landroidx/collection/MutableFloatFloatMap;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Landroidx/collection/MutableFloatFloatMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatFloatMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    return-object v0
.end method

.method public static final mutableFloatFloatMapOf(FFFF)Landroidx/collection/MutableFloatFloatMap;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    new-instance v0, Landroidx/collection/MutableFloatFloatMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatFloatMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    .line 5
    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    return-object v0
.end method

.method public static final mutableFloatFloatMapOf(FFFFFF)Landroidx/collection/MutableFloatFloatMap;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 6
    new-instance v0, Landroidx/collection/MutableFloatFloatMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatFloatMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 7
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    .line 8
    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    .line 9
    invoke-virtual {v0, p4, p5}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    return-object v0
.end method

.method public static final mutableFloatFloatMapOf(FFFFFFFF)Landroidx/collection/MutableFloatFloatMap;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 10
    new-instance v0, Landroidx/collection/MutableFloatFloatMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatFloatMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    .line 12
    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    .line 13
    invoke-virtual {v0, p4, p5}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    .line 14
    invoke-virtual {v0, p6, p7}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    return-object v0
.end method

.method public static final mutableFloatFloatMapOf(FFFFFFFFFF)Landroidx/collection/MutableFloatFloatMap;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 15
    new-instance v0, Landroidx/collection/MutableFloatFloatMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatFloatMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 16
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    .line 17
    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    .line 18
    invoke-virtual {v0, p4, p5}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    .line 19
    invoke-virtual {v0, p6, p7}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    .line 20
    invoke-virtual {v0, p8, p9}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    return-object v0
.end method
