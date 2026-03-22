.class Lsm/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsm/c;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lsm/c$d;

.field final synthetic b:Lsm/c;


# direct methods
.method constructor <init>(Lsm/c;Lsm/c$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lsm/c$c;->b:Lsm/c;

    .line 2
    .line 3
    iput-object p2, p0, Lsm/c$c;->a:Lsm/c$d;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 4
    .param p1    # Landroid/animation/Animator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lsm/c$c;->b:Lsm/c;

    .line 2
    .line 3
    iget-object v1, p0, Lsm/c$c;->a:Lsm/c$d;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/high16 v3, 0x3f800000    # 1.0f

    .line 7
    .line 8
    invoke-static {v0, v3, v1, v2}, Lsm/c;->i(Lsm/c;FLsm/c$d;Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lsm/c$c;->a:Lsm/c$d;

    .line 12
    .line 13
    invoke-virtual {v0}, Lsm/c$d;->x()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lsm/c$c;->a:Lsm/c$d;

    .line 17
    .line 18
    invoke-virtual {v0}, Lsm/c$d;->v()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lsm/c$c;->b:Lsm/c;

    .line 22
    .line 23
    invoke-static {v0}, Lsm/c;->l(Lsm/c;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lsm/c$c;->b:Lsm/c;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-static {v0, v1}, Lsm/c;->j(Lsm/c;Z)Z

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 36
    .line 37
    .line 38
    const-wide/16 v0, 0x534

    .line 39
    .line 40
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget-object p1, p0, Lsm/c$c;->b:Lsm/c;

    .line 48
    .line 49
    invoke-static {p1}, Lsm/c;->a(Lsm/c;)F

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    add-float/2addr v0, v3

    .line 54
    invoke-static {p1, v0}, Lsm/c;->b(Lsm/c;F)F

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lsm/c$c;->b:Lsm/c;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lsm/c;->b(Lsm/c;F)F

    .line 5
    .line 6
    .line 7
    return-void
.end method
