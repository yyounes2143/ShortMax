.class public final Landroidx/compose/runtime/tooling/ReaderTraceBuilder;
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
.field private final reader:Landroidx/compose/runtime/SlotReader;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/SlotReader;)V
    .locals 0
    .param p1    # Landroidx/compose/runtime/SlotReader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/tooling/ReaderTraceBuilder;->reader:Landroidx/compose/runtime/SlotReader;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public groupKeyOf(Landroidx/compose/runtime/Anchor;)I
    .locals 2
    .param p1    # Landroidx/compose/runtime/Anchor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/tooling/ReaderTraceBuilder;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getTable$runtime()Landroidx/compose/runtime/SlotTable;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, p1}, Landroidx/compose/runtime/SlotTable;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotReader;->groupKey(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public sourceInformationOf(Landroidx/compose/runtime/Anchor;)Landroidx/compose/runtime/GroupSourceInformation;
    .locals 2
    .param p1    # Landroidx/compose/runtime/Anchor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/tooling/ReaderTraceBuilder;->reader:Landroidx/compose/runtime/SlotReader;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getTable$runtime()Landroidx/compose/runtime/SlotTable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/compose/runtime/tooling/ReaderTraceBuilder;->reader:Landroidx/compose/runtime/SlotReader;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->getTable$runtime()Landroidx/compose/runtime/SlotTable;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, p1}, Landroidx/compose/runtime/SlotTable;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotTable;->sourceInformationOf(I)Landroidx/compose/runtime/GroupSourceInformation;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method
