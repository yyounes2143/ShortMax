.class public final Lei/c;
.super Lfi/a;
.source "ActDialog.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfi/a<",
        "Lcom/startshorts/androidplayer/databinding/DialogActBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final d:Lcom/startshorts/androidplayer/bean/act/ActResource;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:I


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/bean/act/ActResource;Landroid/content/Context;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/act/ActResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "actResource"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "context"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p2}, Lfi/a;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lei/c;->d:Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 15
    .line 16
    sget p1, Lcom/startshorts/androidplayer/R$layout;->dialog_act:I

    .line 17
    .line 18
    iput p1, p0, Lei/c;->e:I

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic u(Lei/c;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lei/c;->x(Lei/c;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic v(Lei/c;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lei/c;->w(Lei/c;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final w(Lei/c;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lei/c;->dismiss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final x(Lei/c;Landroid/view/View;)V
    .locals 14

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    iget-object p1, p0, Lei/c;->d:Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 4
    .line 5
    const-string v1, "bf_discover_window"

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->S(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lei/c;->d:Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-static {v0, p1, v3, v1, v2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x(Lcom/startshorts/androidplayer/manager/event/EventManager;Lcom/startshorts/androidplayer/bean/act/ActResource;ZILjava/lang/Object;)Landroid/os/Bundle;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v5, 0x4

    .line 20
    const/4 v6, 0x0

    .line 21
    const-string v1, "bf_discover_window_click"

    .line 22
    .line 23
    const-wide/16 v3, 0x0

    .line 24
    .line 25
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    sget-object v7, Lce/j;->a:Lce/j;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    const-string p1, "getContext(...)"

    .line 35
    .line 36
    invoke-static {v8, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v10, p0, Lei/c;->d:Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 40
    .line 41
    const/16 v12, 0x8

    .line 42
    .line 43
    const/4 v13, 0x0

    .line 44
    const-string v9, "bf_discover_window"

    .line 45
    .line 46
    const/4 v11, 0x0

    .line 47
    invoke-static/range {v7 .. v13}, Lce/j;->o(Lce/j;Landroid/content/Context;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lei/c;->dismiss()V

    .line 51
    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 1
    invoke-super {p0}, Lfi/a;->dismiss()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager;->a:Lcom/startshorts/androidplayer/manager/act/ActEntranceManager;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager;->k()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public f()I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    return v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lei/c;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public n()I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    return v0
.end method

.method public p()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lfi/a;->i()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogActBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogActBinding;->b:Landroid/widget/ImageView;

    .line 8
    .line 9
    new-instance v1, Lei/a;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lei/a;-><init>(Lei/c;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    sget-object v0, Lkk/f;->a:Lkk/f;

    .line 18
    .line 19
    invoke-virtual {p0}, Lfi/a;->i()Landroidx/databinding/ViewDataBinding;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogActBinding;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogActBinding;->a:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 26
    .line 27
    new-instance v2, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 28
    .line 29
    invoke-direct {v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 30
    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setAutoPlayAnim(Z)V

    .line 34
    .line 35
    .line 36
    iget-object v3, p0, Lei/c;->d:Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 37
    .line 38
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getResourceMap()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 46
    .line 47
    invoke-virtual {v0, v1, v2}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lfi/a;->i()Landroidx/databinding/ViewDataBinding;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogActBinding;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogActBinding;->a:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 57
    .line 58
    new-instance v1, Lei/b;

    .line 59
    .line 60
    invoke-direct {v1, p0}, Lei/b;-><init>(Lei/c;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    .line 65
    .line 66
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
    const-string v1, "bf_discover_window"

    .line 7
    .line 8
    iget-object v2, p0, Lei/c;->d:Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->T(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lei/c;->d:Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-static {v0, v1, v4, v2, v3}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x(Lcom/startshorts/androidplayer/manager/event/EventManager;Lcom/startshorts/androidplayer/bean/act/ActResource;ZILjava/lang/Object;)Landroid/os/Bundle;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 v5, 0x4

    .line 23
    const/4 v6, 0x0

    .line 24
    const-string v1, "bf_discover_window_show"

    .line 25
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
