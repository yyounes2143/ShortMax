.class public final Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment$e;
.super Lyd/d;
.source "ProfileLoginGuideDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment$e;->e:Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    invoke-direct {p0, v1, v2, p1, v0}, Lyd/d;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/startshorts/androidplayer/utils/IntentUtil;->a:Lcom/startshorts/androidplayer/utils/IntentUtil;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment$e;->e:Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "requireContext(...)"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment$e;->e:Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;

    .line 20
    .line 21
    sget v2, Lcom/startshorts/androidplayer/R$string;->policy_user_agreement:I

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "getString(...)"

    .line 28
    .line 29
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/utils/IntentUtil;->c(Landroid/content/Context;Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    return-void
.end method
