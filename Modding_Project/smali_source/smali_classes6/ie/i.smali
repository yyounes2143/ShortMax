.class public final synthetic Lie/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public final synthetic a:Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lie/i;->a:Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lie/i;->a:Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;->p(Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
