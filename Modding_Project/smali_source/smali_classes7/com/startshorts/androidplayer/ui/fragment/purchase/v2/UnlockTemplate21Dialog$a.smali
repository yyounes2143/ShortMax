.class public final Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$a;
.super Lyd/d;
.source "UnlockTemplate21Dialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;->W0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$a;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;

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
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$a;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;->z0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;Z)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$a;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;->k0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;)Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/BaseUnlockEpisodeDialog$a;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$a;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;->s0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-interface {p1, v0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/BaseUnlockEpisodeDialog$a;->a(Z)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method
