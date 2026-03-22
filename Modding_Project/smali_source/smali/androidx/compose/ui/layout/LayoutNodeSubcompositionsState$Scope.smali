.class final Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;
.super Ljava/lang/Object;
.source "SubcomposeLayout.kt"

# interfaces
.implements Landroidx/compose/ui/layout/SubcomposeMeasureScope;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Scope"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private density:F

.field private fontScale:F

.field private layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object p1, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    .line 7
    .line 8
    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getDensity()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;->density:F

    .line 2
    .line 3
    return v0
.end method

.method public getFontScale()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;->fontScale:F

    .line 2
    .line 3
    return v0
.end method

.method public getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 2
    .line 3
    return-object v0
.end method

.method public setDensity(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;->density:F

    .line 2
    .line 3
    return-void
.end method

.method public setFontScale(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;->fontScale:F

    .line 2
    .line 3
    return-void
.end method

.method public setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 7
    .line 8
    return-void
.end method

.method public subcompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "content"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->subcompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method
