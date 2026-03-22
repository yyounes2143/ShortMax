.class public final Lcom/facebook/imageformat/e;
.super Ljava/lang/Object;
.source "ImageFormatChecker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imageformat/e$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nImageFormatChecker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageFormatChecker.kt\ncom/facebook/imageformat/ImageFormatChecker\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,169:1\n1863#2,2:170\n*S KotlinDebug\n*F\n+ 1 ImageFormatChecker.kt\ncom/facebook/imageformat/ImageFormatChecker\n*L\n59#1:170,2\n*E\n"
    }
.end annotation


# static fields
.field public static final e:Lcom/facebook/imageformat/e$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final f:Lms/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lms/i<",
            "Lcom/facebook/imageformat/e;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/facebook/imageformat/c$b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final c:Lcom/facebook/imageformat/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/imageformat/e$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/facebook/imageformat/e$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/facebook/imageformat/e;->e:Lcom/facebook/imageformat/e$a;

    .line 8
    .line 9
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 10
    .line 11
    new-instance v1, Lcom/facebook/imageformat/d;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/facebook/imageformat/d;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lcom/facebook/imageformat/e;->f:Lms/i;

    .line 21
    .line 22
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/facebook/imageformat/a;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/facebook/imageformat/a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/facebook/imageformat/e;->c:Lcom/facebook/imageformat/a;

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/facebook/imageformat/e;->h()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static synthetic a()Lcom/facebook/imageformat/e;
    .locals 1

    .line 1
    invoke-static {}, Lcom/facebook/imageformat/e;->f()Lcom/facebook/imageformat/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic b()Lms/i;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/imageformat/e;->f:Lms/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final d(Ljava/io/InputStream;)Lcom/facebook/imageformat/c;
    .locals 1
    .param p0    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/imageformat/e;->e:Lcom/facebook/imageformat/e$a;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/facebook/imageformat/e$a;->c(Ljava/io/InputStream;)Lcom/facebook/imageformat/c;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static final e()Lcom/facebook/imageformat/e;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/imageformat/e;->e:Lcom/facebook/imageformat/e$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/facebook/imageformat/e$a;->d()Lcom/facebook/imageformat/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private static final f()Lcom/facebook/imageformat/e;
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/imageformat/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/facebook/imageformat/e;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/imageformat/e;->c:Lcom/facebook/imageformat/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/facebook/imageformat/a;->b()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput v0, p0, Lcom/facebook/imageformat/e;->a:I

    .line 8
    .line 9
    iget-object v0, p0, Lcom/facebook/imageformat/e;->b:Ljava/util/List;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/facebook/imageformat/c$b;

    .line 31
    .line 32
    iget v2, p0, Lcom/facebook/imageformat/e;->a:I

    .line 33
    .line 34
    invoke-interface {v1}, Lcom/facebook/imageformat/c$b;->b()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    iput v1, p0, Lcom/facebook/imageformat/e;->a:I

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method


# virtual methods
.method public final c(Ljava/io/InputStream;)Lcom/facebook/imageformat/c;
    .locals 4
    .param p1    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "is"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/facebook/imageformat/e;->a:I

    .line 7
    .line 8
    new-array v1, v0, [B

    .line 9
    .line 10
    sget-object v2, Lcom/facebook/imageformat/e;->e:Lcom/facebook/imageformat/e$a;

    .line 11
    .line 12
    invoke-static {v2, v0, p1, v1}, Lcom/facebook/imageformat/e$a;->a(Lcom/facebook/imageformat/e$a;ILjava/io/InputStream;[B)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iget-object v0, p0, Lcom/facebook/imageformat/e;->c:Lcom/facebook/imageformat/a;

    .line 17
    .line 18
    invoke-virtual {v0, v1, p1}, Lcom/facebook/imageformat/a;->a([BI)Lcom/facebook/imageformat/c;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-object v2, Lcom/facebook/imageformat/b;->n:Lcom/facebook/imageformat/c;

    .line 23
    .line 24
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    iget-boolean v2, p0, Lcom/facebook/imageformat/e;->d:Z

    .line 31
    .line 32
    if-nez v2, :cond_0

    .line 33
    .line 34
    sget-object v0, Lcom/facebook/imageformat/c;->d:Lcom/facebook/imageformat/c;

    .line 35
    .line 36
    :cond_0
    sget-object v2, Lcom/facebook/imageformat/c;->d:Lcom/facebook/imageformat/c;

    .line 37
    .line 38
    if-eq v0, v2, :cond_1

    .line 39
    .line 40
    return-object v0

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/facebook/imageformat/e;->b:Ljava/util/List;

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    check-cast v0, Ljava/lang/Iterable;

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_3

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Lcom/facebook/imageformat/c$b;

    .line 62
    .line 63
    invoke-interface {v2, v1, p1}, Lcom/facebook/imageformat/c$b;->a([BI)Lcom/facebook/imageformat/c;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    sget-object v3, Lcom/facebook/imageformat/c;->d:Lcom/facebook/imageformat/c;

    .line 68
    .line 69
    if-eq v2, v3, :cond_2

    .line 70
    .line 71
    return-object v2

    .line 72
    :cond_3
    sget-object p1, Lcom/facebook/imageformat/c;->d:Lcom/facebook/imageformat/c;

    .line 73
    .line 74
    return-object p1
.end method

.method public final g(Z)Lcom/facebook/imageformat/e;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imageformat/e;->d:Z

    .line 2
    .line 3
    return-object p0
.end method
