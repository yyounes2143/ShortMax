.class public final Lki/a;
.super Lfi/a;
.source "RFMGuideDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lki/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfi/a<",
        "Lcom/startshorts/androidplayer/databinding/DialogRfmGuideBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final e:Lki/a$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lki/a$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lki/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lki/a;->e:Lki/a$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    invoke-direct {p0, p1}, Lfi/a;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    const p1, 0x800013

    .line 10
    .line 11
    .line 12
    iput p1, p0, Lki/a;->d:I

    .line 13
    .line 14
    return-void
.end method

.method private final u()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lfi/a;->i()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogRfmGuideBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogRfmGuideBinding;->b:Landroid/widget/ImageView;

    .line 8
    .line 9
    new-instance v1, Lki/a$b;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lki/a$b;-><init>(Lki/a;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final v()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lfi/a;->i()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogRfmGuideBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogRfmGuideBinding;->c:Landroid/view/View;

    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    sget-object v1, Lfk/z;->a:Lfk/z;

    .line 13
    .line 14
    invoke-virtual {v1}, Lfk/z;->j()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {p0}, Lki/a;->n()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    int-to-float v2, v2

    .line 23
    const v3, 0x3e7606a6

    .line 24
    .line 25
    .line 26
    mul-float/2addr v2, v3

    .line 27
    float-to-int v2, v2

    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-static {v0, v1, v2, v3, v3}, Ljk/b0;->h(Landroid/view/View;IIII)V

    .line 30
    .line 31
    .line 32
    new-instance v1, Lki/a$c;

    .line 33
    .line 34
    invoke-direct {v1}, Lki/a$c;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private final w()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lfi/a;->i()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogRfmGuideBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogRfmGuideBinding;->e:Landroid/widget/ImageView;

    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lki/a;->n()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    int-to-float v1, v1

    .line 17
    const v2, 0x3cba2e8c

    .line 18
    .line 19
    .line 20
    mul-float/2addr v1, v2

    .line 21
    float-to-int v1, v1

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-static {v0, v2, v2, v1, v2}, Ljk/b0;->h(Landroid/view/View;IIII)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Lki/a$d;

    .line 27
    .line 28
    invoke-direct {v1}, Lki/a$d;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private final x()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lfi/a;->i()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogRfmGuideBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogRfmGuideBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lki/a;->n()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    int-to-float v1, v1

    .line 17
    const v2, 0x3e298ef6

    .line 18
    .line 19
    .line 20
    mul-float/2addr v1, v2

    .line 21
    float-to-int v1, v1

    .line 22
    invoke-virtual {p0}, Lki/a;->n()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    int-to-float v2, v2

    .line 27
    const v3, 0x3dace214

    .line 28
    .line 29
    .line 30
    mul-float/2addr v2, v3

    .line 31
    float-to-int v2, v2

    .line 32
    invoke-virtual {p0}, Lki/a;->n()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    int-to-float v3, v3

    .line 37
    const v4, 0x3d98ef60

    .line 38
    .line 39
    .line 40
    mul-float/2addr v3, v4

    .line 41
    float-to-int v3, v3

    .line 42
    const/4 v4, 0x0

    .line 43
    invoke-static {v0, v1, v2, v3, v4}, Ljk/b0;->h(Landroid/view/View;IIII)V

    .line 44
    .line 45
    .line 46
    new-instance v1, Lki/a$e;

    .line 47
    .line 48
    invoke-direct {v1, v0, p0}, Lki/a$e;-><init>(Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Lki/a;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private final y()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lfi/a;->i()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogRfmGuideBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogRfmGuideBinding;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 8
    .line 9
    const-string v1, "rootLayout"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object v1, Lfk/z;->a:Lfk/z;

    .line 15
    .line 16
    invoke-virtual {v1}, Lfk/z;->g()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p0}, Lki/a;->n()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    int-to-float v2, v2

    .line 25
    const v3, 0x3dc77b03

    .line 26
    .line 27
    .line 28
    mul-float/2addr v2, v3

    .line 29
    float-to-int v2, v2

    .line 30
    neg-int v2, v2

    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-static {v0, v1, v2, v3, v3}, Ljk/b0;->h(Landroid/view/View;IIII)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lfi/a;->i()Landroidx/databinding/ViewDataBinding;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogRfmGuideBinding;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogRfmGuideBinding;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 42
    .line 43
    new-instance v1, Lki/a$f;

    .line 44
    .line 45
    invoke-direct {v1, p0}, Lki/a$f;-><init>(Lki/a;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method private final z()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lfi/a;->i()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogRfmGuideBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogRfmGuideBinding;->h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    sget-object v1, Lfk/z;->a:Lfk/z;

    .line 13
    .line 14
    invoke-virtual {v1}, Lfk/z;->j()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual {p0}, Lki/a;->n()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    int-to-float v3, v3

    .line 23
    const v4, 0x3f22e8ba

    .line 24
    .line 25
    .line 26
    mul-float/2addr v3, v4

    .line 27
    float-to-int v3, v3

    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-static {v0, v2, v3, v4, v4}, Ljk/b0;->h(Landroid/view/View;IIII)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lfi/a;->i()Landroidx/databinding/ViewDataBinding;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogRfmGuideBinding;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogRfmGuideBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 39
    .line 40
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Lfk/z;->j()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {p0}, Lki/a;->n()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    int-to-float v2, v2

    .line 52
    const v3, 0x3cd4c77b

    .line 53
    .line 54
    .line 55
    mul-float/2addr v2, v3

    .line 56
    float-to-int v2, v2

    .line 57
    invoke-static {v0, v1, v2, v4, v4}, Ljk/b0;->h(Landroid/view/View;IIII)V

    .line 58
    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public f()I
    .locals 1

    .line 1
    const/4 v0, -0x2

    .line 2
    return v0
.end method

.method public g()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->dialog_rfm_guide:I

    .line 2
    .line 3
    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lki/a;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "RFMGuideDialog"

    .line 2
    .line 3
    return-object v0
.end method

.method public n()I
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/high16 v1, 0x42400000    # 48.0f

    .line 8
    .line 9
    invoke-static {v1}, Ljk/g;->a(F)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    sub-int/2addr v0, v1

    .line 14
    return v0
.end method

.method public p()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lki/a;->y()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lki/a;->u()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lki/a;->v()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lki/a;->w()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lki/a;->z()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lki/a;->x()V

    .line 17
    .line 18
    .line 19
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 20
    .line 21
    const/4 v5, 0x6

    .line 22
    const/4 v6, 0x0

    .line 23
    const-string v1, "rfm_pop_show"

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    const-wide/16 v3, 0x0

    .line 27
    .line 28
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
