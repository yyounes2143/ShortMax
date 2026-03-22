.class public final Landroidx/compose/ui/text/android/LayoutCompatKt;
.super Ljava/lang/Object;
.source "LayoutCompat.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final getLineForOffset(Landroid/text/Layout;IZ)I
    .locals 2
    .param p0    # Landroid/text/Layout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/ui/text/android/InternalPlatformTextApi;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-gtz p1, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    return p0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-lt p1, v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    add-int/lit8 p0, p0, -0x1

    .line 25
    .line 26
    return p0

    .line 27
    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eq v1, p1, :cond_2

    .line 40
    .line 41
    if-eq p0, p1, :cond_2

    .line 42
    .line 43
    return v0

    .line 44
    :cond_2
    if-ne v1, p1, :cond_3

    .line 45
    .line 46
    if-eqz p2, :cond_5

    .line 47
    .line 48
    add-int/lit8 v0, v0, -0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    if-eqz p2, :cond_4

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 55
    .line 56
    :cond_5
    :goto_0
    return v0
.end method
