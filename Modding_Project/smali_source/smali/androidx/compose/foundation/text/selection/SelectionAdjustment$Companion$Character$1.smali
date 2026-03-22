.class public final Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$Character$1;
.super Ljava/lang/Object;
.source "SelectionAdjustment.kt"

# interfaces
.implements Landroidx/compose/foundation/text/selection/SelectionAdjustment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public adjust-ZXO7KMw(Landroidx/compose/ui/text/TextLayoutResult;JIZLandroidx/compose/ui/text/TextRange;)J
    .locals 2
    .param p1    # Landroidx/compose/ui/text/TextLayoutResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/ui/text/TextRange;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p4, "textLayoutResult"

    .line 2
    .line 3
    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    .line 7
    .line 8
    .line 9
    move-result p4

    .line 10
    if-eqz p4, :cond_1

    .line 11
    .line 12
    if-eqz p6, :cond_0

    .line 13
    .line 14
    invoke-virtual {p6}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getReversed-impl(J)Z

    .line 19
    .line 20
    .line 21
    move-result p4

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p4, 0x0

    .line 24
    :goto_0
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    invoke-virtual {p1}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Landroidx/compose/ui/text/TextLayoutInput;->getText()Landroidx/compose/ui/text/AnnotatedString;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1}, Lkotlin/text/StringsKt;->k0(Ljava/lang/CharSequence;)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    invoke-static {p2, p1, p5, p4}, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;->ensureAtLeastOneChar(IIZZ)J

    .line 41
    .line 42
    .line 43
    move-result-wide p2

    .line 44
    :cond_1
    return-wide p2
.end method
