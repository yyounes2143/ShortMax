.class final Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;
.super Ljava/lang/Object;
.source "AndroidComposeViewAccessibilityDelegateCompat.android.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingTextTraversedEvent"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final action:I

.field private final fromIndex:I

.field private final granularity:I

.field private final node:Landroidx/compose/ui/semantics/SemanticsNode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final toIndex:I

.field private final traverseTime:J


# direct methods
.method public constructor <init>(Landroidx/compose/ui/semantics/SemanticsNode;IIIIJ)V
    .locals 1
    .param p1    # Landroidx/compose/ui/semantics/SemanticsNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "node"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->node:Landroidx/compose/ui/semantics/SemanticsNode;

    .line 10
    .line 11
    iput p2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->action:I

    .line 12
    .line 13
    iput p3, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->granularity:I

    .line 14
    .line 15
    iput p4, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->fromIndex:I

    .line 16
    .line 17
    iput p5, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->toIndex:I

    .line 18
    .line 19
    iput-wide p6, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->traverseTime:J

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final getAction()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->action:I

    .line 2
    .line 3
    return v0
.end method

.method public final getFromIndex()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->fromIndex:I

    .line 2
    .line 3
    return v0
.end method

.method public final getGranularity()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->granularity:I

    .line 2
    .line 3
    return v0
.end method

.method public final getNode()Landroidx/compose/ui/semantics/SemanticsNode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->node:Landroidx/compose/ui/semantics/SemanticsNode;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getToIndex()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->toIndex:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTraverseTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;->traverseTime:J

    .line 2
    .line 3
    return-wide v0
.end method
