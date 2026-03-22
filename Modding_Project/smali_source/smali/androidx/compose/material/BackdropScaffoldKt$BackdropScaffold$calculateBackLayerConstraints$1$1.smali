.class final Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$calculateBackLayerConstraints$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BackdropScaffold.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/BackdropScaffoldKt;->BackdropScaffold-BZszfkY(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Landroidx/compose/material/BackdropScaffoldState;ZFFZZJJLandroidx/compose/ui/graphics/Shape;FJJJLat/n;Landroidx/compose/runtime/Composer;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/unit/Constraints;",
        "Landroidx/compose/ui/unit/Constraints;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $headerHeightPx:F


# direct methods
.method constructor <init>(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$calculateBackLayerConstraints$1$1;->$headerHeightPx:F

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroidx/compose/ui/unit/Constraints;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-virtual {p0, v0, v1}, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$calculateBackLayerConstraints$1$1;->invoke-ZezNO4M(J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->box-impl(J)Landroidx/compose/ui/unit/Constraints;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public final invoke-ZezNO4M(J)J
    .locals 14

    .line 1
    const/16 v6, 0xa

    .line 2
    .line 3
    const/4 v7, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x0

    .line 8
    move-wide v0, p1

    .line 9
    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v8

    .line 13
    move-object v0, p0

    .line 14
    iget v1, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$calculateBackLayerConstraints$1$1;->$headerHeightPx:F

    .line 15
    .line 16
    invoke-static {v1}, Lbt/a;->c(F)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    neg-int v11, v1

    .line 21
    const/4 v12, 0x1

    .line 22
    const/4 v13, 0x0

    .line 23
    const/4 v10, 0x0

    .line 24
    invoke-static/range {v8 .. v13}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U$default(JIIILjava/lang/Object;)J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    return-wide v1
.end method
