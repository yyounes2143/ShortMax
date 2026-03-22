.class public final Landroidx/compose/ui/text/style/TextIndentKt;
.super Ljava/lang/Object;
.source "TextIndent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final lerp(Landroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/style/TextIndent;F)Landroidx/compose/ui/text/style/TextIndent;
    .locals 7
    .param p0    # Landroidx/compose/ui/text/style/TextIndent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/text/style/TextIndent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "start"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "stop"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroidx/compose/ui/text/style/TextIndent;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/compose/ui/text/style/TextIndent;->getFirstLine-XSAIIZE()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    invoke-virtual {p1}, Landroidx/compose/ui/text/style/TextIndent;->getFirstLine-XSAIIZE()J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    invoke-static {v1, v2, v3, v4, p2}, Landroidx/compose/ui/text/SpanStyleKt;->lerpTextUnitInheritable-C3pnCVY(JJF)J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    invoke-virtual {p0}, Landroidx/compose/ui/text/style/TextIndent;->getRestLine-XSAIIZE()J

    .line 26
    .line 27
    .line 28
    move-result-wide v4

    .line 29
    invoke-virtual {p1}, Landroidx/compose/ui/text/style/TextIndent;->getRestLine-XSAIIZE()J

    .line 30
    .line 31
    .line 32
    move-result-wide p0

    .line 33
    invoke-static {v4, v5, p0, p1, p2}, Landroidx/compose/ui/text/SpanStyleKt;->lerpTextUnitInheritable-C3pnCVY(JJF)J

    .line 34
    .line 35
    .line 36
    move-result-wide v4

    .line 37
    const/4 v6, 0x0

    .line 38
    move-object v1, v0

    .line 39
    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/text/style/TextIndent;-><init>(JJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 40
    .line 41
    .line 42
    return-object v0
.end method
