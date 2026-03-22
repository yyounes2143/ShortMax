.class public final Lcom/moloco/sdk/internal/ilrd/provider/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/internal/ilrd/h;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/internal/ilrd/provider/f$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nIronsourceIlrd.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IronsourceIlrd.kt\ncom/moloco/sdk/internal/ilrd/provider/IronsourceIlrd\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,129:1\n1#2:130\n*E\n"
    }
.end annotation


# static fields
.field public static final h:Lcom/moloco/sdk/internal/ilrd/provider/f$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final i:I


# instance fields
.field public final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lgt/g0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lcom/moloco/sdk/internal/ilrd/model/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lkt/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkt/e<",
            "Lcom/moloco/sdk/internal/ilrd/k;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lkt/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkt/d<",
            "Lcom/moloco/sdk/internal/ilrd/h$a$a;",
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
    new-instance v0, Lcom/moloco/sdk/internal/ilrd/provider/f$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/moloco/sdk/internal/ilrd/provider/f$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/moloco/sdk/internal/ilrd/provider/f;->h:Lcom/moloco/sdk/internal/ilrd/provider/f$a;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Lcom/moloco/sdk/internal/ilrd/provider/f;->i:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lgt/g0;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "scope"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/moloco/sdk/internal/ilrd/provider/f;->a:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/moloco/sdk/internal/ilrd/provider/f;->b:Lgt/g0;

    .line 17
    .line 18
    sget-object p1, Lcom/moloco/sdk/internal/ilrd/model/a;->b:Lcom/moloco/sdk/internal/ilrd/model/a;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/moloco/sdk/internal/ilrd/provider/f;->c:Lcom/moloco/sdk/internal/ilrd/model/a;

    .line 21
    .line 22
    new-instance p1, Lcom/moloco/sdk/internal/ilrd/provider/d;

    .line 23
    .line 24
    invoke-direct {p1, p0}, Lcom/moloco/sdk/internal/ilrd/provider/d;-><init>(Lcom/moloco/sdk/internal/ilrd/provider/f;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/moloco/sdk/internal/ilrd/provider/f;->d:Lms/i;

    .line 32
    .line 33
    new-instance p1, Lcom/moloco/sdk/internal/ilrd/provider/e;

    .line 34
    .line 35
    invoke-direct {p1, p0}, Lcom/moloco/sdk/internal/ilrd/provider/e;-><init>(Lcom/moloco/sdk/internal/ilrd/provider/f;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/moloco/sdk/internal/ilrd/provider/f;->e:Lms/i;

    .line 43
    .line 44
    sget-object p1, Lcom/moloco/sdk/internal/ilrd/k$c;->a:Lcom/moloco/sdk/internal/ilrd/k$c;

    .line 45
    .line 46
    invoke-static {p1}, Lkotlinx/coroutines/flow/o;->a(Ljava/lang/Object;)Lkt/e;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Lcom/moloco/sdk/internal/ilrd/provider/f;->f:Lkt/e;

    .line 51
    .line 52
    const/4 p1, 0x0

    .line 53
    const/4 p2, 0x7

    .line 54
    const/4 v0, 0x0

    .line 55
    invoke-static {v0, v0, p1, p2, p1}, Lkt/g;->b(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkt/d;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iput-object p1, p0, Lcom/moloco/sdk/internal/ilrd/provider/f;->g:Lkt/d;

    .line 60
    .line 61
    return-void
.end method

.method public static final d(Lcom/moloco/sdk/internal/ilrd/provider/f;)Lkt/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/internal/ilrd/provider/f;->g:Lkt/d;

    .line 2
    .line 3
    invoke-static {p0}, Lkotlinx/coroutines/flow/c;->c(Lkt/d;)Lkt/f;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static final f(Lcom/moloco/sdk/internal/ilrd/provider/f;)Lkt/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/internal/ilrd/provider/f;->f:Lkt/e;

    .line 2
    .line 3
    invoke-static {p0}, Lkotlinx/coroutines/flow/c;->d(Lkt/e;)Lkt/i;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private final g()Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 2
    .line 3
    const-string v0, "com.ironsource.mediationsdk.IronSource"

    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v0, "com.ironsource.mediationsdk.impressionData.ImpressionData"

    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/ilrd/provider/f;->e()Lcom/moloco/sdk/internal/ilrd/provider/f$b;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->addImpressionDataListener(Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;)V

    .line 18
    .line 19
    .line 20
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 29
    .line 30
    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 45
    .line 46
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    return-object v0

    .line 51
    :cond_0
    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    return-object v0
.end method


# virtual methods
.method public a()Lcom/moloco/sdk/internal/ilrd/model/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ilrd/provider/f;->c:Lcom/moloco/sdk/internal/ilrd/model/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public declared-synchronized b()Ljava/lang/Object;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/moloco/sdk/internal/ilrd/provider/f;->g()Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-static {v0}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Lcom/moloco/sdk/internal/ilrd/provider/f;->f:Lkt/e;

    .line 13
    .line 14
    new-instance v3, Lcom/moloco/sdk/internal/ilrd/k$a;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v3, v1}, Lcom/moloco/sdk/internal/ilrd/k$a;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v2, v3}, Lkt/e;->setValue(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    move-object v1, v0

    .line 36
    check-cast v1, Lkotlin/Unit;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/moloco/sdk/internal/ilrd/provider/f;->f:Lkt/e;

    .line 39
    .line 40
    sget-object v2, Lcom/moloco/sdk/internal/ilrd/k$b;->a:Lcom/moloco/sdk/internal/ilrd/k$b;

    .line 41
    .line 42
    invoke-interface {v1, v2}, Lkt/e;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    :cond_1
    monitor-exit p0

    .line 46
    return-object v0

    .line 47
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    throw v0
.end method

.method public c()Lkt/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkt/f<",
            "Lcom/moloco/sdk/internal/ilrd/h$a$a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ilrd/provider/f;->e:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lkt/f;

    .line 8
    .line 9
    return-object v0
.end method

.method public final e()Lcom/moloco/sdk/internal/ilrd/provider/f$b;
    .locals 1

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/ilrd/provider/f$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/moloco/sdk/internal/ilrd/provider/f$b;-><init>(Lcom/moloco/sdk/internal/ilrd/provider/f;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getState()Lkt/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkt/i<",
            "Lcom/moloco/sdk/internal/ilrd/k;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ilrd/provider/f;->d:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lkt/i;

    .line 8
    .line 9
    return-object v0
.end method
