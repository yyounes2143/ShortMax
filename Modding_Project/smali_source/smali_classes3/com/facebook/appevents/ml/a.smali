.class public final Lcom/facebook/appevents/ml/a;
.super Ljava/lang/Object;
.source "Model.kt"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/ml/a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final m:Lcom/facebook/appevents/ml/a$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Lb2/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lb2/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lb2/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Lb2/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Lb2/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:Lb2/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final g:Lb2/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final h:Lb2/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final i:Lb2/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final j:Lb2/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final k:Lb2/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lb2/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/facebook/appevents/ml/a$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/facebook/appevents/ml/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/facebook/appevents/ml/a;->m:Lcom/facebook/appevents/ml/a$a;

    .line 8
    .line 9
    const-string v0, "embedding.weight"

    .line 10
    .line 11
    const-string v1, "embed.weight"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string v0, "dense1.weight"

    .line 18
    .line 19
    const-string v1, "fc1.weight"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const-string v0, "dense2.weight"

    .line 26
    .line 27
    const-string v1, "fc2.weight"

    .line 28
    .line 29
    invoke-static {v0, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    const-string v0, "dense3.weight"

    .line 34
    .line 35
    const-string v1, "fc3.weight"

    .line 36
    .line 37
    invoke-static {v0, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    const-string v0, "dense1.bias"

    .line 42
    .line 43
    const-string v1, "fc1.bias"

    .line 44
    .line 45
    invoke-static {v0, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    const-string v0, "dense2.bias"

    .line 50
    .line 51
    const-string v1, "fc2.bias"

    .line 52
    .line 53
    invoke-static {v0, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    const-string v0, "dense3.bias"

    .line 58
    .line 59
    const-string v1, "fc3.bias"

    .line 60
    .line 61
    invoke-static {v0, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    filled-new-array/range {v2 .. v8}, [Lkotlin/Pair;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v0}, Lkotlin/collections/p0;->k([Lkotlin/Pair;)Ljava/util/HashMap;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    sput-object v0, Lcom/facebook/appevents/ml/a;->n:Ljava/util/Map;

    .line 74
    .line 75
    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lb2/a;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string v0, "embed.weight"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Required value was null."

    if-eqz v0, :cond_d

    check-cast v0, Lb2/a;

    iput-object v0, p0, Lcom/facebook/appevents/ml/a;->a:Lb2/a;

    .line 4
    const-string v0, "convs.0.weight"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    check-cast v0, Lb2/a;

    invoke-static {v0}, Lb2/g;->l(Lb2/a;)Lb2/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/appevents/ml/a;->b:Lb2/a;

    .line 5
    const-string v0, "convs.1.weight"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    check-cast v0, Lb2/a;

    invoke-static {v0}, Lb2/g;->l(Lb2/a;)Lb2/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/appevents/ml/a;->c:Lb2/a;

    .line 6
    const-string v0, "convs.2.weight"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    check-cast v0, Lb2/a;

    invoke-static {v0}, Lb2/g;->l(Lb2/a;)Lb2/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/appevents/ml/a;->d:Lb2/a;

    .line 7
    const-string v0, "convs.0.bias"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    check-cast v0, Lb2/a;

    iput-object v0, p0, Lcom/facebook/appevents/ml/a;->e:Lb2/a;

    .line 8
    const-string v0, "convs.1.bias"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    check-cast v0, Lb2/a;

    iput-object v0, p0, Lcom/facebook/appevents/ml/a;->f:Lb2/a;

    .line 9
    const-string v0, "convs.2.bias"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    check-cast v0, Lb2/a;

    iput-object v0, p0, Lcom/facebook/appevents/ml/a;->g:Lb2/a;

    .line 10
    const-string v0, "fc1.weight"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    check-cast v0, Lb2/a;

    invoke-static {v0}, Lb2/g;->k(Lb2/a;)Lb2/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/appevents/ml/a;->h:Lb2/a;

    .line 11
    const-string v0, "fc2.weight"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Lb2/a;

    invoke-static {v0}, Lb2/g;->k(Lb2/a;)Lb2/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/appevents/ml/a;->i:Lb2/a;

    .line 12
    const-string v0, "fc1.bias"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Lb2/a;

    iput-object v0, p0, Lcom/facebook/appevents/ml/a;->j:Lb2/a;

    .line 13
    const-string v0, "fc2.bias"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Lb2/a;

    iput-object v0, p0, Lcom/facebook/appevents/ml/a;->k:Lb2/a;

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/appevents/ml/a;->l:Ljava/util/Map;

    .line 15
    sget-object v0, Lcom/facebook/appevents/ml/ModelManager$Task;->MTML_INTEGRITY_DETECT:Lcom/facebook/appevents/ml/ModelManager$Task;

    invoke-virtual {v0}, Lcom/facebook/appevents/ml/ModelManager$Task;->toKey()Ljava/lang/String;

    move-result-object v0

    .line 16
    sget-object v1, Lcom/facebook/appevents/ml/ModelManager$Task;->MTML_APP_EVENT_PREDICTION:Lcom/facebook/appevents/ml/ModelManager$Task;

    invoke-virtual {v1}, Lcom/facebook/appevents/ml/ModelManager$Task;->toKey()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v0}, Lkotlin/collections/y0;->j([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".weight"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".bias"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb2/a;

    .line 22
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb2/a;

    if-eqz v3, :cond_1

    .line 23
    invoke-static {v3}, Lb2/g;->k(Lb2/a;)Lb2/a;

    move-result-object v3

    .line 24
    iget-object v5, p0, Lcom/facebook/appevents/ml/a;->l:Ljava/util/Map;

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v4, :cond_0

    .line 25
    iget-object v2, p0, Lcom/facebook/appevents/ml/a;->l:Ljava/util/Map;

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void

    .line 26
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/util/Map;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/appevents/ml/a;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static final synthetic a()Ljava/util/Map;
    .locals 3

    .line 1
    const-class v0, Lcom/facebook/appevents/ml/a;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    :try_start_0
    sget-object v0, Lcom/facebook/appevents/ml/a;->n:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    invoke-static {v1, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-object v2
.end method


# virtual methods
.method public final b(Lb2/a;[Ljava/lang/String;Ljava/lang/String;)Lb2/a;
    .locals 5
    .param p1    # Lb2/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    :try_start_0
    const-string v0, "dense"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "texts"

    .line 15
    .line 16
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v0, "task"

    .line 20
    .line 21
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/facebook/appevents/ml/a;->a:Lb2/a;

    .line 25
    .line 26
    const/16 v2, 0x80

    .line 27
    .line 28
    invoke-static {p2, v2, v0}, Lb2/g;->e([Ljava/lang/String;ILb2/a;)Lb2/a;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    iget-object v0, p0, Lcom/facebook/appevents/ml/a;->b:Lb2/a;

    .line 33
    .line 34
    invoke-static {p2, v0}, Lb2/g;->c(Lb2/a;Lb2/a;)Lb2/a;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    iget-object v0, p0, Lcom/facebook/appevents/ml/a;->e:Lb2/a;

    .line 39
    .line 40
    invoke-static {p2, v0}, Lb2/g;->a(Lb2/a;Lb2/a;)V

    .line 41
    .line 42
    .line 43
    invoke-static {p2}, Lb2/g;->i(Lb2/a;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/facebook/appevents/ml/a;->c:Lb2/a;

    .line 47
    .line 48
    invoke-static {p2, v0}, Lb2/g;->c(Lb2/a;Lb2/a;)Lb2/a;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v2, p0, Lcom/facebook/appevents/ml/a;->f:Lb2/a;

    .line 53
    .line 54
    invoke-static {v0, v2}, Lb2/g;->a(Lb2/a;Lb2/a;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Lb2/g;->i(Lb2/a;)V

    .line 58
    .line 59
    .line 60
    const/4 v2, 0x2

    .line 61
    invoke-static {v0, v2}, Lb2/g;->g(Lb2/a;I)Lb2/a;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-object v2, p0, Lcom/facebook/appevents/ml/a;->d:Lb2/a;

    .line 66
    .line 67
    invoke-static {v0, v2}, Lb2/g;->c(Lb2/a;Lb2/a;)Lb2/a;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    iget-object v3, p0, Lcom/facebook/appevents/ml/a;->g:Lb2/a;

    .line 72
    .line 73
    invoke-static {v2, v3}, Lb2/g;->a(Lb2/a;Lb2/a;)V

    .line 74
    .line 75
    .line 76
    invoke-static {v2}, Lb2/g;->i(Lb2/a;)V

    .line 77
    .line 78
    .line 79
    const/4 v3, 0x1

    .line 80
    invoke-virtual {p2, v3}, Lb2/a;->b(I)I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    invoke-static {p2, v4}, Lb2/g;->g(Lb2/a;I)Lb2/a;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-virtual {v0, v3}, Lb2/a;->b(I)I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    invoke-static {v0, v4}, Lb2/g;->g(Lb2/a;I)Lb2/a;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v2, v3}, Lb2/a;->b(I)I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    invoke-static {v2, v4}, Lb2/g;->g(Lb2/a;I)Lb2/a;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-static {p2, v3}, Lb2/g;->f(Lb2/a;I)V

    .line 105
    .line 106
    .line 107
    invoke-static {v0, v3}, Lb2/g;->f(Lb2/a;I)V

    .line 108
    .line 109
    .line 110
    invoke-static {v2, v3}, Lb2/g;->f(Lb2/a;I)V

    .line 111
    .line 112
    .line 113
    filled-new-array {p2, v0, v2, p1}, [Lb2/a;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-static {p1}, Lb2/g;->b([Lb2/a;)Lb2/a;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iget-object p2, p0, Lcom/facebook/appevents/ml/a;->h:Lb2/a;

    .line 122
    .line 123
    iget-object v0, p0, Lcom/facebook/appevents/ml/a;->j:Lb2/a;

    .line 124
    .line 125
    invoke-static {p1, p2, v0}, Lb2/g;->d(Lb2/a;Lb2/a;Lb2/a;)Lb2/a;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-static {p1}, Lb2/g;->i(Lb2/a;)V

    .line 130
    .line 131
    .line 132
    iget-object p2, p0, Lcom/facebook/appevents/ml/a;->i:Lb2/a;

    .line 133
    .line 134
    iget-object v0, p0, Lcom/facebook/appevents/ml/a;->k:Lb2/a;

    .line 135
    .line 136
    invoke-static {p1, p2, v0}, Lb2/g;->d(Lb2/a;Lb2/a;Lb2/a;)Lb2/a;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-static {p1}, Lb2/g;->i(Lb2/a;)V

    .line 141
    .line 142
    .line 143
    iget-object p2, p0, Lcom/facebook/appevents/ml/a;->l:Ljava/util/Map;

    .line 144
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v2, ".weight"

    .line 154
    .line 155
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    check-cast p2, Lb2/a;

    .line 167
    .line 168
    iget-object v0, p0, Lcom/facebook/appevents/ml/a;->l:Ljava/util/Map;

    .line 169
    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string p3, ".bias"

    .line 179
    .line 180
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p3

    .line 187
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object p3

    .line 191
    check-cast p3, Lb2/a;

    .line 192
    .line 193
    if-eqz p2, :cond_2

    .line 194
    .line 195
    if-nez p3, :cond_1

    .line 196
    .line 197
    goto :goto_0

    .line 198
    :cond_1
    invoke-static {p1, p2, p3}, Lb2/g;->d(Lb2/a;Lb2/a;Lb2/a;)Lb2/a;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-static {p1}, Lb2/g;->j(Lb2/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    .line 204
    .line 205
    return-object p1

    .line 206
    :catchall_0
    move-exception p1

    .line 207
    goto :goto_1

    .line 208
    :cond_2
    :goto_0
    return-object v1

    .line 209
    :goto_1
    invoke-static {p1, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    return-object v1
.end method
