.class public interface abstract Landroidx/compose/runtime/Composer;
.super Ljava/lang/Object;
.source "Composer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/Composer$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/runtime/Composer$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->$$INSTANCE:Landroidx/compose/runtime/Composer$Companion;

    .line 2
    .line 3
    sput-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 4
    .line 5
    return-void
.end method

.method public static synthetic getApplier$annotations()V
    .locals 0
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getApplyCoroutineContext$annotations()V
    .locals 0
    .annotation build Landroidx/compose/runtime/InternalComposeApi;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getCompositeKeyHashCode$annotations()V
    .locals 0
    .annotation build Landroidx/compose/runtime/InternalComposeApi;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getCompoundKeyHash$annotations()V
    .locals 0
    .annotation build Landroidx/compose/runtime/InternalComposeApi;
    .end annotation

    .annotation runtime Lms/c;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getCurrentMarker$annotations()V
    .locals 0
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getDefaultsInvalid$annotations()V
    .locals 0
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getInserting$annotations()V
    .locals 0
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getRecomposeScope$annotations()V
    .locals 0
    .annotation build Landroidx/compose/runtime/InternalComposeApi;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getRecomposeScopeIdentity$annotations()V
    .locals 0
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getSkipping$annotations()V
    .locals 0
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 1
    return-void
.end method


# virtual methods
.method public abstract apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(TV;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-TV;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract buildContext()Landroidx/compose/runtime/CompositionContext;
    .annotation build Landroidx/compose/runtime/InternalComposeApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public changed(B)Z
    .locals 0
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 3
    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->changed(B)Z

    move-result p1

    return p1
.end method

.method public changed(C)Z
    .locals 0
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 2
    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->changed(C)Z

    move-result p1

    return p1
.end method

.method public changed(D)Z
    .locals 0
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 8
    invoke-interface {p0, p1, p2}, Landroidx/compose/runtime/Composer;->changed(D)Z

    move-result p1

    return p1
.end method

.method public changed(F)Z
    .locals 0
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 6
    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result p1

    return p1
.end method

.method public changed(I)Z
    .locals 0
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 5
    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result p1

    return p1
.end method

.method public changed(J)Z
    .locals 0
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 7
    invoke-interface {p0, p1, p2}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result p1

    return p1
.end method

.method public abstract changed(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation
.end method

.method public changed(S)Z
    .locals 0
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 4
    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->changed(S)Z

    move-result p1

    return p1
.end method

.method public changed(Z)Z
    .locals 0
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result p1

    return p1
.end method

.method public changedInstance(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public abstract collectParameterInformation()V
.end method

.method public abstract consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;
    .param p1    # Landroidx/compose/runtime/CompositionLocal;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/InternalComposeApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/CompositionLocal<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract createNode(Lkotlin/jvm/functions/Function0;)V
    .param p1    # Lkotlin/jvm/functions/Function0;
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
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)V"
        }
    .end annotation
.end method

.method public abstract deactivateToEndGroup(Z)V
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation
.end method

.method public abstract disableReusing()V
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation
.end method

.method public abstract disableSourceInformation()V
    .annotation build Lorg/jetbrains/annotations/TestOnly;
    .end annotation
.end method

.method public abstract enableReusing()V
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation
.end method

.method public abstract endDefaults()V
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation
.end method

.method public abstract endMovableGroup()V
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation
.end method

.method public abstract endNode()V
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation
.end method

.method public abstract endProvider()V
    .annotation build Landroidx/compose/runtime/InternalComposeApi;
    .end annotation
.end method

.method public abstract endProviders()V
    .annotation build Landroidx/compose/runtime/InternalComposeApi;
    .end annotation
.end method

.method public abstract endReplaceGroup()V
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation
.end method

.method public abstract endReplaceableGroup()V
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation
.end method

.method public abstract endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract endReusableGroup()V
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation
.end method

.method public abstract endToMarker(I)V
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation
.end method

.method public abstract getApplier()Landroidx/compose/runtime/Applier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/Applier<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getApplyCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/TestOnly;
    .end annotation
.end method

.method public abstract getCompositeKeyHashCode()J
.end method

.method public abstract getComposition()Landroidx/compose/runtime/ControlledComposition;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/TestOnly;
    .end annotation
.end method

.method public abstract getCompositionData()Landroidx/compose/runtime/tooling/CompositionData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public getCompoundKeyHash()I
    .locals 2

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->getCompositeKeyHashCode()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public abstract getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getCurrentMarker()I
.end method

.method public abstract getDefaultsInvalid()Z
.end method

.method public abstract getInserting()Z
.end method

.method public abstract getRecomposeScope()Landroidx/compose/runtime/RecomposeScope;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getRecomposeScopeIdentity()Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getSkipping()Z
.end method

.method public abstract insertMovableContent(Landroidx/compose/runtime/MovableContent;Ljava/lang/Object;)V
    .param p1    # Landroidx/compose/runtime/MovableContent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/InternalComposeApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MovableContent<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method public abstract insertMovableContentReferences(Ljava/util/List;)V
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/InternalComposeApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract joinKey(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract recordSideEffect(Lkotlin/jvm/functions/Function0;)V
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/InternalComposeApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract recordUsed(Landroidx/compose/runtime/RecomposeScope;)V
    .param p1    # Landroidx/compose/runtime/RecomposeScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/InternalComposeApi;
    .end annotation
.end method

.method public abstract rememberedValue()Ljava/lang/Object;
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract shouldExecute(ZI)Z
    .annotation build Landroidx/compose/runtime/InternalComposeApi;
    .end annotation
.end method

.method public abstract skipCurrentGroup()V
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation
.end method

.method public abstract skipToGroupEnd()V
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation
.end method

.method public abstract sourceInformation(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract sourceInformationMarkerEnd()V
.end method

.method public abstract sourceInformationMarkerStart(ILjava/lang/String;)V
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract startDefaults()V
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation
.end method

.method public abstract startMovableGroup(ILjava/lang/Object;)V
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation
.end method

.method public abstract startNode()V
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation
.end method

.method public abstract startProvider(Landroidx/compose/runtime/ProvidedValue;)V
    .param p1    # Landroidx/compose/runtime/ProvidedValue;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/InternalComposeApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/ProvidedValue<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract startProviders([Landroidx/compose/runtime/ProvidedValue;)V
    .param p1    # [Landroidx/compose/runtime/ProvidedValue;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/InternalComposeApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/compose/runtime/ProvidedValue<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract startReplaceGroup(I)V
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation
.end method

.method public abstract startReplaceableGroup(I)V
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation
.end method

.method public abstract startRestartGroup(I)Landroidx/compose/runtime/Composer;
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract startReusableGroup(ILjava/lang/Object;)V
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation
.end method

.method public abstract startReusableNode()V
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation
.end method

.method public abstract updateRememberedValue(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation
.end method

.method public abstract useNode()V
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation
.end method
