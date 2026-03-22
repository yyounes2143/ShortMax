.class final Lio/bidmachine/analytics/internal/I$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/analytics/internal/G$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/I;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Lio/bidmachine/analytics/internal/J;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/J;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/analytics/internal/I$a;->a:Lio/bidmachine/analytics/internal/J;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Lio/bidmachine/analytics/internal/G;
    .locals 4

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/K;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/bidmachine/analytics/internal/K;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Lgt/d1;->c(Ljava/util/concurrent/ExecutorService;)Lgt/b1;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Lio/bidmachine/analytics/internal/G;

    .line 19
    .line 20
    iget-object v3, p0, Lio/bidmachine/analytics/internal/I$a;->a:Lio/bidmachine/analytics/internal/J;

    .line 21
    .line 22
    invoke-direct {v2, v3, v0, v1}, Lio/bidmachine/analytics/internal/G;-><init>(Lio/bidmachine/analytics/internal/J;Lio/bidmachine/analytics/internal/K;Lgt/g0;)V

    .line 23
    .line 24
    .line 25
    return-object v2
.end method
