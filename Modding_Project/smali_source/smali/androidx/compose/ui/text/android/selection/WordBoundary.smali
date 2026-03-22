.class public final Landroidx/compose/ui/text/android/selection/WordBoundary;
.super Ljava/lang/Object;
.source "WordBoundary.kt"


# annotations
.annotation runtime Landroidx/compose/ui/text/android/InternalPlatformTextApi;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final wordIterator:Landroidx/compose/ui/text/android/selection/WordIterator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Locale;Ljava/lang/CharSequence;)V
    .locals 3
    .param p1    # Ljava/util/Locale;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "locale"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "text"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v0, Landroidx/compose/ui/text/android/selection/WordIterator;

    .line 15
    .line 16
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-direct {v0, p2, v2, v1, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;-><init>(Ljava/lang/CharSequence;IILjava/util/Locale;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Landroidx/compose/ui/text/android/selection/WordBoundary;->wordIterator:Landroidx/compose/ui/text/android/selection/WordIterator;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final getWordEnd(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/selection/WordBoundary;->wordIterator:Landroidx/compose/ui/text/android/selection/WordIterator;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->nextBoundary(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Landroidx/compose/ui/text/android/selection/WordBoundary;->wordIterator:Landroidx/compose/ui/text/android/selection/WordIterator;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroidx/compose/ui/text/android/selection/WordIterator;->isAfterPunctuation(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/compose/ui/text/android/selection/WordBoundary;->wordIterator:Landroidx/compose/ui/text/android/selection/WordIterator;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->getPunctuationEnd(I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/android/selection/WordBoundary;->wordIterator:Landroidx/compose/ui/text/android/selection/WordIterator;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->getNextWordEndOnTwoWordBoundary(I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    :goto_0
    const/4 v1, -0x1

    .line 29
    if-ne v0, v1, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move p1, v0

    .line 33
    :goto_1
    return p1
.end method

.method public final getWordStart(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/selection/WordBoundary;->wordIterator:Landroidx/compose/ui/text/android/selection/WordIterator;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->prevBoundary(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Landroidx/compose/ui/text/android/selection/WordBoundary;->wordIterator:Landroidx/compose/ui/text/android/selection/WordIterator;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroidx/compose/ui/text/android/selection/WordIterator;->isOnPunctuation(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/compose/ui/text/android/selection/WordBoundary;->wordIterator:Landroidx/compose/ui/text/android/selection/WordIterator;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->getPunctuationBeginning(I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/android/selection/WordBoundary;->wordIterator:Landroidx/compose/ui/text/android/selection/WordIterator;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->getPrevWordBeginningOnTwoWordsBoundary(I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    :goto_0
    const/4 v1, -0x1

    .line 29
    if-ne v0, v1, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move p1, v0

    .line 33
    :goto_1
    return p1
.end method
