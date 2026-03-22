.class public final Landroidx/compose/material/ScaffoldState;
.super Ljava/lang/Object;
.source "Scaffold.kt"


# annotations
.annotation build Landroidx/compose/runtime/Stable;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final drawerState:Landroidx/compose/material/DrawerState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final snackbarHostState:Landroidx/compose/material/SnackbarHostState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/material/DrawerState;Landroidx/compose/material/SnackbarHostState;)V
    .locals 1
    .param p1    # Landroidx/compose/material/DrawerState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/material/SnackbarHostState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "drawerState"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "snackbarHostState"

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
    iput-object p1, p0, Landroidx/compose/material/ScaffoldState;->drawerState:Landroidx/compose/material/DrawerState;

    .line 15
    .line 16
    iput-object p2, p0, Landroidx/compose/material/ScaffoldState;->snackbarHostState:Landroidx/compose/material/SnackbarHostState;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final getDrawerState()Landroidx/compose/material/DrawerState;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/material/ScaffoldState;->drawerState:Landroidx/compose/material/DrawerState;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSnackbarHostState()Landroidx/compose/material/SnackbarHostState;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/material/ScaffoldState;->snackbarHostState:Landroidx/compose/material/SnackbarHostState;

    .line 2
    .line 3
    return-object v0
.end method
