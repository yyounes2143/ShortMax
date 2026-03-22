.class public final Landroidx/collection/IntLongMapKt;
.super Ljava/lang/Object;
.source "IntLongMap.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nIntLongMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntLongMap.kt\nandroidx/collection/IntLongMapKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1034:1\n1#2:1035\n*E\n"
    }
.end annotation


# static fields
.field private static final EmptyIntLongMap:Landroidx/collection/MutableIntLongMap;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/collection/MutableIntLongMap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/collection/MutableIntLongMap;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/collection/IntLongMapKt;->EmptyIntLongMap:Landroidx/collection/MutableIntLongMap;

    .line 8
    .line 9
    return-void
.end method

.method public static final buildIntLongMap(ILkotlin/jvm/functions/Function1;)Landroidx/collection/IntLongMap;
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
            "Landroidx/collection/MutableIntLongMap;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/collection/IntLongMap;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "builderAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroidx/collection/MutableIntLongMap;

    invoke-direct {v0, p0}, Landroidx/collection/MutableIntLongMap;-><init>(I)V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static final buildIntLongMap(Lkotlin/jvm/functions/Function1;)Landroidx/collection/IntLongMap;
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
            "Landroidx/collection/MutableIntLongMap;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/collection/IntLongMap;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "builderAction"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroidx/collection/MutableIntLongMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableIntLongMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static final emptyIntLongMap()Landroidx/collection/IntLongMap;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/collection/IntLongMapKt;->EmptyIntLongMap:Landroidx/collection/MutableIntLongMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final intLongMapOf()Landroidx/collection/IntLongMap;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/collection/IntLongMapKt;->EmptyIntLongMap:Landroidx/collection/MutableIntLongMap;

    return-object v0
.end method

.method public static final intLongMapOf(IJ)Landroidx/collection/IntLongMap;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Landroidx/collection/MutableIntLongMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableIntLongMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableIntLongMap;->set(IJ)V

    return-object v0
.end method

.method public static final intLongMapOf(IJIJ)Landroidx/collection/IntLongMap;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    new-instance v0, Landroidx/collection/MutableIntLongMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableIntLongMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableIntLongMap;->set(IJ)V

    .line 5
    invoke-virtual {v0, p3, p4, p5}, Landroidx/collection/MutableIntLongMap;->set(IJ)V

    return-object v0
.end method

.method public static final intLongMapOf(IJIJIJ)Landroidx/collection/IntLongMap;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 6
    new-instance v0, Landroidx/collection/MutableIntLongMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableIntLongMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 7
    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableIntLongMap;->set(IJ)V

    .line 8
    invoke-virtual {v0, p3, p4, p5}, Landroidx/collection/MutableIntLongMap;->set(IJ)V

    .line 9
    invoke-virtual {v0, p6, p7, p8}, Landroidx/collection/MutableIntLongMap;->set(IJ)V

    return-object v0
.end method

.method public static final intLongMapOf(IJIJIJIJ)Landroidx/collection/IntLongMap;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 10
    new-instance v0, Landroidx/collection/MutableIntLongMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableIntLongMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableIntLongMap;->set(IJ)V

    .line 12
    invoke-virtual {v0, p3, p4, p5}, Landroidx/collection/MutableIntLongMap;->set(IJ)V

    .line 13
    invoke-virtual {v0, p6, p7, p8}, Landroidx/collection/MutableIntLongMap;->set(IJ)V

    .line 14
    invoke-virtual {v0, p9, p10, p11}, Landroidx/collection/MutableIntLongMap;->set(IJ)V

    return-object v0
.end method

