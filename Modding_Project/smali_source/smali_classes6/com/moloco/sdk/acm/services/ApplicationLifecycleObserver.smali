.class public final Lcom/moloco/sdk/acm/services/ApplicationLifecycleObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field public final a:Lcom/moloco/sdk/acm/eventprocessing/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lgt/g0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/acm/eventprocessing/b;Lgt/g0;)V
    .locals 1
    .param p1    # Lcom/moloco/sdk/acm/eventprocessing/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "dbWorkRequest"

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
    iput-object p1, p0, Lcom/moloco/sdk/acm/services/ApplicationLifecycleObserver;->a:Lcom/moloco/sdk/acm/eventprocessing/b;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/moloco/sdk/acm/services/ApplicationLifecycleObserver;->b:Lgt/g0;

    .line 17
    .line 18
    return-void
.end method

.method public static final synthetic a(Lcom/moloco/sdk/acm/services/ApplicationLifecycleObserver;)Lcom/moloco/sdk/acm/eventprocessing/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/acm/services/ApplicationLifecycleObserver;->a:Lcom/moloco/sdk/acm/eventprocessing/b;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 13
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onStop(Landroidx/lifecycle/LifecycleOwner;)V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lcom/moloco/sdk/acm/services/e;->a:Lcom/moloco/sdk/acm/services/e;

    .line 10
    .line 11
    const/4 v5, 0x4

    .line 12
    const/4 v6, 0x0

    .line 13
    const-string v2, "ApplicationLifecycleObserver"

    .line 14
    .line 15
    const-string v3, "Application onStop"

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-static/range {v1 .. v6}, Lcom/moloco/sdk/acm/services/e;->f(Lcom/moloco/sdk/acm/services/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object v7, p0, Lcom/moloco/sdk/acm/services/ApplicationLifecycleObserver;->b:Lgt/g0;

    .line 22
    .line 23
    new-instance v10, Lcom/moloco/sdk/acm/services/ApplicationLifecycleObserver$a;

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    invoke-direct {v10, p0, p1}, Lcom/moloco/sdk/acm/services/ApplicationLifecycleObserver$a;-><init>(Lcom/moloco/sdk/acm/services/ApplicationLifecycleObserver;Lrs/c;)V

    .line 27
    .line 28
    .line 29
    const/4 v11, 0x3

    .line 30
    const/4 v12, 0x0

    .line 31
    const/4 v8, 0x0

    .line 32
    const/4 v9, 0x0

    .line 33
    invoke-static/range {v7 .. v12}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 34
    .line 35
    .line 36
    return-void
.end method
