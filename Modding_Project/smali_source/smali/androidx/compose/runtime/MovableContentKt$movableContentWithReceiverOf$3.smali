.class final Landroidx/compose/runtime/MovableContentKt$movableContentWithReceiverOf$3;
.super Ljava/lang/Object;
.source "MovableContent.kt"

# interfaces
.implements Lat/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/MovableContentKt;->movableContentWithReceiverOf(Lat/p;)Lat/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lat/p<",
        "TR;TP1;TP2;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $movableContent:Landroidx/compose/runtime/MovableContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MovableContent<",
            "Lkotlin/Triple<",
            "TR;TP1;TP2;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/runtime/MovableContent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MovableContent<",
            "Lkotlin/Triple<",
            "TR;TP1;TP2;>;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/runtime/MovableContentKt$movableContentWithReceiverOf$3;->$movableContent:Landroidx/compose/runtime/MovableContent;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    move-object v4, p4

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p5, Ljava/lang/Number;

    invoke-virtual {p5}, Ljava/lang/Number;->intValue()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/runtime/MovableContentKt$movableContentWithReceiverOf$3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)V
    .locals 3
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TP1;TP2;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    and-int/lit8 v0, p5, 0x6

    if-nez v0, :cond_2

    and-int/lit8 v0, p5, 0x8

    if-nez v0, :cond_0

    invoke-interface {p4, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-interface {p4, p1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    :goto_1
    or-int/2addr v0, p5

    goto :goto_2

    :cond_2
    move v0, p5

    :goto_2
    and-int/lit8 v1, p5, 0x30

    if-nez v1, :cond_5

    and-int/lit8 v1, p5, 0x40

    if-nez v1, :cond_3

    invoke-interface {p4, p2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3

    :cond_3
    invoke-interface {p4, p2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    :goto_3
    if-eqz v1, :cond_4

    const/16 v1, 0x20

    goto :goto_4

    :cond_4
    const/16 v1, 0x10

    :goto_4
    or-int/2addr v0, v1

    :cond_5
    and-int/lit16 v1, p5, 0x180

    if-nez v1, :cond_8

    and-int/lit16 p5, p5, 0x200

    if-nez p5, :cond_6

    invoke-interface {p4, p3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p5

    goto :goto_5

    :cond_6
    invoke-interface {p4, p3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result p5

    :goto_5
    if-eqz p5, :cond_7

    const/16 p5, 0x100

    goto :goto_6

    :cond_7
    const/16 p5, 0x80

    :goto_6
    or-int/2addr v0, p5

    :cond_8
    and-int/lit16 p5, v0, 0x493

    const/16 v1, 0x492

    if-eq p5, v1, :cond_9

    const/4 p5, 0x1

    goto :goto_7

    :cond_9
    const/4 p5, 0x0

    :goto_7
    and-int/lit8 v1, v0, 0x1

    invoke-interface {p4, p5, v1}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result p5

    if-eqz p5, :cond_b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p5

    if-eqz p5, :cond_a

    const/4 p5, -0x1

    const-string v1, "androidx.compose.runtime.movableContentWithReceiverOf.<anonymous> (MovableContent.kt:222)"

    const v2, 0x7e740f2b

    invoke-static {v2, v0, p5, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 2
    :cond_a
    iget-object p5, p0, Landroidx/compose/runtime/MovableContentKt$movableContentWithReceiverOf$3;->$movableContent:Landroidx/compose/runtime/MovableContent;

    new-instance v0, Lkotlin/Triple;

    invoke-direct {v0, p1, p2, p3}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p4, p5, v0}, Landroidx/compose/runtime/Composer;->insertMovableContent(Landroidx/compose/runtime/MovableContent;Ljava/lang/Object;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_8

    :cond_b
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    :cond_c
    :goto_8
    return-void
.end method
