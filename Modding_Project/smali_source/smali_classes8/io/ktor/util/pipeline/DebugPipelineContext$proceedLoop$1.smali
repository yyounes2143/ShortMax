.class final Lio/ktor/util/pipeline/DebugPipelineContext$proceedLoop$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "DebugPipelineContext.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/util/pipeline/DebugPipelineContext;->h(Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "io.ktor.util.pipeline.DebugPipelineContext"
    f = "DebugPipelineContext.kt"
    l = {
        0x50
    }
    m = "proceedLoop"
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field synthetic i:Ljava/lang/Object;

.field final synthetic j:Lio/ktor/util/pipeline/DebugPipelineContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/pipeline/DebugPipelineContext<",
            "TTSubject;TTContext;>;"
        }
    .end annotation
.end field

.field k:I


# direct methods
.method constructor <init>(Lio/ktor/util/pipeline/DebugPipelineContext;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/util/pipeline/DebugPipelineContext<",
            "TTSubject;TTContext;>;",
            "Lrs/c<",
            "-",
            "Lio/ktor/util/pipeline/DebugPipelineContext$proceedLoop$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/ktor/util/pipeline/DebugPipelineContext$proceedLoop$1;->j:Lio/ktor/util/pipeline/DebugPipelineContext;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lrs/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/ktor/util/pipeline/DebugPipelineContext$proceedLoop$1;->i:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lio/ktor/util/pipeline/DebugPipelineContext$proceedLoop$1;->k:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lio/ktor/util/pipeline/DebugPipelineContext$proceedLoop$1;->k:I

    .line 9
    .line 10
    iget-object p1, p0, Lio/ktor/util/pipeline/DebugPipelineContext$proceedLoop$1;->j:Lio/ktor/util/pipeline/DebugPipelineContext;

    .line 11
    .line 12
    invoke-static {p1, p0}, Lio/ktor/util/pipeline/DebugPipelineContext;->e(Lio/ktor/util/pipeline/DebugPipelineContext;Lrs/c;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method
