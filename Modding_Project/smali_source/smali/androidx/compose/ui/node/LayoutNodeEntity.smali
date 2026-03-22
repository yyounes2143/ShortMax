.class public Landroidx/compose/ui/node/LayoutNodeEntity;
.super Ljava/lang/Object;
.source "LayoutNodeEntity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/compose/ui/node/LayoutNodeEntity<",
        "TT;TM;>;M::",
        "Landroidx/compose/ui/Modifier;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private isAttached:Z

.field private final layoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final modifier:Landroidx/compose/ui/Modifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private next:Landroidx/compose/ui/node/LayoutNodeEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/Modifier;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/node/LayoutNodeWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/LayoutNodeWrapper;",
            "TM;)V"
        }
    .end annotation

    .line 1
    const-string v0, "layoutNodeWrapper"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "modifier"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNodeEntity;->layoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 15
    .line 16
    iput-object p2, p0, Landroidx/compose/ui/node/LayoutNodeEntity;->modifier:Landroidx/compose/ui/Modifier;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final getLayoutNode()Landroidx/compose/ui/node/LayoutNode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeEntity;->layoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getLayoutNode$ui_release()Landroidx/compose/ui/node/LayoutNode;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getLayoutNodeWrapper()Landroidx/compose/ui/node/LayoutNodeWrapper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeEntity;->layoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getModifier()Landroidx/compose/ui/Modifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeEntity;->modifier:Landroidx/compose/ui/Modifier;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNext()Landroidx/compose/ui/node/LayoutNodeEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeEntity;->next:Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSize-YbymL2g()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeEntity;->layoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getSize-YbymL2g()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final isAttached()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeEntity;->isAttached:Z

    .line 2
    .line 3
    return v0
.end method

.method public onAttach()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeEntity;->isAttached:Z

    .line 3
    .line 4
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeEntity;->isAttached:Z

    .line 3
    .line 4
    return-void
.end method

.method public final setNext(Landroidx/compose/ui/node/LayoutNodeEntity;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/node/LayoutNodeEntity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNodeEntity;->next:Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 2
    .line 3
    return-void
.end method
