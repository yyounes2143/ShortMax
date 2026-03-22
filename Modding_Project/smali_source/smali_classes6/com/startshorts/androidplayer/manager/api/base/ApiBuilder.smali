.class public final Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;
.super Ljava/lang/Object;
.source "ApiBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nApiBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApiBuilder.kt\ncom/startshorts/androidplayer/manager/api/base/ApiBuilder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,137:1\n1#2:138\n*E\n"
    }
.end annotation


# static fields
.field public static final f:Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lfi/a<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final b:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private c:Z

.field private d:Z

.field private e:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->f:Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/startshorts/androidplayer/manager/api/base/a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/manager/api/base/a;-><init>(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->b:Lms/i;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->c:Z

    .line 17
    .line 18
    new-instance v0, Lcom/startshorts/androidplayer/manager/api/base/b;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/api/base/b;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->e:Lkotlin/jvm/functions/Function0;

    .line 24
    .line 25
    return-void
.end method

.method private final A(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "onResultFailed exception -> className="

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v3, v2

    .line 26
    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v3, ",message="

    .line 30
    .line 31
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v2, "ApiBuilder"

    .line 48
    .line 49
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 53
    .line 54
    sget-object v0, Lcom/startshorts/androidplayer/manager/api/base/r;->a:Lcom/startshorts/androidplayer/manager/api/base/r;

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/manager/api/base/r;->a(Ljava/lang/Throwable;)Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    return-object p1
.end method

.method private final B()V
    .locals 2

    .line 1
    sget-object v0, Lfk/h0;->a:Lfk/h0;

    .line 2
    .line 3
    new-instance v1, Lcom/startshorts/androidplayer/manager/api/base/f;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/manager/api/base/f;-><init>(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lfk/h0;->e(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static final C(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->r()Lfi/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lfi/a;->show()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private final D(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    sget-object v0, Laa/a;->a:Laa/a;

    .line 12
    .line 13
    invoke-virtual {v0}, Laa/a;->d()Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/hades/aar/activity/IDActivity;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v0, v1

    .line 28
    :goto_0
    instance-of v2, v0, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    move-object v1, v0

    .line 33
    check-cast v1, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 34
    .line 35
    :cond_1
    if-eqz v1, :cond_2

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->y(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    return-void
.end method

.method public static synthetic a(Landroid/content/Context;ZLcom/startshorts/androidplayer/manager/api/base/ApiBuilder;)Lhi/b;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->w(Landroid/content/Context;ZLcom/startshorts/androidplayer/manager/api/base/ApiBuilder;)Lhi/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->t(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->q()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic d(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->C(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->m()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic f(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;)Lfi/a;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->x(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;)Lfi/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic g(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->p(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic h(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->e:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic i(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->d:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic j(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->A(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic k(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->e:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic l(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->D(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final m()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object v0
.end method

.method private final p(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/bean/api/ServerResult<",
            "TT;>;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/api/ServerResult<",
            "TT;>;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$executeInner$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$executeInner$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$executeInner$1;->k:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$executeInner$1;->k:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$executeInner$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$executeInner$1;-><init>(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$executeInner$1;->i:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$executeInner$1;->k:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object p1, v0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$executeInner$1;->h:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 41
    .line 42
    :try_start_0
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :catch_0
    move-exception p2

    .line 47
    goto :goto_2

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->B()V

    .line 60
    .line 61
    .line 62
    :try_start_1
    iput-object p0, v0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$executeInner$1;->h:Ljava/lang/Object;

    .line 63
    .line 64
    iput v3, v0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$executeInner$1;->k:I

    .line 65
    .line 66
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    if-ne p2, v1, :cond_3

    .line 71
    .line 72
    return-object v1

    .line 73
    :cond_3
    move-object p1, p0

    .line 74
    :goto_1
    :try_start_2
    check-cast p2, Lcom/startshorts/androidplayer/bean/api/ServerResult;

    .line 75
    .line 76
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/api/ServerResult;->getStatus()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_4

    .line 81
    .line 82
    invoke-static {p2}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    goto :goto_3

    .line 87
    :cond_4
    new-instance v0, Lcom/startshorts/androidplayer/bean/exception/ServerException;

    .line 88
    .line 89
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/api/ServerResult;->getStatus()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/api/ServerResult;->getMessage()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    const/4 v2, 0x0

    .line 98
    invoke-direct {v0, v1, p2, v2}, Lcom/startshorts/androidplayer/bean/exception/ServerException;-><init>(ILjava/lang/String;Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;)V

    .line 99
    .line 100
    .line 101
    invoke-direct {p1, v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->A(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 105
    goto :goto_3

    .line 106
    :catch_1
    move-exception p2

    .line 107
    move-object p1, p0

    .line 108
    :goto_2
    invoke-direct {p1, p2}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->A(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    :goto_3
    new-instance v0, Lcom/startshorts/androidplayer/manager/api/base/c;

    .line 113
    .line 114
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/api/base/c;-><init>()V

    .line 115
    .line 116
    .line 117
    iput-object v0, p1, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->e:Lkotlin/jvm/functions/Function0;

    .line 118
    .line 119
    invoke-direct {p1}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->s()V

    .line 120
    .line 121
    .line 122
    return-object p2
.end method

.method private static final q()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object v0
.end method

.method private final r()Lfi/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lfi/a<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->b:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lfi/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final s()V
    .locals 2

    .line 1
    sget-object v0, Lfk/h0;->a:Lfk/h0;

    .line 2
    .line 3
    new-instance v1, Lcom/startshorts/androidplayer/manager/api/base/e;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/manager/api/base/e;-><init>(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lfk/h0;->e(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static final t(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->r()Lfi/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lfi/a;->dismiss()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static synthetic v(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;Landroid/content/Context;ZILjava/lang/Object;)Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->u(Landroid/content/Context;Z)Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private static final w(Landroid/content/Context;ZLcom/startshorts/androidplayer/manager/api/base/ApiBuilder;)Lhi/b;
    .locals 1

    .line 1
    new-instance v0, Lhi/b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lhi/b;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lhi/b;->setCancelable(Z)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 11
    .line 12
    .line 13
    sget p1, Lcom/startshorts/androidplayer/R$string;->common_waiting:I

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {v0, p0}, Lhi/b;->y(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance p0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$b;

    .line 23
    .line 24
    invoke-direct {p0, p2}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$b;-><init>(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0}, Lhi/b;->x(Lhi/b$b;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method private static final x(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;)Lfi/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->a:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lfi/a;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return-object p0
.end method

.method public static synthetic z(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;ZILjava/lang/Object;)Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;
    .locals 0

    .line 1
    const/4 p3, 0x1

    .line 2
    and-int/2addr p2, p3

    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    move p1, p3

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->y(Z)Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method


# virtual methods
.method public final E(Z)Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->c:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final n()Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->E(Z)Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public final o(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;
    .locals 5
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/bean/api/ServerResult<",
            "TT;>;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$1;->j:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$1;-><init>(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$1;->j:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lgt/q0;->b()Lgt/c0;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    new-instance v2, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$2;

    .line 58
    .line 59
    const/4 v4, 0x0

    .line 60
    invoke-direct {v2, p0, p1, v4}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$2;-><init>(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;Lkotlin/jvm/functions/Function1;Lrs/c;)V

    .line 61
    .line 62
    .line 63
    iput v3, v0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$1;->j:I

    .line 64
    .line 65
    invoke-static {p2, v2, v0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    if-ne p2, v1, :cond_3

    .line 70
    .line 71
    return-object v1

    .line 72
    :cond_3
    :goto_1
    check-cast p2, Lkotlin/Result;

    .line 73
    .line 74
    invoke-virtual {p2}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    return-object p1
.end method

.method public final u(Landroid/content/Context;Z)Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/manager/api/base/d;

    .line 5
    .line 6
    invoke-direct {v0, p1, p2, p0}, Lcom/startshorts/androidplayer/manager/api/base/d;-><init>(Landroid/content/Context;ZLcom/startshorts/androidplayer/manager/api/base/ApiBuilder;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->a:Lkotlin/jvm/functions/Function0;

    .line 10
    .line 11
    :goto_0
    return-object p0
.end method

.method public final y(Z)Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->d:Z

    .line 2
    .line 3
    return-object p0
.end method
