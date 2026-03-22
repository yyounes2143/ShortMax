.class public final Lcom/startshorts/androidplayer/utils/textspan/CustomTypefaceSpan;
.super Landroid/text/style/TypefaceSpan;
.source "CustomTypefaceSpan.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Landroid/graphics/Typeface;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private final a(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1    # Landroid/text/TextPaint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "ds"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/utils/textspan/CustomTypefaceSpan;->a:Landroid/graphics/Typeface;

    .line 7
    .line 8
    invoke-direct {p0, p1, v0}, Lcom/startshorts/androidplayer/utils/textspan/CustomTypefaceSpan;->a(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1    # Landroid/text/TextPaint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "paint"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/utils/textspan/CustomTypefaceSpan;->a:Landroid/graphics/Typeface;

    .line 7
    .line 8
    invoke-direct {p0, p1, v0}, Lcom/startshorts/androidplayer/utils/textspan/CustomTypefaceSpan;->a(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
