.class public final Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$j;
.super Lyd/d;
.source "ProfileLoginGuide2DialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nProfileLoginGuide2DialogFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProfileLoginGuide2DialogFragment.kt\ncom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$mUserAgreementClickListener$1\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,319:1\n82#2:320\n83#2:322\n1#3:321\n*S KotlinDebug\n*F\n+ 1 ProfileLoginGuide2DialogFragment.kt\ncom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$mUserAgreementClickListener$1\n*L\n51#1:320\n51#1:322\n51#1:321\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$j;->e:Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;

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
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$j;->e:Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget-object v0, Lcom/startshorts/androidplayer/utils/IntentUtil;->a:Lcom/startshorts/androidplayer/utils/IntentUtil;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "requireContext(...)"

    .line 21
    .line 22
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget v2, Lcom/startshorts/androidplayer/R$string;->policy_user_agreement:I

    .line 26
    .line 27
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v2, "getString(...)"

    .line 32
    .line 33
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/utils/IntentUtil;->c(Landroid/content/Context;Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method
