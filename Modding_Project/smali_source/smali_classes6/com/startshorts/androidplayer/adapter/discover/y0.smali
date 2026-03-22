.class public final synthetic Lcom/startshorts/androidplayer/adapter/discover/y0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:I

.field public final synthetic c:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

.field public final synthetic d:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;ILcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/y0;->a:Ljava/util/List;

    .line 5
    .line 6
    iput p2, p0, Lcom/startshorts/androidplayer/adapter/discover/y0;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/startshorts/androidplayer/adapter/discover/y0;->c:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/startshorts/androidplayer/adapter/discover/y0;->d:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/y0;->a:Ljava/util/List;

    .line 2
    .line 3
    iget v1, p0, Lcom/startshorts/androidplayer/adapter/discover/y0;->b:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/adapter/discover/y0;->c:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/startshorts/androidplayer/adapter/discover/y0;->d:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 8
    .line 9
    check-cast p1, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$v;->l(Ljava/util/List;ILcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)Lkotlin/Unit;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
