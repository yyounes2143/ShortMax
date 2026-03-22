.class public final Landroidx/compose/ui/text/style/TextDrawStyleKt;
.super Ljava/lang/Object;
.source "TextDrawStyle.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final lerp(Landroidx/compose/ui/text/style/TextDrawStyle;Landroidx/compose/ui/text/style/TextDrawStyle;F)Landroidx/compose/ui/text/style/TextDrawStyle;
    .locals 3
    .param p0    # Landroidx/compose/ui/text/style/TextDrawStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/text/style/TextDrawStyle;
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
    instance-of v0, p0, Landroidx/compose/ui/text/style/BrushStyle;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    instance-of v0, p1, Landroidx/compose/ui/text/style/BrushStyle;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    sget-object v0, Landroidx/compose/ui/text/style/TextDrawStyle;->Companion:Landroidx/compose/ui/text/style/TextDrawStyle$Companion;

    .line 20
    .line 21
    invoke-interface {p0}, Landroidx/compose/ui/text/style/TextDrawStyle;->getColor-0d7_KjU()J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    invoke-interface {p1}, Landroidx/compose/ui/text/style/TextDrawStyle;->getColor-0d7_KjU()J

    .line 26
    .line 27
    .line 28
    move-result-wide p0

    .line 29
    invoke-static {v1, v2, p0, p1, p2}, Landroidx/compose/ui/graphics/ColorKt;->lerp-jxsXWHM(JJF)J

    .line 30
    .line 31
    .line 32
    move-result-wide p0

    .line 33
    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/text/style/TextDrawStyle$Companion;->from-8_81llA(J)Landroidx/compose/ui/text/style/TextDrawStyle;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(Ljava/lang/Object;Ljava/lang/Object;F)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    check-cast p0, Landroidx/compose/ui/text/style/TextDrawStyle;

    .line 43
    .line 44
    :goto_0
    return-object p0
.end method
