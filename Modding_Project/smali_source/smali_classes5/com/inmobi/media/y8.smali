.class public final Lcom/inmobi/media/y8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/D8;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Lcom/inmobi/media/d8;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/D8;Ljava/util/ArrayList;Lcom/inmobi/media/d8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/y8;->a:Lcom/inmobi/media/D8;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/inmobi/media/y8;->b:Ljava/util/ArrayList;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/inmobi/media/y8;->c:Lcom/inmobi/media/d8;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 4

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/inmobi/media/y8;->a:Lcom/inmobi/media/D8;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/inmobi/media/D8;->l:Lcom/inmobi/media/b1;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/inmobi/media/y8;->b:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lcom/inmobi/media/b1;->a(Ljava/util/ArrayList;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/inmobi/media/y8;->a:Lcom/inmobi/media/D8;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/inmobi/media/D8;->b:Lcom/inmobi/media/T7;

    .line 18
    .line 19
    iget-object v0, p1, Lcom/inmobi/media/T7;->b:Lcom/inmobi/media/p8;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/inmobi/media/y8;->c:Lcom/inmobi/media/d8;

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/T7;->a(Lcom/inmobi/media/p8;Lcom/inmobi/media/d8;)Lcom/inmobi/media/d8;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object v0, p0, Lcom/inmobi/media/y8;->c:Lcom/inmobi/media/d8;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/inmobi/media/y8;->a:Lcom/inmobi/media/D8;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/inmobi/media/D8;->b:Lcom/inmobi/media/T7;

    .line 32
    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    move-object p1, v0

    .line 36
    :cond_0
    invoke-virtual {v1, p1}, Lcom/inmobi/media/T7;->a(Lcom/inmobi/media/d8;)Ljava/util/HashMap;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object v1, p0, Lcom/inmobi/media/y8;->a:Lcom/inmobi/media/D8;

    .line 41
    .line 42
    iget-object v1, v1, Lcom/inmobi/media/D8;->f:Lcom/inmobi/media/z5;

    .line 43
    .line 44
    const-string v2, "creativeView"

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    invoke-virtual {v0, v2, p1, v3, v1}, Lcom/inmobi/media/d8;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/L7;Lcom/inmobi/media/z5;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/inmobi/media/y8;->a:Lcom/inmobi/media/D8;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/inmobi/media/D8;->l:Lcom/inmobi/media/b1;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/inmobi/media/y8;->b:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/inmobi/media/a1;

    .line 36
    .line 37
    iget-object v2, v2, Lcom/inmobi/media/a1;->a:Landroid/animation/ValueAnimator;

    .line 38
    .line 39
    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object p1, p1, Lcom/inmobi/media/b1;->b:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 46
    .line 47
    .line 48
    :goto_1
    return-void
.end method
