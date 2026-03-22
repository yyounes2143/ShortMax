.class final Landroidx/compose/runtime/saveable/SaveableHolder;
.super Ljava/lang/Object;
.source "RememberSaveable.kt"

# interfaces
.implements Landroidx/compose/runtime/saveable/SaverScope;
.implements Landroidx/compose/runtime/RememberObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/compose/runtime/saveable/SaverScope;",
        "Landroidx/compose/runtime/RememberObserver;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRememberSaveable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RememberSaveable.kt\nandroidx/compose/runtime/saveable/SaveableHolder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,391:1\n1#2:392\n*E\n"
    }
.end annotation


# instance fields
.field private entry:Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private inputs:[Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private key:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private registry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private saver:Landroidx/compose/runtime/saveable/Saver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/saveable/Saver<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final valueProvider:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableStateRegistry;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p1    # Landroidx/compose/runtime/saveable/Saver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/saveable/SaveableStateRegistry;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/saveable/Saver<",
            "TT;",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/runtime/saveable/SaveableStateRegistry;",
            "Ljava/lang/String;",
            "TT;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->saver:Landroidx/compose/runtime/saveable/Saver;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->registry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->key:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->value:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->inputs:[Ljava/lang/Object;

    .line 13
    .line 14
    new-instance p1, Landroidx/compose/runtime/saveable/f;

    .line 15
    .line 16
    invoke-direct {p1, p0}, Landroidx/compose/runtime/saveable/f;-><init>(Landroidx/compose/runtime/saveable/SaveableHolder;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->valueProvider:Lkotlin/jvm/functions/Function0;

    .line 20
    .line 21
    return-void
.end method

.method public static synthetic a(Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/runtime/saveable/SaveableHolder;->valueProvider$lambda$2(Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final register()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->registry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->entry:Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->valueProvider:Lkotlin/jvm/functions/Function0;

    .line 10
    .line 11
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->access$requireCanBeSaved(Landroidx/compose/runtime/saveable/SaveableStateRegistry;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->key:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v2, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->valueProvider:Lkotlin/jvm/functions/Function0;

    .line 21
    .line 22
    invoke-interface {v0, v1, v2}, Landroidx/compose/runtime/saveable/SaveableStateRegistry;->registerProvider(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->entry:Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;

    .line 27
    .line 28
    :cond_0
    return-void

    .line 29
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v1, "entry("

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->entry:Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, ") is not null"

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v1
.end method

.method private static final valueProvider$lambda$2(Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->saver:Landroidx/compose/runtime/saveable/Saver;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->value:Ljava/lang/Object;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p0, v1}, Landroidx/compose/runtime/saveable/Saver;->save(Landroidx/compose/runtime/saveable/SaverScope;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string v0, "Value should be initialized"

    .line 15
    .line 16
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method


# virtual methods
.method public canBeSaved(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->registry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/compose/runtime/saveable/SaveableStateRegistry;->canBeSaved(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 15
    :goto_1
    return p1
.end method

.method public final getValueIfInputsDidntChange([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->inputs:[Ljava/lang/Object;

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->value:Ljava/lang/Object;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    return-object p1
.end method

.method public onAbandoned()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->entry:Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;->unregister()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onForgotten()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->entry:Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;->unregister()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onRemembered()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/saveable/SaveableHolder;->register()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final update(Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableStateRegistry;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 2
    .param p1    # Landroidx/compose/runtime/saveable/Saver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/saveable/SaveableStateRegistry;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/saveable/Saver<",
            "TT;",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/runtime/saveable/SaveableStateRegistry;",
            "Ljava/lang/String;",
            "TT;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->registry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, p2, :cond_0

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->registry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 7
    .line 8
    move p2, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p2, 0x0

    .line 11
    :goto_0
    iget-object v0, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->key:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iput-object p3, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->key:Ljava/lang/String;

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move v1, p2

    .line 23
    :goto_1
    iput-object p1, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->saver:Landroidx/compose/runtime/saveable/Saver;

    .line 24
    .line 25
    iput-object p4, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->value:Ljava/lang/Object;

    .line 26
    .line 27
    iput-object p5, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->inputs:[Ljava/lang/Object;

    .line 28
    .line 29
    iget-object p1, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->entry:Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;

    .line 30
    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    invoke-interface {p1}, Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;->unregister()V

    .line 38
    .line 39
    .line 40
    :cond_2
    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->entry:Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;

    .line 42
    .line 43
    invoke-direct {p0}, Landroidx/compose/runtime/saveable/SaveableHolder;->register()V

    .line 44
    .line 45
    .line 46
    :cond_3
    return-void
.end method
