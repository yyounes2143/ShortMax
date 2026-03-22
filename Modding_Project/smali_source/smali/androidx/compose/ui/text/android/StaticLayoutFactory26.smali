.class final Landroidx/compose/ui/text/android/StaticLayoutFactory26;
.super Ljava/lang/Object;
.source "StaticLayoutFactory.kt"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1a
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/android/StaticLayoutFactory26;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/text/android/StaticLayoutFactory26;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/ui/text/android/StaticLayoutFactory26;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/ui/text/android/StaticLayoutFactory26;->INSTANCE:Landroidx/compose/ui/text/android/StaticLayoutFactory26;

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


# virtual methods
.method public final setJustificationMode(Landroid/text/StaticLayout$Builder;I)V
    .locals 1
    .param p1    # Landroid/text/StaticLayout$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .line 1
    const-string v0, "builder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Landroidx/compose/ui/text/android/c;->a(Landroid/text/StaticLayout$Builder;I)Landroid/text/StaticLayout$Builder;

    .line 7
    .line 8
    .line 9
    return-void
.end method
