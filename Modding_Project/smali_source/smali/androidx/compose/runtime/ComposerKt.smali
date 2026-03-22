.class public final Landroidx/compose/runtime/ComposerKt;
.super Ljava/lang/Object;
.source "Composer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nComposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 SlotTable.kt\nandroidx/compose/runtime/SlotTable\n*L\n1#1,5012:1\n4788#1,4:5014\n4802#1,4:5025\n4788#1,4:5029\n1#2:5013\n1#2:5037\n1#2:5045\n159#3,7:5018\n175#3,4:5033\n180#3,3:5038\n175#3,4:5041\n180#3,3:5046\n*S KotlinDebug\n*F\n+ 1 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n4536#1:5014,4\n4807#1:5025,4\n4809#1:5029,4\n4899#1:5037\n4959#1:5045\n4652#1:5018,7\n4899#1:5033,4\n4899#1:5038,3\n4959#1:5041,4\n4959#1:5046,3\n*E\n"
    }
.end annotation


# static fields
.field public static final EnableDebugRuntimeChecks:Z = false

.field private static final InvalidationLocationAscending:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/compose/runtime/Invalidation;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static composeStackTraceEnabled:Z = false

.field private static final compositionLocalMap:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final compositionLocalMapKey:I = 0xca

.field private static compositionTracer:Landroidx/compose/runtime/CompositionTracer; = null
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public static final defaultsKey:I = -0x7f

.field private static final invalidGroupLocation:I = -0x2

.field private static final invocation:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final invocationKey:I = 0xc8

.field private static final nodeKey:I = 0x7d

.field private static final provider:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final providerKey:I = 0xc9

.field private static final providerMaps:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final providerMapsKey:I = 0xcc

.field private static final providerValues:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final providerValuesKey:I = 0xcb

.field private static final reference:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final referenceKey:I = 0xce

.field public static final reuseKey:I = 0xcf

.field private static final rootKey:I = 0x64


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/runtime/OpaqueKey;

    .line 2
    .line 3
    const-string v1, "provider"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/compose/runtime/OpaqueKey;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Ljava/lang/Object;

    .line 9
    .line 10
    new-instance v0, Landroidx/compose/runtime/OpaqueKey;

    .line 11
    .line 12
    invoke-direct {v0, v1}, Landroidx/compose/runtime/OpaqueKey;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Landroidx/compose/runtime/ComposerKt;->provider:Ljava/lang/Object;

    .line 16
    .line 17
    new-instance v0, Landroidx/compose/runtime/OpaqueKey;

    .line 18
    .line 19
    const-string v1, "compositionLocalMap"

    .line 20
    .line 21
    invoke-direct {v0, v1}, Landroidx/compose/runtime/OpaqueKey;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Landroidx/compose/runtime/ComposerKt;->compositionLocalMap:Ljava/lang/Object;

    .line 25
    .line 26
    new-instance v0, Landroidx/compose/runtime/OpaqueKey;

    .line 27
    .line 28
    const-string v1, "providerValues"

    .line 29
    .line 30
    invoke-direct {v0, v1}, Landroidx/compose/runtime/OpaqueKey;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sput-object v0, Landroidx/compose/runtime/ComposerKt;->providerValues:Ljava/lang/Object;

    .line 34
    .line 35
    new-instance v0, Landroidx/compose/runtime/OpaqueKey;

    .line 36
    .line 37
    const-string v1, "providers"

    .line 38
    .line 39
    invoke-direct {v0, v1}, Landroidx/compose/runtime/OpaqueKey;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sput-object v0, Landroidx/compose/runtime/ComposerKt;->providerMaps:Ljava/lang/Object;

    .line 43
    .line 44
    new-instance v0, Landroidx/compose/runtime/OpaqueKey;

    .line 45
    .line 46
    const-string v1, "reference"

    .line 47
    .line 48
    invoke-direct {v0, v1}, Landroidx/compose/runtime/OpaqueKey;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    sput-object v0, Landroidx/compose/runtime/ComposerKt;->reference:Ljava/lang/Object;

    .line 52
    .line 53
    new-instance v0, Landroidx/compose/runtime/h;

    .line 54
    .line 55
    invoke-direct {v0}, Landroidx/compose/runtime/h;-><init>()V

    .line 56
    .line 57
    .line 58
    sput-object v0, Landroidx/compose/runtime/ComposerKt;->InvalidationLocationAscending:Ljava/util/Comparator;

    .line 59
    .line 60
    return-void
