.class final Landroidx/compose/material/internal/PopupLayout$dismissOnOutsideClick$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ExposedDropdownMenuPopup.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/internal/PopupLayout;-><init>(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Landroid/view/View;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/window/PopupPositionProvider;Ljava/util/UUID;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/ui/geometry/Offset;",
        "Landroidx/compose/ui/unit/IntRect;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/material/internal/PopupLayout$dismissOnOutsideClick$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/material/internal/PopupLayout$dismissOnOutsideClick$1;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/material/internal/PopupLayout$dismissOnOutsideClick$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/material/internal/PopupLayout$dismissOnOutsideClick$1;->INSTANCE:Landroidx/compose/material/internal/PopupLayout$dismissOnOutsideClick$1;

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
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    .line 2
    .line 3
    check-cast p2, Landroidx/compose/ui/unit/IntRect;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/internal/PopupLayout$dismissOnOutsideClick$1;->invoke-KMgbckE(Landroidx/compose/ui/geometry/Offset;Landroidx/compose/ui/unit/IntRect;)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invoke-KMgbckE(Landroidx/compose/ui/geometry/Offset;Landroidx/compose/ui/unit/IntRect;)Ljava/lang/Boolean;
    .locals 3
    .param p1    # Landroidx/compose/ui/geometry/Offset;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/unit/IntRect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "bounds"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {p2}, Landroidx/compose/ui/unit/IntRect;->getLeft()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    int-to-float v2, v2

    .line 23
    cmpg-float v1, v1, v2

    .line 24
    .line 25
    if-ltz v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {p2}, Landroidx/compose/ui/unit/IntRect;->getRight()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    int-to-float v2, v2

    .line 40
    cmpl-float v1, v1, v2

    .line 41
    .line 42
    if-gtz v1, :cond_1

    .line 43
    .line 44
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    .line 45
    .line 46
    .line 47
    move-result-wide v1

    .line 48
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-virtual {p2}, Landroidx/compose/ui/unit/IntRect;->getTop()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    int-to-float v2, v2

    .line 57
    cmpg-float v1, v1, v2

    .line 58
    .line 59
    if-ltz v1, :cond_1

    .line 60
    .line 61
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    .line 62
    .line 63
    .line 64
    move-result-wide v1

    .line 65
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    invoke-virtual {p2}, Landroidx/compose/ui/unit/IntRect;->getBottom()I

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    int-to-float p2, p2

    .line 74
    cmpl-float p1, p1, p2

    .line 75
    .line 76
    if-lez p1, :cond_2

    .line 77
    .line 78
    :cond_1
    const/4 v0, 0x1

    .line 79
    :cond_2
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    return-object p1
.end method
