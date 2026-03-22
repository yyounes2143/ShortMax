.class public final Landroidx/collection/FloatListKt;
.super Ljava/lang/Object;
.source "FloatList.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFloatList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FloatList.kt\nandroidx/collection/FloatListKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 FloatList.kt\nandroidx/collection/MutableFloatList\n*L\n1#1,976:1\n1#2:977\n675#3,2:978\n715#3,2:980\n715#3,2:982\n715#3,2:984\n715#3,2:986\n715#3,2:988\n715#3,2:990\n675#3,2:992\n*S KotlinDebug\n*F\n+ 1 FloatList.kt\nandroidx/collection/FloatListKt\n*L\n909#1:978,2\n917#1:980,2\n924#1:982,2\n925#1:984,2\n935#1:986,2\n936#1:988,2\n937#1:990,2\n943#1:992,2\n*E\n"
    }
.end annotation


# static fields
.field private static final EmptyFloatList:Landroidx/collection/FloatList;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/collection/MutableFloatList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/collection/MutableFloatList;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/collection/FloatListKt;->EmptyFloatList:Landroidx/collection/FloatList;

    .line 8
    .line 9
    return-void
.end method

.method public static final buildFloatList(ILkotlin/jvm/functions/Function1;)Landroidx/collection/FloatList;
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
            "Landroidx/collection/MutableFloatList;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/collection/FloatList;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "builderAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroidx/collection/MutableFloatList;

    invoke-direct {v0, p0}, Landroidx/collection/MutableFloatList;-><init>(I)V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static final buildFloatList(Lkotlin/jvm/functions/Function1;)Landroidx/collection/FloatList;
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
            "Landroidx/collection/MutableFloatList;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/collection/FloatList;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "builderAction"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroidx/collection/MutableFloatList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatList;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static final emptyFloatList()Landroidx/collection/FloatList;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/collection/FloatListKt;->EmptyFloatList:Landroidx/collection/FloatList;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final floatListOf()Landroidx/collection/FloatList;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/collection/FloatListKt;->EmptyFloatList:Landroidx/collection/FloatList;

    return-object v0
.end method

.method public static final floatListOf(F)Landroidx/collection/FloatList;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-static {p0}, Landroidx/collection/FloatListKt;->mutableFloatListOf(F)Landroidx/collection/MutableFloatList;

    move-result-object p0

    return-object p0
.end method

.method public static final floatListOf(FF)Landroidx/collection/FloatList;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    invoke-static {p0, p1}, Landroidx/collection/FloatListKt;->mutableFloatListOf(FF)Landroidx/collection/MutableFloatList;

    move-result-object p0

    return-object p0
.end method

.method public static final floatListOf(FFF)Landroidx/collection/FloatList;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 4
    invoke-static {p0, p1, p2}, Landroidx/collection/FloatListKt;->mutableFloatListOf(FFF)Landroidx/collection/MutableFloatList;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs floatListOf([F)Landroidx/collection/FloatList;
    .locals 2
    .param p0    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "elements"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Landroidx/collection/MutableFloatList;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroidx/collection/MutableFloatList;-><init>(I)V

    .line 6
    iget v1, v0, Landroidx/collection/FloatList;->_size:I

    invoke-virtual {v0, v1, p0}, Landroidx/collection/MutableFloatList;->addAll(I[F)Z

    return-object v0
.end method

.method public static final mutableFloatListOf()Landroidx/collection/MutableFloatList;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/collection/MutableFloatList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatList;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final mutableFloatListOf(F)Landroidx/collection/MutableFloatList;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Landroidx/collection/MutableFloatList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/collection/MutableFloatList;-><init>(I)V

    .line 3
    invoke-virtual {v0, p0}, Landroidx/collection/MutableFloatList;->add(F)Z

    return-object v0
.end method

.method public static final mutableFloatListOf(FF)Landroidx/collection/MutableFloatList;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 4
    new-instance v0, Landroidx/collection/MutableFloatList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/collection/MutableFloatList;-><init>(I)V

    .line 5
    invoke-virtual {v0, p0}, Landroidx/collection/MutableFloatList;->add(F)Z

    .line 6
    invoke-virtual {v0, p1}, Landroidx/collection/MutableFloatList;->add(F)Z

    return-object v0
.end method

.method public static final mutableFloatListOf(FFF)Landroidx/collection/MutableFloatList;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 7
    new-instance v0, Landroidx/collection/MutableFloatList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/collection/MutableFloatList;-><init>(I)V

    .line 8
    invoke-virtual {v0, p0}, Landroidx/collection/MutableFloatList;->add(F)Z

    .line 9
    invoke-virtual {v0, p1}, Landroidx/collection/MutableFloatList;->add(F)Z

    .line 10
    invoke-virtual {v0, p2}, Landroidx/collection/MutableFloatList;->add(F)Z

    return-object v0
.end method

.method public static final varargs mutableFloatListOf([F)Landroidx/collection/MutableFloatList;
    .locals 2
    .param p0    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "elements"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Landroidx/collection/MutableFloatList;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroidx/collection/MutableFloatList;-><init>(I)V

    .line 12
    iget v1, v0, Landroidx/collection/FloatList;->_size:I

    invoke-virtual {v0, v1, p0}, Landroidx/collection/MutableFloatList;->addAll(I[F)Z

    return-object v0
.end method
