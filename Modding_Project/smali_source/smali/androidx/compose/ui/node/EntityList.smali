.class public final Landroidx/compose/ui/node/EntityList;
.super Ljava/lang/Object;
.source "EntityList.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/EntityList$EntityType;,
        Landroidx/compose/ui/node/EntityList$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/node/EntityList$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DrawEntityType:I

.field private static final OnPlacedEntityType:I

.field private static final ParentDataEntityType:I

.field private static final PointerInputEntityType:I

.field private static final RemeasureEntityType:I

.field private static final SemanticsEntityType:I

.field private static final TypeCount:I = 0x6


# instance fields
.field private final entities:[Landroidx/compose/ui/node/LayoutNodeEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "**>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/ui/node/EntityList$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/ui/node/EntityList$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/ui/node/EntityList;->Companion:Landroidx/compose/ui/node/EntityList$Companion;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {v0}, Landroidx/compose/ui/node/EntityList$EntityType;->constructor-impl(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    sput v0, Landroidx/compose/ui/node/EntityList;->DrawEntityType:I

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-static {v0}, Landroidx/compose/ui/node/EntityList$EntityType;->constructor-impl(I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    sput v0, Landroidx/compose/ui/node/EntityList;->PointerInputEntityType:I

    .line 22
    .line 23
    const/4 v0, 0x2

    .line 24
    invoke-static {v0}, Landroidx/compose/ui/node/EntityList$EntityType;->constructor-impl(I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    sput v0, Landroidx/compose/ui/node/EntityList;->SemanticsEntityType:I

    .line 29
    .line 30
    const/4 v0, 0x3

    .line 31
    invoke-static {v0}, Landroidx/compose/ui/node/EntityList$EntityType;->constructor-impl(I)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    sput v0, Landroidx/compose/ui/node/EntityList;->ParentDataEntityType:I

    .line 36
    .line 37
    const/4 v0, 0x4

    .line 38
    invoke-static {v0}, Landroidx/compose/ui/node/EntityList$EntityType;->constructor-impl(I)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    sput v0, Landroidx/compose/ui/node/EntityList;->OnPlacedEntityType:I

    .line 43
    .line 44
    const/4 v0, 0x5

    .line 45
    invoke-static {v0}, Landroidx/compose/ui/node/EntityList$EntityType;->constructor-impl(I)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    sput v0, Landroidx/compose/ui/node/EntityList;->RemeasureEntityType:I

    .line 50
    .line 51
    return-void
.end method

.method private synthetic constructor <init>([Landroidx/compose/ui/node/LayoutNodeEntity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/node/EntityList;->entities:[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 5
    .line 6
    return-void
.end method

.method public static final synthetic access$getDrawEntityType$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/node/EntityList;->DrawEntityType:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getOnPlacedEntityType$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/node/EntityList;->OnPlacedEntityType:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getParentDataEntityType$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/node/EntityList;->ParentDataEntityType:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getPointerInputEntityType$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/node/EntityList;->PointerInputEntityType:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getRemeasureEntityType$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/node/EntityList;->RemeasureEntityType:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getSemanticsEntityType$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/node/EntityList;->SemanticsEntityType:I

    .line 2
    .line 3
    return v0
.end method

.method private static final add-impl([Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeEntity;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "TT;*>;>([",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "**>;TT;I)V"
        }
    .end annotation

    .line 1
    aget-object v0, p0, p2

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroidx/compose/ui/node/LayoutNodeEntity;->setNext(Landroidx/compose/ui/node/LayoutNodeEntity;)V

    .line 4
    .line 5
    .line 6
    aput-object p1, p0, p2

    .line 7
    .line 8
    return-void
.end method

.method public static final addAfterLayoutModifier-impl([Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/Modifier;)V
    .locals 2
    .param p1    # Landroidx/compose/ui/node/LayoutNodeWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "**>;",
            "Landroidx/compose/ui/node/LayoutNodeWrapper;",
            "Landroidx/compose/ui/Modifier;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "layoutNodeWrapper"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "modifier"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    instance-of v0, p2, Landroidx/compose/ui/layout/OnPlacedModifier;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Landroidx/compose/ui/node/SimpleEntity;

    .line 16
    .line 17
    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/node/SimpleEntity;-><init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/Modifier;)V

    .line 18
    .line 19
    .line 20
    sget v1, Landroidx/compose/ui/node/EntityList;->OnPlacedEntityType:I

    .line 21
    .line 22
    invoke-static {p0, v0, v1}, Landroidx/compose/ui/node/EntityList;->add-impl([Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeEntity;I)V

    .line 23
    .line 24
    .line 25
    :cond_0
    instance-of v0, p2, Landroidx/compose/ui/layout/OnRemeasuredModifier;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    new-instance v0, Landroidx/compose/ui/node/SimpleEntity;

    .line 30
    .line 31
    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/node/SimpleEntity;-><init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/Modifier;)V

    .line 32
    .line 33
    .line 34
    sget p1, Landroidx/compose/ui/node/EntityList;->RemeasureEntityType:I

    .line 35
    .line 36
    invoke-static {p0, v0, p1}, Landroidx/compose/ui/node/EntityList;->add-impl([Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeEntity;I)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public static final addBeforeLayoutModifier-impl([Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/Modifier;)V
    .locals 2
    .param p1    # Landroidx/compose/ui/node/LayoutNodeWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "**>;",
            "Landroidx/compose/ui/node/LayoutNodeWrapper;",
            "Landroidx/compose/ui/Modifier;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "layoutNodeWrapper"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "modifier"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    instance-of v0, p2, Landroidx/compose/ui/draw/DrawModifier;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Landroidx/compose/ui/node/DrawEntity;

    .line 16
    .line 17
    move-object v1, p2

    .line 18
    check-cast v1, Landroidx/compose/ui/draw/DrawModifier;

    .line 19
    .line 20
    invoke-direct {v0, p1, v1}, Landroidx/compose/ui/node/DrawEntity;-><init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/draw/DrawModifier;)V

    .line 21
    .line 22
    .line 23
    sget v1, Landroidx/compose/ui/node/EntityList;->DrawEntityType:I

    .line 24
    .line 25
    invoke-static {p0, v0, v1}, Landroidx/compose/ui/node/EntityList;->add-impl([Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeEntity;I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    instance-of v0, p2, Landroidx/compose/ui/input/pointer/PointerInputModifier;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    new-instance v0, Landroidx/compose/ui/node/PointerInputEntity;

    .line 33
    .line 34
    move-object v1, p2

    .line 35
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputModifier;

    .line 36
    .line 37
    invoke-direct {v0, p1, v1}, Landroidx/compose/ui/node/PointerInputEntity;-><init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/input/pointer/PointerInputModifier;)V

    .line 38
    .line 39
    .line 40
    sget v1, Landroidx/compose/ui/node/EntityList;->PointerInputEntityType:I

    .line 41
    .line 42
    invoke-static {p0, v0, v1}, Landroidx/compose/ui/node/EntityList;->add-impl([Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeEntity;I)V

    .line 43
    .line 44
    .line 45
    :cond_1
    instance-of v0, p2, Landroidx/compose/ui/semantics/SemanticsModifier;

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsEntity;

    .line 50
    .line 51
    move-object v1, p2

    .line 52
    check-cast v1, Landroidx/compose/ui/semantics/SemanticsModifier;

    .line 53
    .line 54
    invoke-direct {v0, p1, v1}, Landroidx/compose/ui/semantics/SemanticsEntity;-><init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/semantics/SemanticsModifier;)V

    .line 55
    .line 56
    .line 57
    sget v1, Landroidx/compose/ui/node/EntityList;->SemanticsEntityType:I

    .line 58
    .line 59
    invoke-static {p0, v0, v1}, Landroidx/compose/ui/node/EntityList;->add-impl([Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeEntity;I)V

    .line 60
    .line 61
    .line 62
    :cond_2
    instance-of v0, p2, Landroidx/compose/ui/layout/ParentDataModifier;

    .line 63
    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    new-instance v0, Landroidx/compose/ui/node/SimpleEntity;

    .line 67
    .line 68
    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/node/SimpleEntity;-><init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/Modifier;)V

    .line 69
    .line 70
    .line 71
    sget p1, Landroidx/compose/ui/node/EntityList;->ParentDataEntityType:I

    .line 72
    .line 73
    invoke-static {p0, v0, p1}, Landroidx/compose/ui/node/EntityList;->add-impl([Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeEntity;I)V

    .line 74
    .line 75
    .line 76
    :cond_3
    return-void
.end method

.method public static final synthetic box-impl([Landroidx/compose/ui/node/LayoutNodeEntity;)Landroidx/compose/ui/node/EntityList;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/node/EntityList;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/compose/ui/node/EntityList;-><init>([Landroidx/compose/ui/node/LayoutNodeEntity;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final clear-impl([Landroidx/compose/ui/node/LayoutNodeEntity;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "**>;)V"
        }
    .end annotation

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_2

    .line 5
    .line 6
    aget-object v3, p0, v2

    .line 7
    .line 8
    :goto_1
    if-eqz v3, :cond_1

    .line 9
    .line 10
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNodeEntity;->isAttached()Z

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNodeEntity;->onDetach()V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNodeEntity;->getNext()Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    array-length v0, p0

    .line 28
    :goto_2
    if-ge v1, v0, :cond_3

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    aput-object v2, p0, v1

    .line 32
    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_3
    return-void
.end method

.method public static constructor-impl([Landroidx/compose/ui/node/LayoutNodeEntity;)[Landroidx/compose/ui/node/LayoutNodeEntity;
    .locals 1
    .param p0    # [Landroidx/compose/ui/node/LayoutNodeEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "**>;)[",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "**>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "entities"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public static synthetic constructor-impl$default([Landroidx/compose/ui/node/LayoutNodeEntity;ILkotlin/jvm/internal/DefaultConstructorMarker;)[Landroidx/compose/ui/node/LayoutNodeEntity;
    .locals 0

    .line 1
    and-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x6

    .line 6
    new-array p0, p0, [Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 7
    .line 8
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/node/EntityList;->constructor-impl([Landroidx/compose/ui/node/LayoutNodeEntity;)[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static equals-impl([Landroidx/compose/ui/node/LayoutNodeEntity;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Landroidx/compose/ui/node/EntityList;

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
    check-cast p1, Landroidx/compose/ui/node/EntityList;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/compose/ui/node/EntityList;->unbox-impl()[Landroidx/compose/ui/node/LayoutNodeEntity;

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

.method public static final equals-impl0([Landroidx/compose/ui/node/LayoutNodeEntity;[Landroidx/compose/ui/node/LayoutNodeEntity;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "**>;[",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "**>;)Z"
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

.method public static final forEach-9r0pUL4([Landroidx/compose/ui/node/LayoutNodeEntity;ILkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "TT;TM;>;M::",
            "Landroidx/compose/ui/Modifier;",
            ">([",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "**>;I",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "block"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    aget-object p0, p0, p1

    .line 7
    .line 8
    :goto_0
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->getNext()Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return-void
.end method

.method private static final forEach-impl([Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeEntity;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "TT;TM;>;M::",
            "Landroidx/compose/ui/Modifier;",
            ">([",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "**>;",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "**>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeEntity;->getNext()Landroidx/compose/ui/node/LayoutNodeEntity;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final forEach-impl([Landroidx/compose/ui/node/LayoutNodeEntity;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "**>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "**>;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    :goto_1
    if-eqz v2, :cond_0

    .line 4
    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNodeEntity;->getNext()Landroidx/compose/ui/node/LayoutNodeEntity;

    move-result-object v2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static final has-0OSVbXo([Landroidx/compose/ui/node/LayoutNodeEntity;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "**>;I)Z"
        }
    .end annotation

    .line 1
    aget-object p0, p0, p1

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public static hashCode-impl([Landroidx/compose/ui/node/LayoutNodeEntity;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "**>;)I"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final head-0OSVbXo([Landroidx/compose/ui/node/LayoutNodeEntity;I)Landroidx/compose/ui/node/LayoutNodeEntity;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "TT;TM;>;M::",
            "Landroidx/compose/ui/Modifier;",
            ">([",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "**>;I)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    aget-object p0, p0, p1

    .line 2
    .line 3
    return-object p0
.end method

.method public static toString-impl([Landroidx/compose/ui/node/LayoutNodeEntity;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "**>;)",
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
    const-string v1, "EntityList(entities="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const/16 p0, 0x29

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/EntityList;->entities:[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/node/EntityList;->equals-impl([Landroidx/compose/ui/node/LayoutNodeEntity;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final getEntities()[Landroidx/compose/ui/node/LayoutNodeEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Landroidx/compose/ui/node/LayoutNodeEntity<",
            "**>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/EntityList;->entities:[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/EntityList;->entities:[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/node/EntityList;->hashCode-impl([Landroidx/compose/ui/node/LayoutNodeEntity;)I

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
    iget-object v0, p0, Landroidx/compose/ui/node/EntityList;->entities:[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/node/EntityList;->toString-impl([Landroidx/compose/ui/node/LayoutNodeEntity;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final synthetic unbox-impl()[Landroidx/compose/ui/node/LayoutNodeEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/EntityList;->entities:[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 2
    .line 3
    return-object v0
.end method
