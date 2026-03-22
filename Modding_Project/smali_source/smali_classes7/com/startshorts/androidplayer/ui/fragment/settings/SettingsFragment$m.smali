.class public final Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$m;
.super Ljava/lang/Object;
.source "SettingsFragment.kt"

# interfaces
.implements Lii/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->Y0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;

.field final synthetic b:Lii/b;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;Lii/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$m;->a:Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$m;->b:Lii/b;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$m;->a:Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->D0(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;)Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/settings/a$c;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$m;->b:Lii/b;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/viewmodel/settings/a$c;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;->G(Lcom/startshorts/androidplayer/viewmodel/settings/a;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
