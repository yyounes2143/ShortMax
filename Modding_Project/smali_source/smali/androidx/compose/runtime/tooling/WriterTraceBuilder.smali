.class public final Landroidx/compose/runtime/tooling/WriterTraceBuilder;
.super Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;
.source "ComposeStackTraceBuilder.kt"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final writer:Landroidx/compose/runtime/SlotWriter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/SlotWriter;)V
    .locals 0
    .param p1    # Landroidx/compose/runtime/SlotWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/tooling/WriterTraceBuilder;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public groupKeyOf(Landroidx/compose/runtime/Anchor;)I
    .locals 1
    .param p1    # Landroidx/compose/runtime/Anchor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/tooling/WriterTraceBuilder;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotWriter;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotWriter;->groupKey(I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public sourceInformationOf(Landroidx/compose/runtime/Anchor;)Landroidx/compose/runtime/GroupSourceInformation;
    .locals 1
    .param p1    # Landroidx/compose/runtime/Anchor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/tooling/WriterTraceBuilder;->writer:Landroidx/compose/runtime/SlotWriter;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotWriter;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotWriter;->sourceInformationOf$runtime(I)Landroidx/compose/runtime/GroupSourceInformation;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
