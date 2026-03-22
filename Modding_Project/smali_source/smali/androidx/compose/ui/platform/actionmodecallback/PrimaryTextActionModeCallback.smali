.class public final Landroidx/compose/ui/platform/actionmodecallback/PrimaryTextActionModeCallback;
.super Ljava/lang/Object;
.source "PrimaryTextActionModeCallback.android.kt"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final callback:Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroidx/compose/ui/platform/actionmodecallback/PrimaryTextActionModeCallback;->callback:Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1    # Landroid/view/ActionMode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/actionmodecallback/PrimaryTextActionModeCallback;->callback:Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1    # Landroid/view/ActionMode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/actionmodecallback/PrimaryTextActionModeCallback;->callback:Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0
    .param p1    # Landroid/view/ActionMode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Landroidx/compose/ui/platform/actionmodecallback/PrimaryTextActionModeCallback;->callback:Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;->onDestroyActionMode()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1    # Landroid/view/ActionMode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/actionmodecallback/PrimaryTextActionModeCallback;->callback:Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/platform/actionmodecallback/TextActionModeCallback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
