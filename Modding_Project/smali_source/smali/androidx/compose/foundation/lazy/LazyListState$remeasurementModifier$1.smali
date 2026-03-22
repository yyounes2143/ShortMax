.class public final Landroidx/compose/foundation/lazy/LazyListState$remeasurementModifier$1;
.super Ljava/lang/Object;
.source "LazyListState.kt"

# interfaces
.implements Landroidx/compose/ui/layout/RemeasurementModifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/LazyListState;-><init>(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/foundation/lazy/LazyListState;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState$remeasurementModifier$1;->this$0:Landroidx/compose/foundation/lazy/LazyListState;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onRemeasurementAvailable(Landroidx/compose/ui/layout/Remeasurement;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/layout/Remeasurement;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "remeasurement"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState$remeasurementModifier$1;->this$0:Landroidx/compose/foundation/lazy/LazyListState;

    .line 7
    .line 8
    invoke-static {v0, p1}, Landroidx/compose/foundation/lazy/LazyListState;->access$setRemeasurement(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/ui/layout/Remeasurement;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
