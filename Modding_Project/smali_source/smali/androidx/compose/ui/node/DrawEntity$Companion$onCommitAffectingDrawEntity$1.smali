.class final Landroidx/compose/ui/node/DrawEntity$Companion$onCommitAffectingDrawEntity$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DrawEntity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/node/DrawEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/node/DrawEntity;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/node/DrawEntity$Companion$onCommitAffectingDrawEntity$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/node/DrawEntity$Companion$onCommitAffectingDrawEntity$1;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/ui/node/DrawEntity$Companion$onCommitAffectingDrawEntity$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/ui/node/DrawEntity$Companion$onCommitAffectingDrawEntity$1;->INSTANCE:Landroidx/compose/ui/node/DrawEntity$Companion$onCommitAffectingDrawEntity$1;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/ui/node/DrawEntity;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/DrawEntity$Companion$onCommitAffectingDrawEntity$1;->invoke(Landroidx/compose/ui/node/DrawEntity;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/ui/node/DrawEntity;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/node/DrawEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "drawEntity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroidx/compose/ui/node/DrawEntity;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-static {p1, v0}, Landroidx/compose/ui/node/DrawEntity;->access$setInvalidateCache$p(Landroidx/compose/ui/node/DrawEntity;Z)V

    .line 4
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeEntity;->getLayoutNodeWrapper()Landroidx/compose/ui/node/LayoutNodeWrapper;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->invalidateLayer()V

    :cond_0
    return-void
.end method
