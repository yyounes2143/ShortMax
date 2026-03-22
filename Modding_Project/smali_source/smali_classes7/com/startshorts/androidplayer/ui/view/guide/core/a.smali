.class public final Lcom/startshorts/androidplayer/ui/view/guide/core/a;
.super Ljava/lang/Object;
.source "Controller.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lij/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Landroid/app/Activity;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/ui/view/guide/model/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private d:I

.field private e:Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Landroid/widget/FrameLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:I

.field private h:Z


# direct methods
.method public constructor <init>(Lij/a;)V
    .locals 5
    .param p1    # Lij/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "builder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/guide/core/a;->a:Lij/a;

    .line 10
    .line 11
    invoke-virtual {p1}, Lij/a;->b()Landroid/app/Activity;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/guide/core/a;->b:Landroid/app/Activity;

    .line 16
    .line 17
    invoke-virtual {p1}, Lij/a;->d()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/view/guide/core/a;->c:Ljava/util/List;

    .line 22
    .line 23
    const/4 v1, -0x1

    .line 24
    iput v1, p0, Lcom/startshorts/androidplayer/ui/view/guide/core/a;->g:I

    .line 25
    .line 26
    invoke-virtual {p1}, Lij/a;->c()Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    const p1, 0x1020002

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 p1, 0x0

    .line 43
    :cond_1
    :goto_0
    if-eqz p1, :cond_4

    .line 44
    .line 45
    instance-of v2, p1, Landroid/widget/FrameLayout;

    .line 46
    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    check-cast p1, Landroid/widget/FrameLayout;

    .line 50
    .line 51
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/guide/core/a;->f:Landroid/widget/FrameLayout;

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    if-eqz v0, :cond_4

    .line 55
    .line 56
    new-instance v2, Landroid/widget/FrameLayout;

    .line 57
    .line 58
    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string v3, "null cannot be cast to non-null type android.view.ViewGroup"

    .line 66
    .line 67
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    check-cast v0, Landroid/view/ViewGroup;

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    iput v3, p0, Lcom/startshorts/androidplayer/ui/view/guide/core/a;->g:I

    .line 77
    .line 78
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 79
    .line 80
    .line 81
    iget v3, p0, Lcom/startshorts/androidplayer/ui/view/guide/core/a;->g:I

    .line 82
    .line 83
    if-ltz v3, :cond_3

    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v0, v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    .line 99
    .line 100
    :goto_1
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 101
    .line 102
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    .line 107
    .line 108
    iput-object v2, p0, Lcom/startshorts/androidplayer/ui/view/guide/core/a;->f:Landroid/widget/FrameLayout;

    .line 109
    .line 110
    :cond_4
    :goto_2
    return-void
.end method

.method public static synthetic a(Lcom/startshorts/androidplayer/ui/view/guide/core/a;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/view/guide/core/a;->d(Lcom/startshorts/androidplayer/ui/view/guide/core/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final d(Lcom/startshorts/androidplayer/ui/view/guide/core/a;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/startshorts/androidplayer/ui/view/guide/core/a;->d:I

    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/guide/core/a;->a:Lij/a;

    .line 5
    .line 6
    invoke-virtual {v0}, Lij/a;->e()Ljj/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0, p0}, Ljj/a;->b(Lcom/startshorts/androidplayer/ui/view/guide/core/a;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/guide/core/a;->e()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/guide/core/a;->b:Landroid/app/Activity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/guide/core/a;->c:Ljava/util/List;

    .line 7
    .line 8
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/guide/core/a;->d:I

    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/startshorts/androidplayer/ui/view/guide/model/a;

    .line 15
    .line 16
    new-instance v1, Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/guide/core/a;->b:Landroid/app/Activity;

    .line 19
    .line 20
    invoke-direct {v1, v2, v0, p0}, Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout;-><init>(Landroid/content/Context;Lcom/startshorts/androidplayer/ui/view/guide/model/a;Lcom/startshorts/androidplayer/ui/view/guide/core/a;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/guide/core/a$a;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/view/guide/core/a$a;-><init>(Lcom/startshorts/androidplayer/ui/view/guide/core/a;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout;->setOnGuideLayoutDismissListener(Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout$b;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/guide/core/a;->f:Landroid/widget/FrameLayout;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 36
    .line 37
    const/4 v3, -0x1

    .line 38
    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/view/guide/core/a;->e:Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout;

    .line 45
    .line 46
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/guide/core/a;->a:Lij/a;

    .line 47
    .line 48
    invoke-virtual {v0}, Lij/a;->f()Ljj/c;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/guide/core/a;->d:I

    .line 55
    .line 56
    invoke-interface {v0, v1}, Ljj/c;->a(I)V

    .line 57
    .line 58
    .line 59
    :cond_2
    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/guide/core/a;->h:Z

    .line 61
    .line 62
    return-void
.end method


# virtual methods
.method public final b()Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/guide/core/a;->e:Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/guide/core/a;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/guide/core/a;->h:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/guide/core/a;->f:Landroid/widget/FrameLayout;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    new-instance v1, Lij/b;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lij/b;-><init>(Lcom/startshorts/androidplayer/ui/view/guide/core/a;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public final f()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/guide/core/a;->d:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/guide/core/a;->c:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/lit8 v1, v1, -0x1

    .line 10
    .line 11
    if-ge v0, v1, :cond_0

    .line 12
    .line 13
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/guide/core/a;->d:I

    .line 14
    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    iput v0, p0, Lcom/startshorts/androidplayer/ui/view/guide/core/a;->d:I

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/guide/core/a;->e()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/guide/core/a;->a:Lij/a;

    .line 24
    .line 25
    invoke-virtual {v0}, Lij/a;->e()Ljj/a;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-interface {v0, p0}, Ljj/a;->a(Lcom/startshorts/androidplayer/ui/view/guide/core/a;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/guide/core/a;->h:Z

    .line 36
    .line 37
    :goto_0
    return-void
.end method
