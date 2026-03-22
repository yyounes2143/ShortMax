.class final Landroidx/core/content/res/TypedArrayApi26ImplKt;
.super Ljava/lang/Object;
.source "TypedArray.kt"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1a
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/core/content/res/TypedArrayApi26ImplKt;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/core/content/res/TypedArrayApi26ImplKt;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/core/content/res/TypedArrayApi26ImplKt;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/core/content/res/TypedArrayApi26ImplKt;->INSTANCE:Landroidx/core/content/res/TypedArrayApi26ImplKt;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final getFont(Landroid/content/res/TypedArray;I)Landroid/graphics/Typeface;
    .locals 0
    .param p0    # Landroid/content/res/TypedArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getFont(I)Landroid/graphics/Typeface;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method
