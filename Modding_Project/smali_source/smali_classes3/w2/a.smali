.class public Lw2/a;
.super Ljava/lang/Object;
.source "ImagePerfMonitor.java"

# interfaces
.implements Lcom/facebook/fresco/ui/common/ImagePerfNotifier;


# instance fields
.field private final a:Lv2/c;

.field private final b:Lq2/b;

.field private final c:Lcom/facebook/fresco/ui/common/ImagePerfState;

.field private d:Lx2/a;

.field private e:Lx2/b;

.field private f:La4/c;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/fresco/ui/common/ImagePerfDataListener;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z


# direct methods
.method public constructor <init>(Lq2/b;Lv2/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lw2/a;->b:Lq2/b;

    .line 5
    .line 6
    iput-object p2, p0, Lw2/a;->a:Lv2/c;

    .line 7
    .line 8
    new-instance p1, Lcom/facebook/fresco/ui/common/ImagePerfState;

    .line 9
    .line 10
    sget-object p2, Lcom/facebook/fresco/ui/common/ImageRenderingInfra;->DRAWEE:Lcom/facebook/fresco/ui/common/ImageRenderingInfra;

    .line 11
    .line 12
    invoke-direct {p1, p2}, Lcom/facebook/fresco/ui/common/ImagePerfState;-><init>(Lcom/facebook/fresco/ui/common/ImageRenderingInfra;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lw2/a;->c:Lcom/facebook/fresco/ui/common/ImagePerfState;

    .line 16
    .line 17
    return-void
.end method

.method private f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lw2/a;->e:Lx2/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lx2/b;

    .line 6
    .line 7
    iget-object v1, p0, Lw2/a;->b:Lq2/b;

    .line 8
    .line 9
    iget-object v2, p0, Lw2/a;->c:Lcom/facebook/fresco/ui/common/ImagePerfState;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, p0}, Lx2/b;-><init>(Lq2/b;Lcom/facebook/fresco/ui/common/ImagePerfState;Lcom/facebook/fresco/ui/common/ImagePerfNotifier;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lw2/a;->e:Lx2/b;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lw2/a;->d:Lx2/a;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    new-instance v0, Lx2/a;

    .line 21
    .line 22
    iget-object v1, p0, Lw2/a;->b:Lq2/b;

    .line 23
    .line 24
    iget-object v2, p0, Lw2/a;->c:Lcom/facebook/fresco/ui/common/ImagePerfState;

    .line 25
    .line 26
    invoke-direct {v0, v1, v2}, Lx2/a;-><init>(Lq2/b;Lcom/facebook/fresco/ui/common/ImagePerfState;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lw2/a;->d:Lx2/a;

    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lw2/a;->f:La4/c;

    .line 32
    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    new-instance v0, La4/c;

    .line 36
    .line 37
    iget-object v1, p0, Lw2/a;->d:Lx2/a;

    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    new-array v2, v2, [La4/e;

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    aput-object v1, v2, v3

    .line 44
    .line 45
    invoke-direct {v0, v2}, La4/c;-><init>([La4/e;)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lw2/a;->f:La4/c;

    .line 49
    .line 50
    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/fresco/ui/common/ImagePerfDataListener;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lw2/a;->g:Ljava/util/List;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lw2/a;->g:Ljava/util/List;

    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lw2/a;->g:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lw2/a;->a:Lv2/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/facebook/drawee/controller/a;->e()Lf3/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lf3/b;->b()Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Lf3/b;->b()Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lw2/a;->c:Lcom/facebook/fresco/ui/common/ImagePerfState;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {v1, v2}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setOnScreenWidth(I)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lw2/a;->c:Lcom/facebook/fresco/ui/common/ImagePerfState;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {v1, v0}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setOnScreenHeight(I)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lw2/a;->g:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lw2/a;->c()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lw2/a;->e(Z)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lw2/a;->c:Lcom/facebook/fresco/ui/common/ImagePerfState;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/facebook/fresco/ui/common/ImagePerfState;->reset()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public e(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lw2/a;->h:Z

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    invoke-direct {p0}, Lw2/a;->f()V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lw2/a;->e:Lx2/b;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lw2/a;->a:Lv2/c;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/controller/a;->l(Lcom/facebook/fresco/ui/common/ControllerListener2;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Lw2/a;->f:La4/c;

    .line 18
    .line 19
    if-eqz p1, :cond_3

    .line 20
    .line 21
    iget-object v0, p0, Lw2/a;->a:Lv2/c;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lv2/c;->j0(La4/e;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object p1, p0, Lw2/a;->e:Lx2/b;

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Lw2/a;->a:Lv2/c;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/controller/a;->S(Lcom/facebook/fresco/ui/common/ControllerListener2;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    iget-object p1, p0, Lw2/a;->f:La4/c;

    .line 37
    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    iget-object v0, p0, Lw2/a;->a:Lv2/c;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lv2/c;->z0(La4/e;)V

    .line 43
    .line 44
    .line 45
    :cond_3
    :goto_0
    return-void
.end method

.method public notifyStatusUpdated(Lcom/facebook/fresco/ui/common/ImagePerfState;Lcom/facebook/fresco/ui/common/ImageLoadStatus;)V
    .locals 2

    .line 1
    invoke-virtual {p1, p2}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setImageLoadStatus(Lcom/facebook/fresco/ui/common/ImageLoadStatus;)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lw2/a;->h:Z

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-object v0, p0, Lw2/a;->g:Ljava/util/List;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    sget-object v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->SUCCESS:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    .line 20
    .line 21
    if-ne p2, v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Lw2/a;->b()V

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/fresco/ui/common/ImagePerfState;->snapshot()Lcom/facebook/fresco/ui/common/ImagePerfData;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object v0, p0, Lw2/a;->g:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Lcom/facebook/fresco/ui/common/ImagePerfDataListener;

    .line 47
    .line 48
    invoke-interface {v1, p1, p2}, Lcom/facebook/fresco/ui/common/ImagePerfDataListener;->onImageLoadStatusUpdated(Lcom/facebook/fresco/ui/common/ImagePerfData;Lcom/facebook/fresco/ui/common/ImageLoadStatus;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    :goto_1
    return-void
.end method

.method public notifyVisibilityUpdated(Lcom/facebook/fresco/ui/common/ImagePerfState;Lcom/facebook/fresco/ui/common/VisibilityState;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lw2/a;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lw2/a;->g:Ljava/util/List;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/fresco/ui/common/ImagePerfState;->snapshot()Lcom/facebook/fresco/ui/common/ImagePerfData;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v0, p0, Lw2/a;->g:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/facebook/fresco/ui/common/ImagePerfDataListener;

    .line 37
    .line 38
    invoke-interface {v1, p1, p2}, Lcom/facebook/fresco/ui/common/ImagePerfDataListener;->onImageVisibilityUpdated(Lcom/facebook/fresco/ui/common/ImagePerfData;Lcom/facebook/fresco/ui/common/VisibilityState;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    :goto_1
    return-void
.end method
