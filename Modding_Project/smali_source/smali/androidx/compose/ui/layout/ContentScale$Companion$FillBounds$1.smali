.class public final Landroidx/compose/ui/layout/ContentScale$Companion$FillBounds$1;
.super Ljava/lang/Object;
.source "ContentScale.kt"

# interfaces
.implements Landroidx/compose/ui/layout/ContentScale;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/layout/ContentScale$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public computeScaleFactor-H7hwNQA(JJ)J
    .locals 1

    .line 1
    invoke-static {p1, p2, p3, p4}, Landroidx/compose/ui/layout/ContentScaleKt;->access$computeFillWidth-iLBOSCw(JJ)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1, p2, p3, p4}, Landroidx/compose/ui/layout/ContentScaleKt;->access$computeFillHeight-iLBOSCw(JJ)F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-static {v0, p1}, Landroidx/compose/ui/layout/ScaleFactorKt;->ScaleFactor(FF)J

    .line 10
    .line 11
    .line 12
    move-result-wide p1

    .line 13
    return-wide p1
.end method
