.class public final Landroidx/compose/ui/platform/ScrollObservationScope;
.super Ljava/lang/Object;
.source "AndroidComposeViewAccessibilityDelegateCompat.android.kt"

# interfaces
.implements Landroidx/compose/ui/node/OwnerScope;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final allScopes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/platform/ScrollObservationScope;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private horizontalScrollAxisRange:Landroidx/compose/ui/semantics/ScrollAxisRange;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private oldXValue:Ljava/lang/Float;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private oldYValue:Ljava/lang/Float;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final semanticsNodeId:I

.field private verticalScrollAxisRange:Landroidx/compose/ui/semantics/ScrollAxisRange;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/List;Ljava/lang/Float;Ljava/lang/Float;Landroidx/compose/ui/semantics/ScrollAxisRange;Landroidx/compose/ui/semantics/ScrollAxisRange;)V
    .locals 1
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Float;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Float;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/ui/semantics/ScrollAxisRange;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/ui/semantics/ScrollAxisRange;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/compose/ui/platform/ScrollObservationScope;",
            ">;",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            "Landroidx/compose/ui/semantics/ScrollAxisRange;",
            "Landroidx/compose/ui/semantics/ScrollAxisRange;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "allScopes"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput p1, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->semanticsNodeId:I

    .line 10
    .line 11
    iput-object p2, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->allScopes:Ljava/util/List;

    .line 12
    .line 13
    iput-object p3, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->oldXValue:Ljava/lang/Float;

    .line 14
    .line 15
    iput-object p4, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->oldYValue:Ljava/lang/Float;

    .line 16
    .line 17
    iput-object p5, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->horizontalScrollAxisRange:Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 18
    .line 19
    iput-object p6, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->verticalScrollAxisRange:Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final getAllScopes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/platform/ScrollObservationScope;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->allScopes:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHorizontalScrollAxisRange()Landroidx/compose/ui/semantics/ScrollAxisRange;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->horizontalScrollAxisRange:Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOldXValue()Ljava/lang/Float;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->oldXValue:Ljava/lang/Float;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOldYValue()Ljava/lang/Float;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->oldYValue:Ljava/lang/Float;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSemanticsNodeId()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->semanticsNodeId:I

    .line 2
    .line 3
    return v0
.end method

.method public final getVerticalScrollAxisRange()Landroidx/compose/ui/semantics/ScrollAxisRange;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->verticalScrollAxisRange:Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 2
    .line 3
    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->allScopes:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final setHorizontalScrollAxisRange(Landroidx/compose/ui/semantics/ScrollAxisRange;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/semantics/ScrollAxisRange;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->horizontalScrollAxisRange:Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 2
    .line 3
    return-void
.end method

.method public final setOldXValue(Ljava/lang/Float;)V
    .locals 0
    .param p1    # Ljava/lang/Float;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->oldXValue:Ljava/lang/Float;

    .line 2
    .line 3
    return-void
.end method

.method public final setOldYValue(Ljava/lang/Float;)V
    .locals 0
    .param p1    # Ljava/lang/Float;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->oldYValue:Ljava/lang/Float;

    .line 2
    .line 3
    return-void
.end method

.method public final setVerticalScrollAxisRange(Landroidx/compose/ui/semantics/ScrollAxisRange;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/semantics/ScrollAxisRange;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->verticalScrollAxisRange:Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 2
    .line 3
    return-void
.end method
