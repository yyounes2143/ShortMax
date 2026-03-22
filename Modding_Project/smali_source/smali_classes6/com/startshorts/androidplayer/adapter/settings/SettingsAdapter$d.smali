.class final Lcom/startshorts/androidplayer/adapter/settings/SettingsAdapter$d;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "SettingsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/settings/SettingsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/settings/AppSettings;",
        ">.ViewHolder;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemSettingsAutoUnlockEpisodeBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic h:Lcom/startshorts/androidplayer/adapter/settings/SettingsAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/settings/SettingsAdapter;Lcom/startshorts/androidplayer/databinding/ItemSettingsAutoUnlockEpisodeBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/settings/SettingsAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemSettingsAutoUnlockEpisodeBinding;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/settings/SettingsAdapter$d;->h:Lcom/startshorts/androidplayer/adapter/settings/SettingsAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/settings/SettingsAdapter$d;->g:Lcom/startshorts/androidplayer/databinding/ItemSettingsAutoUnlockEpisodeBinding;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/settings/SettingsAdapter$d;->j()Lcom/startshorts/androidplayer/databinding/ItemSettingsAutoUnlockEpisodeBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic f(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/startshorts/androidplayer/bean/settings/AppSettings;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/settings/SettingsAdapter$d;->k(ILcom/startshorts/androidplayer/bean/settings/AppSettings;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j()Lcom/startshorts/androidplayer/databinding/ItemSettingsAutoUnlockEpisodeBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/settings/SettingsAdapter$d;->g:Lcom/startshorts/androidplayer/databinding/ItemSettingsAutoUnlockEpisodeBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public k(ILcom/startshorts/androidplayer/bean/settings/AppSettings;)V
    .locals 1
    .param p2    # Lcom/startshorts/androidplayer/bean/settings/AppSettings;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->f(ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/settings/SettingsAdapter$d;->j()Lcom/startshorts/androidplayer/databinding/ItemSettingsAutoUnlockEpisodeBinding;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemSettingsAutoUnlockEpisodeBinding;->a:Landroid/widget/ImageView;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    instance-of p2, p1, Landroid/app/Activity;

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    check-cast p1, Landroid/app/Activity;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    :goto_0
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/4 p1, 0x0

    .line 35
    :goto_1
    sget-object p2, Lud/b;->a:Lud/b;

    .line 36
    .line 37
    invoke-virtual {p2, p1}, Lud/b;->i1(Z)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->ic_switch_on:I

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->ic_switch_off:I

    .line 47
    .line 48
    :goto_2
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/settings/SettingsAdapter$d;->j()Lcom/startshorts/androidplayer/databinding/ItemSettingsAutoUnlockEpisodeBinding;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    iget-object p2, p2, Lcom/startshorts/androidplayer/databinding/ItemSettingsAutoUnlockEpisodeBinding;->a:Landroid/widget/ImageView;

    .line 53
    .line 54
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 55
    .line 56
    .line 57
    return-void
.end method
