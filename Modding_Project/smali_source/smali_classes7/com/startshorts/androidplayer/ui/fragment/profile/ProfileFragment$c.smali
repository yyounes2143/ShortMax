.class public final Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$c;
.super Lyd/d;
.source "ProfileFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->h1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$c;->e:Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;

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
    .locals 6

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->L()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$c;->e:Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->z0(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;)J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    sub-long v2, v0, v2

    .line 19
    .line 20
    const-wide/16 v4, 0x1388

    .line 21
    .line 22
    cmp-long p1, v2, v4

    .line 23
    .line 24
    if-ltz p1, :cond_0

    .line 25
    .line 26
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$c;->e:Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;

    .line 27
    .line 28
    invoke-static {p1, v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->H0(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;J)V

    .line 29
    .line 30
    .line 31
    sget-object p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a0()Lcom/startshorts/androidplayer/bean/account/Account;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/account/Account;->getUserCode()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$c;->e:Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;

    .line 46
    .line 47
    sget-object v1, Lfk/j;->a:Lfk/j;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const-string v3, "requireContext(...)"

    .line 54
    .line 55
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2, p1}, Lfk/j;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->K0(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    sget-object p1, Lfk/u;->a:Lfk/u;

    .line 66
    .line 67
    sget v0, Lcom/startshorts/androidplayer/R$string;->common_duplicate_op_tip:I

    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    invoke-virtual {p1, v0, v1}, Lfk/u;->g(II)V

    .line 71
    .line 72
    .line 73
    :cond_1
    :goto_0
    return-void
.end method
