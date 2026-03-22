.class public final Landroidx/compose/runtime/changelist/OperationKt$withCurrentStackTrace$1;
.super Ljava/lang/Object;
.source "Operation.kt"

# interfaces
.implements Landroidx/compose/runtime/changelist/OperationErrorContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/changelist/OperationKt;->withCurrentStackTrace(Landroidx/compose/runtime/changelist/OperationErrorContext;Landroidx/compose/runtime/SlotWriter;)Landroidx/compose/runtime/changelist/OperationErrorContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $parent:Landroidx/compose/runtime/changelist/OperationErrorContext;

.field final synthetic $slots:Landroidx/compose/runtime/SlotWriter;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/changelist/OperationErrorContext;Landroidx/compose/runtime/SlotWriter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/runtime/changelist/OperationKt$withCurrentStackTrace$1;->$parent:Landroidx/compose/runtime/changelist/OperationErrorContext;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/runtime/changelist/OperationKt$withCurrentStackTrace$1;->$slots:Landroidx/compose/runtime/SlotWriter;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public buildStackTrace(Ljava/lang/Integer;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/changelist/OperationKt$withCurrentStackTrace$1;->$parent:Landroidx/compose/runtime/changelist/OperationErrorContext;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Landroidx/compose/runtime/changelist/OperationErrorContext;->buildStackTrace(Ljava/lang/Integer;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Landroidx/compose/runtime/changelist/OperationKt$withCurrentStackTrace$1;->$slots:Landroidx/compose/runtime/SlotWriter;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotWriter;->getParent()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-gez v1, :cond_0

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    iget-object v2, p0, Landroidx/compose/runtime/changelist/OperationKt$withCurrentStackTrace$1;->$slots:Landroidx/compose/runtime/SlotWriter;

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/SlotWriter;->parent(I)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-static {v2, p1, v1, v3}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilderKt;->buildTrace(Landroidx/compose/runtime/SlotWriter;Ljava/lang/Object;ILjava/lang/Integer;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Ljava/util/Collection;

    .line 32
    .line 33
    check-cast v0, Ljava/lang/Iterable;

    .line 34
    .line 35
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->K0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1
.end method
