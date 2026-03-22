.class public final Landroidx/compose/ui/text/font/Font$Companion;
.super Ljava/lang/Object;
.source "Font.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/font/Font;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Landroidx/compose/ui/text/font/Font$Companion;

.field public static final MaximumAsyncTimeout:J = 0x3a98L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/text/font/Font$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/ui/text/font/Font$Companion;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/ui/text/font/Font$Companion;->$$INSTANCE:Landroidx/compose/ui/text/font/Font$Companion;

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

.method public static synthetic getMaximumAsyncTimeout$ui_text_release$annotations()V
    .locals 0
    .annotation runtime Landroidx/compose/ui/text/ExperimentalTextApi;
    .end annotation

    .line 1
    return-void
.end method
