.class final Lcom/startshorts/androidplayer/adapter/settings/SettingsAdapter$a;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "SettingsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/settings/SettingsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/settings/SettingsAdapter$a;->h:Lcom/startshorts/androidplayer/adapter/settings/SettingsAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/settings/SettingsAdapter$a;->g:Lcom/startshorts/androidplayer/databinding/ItemSettingsAutoUnlockEpisodeBinding;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/settings/SettingsAdapter$a;->j()Lcom/startshorts/androidplayer/databinding/ItemSettingsAutoUnlockEpisodeBinding;

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/settings/SettingsAdapter$a;->k(ILcom/startshorts/androidplayer/bean/settings/AppSettings;)V

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/settings/SettingsAdapter$a;->g:Lcom/startshorts/androidplayer/databinding/ItemSettingsAutoUnlockEpisodeBinding;

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
    sget-object p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->P()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->ic_switch_on:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->ic_switch_off:I

    .line 21
    .line 22
    :goto_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/settings/SettingsAdapter$a;->j()Lcom/startshorts/androidplayer/databinding/ItemSettingsAutoUnlockEpisodeBinding;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    iget-object p2, p2, Lcom/startshorts/androidplayer/databinding/ItemSettingsAutoUnlockEpisodeBinding;->a:Landroid/widget/ImageView;

    .line 27
    .line 28
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
