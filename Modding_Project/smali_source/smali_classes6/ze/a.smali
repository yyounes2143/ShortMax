.class public final synthetic Lze/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

.field public final synthetic b:Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

.field public final synthetic c:Landroidx/fragment/app/FragmentManager;

.field public final synthetic d:Ljava/lang/Integer;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Landroidx/fragment/app/FragmentManager;Ljava/lang/Integer;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lze/a;->a:Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 5
    .line 6
    iput-object p2, p0, Lze/a;->b:Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 7
    .line 8
    iput-object p3, p0, Lze/a;->c:Landroidx/fragment/app/FragmentManager;

    .line 9
    .line 10
    iput-object p4, p0, Lze/a;->d:Ljava/lang/Integer;

    .line 11
    .line 12
    iput-boolean p5, p0, Lze/a;->e:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lze/a;->a:Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 2
    .line 3
    iget-object v1, p0, Lze/a;->b:Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 4
    .line 5
    iget-object v2, p0, Lze/a;->c:Landroidx/fragment/app/FragmentManager;

    .line 6
    .line 7
    iget-object v3, p0, Lze/a;->d:Ljava/lang/Integer;

    .line 8
    .line 9
    iget-boolean v4, p0, Lze/a;->e:Z

    .line 10
    .line 11
    move-object v5, p1

    .line 12
    invoke-static/range {v0 .. v5}, Lze/c;->a(Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Landroidx/fragment/app/FragmentManager;Ljava/lang/Integer;ZLandroid/view/View;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
