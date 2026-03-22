.class public final synthetic Landroidx/constraintlayout/motion/widget/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/constraintlayout/motion/widget/ViewTransition;

.field public final synthetic b:[Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroidx/constraintlayout/motion/widget/ViewTransition;[Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/a;->a:Landroidx/constraintlayout/motion/widget/ViewTransition;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/a;->b:[Landroid/view/View;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/a;->a:Landroidx/constraintlayout/motion/widget/ViewTransition;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/a;->b:[Landroid/view/View;

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/constraintlayout/motion/widget/ViewTransition;->a(Landroidx/constraintlayout/motion/widget/ViewTransition;[Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
