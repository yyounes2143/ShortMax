.class public final Lst/s;
.super Ljava/lang/Object;
.source "SerializersCache.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSerializersCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SerializersCache.kt\nkotlinx/serialization/SerializersCacheKt\n+ 2 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n*L\n1#1,79:1\n78#1:81\n78#1:82\n78#2:80\n78#2:83\n78#2:84\n*S KotlinDebug\n*F\n+ 1 SerializersCache.kt\nkotlinx/serialization/SerializersCacheKt\n*L\n22#1:81\n28#1:82\n54#1:80\n28#1:83\n45#1:84\n*E\n"
    }
.end annotation


# static fields
.field private static final a:Lvt/s2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvt/s2<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lvt/s2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvt/s2<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Lvt/z1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvt/z1<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final d:Lvt/z1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvt/z1<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lst/m;

    .line 2
    .line 3
    invoke-direct {v0}, Lst/m;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lvt/o;->a(Lkotlin/jvm/functions/Function1;)Lvt/s2;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lst/s;->a:Lvt/s2;

    .line 11
    .line 12
    new-instance v0, Lst/n;

    .line 13
    .line 14
    invoke-direct {v0}, Lst/n;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lvt/o;->a(Lkotlin/jvm/functions/Function1;)Lvt/s2;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lst/s;->b:Lvt/s2;

    .line 22
    .line 23
    new-instance v0, Lst/o;

    .line 24
    .line 25
    invoke-direct {v0}, Lst/o;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lvt/o;->b(Lkotlin/jvm/functions/Function2;)Lvt/z1;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Lst/s;->c:Lvt/z1;

    .line 33
    .line 34
    new-instance v0, Lst/p;

    .line 35
    .line 36
    invoke-direct {v0}, Lst/p;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lvt/o;->b(Lkotlin/jvm/functions/Function2;)Lvt/z1;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Lst/s;->d:Lvt/z1;

    .line 44
    .line 45
    return-void
.end method

.method public static synthetic a(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;
    .locals 0

    .line 1
    invoke-static {p0}, Lst/s;->k(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;
    .locals 0

    .line 1
    invoke-static {p0}, Lst/s;->l(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Ljava/util/List;)Lkotlin/reflect/KClassifier;
    .locals 0

    .line 1
    invoke-static {p0}, Lst/s;->h(Ljava/util/List;)Lkotlin/reflect/KClassifier;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lkotlin/reflect/KClass;Ljava/util/List;)Lkotlinx/serialization/KSerializer;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lst/s;->i(Lkotlin/reflect/KClass;Ljava/util/List;)Lkotlinx/serialization/KSerializer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Lkotlin/reflect/KClass;Ljava/util/List;)Lkotlinx/serialization/KSerializer;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lst/s;->g(Lkotlin/reflect/KClass;Ljava/util/List;)Lkotlinx/serialization/KSerializer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Ljava/util/List;)Lkotlin/reflect/KClassifier;
    .locals 0

    .line 1
    invoke-static {p0}, Lst/s;->j(Ljava/util/List;)Lkotlin/reflect/KClassifier;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final g(Lkotlin/reflect/KClass;Ljava/util/List;)Lkotlinx/serialization/KSerializer;
    .locals 2

    .line 1
    const-string v0, "clazz"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "types"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lxt/b;->a()Lxt/a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-static {v0, p1, v1}, Lst/t;->f(Lxt/a;Ljava/util/List;Z)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lst/q;

    .line 24
    .line 25
    invoke-direct {v1, p1}, Lst/q;-><init>(Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0, v0, v1}, Lst/t;->a(Lkotlin/reflect/KClass;Ljava/util/List;Lkotlin/jvm/functions/Function0;)Lkotlinx/serialization/KSerializer;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method private static final h(Ljava/util/List;)Lkotlin/reflect/KClassifier;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    check-cast p0, Lkotlin/reflect/KType;

    .line 7
    .line 8
    invoke-interface {p0}, Lkotlin/reflect/KType;->getClassifier()Lkotlin/reflect/KClassifier;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method private static final i(Lkotlin/reflect/KClass;Ljava/util/List;)Lkotlinx/serialization/KSerializer;
    .locals 2

    .line 1
    const-string v0, "clazz"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "types"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lxt/b;->a()Lxt/a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-static {v0, p1, v1}, Lst/t;->f(Lxt/a;Ljava/util/List;Z)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lst/r;

    .line 24
    .line 25
    invoke-direct {v1, p1}, Lst/r;-><init>(Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0, v0, v1}, Lst/t;->a(Lkotlin/reflect/KClass;Ljava/util/List;Lkotlin/jvm/functions/Function0;)Lkotlinx/serialization/KSerializer;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    if-eqz p0, :cond_0

    .line 33
    .line 34
    invoke-static {p0}, Ltt/a;->t(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    if-eqz p0, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 p0, 0x0

    .line 42
    :goto_0
    return-object p0
.end method

.method private static final j(Ljava/util/List;)Lkotlin/reflect/KClassifier;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    check-cast p0, Lkotlin/reflect/KType;

    .line 7
    .line 8
    invoke-interface {p0}, Lkotlin/reflect/KType;->getClassifier()Lkotlin/reflect/KClassifier;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method private static final k(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lst/t;->d(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-static {p0}, Lvt/a2;->l(Lkotlin/reflect/KClass;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Lst/g;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lst/g;-><init>(Lkotlin/reflect/KClass;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    move-object v0, p0

    .line 26
    :cond_1
    :goto_0
    return-object v0
.end method

.method private static final l(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;
    .locals 2

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lst/t;->d(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-static {p0}, Lvt/a2;->l(Lkotlin/reflect/KClass;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    new-instance v0, Lst/g;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lst/g;-><init>(Lkotlin/reflect/KClass;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v0, v1

    .line 26
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-static {v0}, Ltt/a;->t(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    if-eqz p0, :cond_2

    .line 33
    .line 34
    move-object v1, p0

    .line 35
    :cond_2
    return-object v1
.end method

.method public static final m(Lkotlin/reflect/KClass;Z)Lkotlinx/serialization/KSerializer;
    .locals 1
    .param p0    # Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "Ljava/lang/Object;",
            ">;Z)",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "clazz"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    sget-object p1, Lst/s;->a:Lvt/s2;

    .line 9
    .line 10
    invoke-interface {p1, p0}, Lvt/s2;->a(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    sget-object p1, Lst/s;->b:Lvt/s2;

    .line 20
    .line 21
    invoke-interface {p1, p0}, Lvt/s2;->a(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    :goto_0
    return-object p0
.end method

.method public static final n(Lkotlin/reflect/KClass;Ljava/util/List;Z)Ljava/lang/Object;
    .locals 1
    .param p0    # Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/KType;",
            ">;Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "clazz"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "types"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    sget-object p2, Lst/s;->c:Lvt/z1;

    .line 14
    .line 15
    invoke-interface {p2, p0, p1}, Lvt/z1;->a(Lkotlin/reflect/KClass;Ljava/util/List;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-object p2, Lst/s;->d:Lvt/z1;

    .line 21
    .line 22
    invoke-interface {p2, p0, p1}, Lvt/z1;->a(Lkotlin/reflect/KClass;Ljava/util/List;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    :goto_0
    return-object p0
.end method
