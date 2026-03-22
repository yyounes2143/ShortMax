.class public final Landroidx/compose/runtime/internal/ComposableLambdaNImpl;
.super Ljava/lang/Object;
.source "ComposableLambdaN.jvm.kt"

# interfaces
.implements Landroidx/compose/runtime/internal/ComposableLambdaN;


# annotations
.annotation build Landroidx/compose/runtime/Stable;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nComposableLambdaN.jvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ComposableLambdaN.jvm.kt\nandroidx/compose/runtime/internal/ComposableLambdaNImpl\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,181:1\n37#2,2:182\n37#2,2:184\n*S KotlinDebug\n*F\n+ 1 ComposableLambdaN.jvm.kt\nandroidx/compose/runtime/internal/ComposableLambdaNImpl\n*L\n114#1:182,2\n122#1:184,2\n*E\n"
    }
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private _block:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final arity:I

.field private final key:I

.field private scope:Landroidx/compose/runtime/RecomposeScope;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private scopes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/RecomposeScope;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final tracked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(IZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/compose/runtime/internal/ComposableLambdaNImpl;->key:I

    .line 5
    .line 6
    iput-boolean p2, p0, Landroidx/compose/runtime/internal/ComposableLambdaNImpl;->tracked:Z

    .line 7
    .line 8
    iput p3, p0, Landroidx/compose/runtime/internal/ComposableLambdaNImpl;->arity:I

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic a([Ljava/lang/Object;ILandroidx/compose/runtime/internal/ComposableLambdaNImpl;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/runtime/internal/ComposableLambdaNImpl;->invoke$lambda$0([Ljava/lang/Object;ILandroidx/compose/runtime/internal/ComposableLambdaNImpl;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final invoke$lambda$0([Ljava/lang/Object;ILandroidx/compose/runtime/internal/ComposableLambdaNImpl;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 6

    .line 1
    const/4 p4, 0x0

    .line 2
    invoke-static {p4, p1}, Lkotlin/ranges/e;->v(II)Lkotlin/ranges/IntRange;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-static {p0, v0}, Lkotlin/collections/n;->h1([Ljava/lang/Object;Lkotlin/ranges/IntRange;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljava/util/Collection;

    .line 11
    .line 12
    new-array v1, p4, [Ljava/lang/Object;

    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    add-int/lit8 v1, p1, 0x1

    .line 19
    .line 20
    aget-object v1, p0, v1

    .line 21
    .line 22
    const-string v2, "null cannot be cast to non-null type kotlin.Int"

    .line 23
    .line 24
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    check-cast v1, Ljava/lang/Integer;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    array-length v3, p0

    .line 38
    sub-int/2addr v3, p1

    .line 39
    add-int/lit8 v3, v3, -0x2

    .line 40
    .line 41
    new-array v4, v3, [Ljava/lang/Object;

    .line 42
    .line 43
    :goto_0
    if-ge p4, v3, :cond_0

    .line 44
    .line 45
    add-int/lit8 v5, p1, 0x2

    .line 46
    .line 47
    add-int/2addr v5, p4

    .line 48
    aget-object v5, p0, v5

    .line 49
    .line 50
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    check-cast v5, Ljava/lang/Integer;

    .line 54
    .line 55
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    invoke-static {v5}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    aput-object v5, v4, p4

    .line 68
    .line 69
    add-int/lit8 p4, p4, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    new-instance p0, Lkotlin/jvm/internal/SpreadBuilder;

    .line 73
    .line 74
    const/4 p1, 0x4

    .line 75
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v0}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, p3}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    or-int/lit8 p1, v1, 0x1

    .line 85
    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p0, p1}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v4}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lkotlin/jvm/internal/SpreadBuilder;->size()I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    new-array p1, p1, [Ljava/lang/Object;

    .line 101
    .line 102
    invoke-virtual {p0, p1}, Lkotlin/jvm/internal/SpreadBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/internal/ComposableLambdaNImpl;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 110
    .line 111
    return-object p0
.end method

.method private final realParamCount(I)I
    .locals 2

    .line 1
    add-int/lit8 p1, p1, -0x2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    :goto_0
    mul-int/lit8 v1, v0, 0xa

    .line 5
    .line 6
    if-ge v1, p1, :cond_0

    .line 7
    .line 8
    add-int/lit8 p1, p1, -0x1

    .line 9
    .line 10
    add-int/lit8 v0, v0, 0x1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return p1
.end method

.method private final trackRead(Landroidx/compose/runtime/Composer;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/internal/ComposableLambdaNImpl;->tracked:Z

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getRecomposeScope()Landroidx/compose/runtime/RecomposeScope;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->recordUsed(Landroidx/compose/runtime/RecomposeScope;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Landroidx/compose/runtime/internal/ComposableLambdaNImpl;->scope:Landroidx/compose/runtime/RecomposeScope;

    .line 15
    .line 16
    invoke-static {p1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->replacableWith(Landroidx/compose/runtime/RecomposeScope;Landroidx/compose/runtime/RecomposeScope;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iput-object v0, p0, Landroidx/compose/runtime/internal/ComposableLambdaNImpl;->scope:Landroidx/compose/runtime/RecomposeScope;

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    iget-object p1, p0, Landroidx/compose/runtime/internal/ComposableLambdaNImpl;->scopes:Ljava/util/List;

    .line 26
    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    new-instance p1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Landroidx/compose/runtime/internal/ComposableLambdaNImpl;->scopes:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/4 v2, 0x0

    .line 45
    :goto_0
    if-ge v2, v1, :cond_3

    .line 46
    .line 47
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Landroidx/compose/runtime/RecomposeScope;

    .line 52
    .line 53
    invoke-static {v3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->replacableWith(Landroidx/compose/runtime/RecomposeScope;Landroidx/compose/runtime/RecomposeScope;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_2

    .line 58
    .line 59
    invoke-interface {p1, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    :cond_4
    :goto_1
    return-void
.end method

.method private final trackWrite()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/internal/ComposableLambdaNImpl;->tracked:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/runtime/internal/ComposableLambdaNImpl;->scope:Landroidx/compose/runtime/RecomposeScope;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Landroidx/compose/runtime/RecomposeScope;->invalidate()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Landroidx/compose/runtime/internal/ComposableLambdaNImpl;->scope:Landroidx/compose/runtime/RecomposeScope;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/internal/ComposableLambdaNImpl;->scopes:Ljava/util/List;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x0

    .line 24
    :goto_0
    if-ge v2, v1, :cond_1

    .line 25
    .line 26
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Landroidx/compose/runtime/RecomposeScope;

    .line 31
    .line 32
    invoke-interface {v3}, Landroidx/compose/runtime/RecomposeScope;->invalidate()V

    .line 33
    .line 34
    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 39
    .line 40
    .line 41
    :cond_2
    return-void
.end method


# virtual methods
.method public getArity()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/internal/ComposableLambdaNImpl;->arity:I

    .line 2
    .line 3
    return v0
.end method

.method public final getKey()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/internal/ComposableLambdaNImpl;->key:I

    .line 2
    .line 3
    return v0
.end method

.method public varargs invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    invoke-direct {p0, v0}, Landroidx/compose/runtime/internal/ComposableLambdaNImpl;->realParamCount(I)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    aget-object v1, p1, v0

    .line 7
    .line 8
    const-string v2, "null cannot be cast to non-null type androidx.compose.runtime.Composer"

    .line 9
    .line 10
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 14
    .line 15
    array-length v2, p1

    .line 16
    add-int/lit8 v2, v2, -0x1

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static {v3, v2}, Lkotlin/ranges/e;->v(II)Lkotlin/ranges/IntRange;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {p1, v2}, Lkotlin/collections/n;->h1([Ljava/lang/Object;Lkotlin/ranges/IntRange;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/util/Collection;

    .line 28
    .line 29
    new-array v3, v3, [Ljava/lang/Object;

    .line 30
    .line 31
    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    array-length v3, p1

    .line 36
    add-int/lit8 v3, v3, -0x1

    .line 37
    .line 38
    aget-object v3, p1, v3

    .line 39
    .line 40
    const-string v4, "null cannot be cast to non-null type kotlin.Int"

    .line 41
    .line 42
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    check-cast v3, Ljava/lang/Integer;

    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    iget v4, p0, Landroidx/compose/runtime/internal/ComposableLambdaNImpl;->key:I

    .line 52
    .line 53
    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-direct {p0, v1}, Landroidx/compose/runtime/internal/ComposableLambdaNImpl;->trackRead(Landroidx/compose/runtime/Composer;)V

    .line 58
    .line 59
    .line 60
    invoke-interface {v1, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_0

    .line 65
    .line 66
    invoke-static {v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->differentBits(I)I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    invoke-static {v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->sameBits(I)I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    :goto_0
    or-int/2addr v3, v4

    .line 76
    iget-object v4, p0, Landroidx/compose/runtime/internal/ComposableLambdaNImpl;->_block:Ljava/lang/Object;

    .line 77
    .line 78
    const-string v5, "null cannot be cast to non-null type kotlin.jvm.functions.FunctionN<*>"

    .line 79
    .line 80
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    check-cast v4, Lat/u;

    .line 84
    .line 85
    new-instance v5, Lkotlin/jvm/internal/SpreadBuilder;

    .line 86
    .line 87
    const/4 v6, 0x2

    .line 88
    invoke-direct {v5, v6}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5, v2}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v5, v2}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5}, Lkotlin/jvm/internal/SpreadBuilder;->size()I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    new-array v2, v2, [Ljava/lang/Object;

    .line 106
    .line 107
    invoke-virtual {v5, v2}, Lkotlin/jvm/internal/SpreadBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-interface {v4, v2}, Lat/u;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    if-eqz v1, :cond_1

    .line 120
    .line 121
    new-instance v3, Landroidx/compose/runtime/internal/s;

    .line 122
    .line 123
    invoke-direct {v3, p1, v0, p0}, Landroidx/compose/runtime/internal/s;-><init>([Ljava/lang/Object;ILandroidx/compose/runtime/internal/ComposableLambdaNImpl;)V

    .line 124
    .line 125
    .line 126
    invoke-interface {v1, v3}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 127
    .line 128
    .line 129
    :cond_1
    return-object v2
.end method

.method public final update(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/internal/ComposableLambdaNImpl;->_block:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/runtime/internal/ComposableLambdaNImpl;->_block:Ljava/lang/Object;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    const-string v1, "null cannot be cast to non-null type kotlin.jvm.functions.FunctionN<*>"

    .line 17
    .line 18
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    check-cast p1, Lat/u;

    .line 22
    .line 23
    iput-object p1, p0, Landroidx/compose/runtime/internal/ComposableLambdaNImpl;->_block:Ljava/lang/Object;

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    invoke-direct {p0}, Landroidx/compose/runtime/internal/ComposableLambdaNImpl;->trackWrite()V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method
