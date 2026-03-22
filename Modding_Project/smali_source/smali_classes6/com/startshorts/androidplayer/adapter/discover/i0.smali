.class public final synthetic Lcom/startshorts/androidplayer/adapter/discover/i0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

.field public final synthetic b:I

.field public final synthetic c:Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

.field public final synthetic d:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;


# direct methods
.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/i0;->a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 5
    .line 6
    iput p2, p0, Lcom/startshorts/androidplayer/adapter/discover/i0;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/startshorts/androidplayer/adapter/discover/i0;->c:Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/startshorts/androidplayer/adapter/discover/i0;->d:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/i0;->a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 2
    .line 3
    iget v1, p0, Lcom/startshorts/androidplayer/adapter/discover/i0;->b:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/adapter/discover/i0;->c:Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/startshorts/androidplayer/adapter/discover/i0;->d:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3, p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$r;->k(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
