.class public final synthetic Lwi/t;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

.field public final synthetic d:Lcom/startshorts/androidplayer/bean/settings/AppSettings;

.field public final synthetic e:Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;Ljava/util/List;Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;Lcom/startshorts/androidplayer/bean/settings/AppSettings;Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lwi/t;->a:Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;

    .line 5
    .line 6
    iput-object p2, p0, Lwi/t;->b:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, Lwi/t;->c:Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 9
    .line 10
    iput-object p4, p0, Lwi/t;->d:Lcom/startshorts/androidplayer/bean/settings/AppSettings;

    .line 11
    .line 12
    iput-object p5, p0, Lwi/t;->e:Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lwi/t;->a:Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;

    .line 2
    .line 3
    iget-object v1, p0, Lwi/t;->b:Ljava/util/List;

    .line 4
    .line 5
    iget-object v2, p0, Lwi/t;->c:Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 6
    .line 7
    iget-object v3, p0, Lwi/t;->d:Lcom/startshorts/androidplayer/bean/settings/AppSettings;

    .line 8
    .line 9
    iget-object v4, p0, Lwi/t;->e:Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;

    .line 10
    .line 11
    move-object v5, p1

    .line 12
    move v6, p2

    .line 13
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$d;->b(Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;Ljava/util/List;Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;Lcom/startshorts/androidplayer/bean/settings/AppSettings;Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;Landroid/content/DialogInterface;I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
