.class public final Landroidx/compose/ui/platform/ViewRootForInspector$DefaultImpls;
.super Ljava/lang/Object;
.source "ViewRootForInspector.android.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/platform/ViewRootForInspector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static getSubCompositionView(Landroidx/compose/ui/platform/ViewRootForInspector;)Landroidx/compose/ui/platform/AbstractComposeView;
    .locals 0
    .param p0    # Landroidx/compose/ui/platform/ViewRootForInspector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/platform/ViewRootForInspector;->access$getSubCompositionView$jd(Landroidx/compose/ui/platform/ViewRootForInspector;)Landroidx/compose/ui/platform/AbstractComposeView;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static getViewRoot(Landroidx/compose/ui/platform/ViewRootForInspector;)Landroid/view/View;
    .locals 0
    .param p0    # Landroidx/compose/ui/platform/ViewRootForInspector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/platform/ViewRootForInspector;->access$getViewRoot$jd(Landroidx/compose/ui/platform/ViewRootForInspector;)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
