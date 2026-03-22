.class final Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics$resolveTypeface$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AndroidParagraphIntrinsics.android.kt"

# interfaces
.implements Lat/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/unit/Density;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lat/o<",
        "Landroidx/compose/ui/text/font/FontFamily;",
        "Landroidx/compose/ui/text/font/FontWeight;",
        "Landroidx/compose/ui/text/font/FontStyle;",
        "Landroidx/compose/ui/text/font/FontSynthesis;",
        "Landroid/graphics/Typeface;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;


# direct methods
.method constructor <init>(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics$resolveTypeface$1;->this$0:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    .line 2
    .line 3
    const/4 p1, 0x4

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/ui/text/font/FontFamily;

    .line 2
    .line 3
    check-cast p2, Landroidx/compose/ui/text/font/FontWeight;

    .line 4
    .line 5
    check-cast p3, Landroidx/compose/ui/text/font/FontStyle;

    .line 6
    .line 7
    invoke-virtual {p3}, Landroidx/compose/ui/text/font/FontStyle;->unbox-impl()I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    check-cast p4, Landroidx/compose/ui/text/font/FontSynthesis;

    .line 12
    .line 13
    invoke-virtual {p4}, Landroidx/compose/ui/text/font/FontSynthesis;->unbox-impl()I

    .line 14
    .line 15
    .line 16
    move-result p4

    .line 17
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics$resolveTypeface$1;->invoke-DPcqOEQ(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;II)Landroid/graphics/Typeface;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public final invoke-DPcqOEQ(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;II)Landroid/graphics/Typeface;
    .locals 1
    .param p1    # Landroidx/compose/ui/text/font/FontFamily;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/text/font/FontWeight;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "fontWeight"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics$resolveTypeface$1;->this$0:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->getFontFamilyResolver()Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/compose/ui/text/font/FontFamily$Resolver;->resolve-DPcqOEQ(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;II)Landroidx/compose/runtime/State;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-instance p2, Landroidx/compose/ui/text/platform/TypefaceDirtyTracker;

    .line 17
    .line 18
    invoke-direct {p2, p1}, Landroidx/compose/ui/text/platform/TypefaceDirtyTracker;-><init>(Landroidx/compose/runtime/State;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics$resolveTypeface$1;->this$0:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    .line 22
    .line 23
    invoke-static {p1}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->access$getResolvedTypefaces$p(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Landroidx/compose/ui/text/platform/TypefaceDirtyTracker;->getTypeface()Landroid/graphics/Typeface;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1
.end method
