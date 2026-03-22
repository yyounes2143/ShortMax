.class public final Landroidx/compose/ui/text/font/FontWeightKt;
.super Ljava/lang/Object;
.source "FontWeight.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final lerp(Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontWeight;F)Landroidx/compose/ui/text/font/FontWeight;
    .locals 1
    .param p0    # Landroidx/compose/ui/text/font/FontWeight;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/text/font/FontWeight;
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
    invoke-virtual {p0}, Landroidx/compose/ui/text/font/FontWeight;->getWeight()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    invoke-virtual {p1}, Landroidx/compose/ui/text/font/FontWeight;->getWeight()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(IIF)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    const/4 p1, 0x1

    .line 24
    const/16 p2, 0x3e8

    .line 25
    .line 26
    invoke-static {p0, p1, p2}, Lkotlin/ranges/e;->n(III)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    new-instance p1, Landroidx/compose/ui/text/font/FontWeight;

    .line 31
    .line 32
    invoke-direct {p1, p0}, Landroidx/compose/ui/text/font/FontWeight;-><init>(I)V

    .line 33
    .line 34
    .line 35
    return-object p1
.end method
