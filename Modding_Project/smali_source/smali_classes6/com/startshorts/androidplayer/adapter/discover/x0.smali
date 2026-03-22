.class public final synthetic Lcom/startshorts/androidplayer/adapter/discover/x0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

.field public final synthetic b:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

.field public final synthetic c:Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

.field public final synthetic d:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/x0;->a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/discover/x0;->b:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/startshorts/androidplayer/adapter/discover/x0;->c:Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/startshorts/androidplayer/adapter/discover/x0;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/x0;->a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/discover/x0;->b:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/adapter/discover/x0;->c:Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/startshorts/androidplayer/adapter/discover/x0;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 8
    .line 9
    move-object v4, p1

    .line 10
    check-cast v4, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 11
    .line 12
    check-cast p2, Ljava/lang/Integer;

    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$v;->k(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;I)Lkotlin/Unit;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method
