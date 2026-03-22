.class public final Landroidx/collection/LongLongMapKt;
.super Ljava/lang/Object;
.source "LongLongMap.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLongLongMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LongLongMap.kt\nandroidx/collection/LongLongMapKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1034:1\n1#2:1035\n*E\n"
    }
.end annotation


# static fields
.field private static final EmptyLongLongMap:Landroidx/collection/MutableLongLongMap;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/collection/MutableLongLongMap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/collection/MutableLongLongMap;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/collection/LongLongMapKt;->EmptyLongLongMap:Landroidx/collection/MutableLongLongMap;

    .line 8
    .line 9
    return-void
.end method

.method public static final buildLongLongMap(ILkotlin/jvm/functions/Function1;)Landroidx/collection/LongLongMap;
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
            "Landroidx/collection/MutableLongLongMap;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/collection/LongLongMap;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "builderAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroidx/collection/MutableLongLongMap;

    invoke-direct {v0, p0}, Landroidx/collection/MutableLongLongMap;-><init>(I)V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static final buildLongLongMap(Lkotlin/jvm/functions/Function1;)Landroidx/collection/LongLongMap;
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
            "Landroidx/collection/MutableLongLongMap;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/collection/LongLongMap;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "builderAction"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroidx/collection/MutableLongLongMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableLongLongMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static final emptyLongLongMap()Landroidx/collection/LongLongMap;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/collection/LongLongMapKt;->EmptyLongLongMap:Landroidx/collection/MutableLongLongMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final longLongMapOf()Landroidx/collection/LongLongMap;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/collection/LongLongMapKt;->EmptyLongLongMap:Landroidx/collection/MutableLongLongMap;

    return-object v0
.end method

.method public static final longLongMapOf(JJ)Landroidx/collection/LongLongMap;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Landroidx/collection/MutableLongLongMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableLongLongMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/collection/MutableLongLongMap;->set(JJ)V

    return-object v0
.end method

.method public static final longLongMapOf(JJJJ)Landroidx/collection/LongLongMap;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    new-instance v0, Landroidx/collection/MutableLongLongMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableLongLongMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/collection/MutableLongLongMap;->set(JJ)V

    .line 5
    invoke-virtual {v0, p4, p5, p6, p7}, Landroidx/collection/MutableLongLongMap;->set(JJ)V

    return-object v0
.end method

.method public static final longLongMapOf(JJJJJJ)Landroidx/collection/LongLongMap;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 6
    new-instance v0, Landroidx/collection/MutableLongLongMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableLongLongMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 7
    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/collection/MutableLongLongMap;->set(JJ)V

    .line 8
    invoke-virtual {v0, p4, p5, p6, p7}, Landroidx/collection/MutableLongLongMap;->set(JJ)V

    .line 9
    invoke-virtual {v0, p8, p9, p10, p11}, Landroidx/collection/MutableLongLongMap;->set(JJ)V

    return-object v0
.end method

.method public static final longLongMapOf(JJJJJJJJ)Landroidx/collection/LongLongMap;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 10
    new-instance v0, Landroidx/collection/MutableLongLongMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableLongLongMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-wide v1, p0

    move-wide v3, p2

    .line 11
    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/collection/MutableLongLongMap;->set(JJ)V

    move-wide v1, p4

    move-wide v3, p6

    .line 12
    invoke-virtual {v0, p4, p5, p6, p7}, Landroidx/collection/MutableLongLongMap;->set(JJ)V

    move-wide v1, p8

    move-wide v3, p10

    .line 13
    invoke-virtual {v0, p8, p9, v3, v4}, Landroidx/collection/MutableLongLongMap;->set(JJ)V

    move-wide/from16 v1, p12

    move-wide/from16 v3, p14

    .line 14
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/collection/MutableLongLongMap;->set(JJ)V

    return-object v0
.end method