.end method

.method private static final InvalidationLocationAscending$lambda$13(Landroidx/compose/runtime/Invalidation;Landroidx/compose/runtime/Invalidation;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/Invalidation;->getLocation()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-virtual {p1}, Landroidx/compose/runtime/Invalidation;->getLocation()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static synthetic a(Landroidx/compose/runtime/RememberManager;ILjava/lang/Object;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/ComposerKt;->removeCurrentGroup$lambda$2(Landroidx/compose/runtime/RememberManager;ILjava/lang/Object;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$asBool(I)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->asBool(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$asInt(Z)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->asInt(Z)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$collectNodesFrom(Landroidx/compose/runtime/SlotTable;Landroidx/compose/runtime/Anchor;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/ComposerKt;->collectNodesFrom(Landroidx/compose/runtime/SlotTable;Landroidx/compose/runtime/Anchor;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$findInsertLocation(Ljava/util/List;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/ComposerKt;->findInsertLocation(Ljava/util/List;I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$firstInRange(Ljava/util/List;II)Landroidx/compose/runtime/Invalidation;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/ComposerKt;->firstInRange(Ljava/util/List;II)Landroidx/compose/runtime/Invalidation;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getInvalidationLocationAscending$p()Ljava/util/Comparator;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->InvalidationLocationAscending:Ljava/util/Comparator;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getJoinedKey(Landroidx/compose/runtime/KeyInfo;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->getJoinedKey(Landroidx/compose/runtime/KeyInfo;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/ComposerKt;->getKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getNextGroup(Landroidx/compose/runtime/SlotWriter;)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->getNextGroup(Landroidx/compose/runtime/SlotWriter;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$insertIfMissing(Ljava/util/List;ILandroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/runtime/ComposerKt;->insertIfMissing(Ljava/util/List;ILandroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$multiMap(I)Landroidx/collection/MutableScatterMap;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->multiMap(I)Landroidx/collection/MutableScatterMap;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$nearestCommonRootOf(Landroidx/compose/runtime/SlotReader;III)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/runtime/ComposerKt;->nearestCommonRootOf(Landroidx/compose/runtime/SlotReader;III)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$removeLocation(Ljava/util/List;I)Landroidx/compose/runtime/Invalidation;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/ComposerKt;->removeLocation(Ljava/util/List;I)Landroidx/compose/runtime/Invalidation;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$removeRange(Ljava/util/List;II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/ComposerKt;->removeRange(Ljava/util/List;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setCompositionTracer$p(Landroidx/compose/runtime/CompositionTracer;)V
    .locals 0

    .line 1
    sput-object p0, Landroidx/compose/runtime/ComposerKt;->compositionTracer:Landroidx/compose/runtime/CompositionTracer;

    .line 2
    .line 3
    return-void
.end method

.method private static final asBool(I)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p0, 0x0

    .line 6
    :goto_0
    return p0
.end method

.method private static final asInt(Z)I
    .locals 0

    .line 1
    return p0
.end method

.method public static synthetic b(Landroidx/compose/runtime/RememberManager;Landroidx/compose/runtime/SlotWriter;ILjava/lang/Object;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/runtime/ComposerKt;->deactivateCurrentGroup$lambda$3(Landroidx/compose/runtime/RememberManager;Landroidx/compose/runtime/SlotWriter;ILjava/lang/Object;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Landroidx/compose/runtime/Invalidation;Landroidx/compose/runtime/Invalidation;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/ComposerKt;->InvalidationLocationAscending$lambda$13(Landroidx/compose/runtime/Invalidation;Landroidx/compose/runtime/Invalidation;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final cache(Landroidx/compose/runtime/Composer;ZLkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 1
    .param p0    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/Composer;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    sget-object p1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-ne v0, p1, :cond_1

    .line 14
    .line 15
    :cond_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-object v0
.end method

.method private static final collectNodesFrom(Landroidx/compose/runtime/SlotTable;Landroidx/compose/runtime/Anchor;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/SlotTable;",
            "Landroidx/compose/runtime/Anchor;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotTable;->openReader()Landroidx/compose/runtime/SlotReader;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotTable;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    invoke-static {v1, v0, p0}, Landroidx/compose/runtime/ComposerKt;->collectNodesFrom$lambda$8$collectFromGroup(Landroidx/compose/runtime/SlotReader;Ljava/util/List;I)V

    .line 15
    .line 16
    .line 17
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->close()V

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->close()V

    .line 25
    .line 26
    .line 27
    throw p0
.end method

.method private static final collectNodesFrom$lambda$8$collectFromGroup(Landroidx/compose/runtime/SlotReader;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/SlotReader;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/SlotReader;->isNode(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/SlotReader;->node(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    add-int/lit8 v0, p2, 0x1

    .line 16
    .line 17
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/SlotReader;->groupSize(I)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    add-int/2addr p2, v1

    .line 22
    :goto_0
    if-ge v0, p2, :cond_1

    .line 23
    .line 24
    invoke-static {p0, p1, v0}, Landroidx/compose/runtime/ComposerKt;->collectNodesFrom$lambda$8$collectFromGroup(Landroidx/compose/runtime/SlotReader;Ljava/util/List;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SlotReader;->groupSize(I)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    add-int/2addr v0, v1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    :goto_1
    return-void
.end method

.method public static final composeImmediateRuntimeError(Ljava/lang/String;)V
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroidx/compose/runtime/ComposeRuntimeError;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "Compose Runtime internal error. Unexpected or incorrect use of the Compose internal runtime API ("

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p0, "). Please report to Google or use https://goo.gle/compose-feedback"

    .line 17
    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-direct {v0, p0}, Landroidx/compose/runtime/ComposeRuntimeError;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0
.end method

.method public static final composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/runtime/ComposeRuntimeError;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "Compose Runtime internal error. Unexpected or incorrect use of the Compose internal runtime API ("

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p0, "). Please report to Google or use https://goo.gle/compose-feedback"

    .line 17
    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-direct {v0, p0}, Landroidx/compose/runtime/ComposeRuntimeError;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0
.end method

.method public static final deactivateCurrentGroup(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/RememberManager;)V
    .locals 2
    .param p0    # Landroidx/compose/runtime/SlotWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/runtime/RememberManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Landroidx/compose/runtime/g;

    .line 6
    .line 7
    invoke-direct {v1, p1, p0}, Landroidx/compose/runtime/g;-><init>(Landroidx/compose/runtime/RememberManager;Landroidx/compose/runtime/SlotWriter;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, v1}, Landroidx/compose/runtime/SlotWriter;->forAllDataInRememberOrder(ILkotlin/jvm/functions/Function2;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private static final deactivateCurrentGroup$lambda$3(Landroidx/compose/runtime/RememberManager;Landroidx/compose/runtime/SlotWriter;ILjava/lang/Object;)Lkotlin/Unit;
    .locals 2

    .line 1
    instance-of v0, p3, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p3, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    .line 6
    .line 7
    invoke-interface {p0, p3}, Landroidx/compose/runtime/RememberManager;->deactivating(Landroidx/compose/runtime/ComposeNodeLifecycleCallback;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    instance-of v0, p3, Landroidx/compose/runtime/RememberObserverHolder;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    move-object v0, p3

    .line 16
    check-cast v0, Landroidx/compose/runtime/RememberObserverHolder;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/compose/runtime/RememberObserverHolder;->getWrapped()Landroidx/compose/runtime/RememberObserver;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    instance-of v1, v1, Landroidx/compose/runtime/ReusableRememberObserver;

    .line 23
    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    invoke-static {p1, p2, p3}, Landroidx/compose/runtime/ComposerKt;->removeData(Landroidx/compose/runtime/SlotWriter;ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p0, v0}, Landroidx/compose/runtime/RememberManager;->forgetting(Landroidx/compose/runtime/RememberObserverHolder;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    instance-of p0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 34
    .line 35
    if-eqz p0, :cond_2

    .line 36
    .line 37
    invoke-static {p1, p2, p3}, Landroidx/compose/runtime/ComposerKt;->removeData(Landroidx/compose/runtime/SlotWriter;ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    check-cast p3, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 41
    .line 42
    invoke-virtual {p3}, Landroidx/compose/runtime/RecomposeScopeImpl;->release()V

    .line 43
    .line 44
    .line 45
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 46
    .line 47
    return-object p0
.end method

.method public static final debugRuntimeCheck(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public static final debugRuntimeCheck(ZLkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    return-void
.end method

.method private static final distanceFrom(Landroidx/compose/runtime/SlotReader;II)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    if-lez p1, :cond_0

    .line 3
    .line 4
    if-eq p1, p2, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    add-int/lit8 v0, v0, 0x1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return v0
.end method

.method public static final extractMovableContentAtCurrent(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/MovableContentStateReference;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/Applier;)Landroidx/compose/runtime/MovableContentState;
    .locals 10
    .param p0    # Landroidx/compose/runtime/ControlledComposition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/runtime/MovableContentStateReference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/SlotWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/Applier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/ControlledComposition;",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            "Landroidx/compose/runtime/SlotWriter;",
            "Landroidx/compose/runtime/Applier<",
            "*>;)",
            "Landroidx/compose/runtime/MovableContentState;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    new-instance v1, Landroidx/compose/runtime/SlotTable;

    .line 3
    .line 4
    invoke-direct {v1}, Landroidx/compose/runtime/SlotTable;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Landroidx/compose/runtime/SlotWriter;->getCollectingSourceInformation()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotTable;->collectSourceInformation()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p2}, Landroidx/compose/runtime/SlotWriter;->getCollectingCalledInformation()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotTable;->collectCalledByInformation()V

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {p2}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x0

    .line 30
    if-eqz p3, :cond_7

    .line 31
    .line 32
    invoke-virtual {p2, v2}, Landroidx/compose/runtime/SlotWriter;->nodeCount(I)I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-lez v4, :cond_7

    .line 37
    .line 38
    invoke-virtual {p2}, Landroidx/compose/runtime/SlotWriter;->getParent()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    :goto_0
    if-lez v4, :cond_2

    .line 43
    .line 44
    invoke-virtual {p2, v4}, Landroidx/compose/runtime/SlotWriter;->isNode(I)Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-nez v5, :cond_2

    .line 49
    .line 50
    invoke-virtual {p2, v4}, Landroidx/compose/runtime/SlotWriter;->parent(I)I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    if-ltz v4, :cond_7

    .line 56
    .line 57
    invoke-virtual {p2, v4}, Landroidx/compose/runtime/SlotWriter;->isNode(I)Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_7

    .line 62
    .line 63
    invoke-virtual {p2, v4}, Landroidx/compose/runtime/SlotWriter;->node(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    add-int/lit8 v6, v4, 0x1

    .line 68
    .line 69
    invoke-virtual {p2, v4}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    add-int/2addr v4, v7

    .line 74
    move v7, v3

    .line 75
    :goto_1
    if-ge v6, v4, :cond_5

    .line 76
    .line 77
    invoke-virtual {p2, v6}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    .line 78
    .line 79
    .line 80
    move-result v8

    .line 81
    add-int/2addr v8, v6

    .line 82
    if-le v8, v2, :cond_3

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_3
    invoke-virtual {p2, v6}, Landroidx/compose/runtime/SlotWriter;->isNode(I)Z

    .line 86
    .line 87
    .line 88
    move-result v9

    .line 89
    if-eqz v9, :cond_4

    .line 90
    .line 91
    move v6, v0

    .line 92
    goto :goto_2

    .line 93
    :cond_4
    invoke-virtual {p2, v6}, Landroidx/compose/runtime/SlotWriter;->nodeCount(I)I

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    :goto_2
    add-int/2addr v7, v6

    .line 98
    move v6, v8

    .line 99
    goto :goto_1

    .line 100
    :cond_5
    :goto_3
    invoke-virtual {p2, v2}, Landroidx/compose/runtime/SlotWriter;->isNode(I)Z

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-eqz v4, :cond_6

    .line 105
    .line 106
    move v2, v0

    .line 107
    goto :goto_4

    .line 108
    :cond_6
    invoke-virtual {p2, v2}, Landroidx/compose/runtime/SlotWriter;->nodeCount(I)I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    :goto_4
    invoke-interface {p3, v5}, Landroidx/compose/runtime/Applier;->down(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    invoke-interface {p3, v7, v2}, Landroidx/compose/runtime/Applier;->remove(II)V

    .line 116
    .line 117
    .line 118
    invoke-interface {p3}, Landroidx/compose/runtime/Applier;->up()V

    .line 119
    .line 120
    .line 121
    :cond_7
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    .line 122
    .line 123
    .line 124
    move-result-object p3

    .line 125
    :try_start_0
    invoke-virtual {p3}, Landroidx/compose/runtime/SlotWriter;->beginInsert()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Landroidx/compose/runtime/MovableContentStateReference;->getContent$runtime()Landroidx/compose/runtime/MovableContent;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    const v4, 0x78cc281

    .line 133
    .line 134
    .line 135
    invoke-virtual {p3, v4, v2}, Landroidx/compose/runtime/SlotWriter;->startGroup(ILjava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    const/4 v2, 0x0

    .line 139
    invoke-static {p3, v3, v0, v2}, Landroidx/compose/runtime/SlotWriter;->markGroup$default(Landroidx/compose/runtime/SlotWriter;IILjava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1}, Landroidx/compose/runtime/MovableContentStateReference;->getParameter$runtime()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {p3, v2}, Landroidx/compose/runtime/SlotWriter;->update(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1}, Landroidx/compose/runtime/MovableContentStateReference;->getAnchor$runtime()Landroidx/compose/runtime/Anchor;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-virtual {p2, v2, v0, p3}, Landroidx/compose/runtime/SlotWriter;->moveTo(Landroidx/compose/runtime/Anchor;ILandroidx/compose/runtime/SlotWriter;)Ljava/util/List;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    invoke-virtual {p3}, Landroidx/compose/runtime/SlotWriter;->skipGroup()I

    .line 158
    .line 159
    .line 160
    invoke-virtual {p3}, Landroidx/compose/runtime/SlotWriter;->endGroup()I

    .line 161
    .line 162
    .line 163
    invoke-virtual {p3}, Landroidx/compose/runtime/SlotWriter;->endInsert()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 164
    .line 165
    .line 166
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    .line 167
    .line 168
    .line 169
    new-instance p3, Landroidx/compose/runtime/MovableContentState;

    .line 170
    .line 171
    invoke-direct {p3, v1}, Landroidx/compose/runtime/MovableContentState;-><init>(Landroidx/compose/runtime/SlotTable;)V

    .line 172
    .line 173
    .line 174
    sget-object v2, Landroidx/compose/runtime/RecomposeScopeImpl;->Companion:Landroidx/compose/runtime/RecomposeScopeImpl$Companion;

    .line 175
    .line 176
    invoke-virtual {v2, v1, p2}, Landroidx/compose/runtime/RecomposeScopeImpl$Companion;->hasAnchoredRecomposeScopes$runtime(Landroidx/compose/runtime/SlotTable;Ljava/util/List;)Z

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    if-eqz v4, :cond_8

    .line 181
    .line 182
    new-instance v4, Landroidx/compose/runtime/ComposerKt$extractMovableContentAtCurrent$movableContentRecomposeScopeOwner$1;

    .line 183
    .line 184
    invoke-direct {v4, p0, p1}, Landroidx/compose/runtime/ComposerKt$extractMovableContentAtCurrent$movableContentRecomposeScopeOwner$1;-><init>(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/MovableContentStateReference;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    :try_start_1
    invoke-virtual {v2, p0, p2, v4}, Landroidx/compose/runtime/RecomposeScopeImpl$Companion;->adoptAnchoredScopes$runtime(Landroidx/compose/runtime/SlotWriter;Ljava/util/List;Landroidx/compose/runtime/RecomposeScopeOwner;)V

    .line 192
    .line 193
    .line 194
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    .line 196
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    .line 197
    .line 198
    .line 199
    goto :goto_5

    .line 200
    :catchall_0
    move-exception p1

    .line 201
    invoke-virtual {p0, v3}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    .line 202
    .line 203
    .line 204
    throw p1

    .line 205
    :cond_8
    :goto_5
    return-object p3

    .line 206
    :catchall_1
    move-exception p0

    .line 207
    invoke-virtual {p3, v3}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    .line 208
    .line 209
    .line 210
    throw p0
.end method

.method private static final findInsertLocation(Ljava/util/List;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/Invalidation;",
            ">;I)I"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/ComposerKt;->findLocation(Ljava/util/List;I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-gez p0, :cond_0

    .line 6
    .line 7
    add-int/lit8 p0, p0, 0x1

    .line 8
    .line 9
    neg-int p0, p0

    .line 10
    :cond_0
    return p0
.end method

.method private static final findLocation(Ljava/util/List;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/Invalidation;",
            ">;I)I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-gt v1, v0, :cond_2

    .line 9
    .line 10
    add-int v2, v1, v0

    .line 11
    .line 12
    ushr-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Landroidx/compose/runtime/Invalidation;

    .line 19
    .line 20
    invoke-virtual {v3}, Landroidx/compose/runtime/Invalidation;->getLocation()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-gez v3, :cond_0

    .line 29
    .line 30
    add-int/lit8 v1, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    if-lez v3, :cond_1

    .line 34
    .line 35
    add-int/lit8 v0, v2, -0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return v2

    .line 39
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    neg-int p0, v1

    .line 42
    return p0
.end method

.method private static final firstInRange(Ljava/util/List;II)Landroidx/compose/runtime/Invalidation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/Invalidation;",
            ">;II)",
            "Landroidx/compose/runtime/Invalidation;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/ComposerKt;->findInsertLocation(Ljava/util/List;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ge p1, v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Landroidx/compose/runtime/Invalidation;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/compose/runtime/Invalidation;->getLocation()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-ge p1, p2, :cond_0

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method private static final forEachInRange(Ljava/util/List;IILkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/Invalidation;",
            ">;II",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/runtime/Invalidation;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/ComposerKt;->access$findInsertLocation(Ljava/util/List;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ge p1, v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroidx/compose/runtime/Invalidation;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/compose/runtime/Invalidation;->getLocation()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-ge v1, p2, :cond_0

    .line 22
    .line 23
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    add-int/lit8 p1, p1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method public static final getComposeStackTraceEnabled()Z
    .locals 1

    .line 1
    sget-boolean v0, Landroidx/compose/runtime/ComposerKt;->composeStackTraceEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public static final getCompositionLocalMap()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->compositionLocalMap:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic getCompositionLocalMap$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getCompositionLocalMapKey$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic getCompositionTracer$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final getInvocation()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic getInvocation$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getInvocationKey$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private static final getJoinedKey(Landroidx/compose/runtime/KeyInfo;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/KeyInfo;->getObjectKey()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroidx/compose/runtime/JoinedKey;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/runtime/KeyInfo;->getKey()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0}, Landroidx/compose/runtime/KeyInfo;->getObjectKey()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-direct {v0, v1, p0}, Landroidx/compose/runtime/JoinedKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/KeyInfo;->getKey()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :goto_0
    return-object v0
.end method

.method private static final getKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    instance-of v0, p0, Landroidx/compose/runtime/JoinedKey;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v0, p0

    .line 7
    check-cast v0, Landroidx/compose/runtime/JoinedKey;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object v0, v1

    .line 11
    :goto_0
    if-eqz v0, :cond_3

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/runtime/JoinedKey;->getLeft()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/compose/runtime/JoinedKey;->getRight()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/runtime/JoinedKey;->getLeft()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/ComposerKt;->getKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    if-nez p0, :cond_2

    .line 43
    .line 44
    invoke-virtual {v0}, Landroidx/compose/runtime/JoinedKey;->getRight()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/ComposerKt;->getKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    :cond_2
    :goto_1
    move-object v1, p0

    .line 53
    :cond_3
    return-object v1
.end method

.method private static final getNextGroup(Landroidx/compose/runtime/SlotWriter;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    add-int/2addr v0, p0

    .line 14
    return v0
.end method

.method public static final getProvider()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->provider:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic getProvider$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getProviderKey$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final getProviderMaps()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->providerMaps:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic getProviderMaps$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getProviderMapsKey$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final getProviderValues()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->providerValues:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic getProviderValues$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getProviderValuesKey$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final getReference()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->reference:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic getReference$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getReferenceKey$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getReuseKey$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private static final insertIfMissing(Ljava/util/List;ILandroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/Invalidation;",
            ">;I",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/ComposerKt;->findLocation(Ljava/util/List;I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-gez v0, :cond_1

    .line 7
    .line 8
    add-int/lit8 v0, v0, 0x1

    .line 9
    .line 10
    neg-int v0, v0

    .line 11
    instance-of v2, p3, Landroidx/compose/runtime/DerivedState;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object p3, v1

    .line 17
    :goto_0
    new-instance v1, Landroidx/compose/runtime/Invalidation;

    .line 18
    .line 19
    invoke-direct {v1, p2, p1, p3}, Landroidx/compose/runtime/Invalidation;-><init>(Landroidx/compose/runtime/RecomposeScopeImpl;ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p0, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Landroidx/compose/runtime/Invalidation;

    .line 31
    .line 32
    instance-of p1, p3, Landroidx/compose/runtime/DerivedState;

    .line 33
    .line 34
    if-eqz p1, :cond_4

    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/compose/runtime/Invalidation;->getInstances()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-nez p1, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0, p3}, Landroidx/compose/runtime/Invalidation;->setInstances(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    instance-of p2, p1, Landroidx/collection/MutableScatterSet;

    .line 47
    .line 48
    if-eqz p2, :cond_3

    .line 49
    .line 50
    check-cast p1, Landroidx/collection/MutableScatterSet;

    .line 51
    .line 52
    invoke-virtual {p1, p3}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    invoke-static {p1, p3}, Landroidx/collection/ScatterSetKt;->mutableScatterSetOf(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/collection/MutableScatterSet;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/Invalidation;->setInstances(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_4
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/Invalidation;->setInstances(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :goto_1
    return-void
.end method

.method public static final isAfterFirstChild(Landroidx/compose/runtime/SlotReader;)Z
    .locals 2
    .param p0    # Landroidx/compose/runtime/SlotReader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->getParent()I

    move-result p0

    const/4 v1, 0x1

    add-int/2addr p0, v1

    if-le v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static final isAfterFirstChild(Landroidx/compose/runtime/SlotWriter;)Z
    .locals 2
    .param p0    # Landroidx/compose/runtime/SlotWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getParent()I

    move-result p0

    const/4 v1, 0x1

    add-int/2addr p0, v1

    if-le v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static final isTraceInProgress()Z
    .locals 1
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->compositionTracer:Landroidx/compose/runtime/CompositionTracer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/CompositionTracer;->isTraceInProgress()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method private static final multiMap(I)Landroidx/collection/MutableScatterMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/collection/MutableScatterMap;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/collection/MutableScatterMap;-><init>(I)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Landroidx/compose/runtime/collection/MultiValueMap;->constructor-impl(Landroidx/collection/MutableScatterMap;)Landroidx/collection/MutableScatterMap;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private static final nearestCommonRootOf(Landroidx/compose/runtime/SlotReader;III)I
    .locals 4

    .line 1
    if-ne p1, p2, :cond_0

    .line 2
    .line 3
    return p1

    .line 4
    :cond_0
    if-eq p1, p3, :cond_8

    .line 5
    .line 6
    if-ne p2, p3, :cond_1

    .line 7
    .line 8
    goto :goto_3

    .line 9
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ne v0, p2, :cond_2

    .line 14
    .line 15
    return p2

    .line 16
    :cond_2
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-ne v0, p1, :cond_3

    .line 21
    .line 22
    return p1

    .line 23
    :cond_3
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-ne v0, v1, :cond_4

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    return p0

    .line 38
    :cond_4
    invoke-static {p0, p1, p3}, Landroidx/compose/runtime/ComposerKt;->distanceFrom(Landroidx/compose/runtime/SlotReader;II)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-static {p0, p2, p3}, Landroidx/compose/runtime/ComposerKt;->distanceFrom(Landroidx/compose/runtime/SlotReader;II)I

    .line 43
    .line 44
    .line 45
    move-result p3

    .line 46
    sub-int v1, v0, p3

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    move v3, v2

    .line 50
    :goto_0
    if-ge v3, v1, :cond_5

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    add-int/lit8 v3, v3, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_5
    sub-int/2addr p3, v0

    .line 60
    :goto_1
    if-ge v2, p3, :cond_6

    .line 61
    .line 62
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    add-int/lit8 v2, v2, 0x1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_6
    :goto_2
    if-eq p1, p2, :cond_7

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/SlotReader;->parent(I)I

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    goto :goto_2

    .line 80
    :cond_7
    return p1

    .line 81
    :cond_8
    :goto_3
    return p3
.end method

.method public static final removeCurrentGroup(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/RememberManager;)V
    .locals 2
    .param p0    # Landroidx/compose/runtime/SlotWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/runtime/RememberManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Landroidx/compose/runtime/i;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Landroidx/compose/runtime/i;-><init>(Landroidx/compose/runtime/RememberManager;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, v1}, Landroidx/compose/runtime/SlotWriter;->forAllDataInRememberOrder(ILkotlin/jvm/functions/Function2;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->removeGroup()Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private static final removeCurrentGroup$lambda$2(Landroidx/compose/runtime/RememberManager;ILjava/lang/Object;)Lkotlin/Unit;
    .locals 0

    .line 1
    instance-of p1, p2, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    move-object p1, p2

    .line 6
    check-cast p1, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    .line 7
    .line 8
    invoke-interface {p0, p1}, Landroidx/compose/runtime/RememberManager;->releasing(Landroidx/compose/runtime/ComposeNodeLifecycleCallback;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    instance-of p1, p2, Landroidx/compose/runtime/RememberObserverHolder;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    move-object p1, p2

    .line 16
    check-cast p1, Landroidx/compose/runtime/RememberObserverHolder;

    .line 17
    .line 18
    invoke-interface {p0, p1}, Landroidx/compose/runtime/RememberManager;->forgetting(Landroidx/compose/runtime/RememberObserverHolder;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    instance-of p0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 22
    .line 23
    if-eqz p0, :cond_2

    .line 24
    .line 25
    check-cast p2, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 26
    .line 27
    invoke-virtual {p2}, Landroidx/compose/runtime/RecomposeScopeImpl;->release()V

    .line 28
    .line 29
    .line 30
    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 31
    .line 32
    return-object p0
.end method

.method private static final removeData(Landroidx/compose/runtime/SlotWriter;ILjava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->clear(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-ne p2, p0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    if-nez p1, :cond_1

    .line 11
    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v0, "Slot table is out of sync (expected "

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p2, ", got "

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const/16 p0, 0x29

    .line 34
    .line 35
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method private static final removeLocation(Ljava/util/List;I)Landroidx/compose/runtime/Invalidation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/Invalidation;",
            ">;I)",
            "Landroidx/compose/runtime/Invalidation;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/ComposerKt;->findLocation(Ljava/util/List;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Landroidx/compose/runtime/Invalidation;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return-object p0
.end method

.method private static final removeRange(Ljava/util/List;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/Invalidation;",
            ">;II)V"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/ComposerKt;->findInsertLocation(Ljava/util/List;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ge p1, v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroidx/compose/runtime/Invalidation;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/compose/runtime/Invalidation;->getLocation()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-ge v0, p2, :cond_0

    .line 22
    .line 23
    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroidx/compose/runtime/Invalidation;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method public static final runtimeCheck(Z)V
    .locals 0

    if-nez p0, :cond_0

    .line 2
    const-string p0, "Check failed"

    .line 3
    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final runtimeCheck(ZLkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final setComposeStackTraceEnabled(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Landroidx/compose/runtime/ComposerKt;->composeStackTraceEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V
    .locals 0
    .param p0    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->sourceInformation(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V
    .locals 0
    .param p0    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->sourceInformationMarkerEnd()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V
    .locals 0
    .param p0    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 1
    invoke-interface {p0, p1, p2}, Landroidx/compose/runtime/Composer;->sourceInformationMarkerStart(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final traceEventEnd()V
    .locals 1
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->compositionTracer:Landroidx/compose/runtime/CompositionTracer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/CompositionTracer;->traceEventEnd()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public static final traceEventStart(IIILjava/lang/String;)V
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 2
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->compositionTracer:Landroidx/compose/runtime/CompositionTracer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2, p3}, Landroidx/compose/runtime/CompositionTracer;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final synthetic traceEventStart(ILjava/lang/String;)V
    .locals 1
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .annotation runtime Lms/c;
    .end annotation

    const/4 v0, -0x1

    .line 1
    invoke-static {p0, v0, v0, p1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    return-void
.end method

.method public static final withAfterAnchorInfo(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/Anchor;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p0    # Landroidx/compose/runtime/SlotWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/runtime/Anchor;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/SlotWriter;",
            "Landroidx/compose/runtime/Anchor;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "+TR;>;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/runtime/Anchor;->getValid()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSlotsSize()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->slotsEndAllIndex$runtime(I)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    sub-int/2addr v0, p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, -0x1

    .line 24
    move v0, p1

    .line 25
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p2, p0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    return-void
.end method
