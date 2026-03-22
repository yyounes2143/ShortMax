.class public final Landroidx/collection/FloatLongMapKt;
.super Ljava/lang/Object;
.source "FloatLongMap.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFloatLongMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FloatLongMap.kt\nandroidx/collection/FloatLongMapKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1036:1\n1#2:1037\n*E\n"
    }
.end annotation


# static fields
.field private static final EmptyFloatLongMap:Landroidx/collection/MutableFloatLongMap;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/collection/MutableFloatLongMap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/collection/MutableFloatLongMap;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/collection/FloatLongMapKt;->EmptyFloatLongMap:Landroidx/collection/MutableFloatLongMap;

    .line 8
    .line 9
    return-void
.end method

.method public static final buildFloatLongMap(ILkotlin/jvm/functions/Function1;)Landroidx/collection/FloatLongMap;
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
            "Landroidx/collection/MutableFloatLongMap;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/collection/FloatLongMap;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "builderAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroidx/collection/MutableFloatLongMap;

    invoke-direct {v0, p0}, Landroidx/collection/MutableFloatLongMap;-><init>(I)V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static final buildFloatLongMap(Lkotlin/jvm/functions/Function1;)Landroidx/collection/FloatLongMap;
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
            "Landroidx/collection/MutableFloatLongMap;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/collection/FloatLongMap;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "builderAction"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroidx/collection/MutableFloatLongMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatLongMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static final emptyFloatLongMap()Landroidx/collection/FloatLongMap;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/collection/FloatLongMapKt;->EmptyFloatLongMap:Landroidx/collection/MutableFloatLongMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final floatLongMapOf()Landroidx/collection/FloatLongMap;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/collection/FloatLongMapKt;->EmptyFloatLongMap:Landroidx/collection/MutableFloatLongMap;

    return-object v0
.end method

.method public static final floatLongMapOf(FJ)Landroidx/collection/FloatLongMap;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Landroidx/collection/MutableFloatLongMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatLongMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    return-object v0
.end method

.method public static final floatLongMapOf(FJFJ)Landroidx/collection/FloatLongMap;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    new-instance v0, Landroidx/collection/MutableFloatLongMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatLongMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    .line 5
    invoke-virtual {v0, p3, p4, p5}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    return-object v0
.end method

.method public static final floatLongMapOf(FJFJFJ)Landroidx/collection/FloatLongMap;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 6
    new-instance v0, Landroidx/collection/MutableFloatLongMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatLongMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 7
    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    .line 8
    invoke-virtual {v0, p3, p4, p5}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    .line 9
    invoke-virtual {v0, p6, p7, p8}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    return-object v0
.end method

.method public static final floatLongMapOf(FJFJFJFJ)Landroidx/collection/FloatLongMap;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 10
    new-instance v0, Landroidx/collection/MutableFloatLongMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatLongMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    .line 12
    invoke-virtual {v0, p3, p4, p5}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    .line 13
    invoke-virtual {v0, p6, p7, p8}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    .line 14
    invoke-virtual {v0, p9, p10, p11}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    return-object v0
.end method

.method public static final floatLongMapOf(FJFJFJFJFJ)Landroidx/collection/FloatLongMap;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 15
    new-instance v0, Landroidx/collection/MutableFloatLongMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatLongMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move v1, p0

    move-wide v2, p1

    .line 16
    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    move v1, p3

    move-wide v2, p4

    .line 17
    invoke-virtual {v0, p3, p4, p5}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    move v1, p6

    move-wide v2, p7

    .line 18
    invoke-virtual {v0, p6, p7, p8}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    move v1, p9

    move-wide v2, p10

    .line 19
    invoke-virtual {v0, p9, p10, p11}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    move/from16 v1, p12

    move-wide/from16 v2, p13

    .line 20
    invoke-virtual {v0, v1, v2, v3}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    return-object v0
.end method

.method public static final mutableFloatLongMapOf()Landroidx/collection/MutableFloatLongMap;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/collection/MutableFloatLongMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatLongMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final mutableFloatLongMapOf(FJ)Landroidx/collection/MutableFloatLongMap;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Landroidx/collection/MutableFloatLongMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatLongMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    return-object v0
.end method

.method public static final mutableFloatLongMapOf(FJFJ)Landroidx/collection/MutableFloatLongMap;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    new-instance v0, Landroidx/collection/MutableFloatLongMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatLongMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    .line 5
    invoke-virtual {v0, p3, p4, p5}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    return-object v0
.end method

.method public static final mutableFloatLongMapOf(FJFJFJ)Landroidx/collection/MutableFloatLongMap;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 6
    new-instance v0, Landroidx/collection/MutableFloatLongMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatLongMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 7
    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    .line 8
    invoke-virtual {v0, p3, p4, p5}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    .line 9
    invoke-virtual {v0, p6, p7, p8}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    return-object v0
.end method

.method public static final mutableFloatLongMapOf(FJFJFJFJ)Landroidx/collection/MutableFloatLongMap;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 10
    new-instance v0, Landroidx/collection/MutableFloatLongMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatLongMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    .line 12
    invoke-virtual {v0, p3, p4, p5}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    .line 13
    invoke-virtual {v0, p6, p7, p8}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    .line 14
    invoke-virtual {v0, p9, p10, p11}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    return-object v0
.end method

.method public static final mutableFloatLongMapOf(FJFJFJFJFJ)Landroidx/collection/MutableFloatLongMap;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 15
    new-instance v0, Landroidx/collection/MutableFloatLongMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatLongMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move v1, p0

    move-wide v2, p1

    .line 16
    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    move v1, p3

    move-wide v2, p4

    .line 17
    invoke-virtual {v0, p3, p4, p5}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    move v1, p6

    move-wide v2, p7

    .line 18
    invoke-virtual {v0, p6, p7, p8}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    move v1, p9

    move-wide v2, p10

    .line 19
    invoke-virtual {v0, p9, p10, p11}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    move/from16 v1, p12

    move-wide/from16 v2, p13

    .line 20
    invoke-virtual {v0, v1, v2, v3}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    return-object v0
.end method