.method public static final longLongMapOf(JJJJJJJJJJ)Landroidx/collection/LongLongMap;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 15
    new-instance v0, Landroidx/collection/MutableLongLongMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableLongLongMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-wide v1, p0

    move-wide v3, p2

    .line 16
    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/collection/MutableLongLongMap;->set(JJ)V

    move-wide v1, p4

    move-wide v3, p6

    .line 17
    invoke-virtual {v0, p4, p5, p6, p7}, Landroidx/collection/MutableLongLongMap;->set(JJ)V

    move-wide v1, p8

    move-wide v3, p10

    .line 18
    invoke-virtual {v0, p8, p9, v3, v4}, Landroidx/collection/MutableLongLongMap;->set(JJ)V

    move-wide/from16 v1, p12

    move-wide/from16 v3, p14

    .line 19
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/collection/MutableLongLongMap;->set(JJ)V

    move-wide/from16 v1, p16

    move-wide/from16 v3, p18

    .line 20
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/collection/MutableLongLongMap;->set(JJ)V

    return-object v0
.end method

.method public static final mutableLongLongMapOf()Landroidx/collection/MutableLongLongMap;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/collection/MutableLongLongMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableLongLongMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final mutableLongLongMapOf(JJ)Landroidx/collection/MutableLongLongMap;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Landroidx/collection/MutableLongLongMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableLongLongMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/collection/MutableLongLongMap;->set(JJ)V

    return-object v0
.end method

.method public static final mutableLongLongMapOf(JJJJ)Landroidx/collection/MutableLongLongMap;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    new-instance v0, Landroidx/collection/MutableLongLongMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableLongLongMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/collection/MutableLongLongMap;->set(JJ)V

    .line 5
    invoke-virtual {v0, p4, p5, p6, p7}, Landroidx/collection/MutableLongLongMap;->set(JJ)V

    return-object v0
.end method

.method public static final mutableLongLongMapOf(JJJJJJ)Landroidx/collection/MutableLongLongMap;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 6
    new-instance v0, Landroidx/collection/MutableLongLongMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableLongLongMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 7
    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/collection/MutableLongLongMap;->set(JJ)V

    .line 8
    invoke-virtual {v0, p4, p5, p6, p7}, Landroidx/collection/MutableLongLongMap;->set(JJ)V

    .line 9
    invoke-virtual {v0, p8, p9, p10, p11}, Landroidx/collection/MutableLongLongMap;->set(JJ)V

    return-object v0
.end method

.method public static final mutableLongLongMapOf(JJJJJJJJ)Landroidx/collection/MutableLongLongMap;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 10
    new-instance v0, Landroidx/collection/MutableLongLongMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableLongLongMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-wide v1, p0

    move-wide v3, p2

    .line 11
    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/collection/MutableLongLongMap;->set(JJ)V

    move-wide v1, p4

    move-wide v3, p6

    .line 12
    invoke-virtual {v0, p4, p5, p6, p7}, Landroidx/collection/MutableLongLongMap;->set(JJ)V

    move-wide v1, p8

    move-wide v3, p10

    .line 13
    invoke-virtual {v0, p8, p9, v3, v4}, Landroidx/collection/MutableLongLongMap;->set(JJ)V

    move-wide/from16 v1, p12

    move-wide/from16 v3, p14

    .line 14
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/collection/MutableLongLongMap;->set(JJ)V

    return-object v0
.end method

.method public static final mutableLongLongMapOf(JJJJJJJJJJ)Landroidx/collection/MutableLongLongMap;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 15
    new-instance v0, Landroidx/collection/MutableLongLongMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableLongLongMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-wide v1, p0

    move-wide v3, p2

    .line 16
    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/collection/MutableLongLongMap;->set(JJ)V

    move-wide v1, p4

    move-wide v3, p6

    .line 17
    invoke-virtual {v0, p4, p5, p6, p7}, Landroidx/collection/MutableLongLongMap;->set(JJ)V

    move-wide v1, p8

    move-wide v3, p10

    .line 18
    invoke-virtual {v0, p8, p9, v3, v4}, Landroidx/collection/MutableLongLongMap;->set(JJ)V

    move-wide/from16 v1, p12

    move-wide/from16 v3, p14

    .line 19
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/collection/MutableLongLongMap;->set(JJ)V

    move-wide/from16 v1, p16

    move-wide/from16 v3, p18

    .line 20
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/collection/MutableLongLongMap;->set(JJ)V

    return-object v0
.end method
