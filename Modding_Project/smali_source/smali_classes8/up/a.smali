.class public abstract Lup/a;
.super Ltp/b0;
.source "SourceFile"

# interfaces
.implements Ltp/f;
.implements Landroid/view/View$OnClickListener;
.implements Lsq/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lup/a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final p:Lup/a$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final q:[Lio/bidmachine/rendering/model/AdElementType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final c:Llq/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Lrq/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Lup/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:Lio/bidmachine/rendering/internal/detector/brokencreative/a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final g:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final h:Lrq/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final i:Ltp/c0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final j:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private k:Landroid/view/ViewGroup;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private volatile l:Z

.field private volatile m:Z

.field private volatile n:Z

.field private volatile o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lup/a$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lup/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lup/a;->p:Lup/a$a;

    .line 8
    .line 9
    sget-object v0, Lio/bidmachine/rendering/model/AdElementType;->Image:Lio/bidmachine/rendering/model/AdElementType;

    .line 10
    .line 11
    sget-object v1, Lio/bidmachine/rendering/model/AdElementType;->Label:Lio/bidmachine/rendering/model/AdElementType;

    .line 12
    .line 13
    filled-new-array {v0, v1}, [Lio/bidmachine/rendering/model/AdElementType;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lup/a;->q:[Lio/bidmachine/rendering/model/AdElementType;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Llq/a;Lrq/a;Lup/c;Ljq/b;Lio/bidmachine/rendering/internal/detector/brokencreative/a;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Llq/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrq/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lup/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljq/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lio/bidmachine/rendering/internal/detector/brokencreative/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "repository"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "adElementParams"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "adFormListener"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "eventCallback"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p5}, Ltp/b0;-><init>(Ljq/b;)V

    .line 27
    .line 28
    .line 29
    iput-object p2, p0, Lup/a;->c:Llq/a;

    .line 30
    .line 31
    iput-object p3, p0, Lup/a;->d:Lrq/a;

    .line 32
    .line 33
    iput-object p4, p0, Lup/a;->e:Lup/c;

    .line 34
    .line 35
    iput-object p6, p0, Lup/a;->f:Lio/bidmachine/rendering/internal/detector/brokencreative/a;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string p4, "context.applicationContext"

    .line 42
    .line 43
    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lup/a;->g:Landroid/content/Context;

    .line 47
    .line 48
    invoke-virtual {p3}, Lrq/a;->c()Lrq/e;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    iput-object p3, p0, Lup/a;->h:Lrq/e;

    .line 53
    .line 54
    invoke-virtual {p3}, Lrq/e;->a()Lrq/f;

    .line 55
    .line 56
    .line 57
    move-result-object p3

    .line 58
    if-eqz p3, :cond_0

    .line 59
    .line 60
    invoke-static {p3, p1, p2}, Ltp/a;->a(Lrq/f;Landroid/content/Context;Llq/a;)Ltp/c0;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    const/4 p1, 0x0

    .line 66
    :goto_0
    iput-object p1, p0, Lup/a;->i:Ltp/c0;

    .line 67
    .line 68
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69
    .line 70
    const/4 p2, 0x0

    .line 71
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 72
    .line 73
    .line 74
    iput-object p1, p0, Lup/a;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 75
    .line 76
    const/4 p1, 0x1

    .line 77
    iput-boolean p1, p0, Lup/a;->m:Z

    .line 78
    .line 79
    iget-boolean p1, p0, Lup/a;->m:Z

    .line 80
    .line 81
    iput-boolean p1, p0, Lup/a;->o:Z

    .line 82
    .line 83
    return-void
.end method


# virtual methods
.method public final A()Lrq/e;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lup/a;->h:Lrq/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public final B()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lup/a;->g:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final C()Llq/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lup/a;->c:Llq/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract D()Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public E()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-virtual {p0}, Ltp/b0;->r()Ljq/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lup/a;->D()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, -0x1

    .line 17
    :goto_0
    invoke-interface {v0, v1}, Ljq/b;->a(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method protected F()V
    .locals 0

    .line 1
    return-void
.end method

.method public final G()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lup/a;->l:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lup/a;->y()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public H()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lup/a;->l:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lup/a;->y()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public a()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-super {p0}, Ltp/b0;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lup/a;->f:Lio/bidmachine/rendering/internal/detector/brokencreative/a;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->g()V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lup/a;->F()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public d()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lup/a;->H()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public f()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lup/a;->G()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final h()Lrq/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lup/a;->d:Lrq/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lup/a;->o:Z

    .line 2
    .line 3
    return v0
.end method

.method public j()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lup/a;->k:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lup/a;->D()Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :goto_0
    return-object v0
.end method

.method public m()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lup/a;->E()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public o()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lup/a;->n:Z

    .line 3
    .line 4
    iget-boolean v0, p0, Lup/a;->m:Z

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lup/a;->p(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lup/a;->E()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public p(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lup/a;->m:Z

    .line 2
    .line 3
    iget-boolean v0, p0, Lup/a;->n:Z

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lup/a;->j()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lio/bidmachine/util/ViewUtilsKt;->o(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lup/a;->j()Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lio/bidmachine/util/ViewUtilsKt;->i(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    iput-boolean p1, p0, Lup/a;->o:Z

    .line 25
    .line 26
    invoke-virtual {p0}, Lup/a;->y()V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public q(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lup/a;->p(Z)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lup/a;->n:Z

    .line 6
    .line 7
    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lup/a;->d:Lrq/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lrq/a;->j()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final t()V
    .locals 1

    .line 1
    iget-object v0, p0, Lup/a;->f:Lio/bidmachine/rendering/internal/detector/brokencreative/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->m()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "type - "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lup/a;->d:Lrq/a;

    .line 12
    .line 13
    invoke-virtual {v1}, Lrq/a;->a()Lio/bidmachine/rendering/model/AdElementType;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ", name - "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lup/a;->d:Lrq/a;

    .line 26
    .line 27
    invoke-virtual {v1}, Lrq/a;->j()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0
.end method

.method public final u()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lup/a;->D()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v2, p0, Lup/a;->h:Lrq/e;

    .line 10
    .line 11
    invoke-virtual {v2}, Lrq/e;->m()Lrq/g0;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    invoke-virtual {v2}, Lrq/g0;->e()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-nez v3, :cond_1

    .line 22
    .line 23
    new-instance v3, Landroid/widget/FrameLayout;

    .line 24
    .line 25
    iget-object v4, p0, Lup/a;->g:Landroid/content/Context;

    .line 26
    .line 27
    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lsq/j;->f()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 35
    .line 36
    .line 37
    invoke-static {v3, v2}, Lrq/h0;->a(Landroid/view/View;Lrq/g0;)V

    .line 38
    .line 39
    .line 40
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 41
    .line 42
    const/4 v4, -0x1

    .line 43
    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    .line 48
    .line 49
    iput-object v3, p0, Lup/a;->k:Landroid/view/ViewGroup;

    .line 50
    .line 51
    :cond_1
    invoke-virtual {p0}, Lup/a;->j()Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    if-nez v2, :cond_2

    .line 56
    .line 57
    return v1

    .line 58
    :cond_2
    invoke-static {}, Lsq/j;->f()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-virtual {v2, v1}, Landroid/view/View;->setId(I)V

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lup/a;->d:Lrq/a;

    .line 66
    .line 67
    invoke-virtual {v1}, Lrq/a;->j()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lup/a;->h:Lrq/e;

    .line 75
    .line 76
    invoke-virtual {v1}, Lrq/e;->f()Ljava/lang/Boolean;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    if-eqz v1, :cond_3

    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_3

    .line 87
    .line 88
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    .line 90
    .line 91
    :cond_3
    iget-object v1, p0, Lup/a;->h:Lrq/e;

    .line 92
    .line 93
    invoke-virtual {v1}, Lrq/e;->t()Ljava/lang/Boolean;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    if-eqz v1, :cond_4

    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    invoke-virtual {p0, v1}, Lup/a;->p(Z)V

    .line 104
    .line 105
    .line 106
    :cond_4
    instance-of v1, v0, Ltp/h;

    .line 107
    .line 108
    if-eqz v1, :cond_5

    .line 109
    .line 110
    check-cast v0, Ltp/h;

    .line 111
    .line 112
    iget-object v1, p0, Lup/a;->h:Lrq/e;

    .line 113
    .line 114
    invoke-interface {v0, v1}, Ltp/h;->a(Lrq/e;)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_5
    iget-object v1, p0, Lup/a;->i:Ltp/c0;

    .line 119
    .line 120
    invoke-virtual {p0, v0, v1}, Lup/a;->w(Landroid/view/View;Ltp/c0;)V

    .line 121
    .line 122
    .line 123
    :goto_0
    const/4 v0, 0x1

    .line 124
    return v0
.end method

.method public final v(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lup/a;->f:Lio/bidmachine/rendering/internal/detector/brokencreative/a;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lio/bidmachine/rendering/internal/detector/brokencreative/a;->a(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object p1, p0, Lup/a;->e:Lup/c;

    .line 14
    .line 15
    invoke-interface {p1, p0}, Lup/c;->c(Lup/a;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method protected w(Landroid/view/View;Ltp/c0;)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ltp/c0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    const/4 v5, 0x6

    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    move-object v1, p2

    .line 13
    move-object v2, p1

    .line 14
    invoke-static/range {v1 .. v6}, Ltp/c0;->h(Ltp/c0;Landroid/view/View;Ljava/lang/Integer;Lrq/j;ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p2, p0, Lup/a;->h:Lrq/e;

    .line 19
    .line 20
    invoke-virtual {p2}, Lrq/e;->b()Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    sget-object v0, Lup/a;->q:[Lio/bidmachine/rendering/model/AdElementType;

    .line 27
    .line 28
    iget-object v1, p0, Lup/a;->d:Lrq/a;

    .line 29
    .line 30
    invoke-virtual {v1}, Lrq/a;->a()Lio/bidmachine/rendering/model/AdElementType;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Lkotlin/collections/n;->f0([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    invoke-static {p1, p2}, Lio/bidmachine/util/ViewUtilsKt;->l(Landroid/view/View;Ljava/lang/Integer;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    return-void
.end method

.method protected final x(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lup/a;->s()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    new-array v1, v1, [Ljava/lang/Object;

    .line 12
    .line 13
    invoke-static {v0, p1, v1}, Ltp/s;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final y()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lup/a;->D()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v1, p0, Lup/a;->o:Z

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    iget-boolean v1, p0, Lup/a;->l:Z

    .line 15
    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    iget-object v1, p0, Lup/a;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    invoke-virtual {p0, v0}, Lup/a;->v(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    iget-object v0, p0, Lup/a;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    .line 33
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_3

    .line 38
    .line 39
    return-void

    .line 40
    :cond_3
    invoke-virtual {p0}, Lup/a;->t()V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method

.method protected final z()Lup/c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lup/a;->e:Lup/c;

    .line 2
    .line 3
    return-object v0
.end method
