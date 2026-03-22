.class public final synthetic Lie/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/adjust/sdk/OnDeferredDeeplinkResponseListener;


# instance fields
.field public final synthetic a:Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lie/e;->a:Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final launchReceivedDeeplink(Landroid/net/Uri;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lie/e;->a:Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;->s(Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;Landroid/net/Uri;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
