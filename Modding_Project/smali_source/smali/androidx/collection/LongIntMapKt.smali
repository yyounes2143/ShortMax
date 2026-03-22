.class public final Landroidx/collection/LongIntMapKt;
.super Ljava/lang/Object;
.source "LongIntMap.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLongIntMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LongIntMap.kt\nandroidx/collection/LongIntMapKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1034:1\n1#2:1035\n*E\n"
    }
.end annotation


# static fields
.field private static final EmptyLongIntMap:Landroidx/collection/MutableLongIntMap;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/collection/MutableLongIntMap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/collection/MutableLongIntMap;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/collection/LongIntMapKt;->EmptyLongIntMap:Landroidx/collection/MutableLongIntMap;

    .line 8
    .line 9
    return-void
.end method

.method public static final buildLongIntMap(ILkotlin/jvm/functions/Function1;)Landroidx/collection/LongIntMap;
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
            "Landroidx/collection/MutableLongIntMap;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/collection/LongIntMap;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "builderAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroidx/collection/MutableLongIntMap;

    invoke-direct {v0, p0}, Landroidx/collection/MutableLongIntMap;-><init>(I)V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static final buildLongIntMap(Lkotlin/jvm/functions/Function1;)Landroidx/collection/LongIntMap;
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
            "Landroidx/collection/MutableLongIntMap;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/collection/LongIntMap;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "builderAction"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroidx/collection/MutableLongIntMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableLongIntMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static final emptyLongIntMap()Landroidx/collection/LongIntMap;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/collection/LongIntMapKt;->EmptyLongIntMap:Landroidx/collection/MutableLongIntMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final longIntMapOf()Landroidx/collection/LongIntMap;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/collection/LongIntMapKt;->EmptyLongIntMap:Landroidx/collection/MutableLongIntMap;

    return-object v0
.end method

.method public static final longIntMapOf(JI)Landroidx/collection/LongIntMap;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Landroidx/collection/MutableLongIntMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableLongIntMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    return-object v0
.end method

.method public static final longIntMapOf(JIJI)Landroidx/collection/LongIntMap;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    new-instance v0, Landroidx/collection/MutableLongIntMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableLongIntMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    .line 5
    invoke-virtual {v0, p3, p4, p5}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    return-object v0
.end method

.method public static final longIntMapOf(JIJIJI)Landroidx/collection/LongIntMap;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 6
    new-instance v0, Landroidx/collection/MutableLongIntMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableLongIntMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 7
    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    .line 8
    invoke-virtual {v0, p3, p4, p5}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    .line 9
    invoke-virtual {v0, p6, p7, p8}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    return-object v0
.end method

.method public static final longIntMapOf(JIJIJIJI)Landroidx/collection/LongIntMap;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 10
    new-instance v0, Landroidx/collection/MutableLongIntMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableLongIntMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    .line 12
    invoke-virtual {v0, p3, p4, p5}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    .line 13
    invoke-virtual {v0, p6, p7, p8}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    .line 14
    invoke-virtual {v0, p9, p10, p11}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    return-object v0
.end method

.method public static final longIntMapOf(JIJIJIJIJI)Landroidx/collection/LongIntMap;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 15
    new-instance v0, Landroidx/collection/MutableLongIntMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableLongIntMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-wide v1, p0

    move v3, p2

    .line 16
    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    move-wide v1, p3

    move v3, p5

    .line 17
    invoke-virtual {v0, p3, p4, p5}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    move-wide v1, p6

    move v3, p8

    .line 18
    invoke-virtual {v0, p6, p7, p8}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    move-wide v1, p9

    move v3, p11

    .line 19
    invoke-virtual {v0, p9, p10, p11}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    move-wide/from16 v1, p12

    move/from16 v3, p14

    .line 20
    invoke-virtual {v0, v1, v2, v3}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    return-object v0
.end method

.method public static final mutableLongIntMapOf()Landroidx/collection/MutableLongIntMap;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/collection/MutableLongIntMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableLongIntMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final mutableLongIntMapOf(JI)Landroidx/collection/MutableLongIntMap;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Landroidx/collection/MutableLongIntMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableLongIntMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    return-object v0
.end method

.method public static final mutableLongIntMapOf(JIJI)Landroidx/collection/MutableLongIntMap;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    new-instance v0, Landroidx/collection/MutableLongIntMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableLongIntMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    .line 5
    invoke-virtual {v0, p3, p4, p5}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    return-object v0
.end method

.method public static final mutableLongIntMapOf(JIJIJI)Landroidx/collection/MutableLongIntMap;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 6
    new-instance v0, Landroidx/collection/MutableLongIntMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableLongIntMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 7
    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    .line 8
    invoke-virtual {v0, p3, p4, p5}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    .line 9
    invoke-virtual {v0, p6, p7, p8}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    return-object v0
.end method

.method public static final mutableLongIntMapOf(JIJIJIJI)Landroidx/collection/MutableLongIntMap;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 10
    new-instance v0, Landroidx/collection/MutableLongIntMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableLongIntMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    .line 12
    invoke-virtual {v0, p3, p4, p5}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    .line 13
    invoke-virtual {v0, p6, p7, p8}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    .line 14
    invoke-virtual {v0, p9, p10, p11}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    return-object v0
.end method

.method public static final mutableLongIntMapOf(JIJIJIJIJI)Landroidx/collection/MutableLongIntMap;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 15
    new-instance v0, Landroidx/collection/MutableLongIntMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableLongIntMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-wide v1, p0

    move v3, p2

    .line 16
    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    move-wide v1, p3

    move v3, p5

    .line 17
    invoke-virtual {v0, p3, p4, p5}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    move-wide v1, p6

    move v3, p8

    .line 18
    invoke-virtual {v0, p6, p7, p8}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    move-wide v1, p9

    move v3, p11

    .line 19
    invoke-virtual {v0, p9, p10, p11}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    move-wide/from16 v1, p12

    move/from16 v3, p14

    .line 20
    invoke-virtual {v0, v1, v2, v3}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    return-object v0
.end method
