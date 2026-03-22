.class public final Landroidx/compose/material/BottomSheetScaffoldState;
.super Ljava/lang/Object;
.source "BottomSheetScaffold.kt"


# annotations
.annotation runtime Landroidx/compose/material/ExperimentalMaterialApi;
.end annotation

.annotation build Landroidx/compose/runtime/Stable;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final bottomSheetState:Landroidx/compose/material/BottomSheetState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final drawerState:Landroidx/compose/material/DrawerState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final snackbarHostState:Landroidx/compose/material/SnackbarHostState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/material/DrawerState;Landroidx/compose/material/BottomSheetState;Landroidx/compose/material/SnackbarHostState;)V
    .locals 1
    .param p1    # Landroidx/compose/material/DrawerState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/material/BottomSheetState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/material/SnackbarHostState;
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
    const-string v0, "bottomSheetState"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "snackbarHostState"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Landroidx/compose/material/BottomSheetScaffoldState;->drawerState:Landroidx/compose/material/DrawerState;

    .line 20
    .line 21
    iput-object p2, p0, Landroidx/compose/material/BottomSheetScaffoldState;->bottomSheetState:Landroidx/compose/material/BottomSheetState;

    .line 22
    .line 23
    iput-object p3, p0, Landroidx/compose/material/BottomSheetScaffoldState;->snackbarHostState:Landroidx/compose/material/SnackbarHostState;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final getBottomSheetState()Landroidx/compose/material/BottomSheetState;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/material/BottomSheetScaffoldState;->bottomSheetState:Landroidx/compose/material/BottomSheetState;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDrawerState()Landroidx/compose/material/DrawerState;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/material/BottomSheetScaffoldState;->drawerState:Landroidx/compose/material/DrawerState;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSnackbarHostState()Landroidx/compose/material/SnackbarHostState;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/material/BottomSheetScaffoldState;->snackbarHostState:Landroidx/compose/material/SnackbarHostState;

    .line 2
    .line 3
    return-object v0
.end method
