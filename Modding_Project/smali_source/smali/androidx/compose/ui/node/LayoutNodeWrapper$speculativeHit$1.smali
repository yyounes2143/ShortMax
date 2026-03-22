.class final Landroidx/compose/ui/node/LayoutNodeWrapper$speculativeHit$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LayoutNodeWrapper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/node/LayoutNodeWrapper;->speculativeHit-JHbHoSQ(Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $distanceFromEdge:F

.field final synthetic $hitTestResult:Landroidx/compose/ui/node/HitTestResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/node/HitTestResult<",
            "TC;>;"
        }
    .end annotation
.end field

.field final synthetic $hitTestSource:Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource<",
            "TT;TC;TM;>;"
        }
    .end annotation
.end field

.field final synthetic $isInLayer:Z

.field final synthetic $isTouchEvent:Z

.field final synthetic $pointerPosition:J

.field final synthetic $this_speculativeHit:Landroidx/compose/ui/node/LayoutNodeEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/compose/ui/node/LayoutNodeWrapper;


# direct methods
.method constructor <init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/LayoutNodeWrapper;",
            "TT;",
            "Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource<",
            "TT;TC;TM;>;J",
            "Landroidx/compose/ui/node/HitTestResult<",
            "TC;>;ZZF)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper$speculativeHit$1;->this$0:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/ui/node/LayoutNodeWrapper$speculativeHit$1;->$this_speculativeHit:Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/ui/node/LayoutNodeWrapper$speculativeHit$1;->$hitTestSource:Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;

    .line 6
    .line 7
    iput-wide p4, p0, Landroidx/compose/ui/node/LayoutNodeWrapper$speculativeHit$1;->$pointerPosition:J

    .line 8
    .line 9
    iput-object p6, p0, Landroidx/compose/ui/node/LayoutNodeWrapper$speculativeHit$1;->$hitTestResult:Landroidx/compose/ui/node/HitTestResult;

    .line 10
    .line 11
    iput-boolean p7, p0, Landroidx/compose/ui/node/LayoutNodeWrapper$speculativeHit$1;->$isTouchEvent:Z

    .line 12
    .line 13
    iput-boolean p8, p0, Landroidx/compose/ui/node/LayoutNodeWrapper$speculativeHit$1;->$isInLayer:Z

    .line 14
    .line 15
    iput p9, p0, Landroidx/compose/ui/node/LayoutNodeWrapper$speculativeHit$1;->$distanceFromEdge:F

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper$speculativeHit$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 9

    .line 2
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper$speculativeHit$1;->this$0:Landroidx/compose/ui/node/LayoutNodeWrapper;

    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper$speculativeHit$1;->$this_speculativeHit:Landroidx/compose/ui/node/LayoutNodeEntity;

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeEntity;->getNext()Landroidx/compose/ui/node/LayoutNodeEntity;

    move-result-object v1

    .line 3
    iget-object v2, p0, Landroidx/compose/ui/node/LayoutNodeWrapper$speculativeHit$1;->$hitTestSource:Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;

    .line 4
    iget-wide v3, p0, Landroidx/compose/ui/node/LayoutNodeWrapper$speculativeHit$1;->$pointerPosition:J

    .line 5
    iget-object v5, p0, Landroidx/compose/ui/node/LayoutNodeWrapper$speculativeHit$1;->$hitTestResult:Landroidx/compose/ui/node/HitTestResult;

    .line 6
    iget-boolean v6, p0, Landroidx/compose/ui/node/LayoutNodeWrapper$speculativeHit$1;->$isTouchEvent:Z

    .line 7
    iget-boolean v7, p0, Landroidx/compose/ui/node/LayoutNodeWrapper$speculativeHit$1;->$isInLayer:Z

    .line 8
    iget v8, p0, Landroidx/compose/ui/node/LayoutNodeWrapper$speculativeHit$1;->$distanceFromEdge:F

    .line 9
    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/node/LayoutNodeWrapper;->access$speculativeHit-JHbHoSQ(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;ZZF)V

    return-void
.end method
