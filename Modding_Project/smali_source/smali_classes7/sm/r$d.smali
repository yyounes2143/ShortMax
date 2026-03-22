.class Lsm/r$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsm/r;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lsm/r;


# direct methods
.method constructor <init>(Lsm/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsm/r$d;->a:Lsm/r;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lsm/r$d;->a:Lsm/r;

    .line 2
    .line 3
    invoke-static {p1}, Lsm/r;->d(Lsm/r;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lsm/r$d;->a:Lsm/r;

    .line 2
    .line 3
    invoke-static {p1}, Lsm/r;->d(Lsm/r;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
