.class public final Lcom/startshorts/androidplayer/bean/eventbus/RefreshSpecifiedDiscoverFragmentEvent;
.super Ljava/lang/Object;
.source "RefreshSpecifiedDiscoverFragmentEvent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final tabId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/startshorts/androidplayer/bean/eventbus/RefreshSpecifiedDiscoverFragmentEvent;->tabId:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getTabId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/eventbus/RefreshSpecifiedDiscoverFragmentEvent;->tabId:I

    .line 2
    .line 3
    return v0
.end method
