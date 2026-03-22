.class public Lcom/startshorts/androidplayer/ui/dialog/loading/InterstitialAdLoadingDialog;
.super Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;
.source "InterstitialAdLoadingDialog.kt"

# interfaces
.implements Lha/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/dialog/loading/InterstitialAdLoadingDialog$a;,
        Lcom/startshorts/androidplayer/ui/dialog/loading/InterstitialAdLoadingDialog$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment<",
        "Lcom/startshorts/androidplayer/databinding/DialogLoadingBinding;",
        ">;",
        "Lha/a;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final l:Lcom/startshorts/androidplayer/ui/dialog/loading/InterstitialAdLoadingDialog$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private i:Z

.field private j:Lcom/startshorts/androidplayer/ui/dialog/loading/InterstitialAdLoadingDialog$b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private k:Landroidx/fragment/app/FragmentManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/dialog/loading/InterstitialAdLoadingDialog$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/dialog/loading/InterstitialAdLoadingDialog$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/dialog/loading/InterstitialAdLoadingDialog;->l:Lcom/startshorts/androidplayer/ui/dialog/loading/InterstitialAdLoadingDialog$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final F(Landroidx/fragment/app/FragmentManager;)V
    .locals 0
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/dialog/loading/InterstitialAdLoadingDialog;->k:Landroidx/fragment/app/FragmentManager;

    .line 2
    .line 3
    return-void
.end method

.method public final G(Lcom/startshorts/androidplayer/ui/dialog/loading/InterstitialAdLoadingDialog$b;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/dialog/loading/InterstitialAdLoadingDialog$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/dialog/loading/InterstitialAdLoadingDialog;->j:Lcom/startshorts/androidplayer/ui/dialog/loading/InterstitialAdLoadingDialog$b;

    .line 2
    .line 3
    return-void
.end method

.method public a()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/dialog/loading/InterstitialAdLoadingDialog;->i:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/dialog/loading/InterstitialAdLoadingDialog;->i:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->dismiss()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/dialog/loading/InterstitialAdLoadingDialog;->j:Lcom/startshorts/androidplayer/ui/dialog/loading/InterstitialAdLoadingDialog$b;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/startshorts/androidplayer/ui/dialog/loading/InterstitialAdLoadingDialog$b;->onDismiss()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/dialog/loading/InterstitialAdLoadingDialog;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/dialog/loading/InterstitialAdLoadingDialog;->k:Landroidx/fragment/app/FragmentManager;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lcom/startshorts/androidplayer/ui/dialog/loading/InterstitialAdLoadingDialog;->i:Z

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->x(Landroidx/fragment/app/FragmentManager;)Z

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/dialog/loading/InterstitialAdLoadingDialog;->j:Lcom/startshorts/androidplayer/ui/dialog/loading/InterstitialAdLoadingDialog$b;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/startshorts/androidplayer/ui/dialog/loading/InterstitialAdLoadingDialog$b;->b()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public i()F
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public j()I
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->F()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->J()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sub-int/2addr v1, v0

    .line 12
    return v1
.end method

.method public k()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->dialog_interstitial_loading:I

    .line 2
    .line 3
    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "InterstitialAdLoadingDialog"

    .line 2
    .line 3
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
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
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public p()I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    return v0
.end method
