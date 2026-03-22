.class public final Landroidx/compose/runtime/SkippableUpdater;
.super Ljava/lang/Object;
.source "Composer.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final composer:Landroidx/compose/runtime/Composer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private synthetic constructor <init>(Landroidx/compose/runtime/Composer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/SkippableUpdater;->composer:Landroidx/compose/runtime/Composer;

    .line 5
    .line 6
    return-void
.end method

.method public static final synthetic box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/runtime/SkippableUpdater;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/compose/runtime/SkippableUpdater;-><init>(Landroidx/compose/runtime/Composer;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;
    .locals 0
    .param p0    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/Composer;",
            ")",
            "Landroidx/compose/runtime/Composer;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public static equals-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Landroidx/compose/runtime/SkippableUpdater;

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
    check-cast p1, Landroidx/compose/runtime/SkippableUpdater;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/compose/runtime/SkippableUpdater;->unbox-impl()Landroidx/compose/runtime/Composer;

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

.method public static final equals-impl0(Landroidx/compose/runtime/Composer;Landroidx/compose/runtime/Composer;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic getComposer$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static hashCode-impl(Landroidx/compose/runtime/Composer;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static toString-impl(Landroidx/compose/runtime/Composer;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "SkippableUpdater(composer="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const/16 p0, 0x29

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static final update-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/Composer;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/runtime/Updater<",
            "TT;>;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const v0, 0x1e65194f

    .line 2
    .line 3
    .line 4
    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Updater;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/SkippableUpdater;->composer:Landroidx/compose/runtime/Composer;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/runtime/SkippableUpdater;->equals-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/SkippableUpdater;->composer:Landroidx/compose/runtime/Composer;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->hashCode-impl(Landroidx/compose/runtime/Composer;)I

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
    iget-object v0, p0, Landroidx/compose/runtime/SkippableUpdater;->composer:Landroidx/compose/runtime/Composer;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->toString-impl(Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final synthetic unbox-impl()Landroidx/compose/runtime/Composer;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/SkippableUpdater;->composer:Landroidx/compose/runtime/Composer;

    .line 2
    .line 3
    return-object v0
.end method
