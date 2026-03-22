.class final Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Savers.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/SaversKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$1$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/saveable/SaverScope;",
        "Landroidx/compose/ui/text/AnnotatedString$Range<",
        "+",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$1;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$1;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/ui/text/AnnotatedString$Range;)Ljava/lang/Object;
    .locals 3
    .param p1    # Landroidx/compose/runtime/saveable/SaverScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/text/AnnotatedString$Range;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/saveable/SaverScope;",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "$this$Saver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Landroidx/compose/ui/text/AnnotatedString$Range;->getItem()Ljava/lang/Object;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroidx/compose/ui/text/ParagraphStyle;

    if-eqz v1, :cond_0

    sget-object v0, Landroidx/compose/ui/text/AnnotationType;->Paragraph:Landroidx/compose/ui/text/AnnotationType;

    goto :goto_0

    .line 4
    :cond_0
    instance-of v1, v0, Landroidx/compose/ui/text/SpanStyle;

    if-eqz v1, :cond_1

    sget-object v0, Landroidx/compose/ui/text/AnnotationType;->Span:Landroidx/compose/ui/text/AnnotationType;

    goto :goto_0

    .line 5
    :cond_1
    instance-of v0, v0, Landroidx/compose/ui/text/VerbatimTtsAnnotation;

    if-eqz v0, :cond_2

    sget-object v0, Landroidx/compose/ui/text/AnnotationType;->VerbatimTts:Landroidx/compose/ui/text/AnnotationType;

    goto :goto_0

    .line 6
    :cond_2
    sget-object v0, Landroidx/compose/ui/text/AnnotationType;->String:Landroidx/compose/ui/text/AnnotationType;

    .line 7
    :goto_0
    sget-object v1, Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 p1, 0x4

    if-ne v1, p1, :cond_3

    .line 8
    invoke-virtual {p2}, Landroidx/compose/ui/text/AnnotatedString$Range;->getItem()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 9
    :cond_4
    invoke-virtual {p2}, Landroidx/compose/ui/text/AnnotatedString$Range;->getItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/text/VerbatimTtsAnnotation;

    .line 10
    invoke-static {}, Landroidx/compose/ui/text/SaversKt;->access$getVerbatimTtsAnnotationSaver$p()Landroidx/compose/runtime/saveable/Saver;

    move-result-object v2

    .line 11
    invoke-static {v1, v2, p1}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    .line 12
    :cond_5
    invoke-virtual {p2}, Landroidx/compose/ui/text/AnnotatedString$Range;->getItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/text/SpanStyle;

    invoke-static {}, Landroidx/compose/ui/text/SaversKt;->getSpanStyleSaver()Landroidx/compose/runtime/saveable/Saver;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    .line 13
    :cond_6
    invoke-virtual {p2}, Landroidx/compose/ui/text/AnnotatedString$Range;->getItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/text/ParagraphStyle;

    invoke-static {}, Landroidx/compose/ui/text/SaversKt;->getParagraphStyleSaver()Landroidx/compose/runtime/saveable/Saver;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    move-result-object p1

    .line 14
    :goto_1
    invoke-static {v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 15
    invoke-virtual {p2}, Landroidx/compose/ui/text/AnnotatedString$Range;->getStart()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 16
    invoke-virtual {p2}, Landroidx/compose/ui/text/AnnotatedString$Range;->getEnd()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 17
    invoke-virtual {p2}, Landroidx/compose/ui/text/AnnotatedString$Range;->getTag()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    filled-new-array {v0, p1, v1, v2, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/runtime/saveable/SaverScope;

    check-cast p2, Landroidx/compose/ui/text/AnnotatedString$Range;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$1;->invoke(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/ui/text/AnnotatedString$Range;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
