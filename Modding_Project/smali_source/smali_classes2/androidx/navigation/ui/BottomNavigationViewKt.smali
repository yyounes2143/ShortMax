.class public final Landroidx/navigation/ui/BottomNavigationViewKt;
.super Ljava/lang/Object;
.source "BottomNavigationView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final setupWithNavController(Lcom/google/android/material/bottomnavigation/BottomNavigationView;Landroidx/navigation/NavController;)V
    .locals 1
    .param p0    # Lcom/google/android/material/bottomnavigation/BottomNavigationView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/navigation/NavController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "$this$setupWithNavController"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "navController"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, p1}, Landroidx/navigation/ui/NavigationUI;->setupWithNavController(Lcom/google/android/material/bottomnavigation/BottomNavigationView;Landroidx/navigation/NavController;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
