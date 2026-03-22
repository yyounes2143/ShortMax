.class public abstract Landroidx/compose/ui/text/font/AndroidFont;
.super Ljava/lang/Object;
.source "AndroidFont.kt"

# interfaces
.implements Landroidx/compose/ui/text/font/Font;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/font/AndroidFont$TypefaceLoader;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final loadingStrategy:I

.field private final typefaceLoader:Landroidx/compose/ui/text/font/AndroidFont$TypefaceLoader;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILandroidx/compose/ui/text/font/AndroidFont$TypefaceLoader;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroidx/compose/ui/text/font/AndroidFont;->loadingStrategy:I

    .line 4
    iput-object p2, p0, Landroidx/compose/ui/text/font/AndroidFont;->typefaceLoader:Landroidx/compose/ui/text/font/AndroidFont$TypefaceLoader;

    return-void
.end method

.method public synthetic constructor <init>(ILandroidx/compose/ui/text/font/AndroidFont$TypefaceLoader;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/text/font/AndroidFont;-><init>(ILandroidx/compose/ui/text/font/AndroidFont$TypefaceLoader;)V

    return-void
.end method


# virtual methods
.method public final getLoadingStrategy-PKNRLFQ()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/font/AndroidFont;->loadingStrategy:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTypefaceLoader()Landroidx/compose/ui/text/font/AndroidFont$TypefaceLoader;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/font/AndroidFont;->typefaceLoader:Landroidx/compose/ui/text/font/AndroidFont$TypefaceLoader;

    .line 2
    .line 3
    return-object v0
.end method
