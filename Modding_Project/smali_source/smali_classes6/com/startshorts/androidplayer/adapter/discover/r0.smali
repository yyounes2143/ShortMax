.class public final synthetic Lcom/startshorts/androidplayer/adapter/discover/r0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

.field public final synthetic b:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

.field public final synthetic c:Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;


# direct methods
.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/r0;->a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/discover/r0;->b:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/startshorts/androidplayer/adapter/discover/r0;->c:Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/r0;->a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/discover/r0;->b:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/adapter/discover/r0;->c:Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 6
    .line 7
    check-cast p1, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 8
    .line 9
    check-cast p2, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    invoke-static {v0, v1, v2, p1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$t;->k(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;I)Lkotlin/Unit;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method
