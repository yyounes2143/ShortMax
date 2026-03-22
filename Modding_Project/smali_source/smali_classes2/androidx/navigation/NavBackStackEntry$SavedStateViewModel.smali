.class Landroidx/navigation/NavBackStackEntry$SavedStateViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "NavBackStackEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/NavBackStackEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedStateViewModel"
.end annotation


# instance fields
.field private mHandle:Landroidx/lifecycle/SavedStateHandle;


# direct methods
.method constructor <init>(Landroidx/lifecycle/SavedStateHandle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/navigation/NavBackStackEntry$SavedStateViewModel;->mHandle:Landroidx/lifecycle/SavedStateHandle;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getHandle()Landroidx/lifecycle/SavedStateHandle;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry$SavedStateViewModel;->mHandle:Landroidx/lifecycle/SavedStateHandle;

    .line 2
    .line 3
    return-object v0
.end method