.method public static final intLongMapOf(IJIJIJIJIJ)Landroidx/collection/IntLongMap;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 15
    new-instance v0, Landroidx/collection/MutableIntLongMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableIntLongMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move v1, p0

    move-wide v2, p1

    .line 16
    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableIntLongMap;->set(IJ)V

    move v1, p3

    move-wide v2, p4

    .line 17
    invoke-virtual {v0, p3, p4, p5}, Landroidx/collection/MutableIntLongMap;->set(IJ)V

    move v1, p6

    move-wide v2, p7

    .line 18
    invoke-virtual {v0, p6, p7, p8}, Landroidx/collection/MutableIntLongMap;->set(IJ)V

    move v1, p9

    move-wide v2, p10

    .line 19
    invoke-virtual {v0, p9, p10, p11}, Landroidx/collection/MutableIntLongMap;->set(IJ)V

    move/from16 v1, p12

    move-wide/from16 v2, p13

    .line 20
    invoke-virtual {v0, v1, v2, v3}, Landroidx/collection/MutableIntLongMap;->set(IJ)V

    return-object v0
.end method

.method public static final mutableIntLongMapOf()Landroidx/collection/MutableIntLongMap;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/collection/MutableIntLongMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableIntLongMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final mutableIntLongMapOf(IJ)Landroidx/collection/MutableIntLongMap;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Landroidx/collection/MutableIntLongMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableIntLongMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableIntLongMap;->set(IJ)V

    return-object v0
.end method

.method public static final mutableIntLongMapOf(IJIJ)Landroidx/collection/MutableIntLongMap;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    new-instance v0, Landroidx/collection/MutableIntLongMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableIntLongMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableIntLongMap;->set(IJ)V

    .line 5
    invoke-virtual {v0, p3, p4, p5}, Landroidx/collection/MutableIntLongMap;->set(IJ)V

    return-object v0
.end method

.method public static final mutableIntLongMapOf(IJIJIJ)Landroidx/collection/MutableIntLongMap;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 6
    new-instance v0, Landroidx/collection/MutableIntLongMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableIntLongMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 7
    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableIntLongMap;->set(IJ)V

    .line 8
    invoke-virtual {v0, p3, p4, p5}, Landroidx/collection/MutableIntLongMap;->set(IJ)V

    .line 9
    invoke-virtual {v0, p6, p7, p8}, Landroidx/collection/MutableIntLongMap;->set(IJ)V

    return-object v0
.end method

.method public static final mutableIntLongMapOf(IJIJIJIJ)Landroidx/collection/MutableIntLongMap;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 10
    new-instance v0, Landroidx/collection/MutableIntLongMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableIntLongMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableIntLongMap;->set(IJ)V

    .line 12
    invoke-virtual {v0, p3, p4, p5}, Landroidx/collection/MutableIntLongMap;->set(IJ)V

    .line 13
    invoke-virtual {v0, p6, p7, p8}, Landroidx/collection/MutableIntLongMap;->set(IJ)V

    .line 14
    invoke-virtual {v0, p9, p10, p11}, Landroidx/collection/MutableIntLongMap;->set(IJ)V

    return-object v0
.end method

.method public static final mutableIntLongMapOf(IJIJIJIJIJ)Landroidx/collection/MutableIntLongMap;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 15
    new-instance v0, Landroidx/collection/MutableIntLongMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableIntLongMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move v1, p0

    move-wide v2, p1

    .line 16
    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableIntLongMap;->set(IJ)V

    move v1, p3

    move-wide v2, p4

    .line 17
    invoke-virtual {v0, p3, p4, p5}, Landroidx/collection/MutableIntLongMap;->set(IJ)V

    move v1, p6

    move-wide v2, p7

    .line 18
    invoke-virtual {v0, p6, p7, p8}, Landroidx/collection/MutableIntLongMap;->set(IJ)V

    move v1, p9

    move-wide v2, p10

    .line 19
    invoke-virtual {v0, p9, p10, p11}, Landroidx/collection/MutableIntLongMap;->set(IJ)V

    move/from16 v1, p12

    move-wide/from16 v2, p13

    .line 20
    invoke-virtual {v0, v1, v2, v3}, Landroidx/collection/MutableIntLongMap;->set(IJ)V

    return-object v0
.end method
