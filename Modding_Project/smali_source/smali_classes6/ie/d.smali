.class public final synthetic Lie/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/adjust/sdk/OnAttributionChangedListener;


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
    iput-object p1, p0, Lie/d;->a:Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAttributionChanged(Lcom/adjust/sdk/AdjustAttribution;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lie/d;->a:Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;->r(Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;Lcom/adjust/sdk/AdjustAttribution;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
