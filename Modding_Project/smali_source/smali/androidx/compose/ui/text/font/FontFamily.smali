.class public abstract Landroidx/compose/ui/text/font/FontFamily;
.super Ljava/lang/Object;
.source "FontFamily.kt"


# annotations
.annotation build Landroidx/compose/runtime/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/font/FontFamily$Resolver;,
        Landroidx/compose/ui/text/font/FontFamily$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/text/font/FontFamily$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Cursive:Landroidx/compose/ui/text/font/GenericFontFamily;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Default:Landroidx/compose/ui/text/font/SystemFontFamily;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Monospace:Landroidx/compose/ui/text/font/GenericFontFamily;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SansSerif:Landroidx/compose/ui/text/font/GenericFontFamily;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Serif:Landroidx/compose/ui/text/font/GenericFontFamily;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final canLoadSynchronously:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/ui/text/font/FontFamily$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/ui/text/font/FontFamily$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/ui/text/font/FontFamily;->Companion:Landroidx/compose/ui/text/font/FontFamily$Companion;

    .line 8
    .line 9
    new-instance v0, Landroidx/compose/ui/text/font/DefaultFontFamily;

    .line 10
    .line 11
    invoke-direct {v0}, Landroidx/compose/ui/text/font/DefaultFontFamily;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Landroidx/compose/ui/text/font/FontFamily;->Default:Landroidx/compose/ui/text/font/SystemFontFamily;

    .line 15
    .line 16
    new-instance v0, Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 17
    .line 18
    const-string v1, "sans-serif"

    .line 19
    .line 20
    const-string v2, "FontFamily.SansSerif"

    .line 21
    .line 22
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/text/font/GenericFontFamily;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Landroidx/compose/ui/text/font/FontFamily;->SansSerif:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 26
    .line 27
    new-instance v0, Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 28
    .line 29
    const-string v1, "serif"

    .line 30
    .line 31
    const-string v2, "FontFamily.Serif"

    .line 32
    .line 33
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/text/font/GenericFontFamily;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Landroidx/compose/ui/text/font/FontFamily;->Serif:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 37
    .line 38
    new-instance v0, Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 39
    .line 40
    const-string v1, "monospace"

    .line 41
    .line 42
    const-string v2, "FontFamily.Monospace"

    .line 43
    .line 44
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/text/font/GenericFontFamily;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Landroidx/compose/ui/text/font/FontFamily;->Monospace:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 48
    .line 49
    new-instance v0, Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 50
    .line 51
    const-string v1, "cursive"

    .line 52
    .line 53
    const-string v2, "FontFamily.Cursive"

    .line 54
    .line 55
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/text/font/GenericFontFamily;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    sput-object v0, Landroidx/compose/ui/text/font/FontFamily;->Cursive:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 59
    .line 60
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Landroidx/compose/ui/text/font/FontFamily;->canLoadSynchronously:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/font/FontFamily;-><init>(Z)V

    return-void
.end method

.method public static final synthetic access$getCursive$cp()Landroidx/compose/ui/text/font/GenericFontFamily;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/text/font/FontFamily;->Cursive:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getDefault$cp()Landroidx/compose/ui/text/font/SystemFontFamily;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/text/font/FontFamily;->Default:Landroidx/compose/ui/text/font/SystemFontFamily;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getMonospace$cp()Landroidx/compose/ui/text/font/GenericFontFamily;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/text/font/FontFamily;->Monospace:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getSansSerif$cp()Landroidx/compose/ui/text/font/GenericFontFamily;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/text/font/FontFamily;->SansSerif:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getSerif$cp()Landroidx/compose/ui/text/font/GenericFontFamily;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/text/font/FontFamily;->Serif:Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic getCanLoadSynchronously$annotations()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final getCanLoadSynchronously()Z
    .locals 1
    .annotation runtime Lms/c;
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/text/font/FontFamily;->canLoadSynchronously:Z

    .line 2
    .line 3
    return v0
.end method
