.class public final Lcom/startshorts/androidplayer/adapter/settings/SettingsAdapter;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;
.source "SettingsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/adapter/settings/SettingsAdapter$a;,
        Lcom/startshorts/androidplayer/adapter/settings/SettingsAdapter$b;,
        Lcom/startshorts/androidplayer/adapter/settings/SettingsAdapter$c;,
        Lcom/startshorts/androidplayer/adapter/settings/SettingsAdapter$d;,
        Lcom/startshorts/androidplayer/adapter/settings/SettingsAdapter$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/settings/AppSettings;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/startshorts/androidplayer/bean/settings/AppSettings;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/settings/AppSettings;->getType()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 15
    .line 16
    const-string v0, "item is null"

    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1
.end method

.method public x(Landroid/view/ViewGroup;II)Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "II)",
            "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
            "Lcom/startshorts/androidplayer/bean/settings/AppSettings;",
            ">.ViewHolder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p3, "parent"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p3, -0x2

    .line 7
    if-eq p2, p3, :cond_3

    .line 8
    .line 9
    const/4 p3, -0x1

    .line 10
    if-eq p2, p3, :cond_2

    .line 11
    .line 12
    const/4 p3, 0x2

    .line 13
    if-eq p2, p3, :cond_1

    .line 14
    .line 15
    const/4 p3, 0x7

    .line 16
    if-eq p2, p3, :cond_0

    .line 17
    .line 18
    new-instance p2, Lcom/startshorts/androidplayer/adapter/settings/SettingsAdapter$c;

    .line 19
    .line 20
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_settings_normal_item:I

    .line 21
    .line 22
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemSettingsNormalItemBinding;

    .line 27
    .line 28
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/settings/SettingsAdapter$c;-><init>(Lcom/startshorts/androidplayer/adapter/settings/SettingsAdapter;Lcom/startshorts/androidplayer/databinding/ItemSettingsNormalItemBinding;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance p2, Lcom/startshorts/androidplayer/adapter/settings/SettingsAdapter$d;

    .line 33
    .line 34
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_settings_auto_unlock_episode:I

    .line 35
    .line 36
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemSettingsAutoUnlockEpisodeBinding;

    .line 41
    .line 42
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/settings/SettingsAdapter$d;-><init>(Lcom/startshorts/androidplayer/adapter/settings/SettingsAdapter;Lcom/startshorts/androidplayer/databinding/ItemSettingsAutoUnlockEpisodeBinding;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    new-instance p2, Lcom/startshorts/androidplayer/adapter/settings/SettingsAdapter$a;

    .line 47
    .line 48
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_settings_auto_unlock_episode:I

    .line 49
    .line 50
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemSettingsAutoUnlockEpisodeBinding;

    .line 55
    .line 56
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/settings/SettingsAdapter$a;-><init>(Lcom/startshorts/androidplayer/adapter/settings/SettingsAdapter;Lcom/startshorts/androidplayer/databinding/ItemSettingsAutoUnlockEpisodeBinding;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    new-instance p2, Lcom/startshorts/androidplayer/adapter/settings/SettingsAdapter$b;

    .line 61
    .line 62
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_settings_divider_line:I

    .line 63
    .line 64
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemSettingsDividerLineBinding;

    .line 69
    .line 70
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/settings/SettingsAdapter$b;-><init>(Lcom/startshorts/androidplayer/adapter/settings/SettingsAdapter;Lcom/startshorts/androidplayer/databinding/ItemSettingsDividerLineBinding;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    new-instance p2, Lcom/startshorts/androidplayer/adapter/settings/SettingsAdapter$e;

    .line 75
    .line 76
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_settings_title:I

    .line 77
    .line 78
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemSettingsTitleBinding;

    .line 83
    .line 84
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/settings/SettingsAdapter$e;-><init>(Lcom/startshorts/androidplayer/adapter/settings/SettingsAdapter;Lcom/startshorts/androidplayer/databinding/ItemSettingsTitleBinding;)V

    .line 85
    .line 86
    .line 87
    :goto_0
    return-object p2
.end method
