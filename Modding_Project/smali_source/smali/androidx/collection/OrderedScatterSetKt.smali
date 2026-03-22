.class public final Landroidx/collection/OrderedScatterSetKt;
.super Ljava/lang/Object;
.source "OrderedScatterSet.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOrderedScatterSet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OrderedScatterSet.kt\nandroidx/collection/OrderedScatterSetKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1511:1\n1#2:1512\n*E\n"
    }
.end annotation


# static fields
.field private static final EmptyOrderedScatterSet:Landroidx/collection/MutableOrderedScatterSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableOrderedScatterSet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/collection/MutableOrderedScatterSet;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/collection/MutableOrderedScatterSet;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/collection/OrderedScatterSetKt;->EmptyOrderedScatterSet:Landroidx/collection/MutableOrderedScatterSet;

    .line 8
    .line 9
    return-void
.end method

.method public static final emptyOrderedScatterSet()Landroidx/collection/OrderedScatterSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/collection/OrderedScatterSet<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/collection/OrderedScatterSetKt;->EmptyOrderedScatterSet:Landroidx/collection/MutableOrderedScatterSet;

    .line 2
    .line 3
    const-string v1, "null cannot be cast to non-null type androidx.collection.OrderedScatterSet<E of androidx.collection.OrderedScatterSetKt.emptyOrderedScatterSet>"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static final mutableOrderedScatterSetOf()Landroidx/collection/MutableOrderedScatterSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/collection/MutableOrderedScatterSet<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/collection/MutableOrderedScatterSet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableOrderedScatterSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final mutableOrderedScatterSetOf(Ljava/lang/Object;)Landroidx/collection/MutableOrderedScatterSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Landroidx/collection/MutableOrderedScatterSet<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Landroidx/collection/MutableOrderedScatterSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/collection/MutableOrderedScatterSet;-><init>(I)V

    invoke-virtual {v0, p0}, Landroidx/collection/MutableOrderedScatterSet;->plusAssign(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final mutableOrderedScatterSetOf(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/collection/MutableOrderedScatterSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;)",
            "Landroidx/collection/MutableOrderedScatterSet<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    new-instance v0, Landroidx/collection/MutableOrderedScatterSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/collection/MutableOrderedScatterSet;-><init>(I)V

    .line 4
    invoke-virtual {v0, p0}, Landroidx/collection/MutableOrderedScatterSet;->plusAssign(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {v0, p1}, Landroidx/collection/MutableOrderedScatterSet;->plusAssign(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final mutableOrderedScatterSetOf(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroidx/collection/MutableOrderedScatterSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;)",
            "Landroidx/collection/MutableOrderedScatterSet<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 6
    new-instance v0, Landroidx/collection/MutableOrderedScatterSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/collection/MutableOrderedScatterSet;-><init>(I)V

    .line 7
    invoke-virtual {v0, p0}, Landroidx/collection/MutableOrderedScatterSet;->plusAssign(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v0, p1}, Landroidx/collection/MutableOrderedScatterSet;->plusAssign(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v0, p2}, Landroidx/collection/MutableOrderedScatterSet;->plusAssign(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final varargs mutableOrderedScatterSetOf([Ljava/lang/Object;)Landroidx/collection/MutableOrderedScatterSet;
    .locals 2
    .param p0    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Landroidx/collection/MutableOrderedScatterSet<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "elements"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v0, Landroidx/collection/MutableOrderedScatterSet;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroidx/collection/MutableOrderedScatterSet;-><init>(I)V

    invoke-virtual {v0, p0}, Landroidx/collection/MutableOrderedScatterSet;->plusAssign([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final orderedScatterSetOf()Landroidx/collection/OrderedScatterSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/collection/OrderedScatterSet<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/collection/OrderedScatterSetKt;->EmptyOrderedScatterSet:Landroidx/collection/MutableOrderedScatterSet;

    const-string v1, "null cannot be cast to non-null type androidx.collection.OrderedScatterSet<E of androidx.collection.OrderedScatterSetKt.orderedScatterSetOf>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final orderedScatterSetOf(Ljava/lang/Object;)Landroidx/collection/OrderedScatterSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Landroidx/collection/OrderedScatterSet<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-static {p0}, Landroidx/collection/OrderedScatterSetKt;->mutableOrderedScatterSetOf(Ljava/lang/Object;)Landroidx/collection/MutableOrderedScatterSet;

    move-result-object p0

    return-object p0
.end method

.method public static final orderedScatterSetOf(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/collection/OrderedScatterSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;)",
            "Landroidx/collection/OrderedScatterSet<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    invoke-static {p0, p1}, Landroidx/collection/OrderedScatterSetKt;->mutableOrderedScatterSetOf(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/collection/MutableOrderedScatterSet;

    move-result-object p0

    return-object p0
.end method

.method public static final orderedScatterSetOf(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroidx/collection/OrderedScatterSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;)",
            "Landroidx/collection/OrderedScatterSet<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 4
    invoke-static {p0, p1, p2}, Landroidx/collection/OrderedScatterSetKt;->mutableOrderedScatterSetOf(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroidx/collection/MutableOrderedScatterSet;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs orderedScatterSetOf([Ljava/lang/Object;)Landroidx/collection/OrderedScatterSet;
    .locals 2
    .param p0    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Landroidx/collection/OrderedScatterSet<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "elements"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Landroidx/collection/MutableOrderedScatterSet;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroidx/collection/MutableOrderedScatterSet;-><init>(I)V

    invoke-virtual {v0, p0}, Landroidx/collection/MutableOrderedScatterSet;->plusAssign([Ljava/lang/Object;)V

    return-object v0
.end method
