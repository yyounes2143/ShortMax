.class public final Lio/bidmachine/internal/KotlinEngine;
.super Ljava/lang/Object;
.source "KotlinEngine.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lio/bidmachine/internal/KotlinEngine;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lgt/g0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/bidmachine/internal/KotlinEngine;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/bidmachine/internal/KotlinEngine;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/bidmachine/internal/KotlinEngine;->a:Lio/bidmachine/internal/KotlinEngine;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-static {v0, v1, v0}, Lgt/r1;->b(Lkotlinx/coroutines/r;ILjava/lang/Object;)Lgt/s;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {}, Lgt/q0;->a()Lgt/c0;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lio/bidmachine/internal/KotlinEngine;->b:Lgt/g0;

    .line 27
    .line 28
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final a()V
    .locals 8

    .line 1
    const-string v0, "BidMachine"

    .line 2
    .line 3
    const-string v1, "Init Kt"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v2, Lio/bidmachine/internal/KotlinEngine;->b:Lgt/g0;

    .line 9
    .line 10
    new-instance v5, Lio/bidmachine/internal/KotlinEngine$init$1;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {v5, v0}, Lio/bidmachine/internal/KotlinEngine$init$1;-><init>(Lrs/c;)V

    .line 14
    .line 15
    .line 16
    const/4 v6, 0x3

    .line 17
    const/4 v7, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-static/range {v2 .. v7}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 21
    .line 22
    .line 23
    return-void
.end method
