.class public final Landroidx/compose/ui/node/DrawEntity$buildCacheParams$1;
.super Ljava/lang/Object;
.source "DrawEntity.kt"

# interfaces
.implements Landroidx/compose/ui/draw/BuildDrawCacheParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/node/DrawEntity;-><init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/draw/DrawModifier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $layoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

.field private final density:Landroidx/compose/ui/unit/Density;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Landroidx/compose/ui/node/DrawEntity;


# direct methods
.method constructor <init>(Landroidx/compose/ui/node/DrawEntity;Landroidx/compose/ui/node/LayoutNodeWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/node/DrawEntity$buildCacheParams$1;->this$0:Landroidx/compose/ui/node/DrawEntity;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/ui/node/DrawEntity$buildCacheParams$1;->$layoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeEntity;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getDensity()Landroidx/compose/ui/unit/Density;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Landroidx/compose/ui/node/DrawEntity$buildCacheParams$1;->density:Landroidx/compose/ui/unit/Density;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public getDensity()Landroidx/compose/ui/unit/Density;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/DrawEntity$buildCacheParams$1;->density:Landroidx/compose/ui/unit/Density;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/DrawEntity$buildCacheParams$1;->this$0:Landroidx/compose/ui/node/DrawEntity;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeEntity;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getSize-NH-jbRc()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/DrawEntity$buildCacheParams$1;->$layoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getSize-YbymL2g()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method
