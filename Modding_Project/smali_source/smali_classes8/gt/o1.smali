.class final Lgt/o1;
.super Ljava/lang/Object;
.source "Executors.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nExecutors.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Executors.kt\nkotlinx/coroutines/ResumeUndispatchedRunnable\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,212:1\n1#2:213\n*E\n"
    }
.end annotation


# instance fields
.field private final a:Lgt/c0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lgt/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgt/i<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgt/c0;Lgt/i;)V
    .locals 0
    .param p1    # Lgt/c0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lgt/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/c0;",
            "Lgt/i<",
            "-",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lgt/o1;->a:Lgt/c0;

    .line 5
    .line 6
    iput-object p2, p0, Lgt/o1;->b:Lgt/i;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lgt/o1;->b:Lgt/i;

    .line 2
    .line 3
    iget-object v1, p0, Lgt/o1;->a:Lgt/c0;

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    invoke-interface {v0, v1, v2}, Lgt/i;->f(Lgt/c0;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
