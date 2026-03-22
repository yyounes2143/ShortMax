.class Landroidx/navigation/Navigation$2;
.super Ljava/lang/Object;
.source "Navigation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/navigation/Navigation;->createNavigateOnClickListener(Landroidx/navigation/NavDirections;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$directions:Landroidx/navigation/NavDirections;


# direct methods
.method constructor <init>(Landroidx/navigation/NavDirections;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/navigation/Navigation$2;->val$directions:Landroidx/navigation/NavDirections;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroidx/navigation/Navigation;->findNavController(Landroid/view/View;)Landroidx/navigation/NavController;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Landroidx/navigation/Navigation$2;->val$directions:Landroidx/navigation/NavDirections;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDirections;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
