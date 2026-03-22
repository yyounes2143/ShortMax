.class public final Lcom/startshorts/androidplayer/ui/fragment/discover/ComingSoonDetailDialogFragment;
.super Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;
.source "ComingSoonDetailDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/discover/ComingSoonDetailDialogFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment<",
        "Lcom/startshorts/androidplayer/databinding/DialogFragmentComingSoonDetailBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final t:Lcom/startshorts/androidplayer/ui/fragment/discover/ComingSoonDetailDialogFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static u:Lcom/startshorts/androidplayer/ui/fragment/discover/ComingSoonDetailDialogFragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field private final o:I

.field private final p:I

.field private final q:F

.field private r:Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private s:Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/discover/ComingSoonDetailDialogFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/discover/ComingSoonDetailDialogFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/discover/ComingSoonDetailDialogFragment;->t:Lcom/startshorts/androidplayer/ui/fragment/discover/ComingSoonDetailDialogFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;-><init>()V

    const/high16 v0, 0x42a00000    # 80.0f

    .line 2
    invoke-static {v0}, Ljk/g;->a(F)I

    move-result v0

    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/ComingSoonDetailDialogFragment;->o:I

    const/high16 v0, 0x42d80000    # 108.0f

    .line 3
    invoke-static {v0}, Ljk/g;->a(F)I

    move-result v0

    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/ComingSoonDetailDialogFragment;->p:I

    .line 4
    sget-object v0, Lfk/z;->a:Lfk/z;

    invoke-virtual {v0}, Lfk/z;->r()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/ComingSoonDetailDialogFragment;->q:F

    return-void
.end method

