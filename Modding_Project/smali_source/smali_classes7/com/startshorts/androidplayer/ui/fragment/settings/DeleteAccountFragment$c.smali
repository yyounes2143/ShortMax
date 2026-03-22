.class public final Lcom/startshorts/androidplayer/ui/fragment/settings/DeleteAccountFragment$c;
.super Lyd/d;
.source "DeleteAccountFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/settings/DeleteAccountFragment;->L()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/ui/fragment/settings/DeleteAccountFragment;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/settings/DeleteAccountFragment;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/DeleteAccountFragment$c;->e:Lcom/startshorts/androidplayer/ui/fragment/settings/DeleteAccountFragment;

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
    .locals 2

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/DeleteAccountFragment$c;->e:Lcom/startshorts/androidplayer/ui/fragment/settings/DeleteAccountFragment;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/settings/DeleteAccountFragment;->I(Lcom/startshorts/androidplayer/ui/fragment/settings/DeleteAccountFragment;)Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/settings/a$a;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/DeleteAccountFragment$c;->e:Lcom/startshorts/androidplayer/ui/fragment/settings/DeleteAccountFragment;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/settings/a$a;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;->G(Lcom/startshorts/androidplayer/viewmodel/settings/a;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
