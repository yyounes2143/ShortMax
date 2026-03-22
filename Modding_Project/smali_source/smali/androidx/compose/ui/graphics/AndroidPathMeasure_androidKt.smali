.class public final Landroidx/compose/ui/graphics/AndroidPathMeasure_androidKt;
.super Ljava/lang/Object;
.source "AndroidPathMeasure.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final PathMeasure()Landroidx/compose/ui/graphics/PathMeasure;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/AndroidPathMeasure;

    .line 2
    .line 3
    new-instance v1, Landroid/graphics/PathMeasure;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/graphics/PathMeasure;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/AndroidPathMeasure;-><init>(Landroid/graphics/PathMeasure;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
