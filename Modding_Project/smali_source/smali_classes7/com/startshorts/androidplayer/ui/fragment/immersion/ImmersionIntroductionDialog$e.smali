.class public final Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog$e;
.super Lyd/d;
.source "ImmersionIntroductionDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;->f0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog$e;->e:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;

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
    .locals 8

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 7
    .line 8
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog$e;->e:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;->R(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const-string p1, "scene"

    .line 19
    .line 20
    const-string v0, "immersion"

    .line 21
    .line 22
    invoke-virtual {v3, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string p1, "from"

    .line 26
    .line 27
    const-string v0, "introduction_pop"

    .line 28
    .line 29
    invoke-virtual {v3, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 33
    .line 34
    const/4 v6, 0x4

    .line 35
    const/4 v7, 0x0

    .line 36
    const-string v2, "short_menu_click"

    .line 37
    .line 38
    const-wide/16 v4, 0x0

    .line 39
    .line 40
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog$e;->e:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->dismiss()V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog$e;->e:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;->S(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;)Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog$b;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-eqz p1, :cond_0

    .line 55
    .line 56
    invoke-interface {p1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog$b;->a()V

    .line 57
    .line 58
    .line 59
    :cond_0
    return-void
.end method
