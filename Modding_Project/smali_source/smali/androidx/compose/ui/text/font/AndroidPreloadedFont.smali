.class public abstract Landroidx/compose/ui/text/font/AndroidPreloadedFont;
.super Landroidx/compose/ui/text/font/AndroidFont;
.source "AndroidFont.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    sget-object v0, Landroidx/compose/ui/text/font/FontLoadingStrategy;->Companion:Landroidx/compose/ui/text/font/FontLoadingStrategy$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontLoadingStrategy$Companion;->getBlocking-PKNRLFQ()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sget-object v1, Landroidx/compose/ui/text/font/AndroidPreloadedFontTypefaceLoader;->INSTANCE:Landroidx/compose/ui/text/font/AndroidPreloadedFontTypefaceLoader;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {p0, v0, v1, v2}, Landroidx/compose/ui/text/font/AndroidFont;-><init>(ILandroidx/compose/ui/text/font/AndroidFont$TypefaceLoader;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public abstract getCacheKey()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getTypefaceInternal()Landroid/graphics/Typeface;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
