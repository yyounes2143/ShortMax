.class public final Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment$c;
.super Ljava/lang/Object;
.source "FragmentExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->x(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 BaseBottomSheetDialogFragment.kt\ncom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment\n*L\n1#1,20:1\n221#2,2:21\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment$c;->a:Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment$c;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment$c;->a:Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment$c;->b:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment$c;->a()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object v0
.end method
