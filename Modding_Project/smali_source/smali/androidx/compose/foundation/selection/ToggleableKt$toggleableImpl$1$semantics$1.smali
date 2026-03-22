.class final Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$semantics$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Toggleable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1;->invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $enabled:Z

.field final synthetic $onClick:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $role:Landroidx/compose/ui/semantics/Role;

.field final synthetic $state:Landroidx/compose/ui/state/ToggleableState;


# direct methods
.method constructor <init>(Landroidx/compose/ui/semantics/Role;Landroidx/compose/ui/state/ToggleableState;ZLkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/semantics/Role;",
            "Landroidx/compose/ui/state/ToggleableState;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$semantics$1;->$role:Landroidx/compose/ui/semantics/Role;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$semantics$1;->$state:Landroidx/compose/ui/state/ToggleableState;

    .line 4
    .line 5
    iput-boolean p3, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$semantics$1;->$enabled:Z

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$semantics$1;->$onClick:Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$semantics$1;->invoke(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 3
    .param p1    # Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "$this$semantics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$semantics$1;->$role:Landroidx/compose/ui/semantics/Role;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/Role;->unbox-impl()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setRole-kuIjeqM(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$semantics$1;->$state:Landroidx/compose/ui/state/ToggleableState;

    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setToggleableState(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/state/ToggleableState;)V

    .line 5
    new-instance v0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$semantics$1$1;

    iget-object v1, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$semantics$1;->$onClick:Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v1}, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$semantics$1$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->onClick$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 6
    iget-boolean v0, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$semantics$1;->$enabled:Z

    if-nez v0, :cond_1

    .line 7
    invoke-static {p1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->disabled(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    :cond_1
    return-void
.end method
