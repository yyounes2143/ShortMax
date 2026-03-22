.class public final Lji/a;
.super Lfi/a;
.source "EnablePipDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lji/a$a;,
        Lji/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfi/a<",
        "Lcom/startshorts/androidplayer/databinding/DialogEnablePipBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final g:Lji/a$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:I

.field private final f:Lji/a$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lji/a$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lji/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lji/a;->g:Lji/a$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;ILji/a$b;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lji/a$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "from"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "listener"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Lfi/a;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lji/a;->d:Ljava/lang/String;

    .line 20
    .line 21
    iput p3, p0, Lji/a;->e:I

    .line 22
    .line 23
    iput-object p4, p0, Lji/a;->f:Lji/a$b;

    .line 24
    .line 25
    return-void
.end method

.method public static final synthetic u(Lji/a;)Lji/a$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lji/a;->f:Lji/a$b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic v(Lji/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lji/a;->w()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final w()V
    .locals 7

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    new-instance v2, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "from"

    .line 9
    .line 10
    iget-object v3, p0, Lji/a;->d:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "task_id"

    .line 16
    .line 17
    iget v3, p0, Lji/a;->e:I

    .line 18
    .line 19
    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    const-string v1, "task_name"

    .line 23
    .line 24
    const-string v3, "OpenFloatingWindow"

    .line 25
    .line 26
    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 30
    .line 31
    const/4 v5, 0x4

    .line 32
    const/4 v6, 0x0

    .line 33
    const-string v1, "dialog_click"

    .line 34
    .line 35
    const-wide/16 v3, 0x0

    .line 36
    .line 37
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public g()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->dialog_enable_pip:I

    .line 2
    .line 3
    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "EnablePipDialog"

    .line 2
    .line 3
    return-object v0
.end method

.method public p()V
    .locals 7

    .line 1
    sget-object v0, Lkk/f;->a:Lkk/f;

    .line 2
    .line 3
    invoke-virtual {p0}, Lfi/a;->i()Landroidx/databinding/ViewDataBinding;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogEnablePipBinding;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogEnablePipBinding;->e:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 10
    .line 11
    new-instance v2, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 12
    .line 13
    invoke-direct {v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 18
    .line 19
    .line 20
    new-instance v3, Lcom/facebook/drawee/generic/RoundingParams;

    .line 21
    .line 22
    invoke-direct {v3}, Lcom/facebook/drawee/generic/RoundingParams;-><init>()V

    .line 23
    .line 24
    .line 25
    const/high16 v4, 0x41800000    # 16.0f

    .line 26
    .line 27
    invoke-static {v4}, Ljk/g;->b(F)F

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    invoke-static {v4}, Ljk/g;->b(F)F

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    const/4 v6, 0x0

    .line 36
    invoke-virtual {v3, v5, v4, v6, v6}, Lcom/facebook/drawee/generic/RoundingParams;->p(FFFF)Lcom/facebook/drawee/generic/RoundingParams;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setRoundingParams(Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 41
    .line 42
    .line 43
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lfi/a;->i()Landroidx/databinding/ViewDataBinding;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogEnablePipBinding;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogEnablePipBinding;->e:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 55
    .line 56
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_pip_animation_bg:I

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;->setActualImageResource(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lfi/a;->i()Landroidx/databinding/ViewDataBinding;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogEnablePipBinding;

    .line 66
    .line 67
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogEnablePipBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 68
    .line 69
    new-instance v1, Lji/a$c;

    .line 70
    .line 71
    invoke-direct {v1, p0}, Lji/a$c;-><init>(Lji/a;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lfi/a;->i()Landroidx/databinding/ViewDataBinding;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogEnablePipBinding;

    .line 82
    .line 83
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogEnablePipBinding;->b:Landroid/widget/ImageView;

    .line 84
    .line 85
    new-instance v1, Lji/a$d;

    .line 86
    .line 87
    invoke-direct {v1, p0}, Lji/a$d;-><init>(Lji/a;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public show()V
    .locals 7

    .line 1
    invoke-super {p0}, Lfi/a;->show()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 5
    .line 6
    new-instance v2, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "from"

    .line 12
    .line 13
    iget-object v3, p0, Lji/a;->d:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v1, "task_id"

    .line 19
    .line 20
    iget v3, p0, Lji/a;->e:I

    .line 21
    .line 22
    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    const-string v1, "task_name"

    .line 26
    .line 27
    const-string v3, "OpenFloatingWindow"

    .line 28
    .line 29
    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 33
    .line 34
    const/4 v5, 0x4

    .line 35
    const/4 v6, 0x0

    .line 36
    const-string v1, "dialog_show"

    .line 37
    .line 38
    const-wide/16 v3, 0x0

    .line 39
    .line 40
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
