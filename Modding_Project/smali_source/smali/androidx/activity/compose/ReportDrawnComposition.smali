.class final Landroidx/activity/compose/ReportDrawnComposition;
.super Ljava/lang/Object;
.source "ReportDrawn.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final checkReporter:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fullyDrawnReporter:Landroidx/activity/FullyDrawnReporter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final predicate:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final snapshotStateObserver:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/activity/FullyDrawnReporter;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .param p1    # Landroidx/activity/FullyDrawnReporter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/FullyDrawnReporter;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/activity/compose/ReportDrawnComposition;->fullyDrawnReporter:Landroidx/activity/FullyDrawnReporter;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/activity/compose/ReportDrawnComposition;->predicate:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 9
    .line 10
    sget-object v1, Landroidx/activity/compose/ReportDrawnComposition$snapshotStateObserver$1;->INSTANCE:Landroidx/activity/compose/ReportDrawnComposition$snapshotStateObserver$1;

    .line 11
    .line 12
    invoke-direct {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->start()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Landroidx/activity/compose/ReportDrawnComposition;->snapshotStateObserver:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 19
    .line 20
    new-instance v0, Landroidx/activity/compose/ReportDrawnComposition$checkReporter$1;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Landroidx/activity/compose/ReportDrawnComposition$checkReporter$1;-><init>(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Landroidx/activity/compose/ReportDrawnComposition;->checkReporter:Lkotlin/jvm/functions/Function1;

    .line 26
    .line 27
    invoke-virtual {p1, p0}, Landroidx/activity/FullyDrawnReporter;->addOnReportDrawnListener(Lkotlin/jvm/functions/Function0;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/activity/FullyDrawnReporter;->isFullyDrawnReported()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/activity/FullyDrawnReporter;->addReporter()V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, p2}, Landroidx/activity/compose/ReportDrawnComposition;->observeReporter(Lkotlin/jvm/functions/Function0;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public static final synthetic access$observeReporter(Landroidx/activity/compose/ReportDrawnComposition;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/activity/compose/ReportDrawnComposition;->observeReporter(Lkotlin/jvm/functions/Function0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final observeReporter(Lkotlin/jvm/functions/Function0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/activity/compose/ReportDrawnComposition;->snapshotStateObserver:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 7
    .line 8
    iget-object v2, p0, Landroidx/activity/compose/ReportDrawnComposition;->checkReporter:Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    new-instance v3, Landroidx/activity/compose/ReportDrawnComposition$observeReporter$1;

    .line 11
    .line 12
    invoke-direct {v3, v0, p1}, Landroidx/activity/compose/ReportDrawnComposition$observeReporter$1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function0;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1, v2, v3}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observeReads(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 16
    .line 17
    .line 18
    iget-boolean p1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/activity/compose/ReportDrawnComposition;->removeReporter()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/activity/compose/ReportDrawnComposition;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public invoke()V
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/activity/compose/ReportDrawnComposition;->snapshotStateObserver:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->clear()V

    .line 3
    iget-object v0, p0, Landroidx/activity/compose/ReportDrawnComposition;->snapshotStateObserver:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->stop()V

    return-void
.end method

.method public final removeReporter()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/activity/compose/ReportDrawnComposition;->snapshotStateObserver:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/activity/compose/ReportDrawnComposition;->predicate:Lkotlin/jvm/functions/Function0;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->clear(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/activity/compose/ReportDrawnComposition;->fullyDrawnReporter:Landroidx/activity/FullyDrawnReporter;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/activity/FullyDrawnReporter;->isFullyDrawnReported()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/activity/compose/ReportDrawnComposition;->fullyDrawnReporter:Landroidx/activity/FullyDrawnReporter;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/activity/FullyDrawnReporter;->removeReporter()V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Landroidx/activity/compose/ReportDrawnComposition;->invoke()V

    .line 22
    .line 23
    .line 24
    return-void
.end method