.method public constructor <init>(Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "shorts"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;-><init>()V

    const/high16 v0, 0x42a00000    # 80.0f

    .line 6
    invoke-static {v0}, Ljk/g;->a(F)I

    move-result v0

    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/ComingSoonDetailDialogFragment;->o:I

    const/high16 v0, 0x42d80000    # 108.0f

    .line 7
    invoke-static {v0}, Ljk/g;->a(F)I

    move-result v0

    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/ComingSoonDetailDialogFragment;->p:I

    .line 8
    sget-object v0, Lfk/z;->a:Lfk/z;

    invoke-virtual {v0}, Lfk/z;->r()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/ComingSoonDetailDialogFragment;->q:F

    .line 9
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/ComingSoonDetailDialogFragment;->r:Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 10
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/ComingSoonDetailDialogFragment;->s:Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    return-void
.end method

.method public static final synthetic O()Lcom/startshorts/androidplayer/ui/fragment/discover/ComingSoonDetailDialogFragment;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/ui/fragment/discover/ComingSoonDetailDialogFragment;->u:Lcom/startshorts/androidplayer/ui/fragment/discover/ComingSoonDetailDialogFragment;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic P(Lcom/startshorts/androidplayer/ui/fragment/discover/ComingSoonDetailDialogFragment;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/startshorts/androidplayer/ui/fragment/discover/ComingSoonDetailDialogFragment;->u:Lcom/startshorts/androidplayer/ui/fragment/discover/ComingSoonDetailDialogFragment;

    .line 2
    .line 3
    return-void
.end method

.method private final Q(Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V
    .locals 4

    .line 1
    sget-object v0, Lkk/f;->a:Lkk/f;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentComingSoonDetailBinding;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentComingSoonDetailBinding;->b:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 10
    .line 11
    new-instance v2, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 12
    .line 13
    invoke-direct {v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPicUrl()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget-object p1, Lid/c;->a:Lid/c;

    .line 24
    .line 25
    invoke-virtual {p1}, Lid/c;->b()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lid/c;->a()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 37
    .line 38
    .line 39
    iget p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/ComingSoonDetailDialogFragment;->o:I

    .line 40
    .line 41
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeWidth(I)V

    .line 42
    .line 43
    .line 44
    iget p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/ComingSoonDetailDialogFragment;->p:I

    .line 45
    .line 46
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeHeight(I)V

    .line 47
    .line 48
    .line 49
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->ic_cover_placeholder:I

    .line 50
    .line 51
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 52
    .line 53
    .line 54
    const/4 p1, 0x1

    .line 55
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 56
    .line 57
    .line 58
    iget p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/ComingSoonDetailDialogFragment;->q:F

    .line 59
    .line 60
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerRadius(F)V

    .line 61
    .line 62
    .line 63
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 64
    .line 65
    invoke-virtual {v0, v1, v2}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 66
    .line 67
    .line 68
    return-void
.end method


# virtual methods
.method public final R()V
    .locals 14

    .line 1
    iget-object v13, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/ComingSoonDetailDialogFragment;->r:Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 2
    .line 3
    if-nez v13, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-direct {p0, v13}, Lcom/startshorts/androidplayer/ui/fragment/discover/ComingSoonDetailDialogFragment;->Q(Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lze/c;->a:Lze/c;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lcom/startshorts/androidplayer/databinding/DialogFragmentComingSoonDetailBinding;

    .line 20
    .line 21
    iget-object v4, v2, Lcom/startshorts/androidplayer/databinding/DialogFragmentComingSoonDetailBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 22
    .line 23
    const-string v2, "shortsNameTv"

    .line 24
    .line 25
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lcom/startshorts/androidplayer/databinding/DialogFragmentComingSoonDetailBinding;

    .line 33
    .line 34
    iget-object v5, v2, Lcom/startshorts/androidplayer/databinding/DialogFragmentComingSoonDetailBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 35
    .line 36
    const-string v2, "dateTv"

    .line 37
    .line 38
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Lcom/startshorts/androidplayer/databinding/DialogFragmentComingSoonDetailBinding;

    .line 46
    .line 47
    iget-object v6, v2, Lcom/startshorts/androidplayer/databinding/DialogFragmentComingSoonDetailBinding;->a:Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonFullWidthChip;

    .line 48
    .line 49
    const-string v2, "comingSoonButton"

    .line 50
    .line 51
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v9, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/ComingSoonDetailDialogFragment;->s:Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 55
    .line 56
    const/16 v11, 0x2c0

    .line 57
    .line 58
    const/4 v12, 0x0

    .line 59
    const/4 v2, 0x0

    .line 60
    const/4 v7, 0x0

    .line 61
    const/4 v8, 0x0

    .line 62
    const/4 v10, 0x0

    .line 63
    move-object v3, v13

    .line 64
    invoke-static/range {v0 .. v12}, Lze/c;->e(Lze/c;Landroidx/fragment/app/FragmentManager;Landroid/view/View;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;Landroid/widget/TextView;Ljava/lang/Integer;Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;ZILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentComingSoonDetailBinding;

    .line 72
    .line 73
    iget-object v1, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentComingSoonDetailBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/FoldableTextArea;

    .line 74
    .line 75
    invoke-virtual {v13}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getSummary()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    if-nez v0, :cond_1

    .line 80
    .line 81
    const-string v0, ""

    .line 82
    .line 83
    :cond_1
    move-object v4, v0

    .line 84
    const/16 v6, 0x8

    .line 85
    .line 86
    const/4 v7, 0x0

    .line 87
    const/4 v2, 0x4

    .line 88
    const/4 v3, 0x6

    .line 89
    const/4 v5, 0x0

    .line 90
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/ui/view/base/FoldableTextArea;->f(Lcom/startshorts/androidplayer/ui/view/base/FoldableTextArea;IILjava/lang/String;IILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public l()F
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->dialog_fragment_coming_soon_detail:I

    .line 2
    .line 3
    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/discover/ComingSoonDetailDialogFragment;->u:Lcom/startshorts/androidplayer/ui/fragment/discover/ComingSoonDetailDialogFragment;

    .line 6
    .line 7
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "dialog"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    sput-object p1, Lcom/startshorts/androidplayer/ui/fragment/discover/ComingSoonDetailDialogFragment;->u:Lcom/startshorts/androidplayer/ui/fragment/discover/ComingSoonDetailDialogFragment;

    .line 11
    .line 12
    return-void
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
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/ComingSoonDetailDialogFragment;->R()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "ComingSoonDetailDialogFragment"

    .line 2
    .line 3
    return-object v0
.end method
