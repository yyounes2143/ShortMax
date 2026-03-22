.class final Landroidx/compose/foundation/lazy/AwaitFirstLayoutModifier$waitForFirstLayout$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "LazyListState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/AwaitFirstLayoutModifier;->waitForFirstLayout(Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "androidx.compose.foundation.lazy.AwaitFirstLayoutModifier"
    f = "LazyListState.kt"
    l = {
        0x1a1
    }
    m = "waitForFirstLayout"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Landroidx/compose/foundation/lazy/AwaitFirstLayoutModifier;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/lazy/AwaitFirstLayoutModifier;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/AwaitFirstLayoutModifier;",
            "Lrs/c<",
            "-",
            "Landroidx/compose/foundation/lazy/AwaitFirstLayoutModifier$waitForFirstLayout$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/lazy/AwaitFirstLayoutModifier$waitForFirstLayout$1;->this$0:Landroidx/compose/foundation/lazy/AwaitFirstLayoutModifier;

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
    iput-object p1, p0, Landroidx/compose/foundation/lazy/AwaitFirstLayoutModifier$waitForFirstLayout$1;->result:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Landroidx/compose/foundation/lazy/AwaitFirstLayoutModifier$waitForFirstLayout$1;->label:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Landroidx/compose/foundation/lazy/AwaitFirstLayoutModifier$waitForFirstLayout$1;->label:I

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/compose/foundation/lazy/AwaitFirstLayoutModifier$waitForFirstLayout$1;->this$0:Landroidx/compose/foundation/lazy/AwaitFirstLayoutModifier;

    .line 11
    .line 12
    invoke-virtual {p1, p0}, Landroidx/compose/foundation/lazy/AwaitFirstLayoutModifier;->waitForFirstLayout(Lrs/c;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method
