.class public final Lii/i;
.super Lfi/a;
.source "NormalLoginGuideDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lii/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfi/a<",
        "Lcom/startshorts/androidplayer/databinding/DialogNormalLoginGuideBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final e:Lii/i$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lii/i$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lii/i$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lii/i;->e:Lii/i$a;

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
    return-void
.end method

.method private final v()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lfi/a;->i()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogNormalLoginGuideBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogNormalLoginGuideBinding;->a:Landroid/widget/ImageView;

    .line 8
    .line 9
    new-instance v1, Lii/i$b;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lii/i$b;-><init>(Lii/i;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final w()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lfi/a;->i()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogNormalLoginGuideBinding;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/startshorts/androidplayer/databinding/DialogNormalLoginGuideBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    const-string v0, "descTv"

    .line 10
    .line 11
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget v0, Lcom/startshorts/androidplayer/R$string;->normal_login_guide_dialog_fragment_desc:I

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lfi/a;->l(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    sget v0, Lcom/startshorts/androidplayer/R$string;->normal_login_guide_dialog_fragment_protect_your_property:I

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lfi/a;->l(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    filled-new-array {v0}, [Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    sget-object v0, Lyf/a;->a:Lyf/a;

    .line 31
    .line 32
    invoke-virtual {v0}, Lyf/a;->g()Landroid/graphics/Typeface;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sget v4, Lcom/startshorts/androidplayer/R$color;->colorPrimary:I

    .line 41
    .line 42
    invoke-static {v0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    const/16 v9, 0x70

    .line 47
    .line 48
    const/4 v10, 0x0

    .line 49
    const/4 v6, 0x0

    .line 50
    const/4 v7, 0x0

    .line 51
    const/4 v8, 0x0

    .line 52
    invoke-static/range {v1 .. v10}, Ljk/y;->l(Landroid/widget/TextView;Ljava/lang/String;[Ljava/lang/String;ILandroid/graphics/Typeface;FZLjava/util/List;ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method private final x()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lfi/a;->i()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogNormalLoginGuideBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogNormalLoginGuideBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    new-instance v1, Lii/i$c;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lii/i$c;-><init>(Lii/i;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public g()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->dialog_normal_login_guide:I

    .line 2
    .line 3
    return v0
.end method

.method public j()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "NormalLoginGuideDialog"

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
    sget-object v1, Lfk/z;->a:Lfk/z;

    .line 8
    .line 9
    invoke-virtual {v1}, Lfk/z;->p()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    mul-int/lit8 v1, v1, 0x2

    .line 14
    .line 15
    sub-int/2addr v0, v1

    .line 16
    return v0
.end method

.method public p()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lii/i;->w()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lii/i;->x()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lii/i;->v()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final receiveRefreshAccountEvent(Lcom/startshorts/androidplayer/bean/eventbus/RefreshAccountEvent;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/RefreshAccountEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "receiveRefreshAccountEvent"

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lfi/a;->o(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->J0()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lfi/a;->dismiss()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final u()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lii/i;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final y(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lii/i;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
