.class public final synthetic Landroidx/activity/compose/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic a:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/State;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/activity/compose/a;->a:Landroidx/compose/runtime/State;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/activity/compose/a;->a:Landroidx/compose/runtime/State;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/activity/compose/ActivityResultRegistryKt$rememberLauncherForActivityResult$1;->b(Landroidx/compose/runtime/State;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
