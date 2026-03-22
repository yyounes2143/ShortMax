.class public final Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog$d;
.super Lyd/d;
.source "SubsProExpiredDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->g0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog$d;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;

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
    .locals 1

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->i1()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog$d;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->O(Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog$d;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->dismiss()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog$d;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->W()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const/4 v0, -0x1

    .line 32
    if-ne p1, v0, :cond_1

    .line 33
    .line 34
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog$d;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->N(Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog$d;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->R(Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog$d;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->M(Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;)Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->F()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-nez p1, :cond_2

    .line 56
    .line 57
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog$d;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;

    .line 58
    .line 59
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->Q(Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog$d;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;

    .line 64
    .line 65
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->P(Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;)V

    .line 66
    .line 67
    .line 68
    :goto_0
    return-void
.end method
