.class public final synthetic Lcom/startshorts/androidplayer/ui/fragment/discover/b0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# instance fields
.field public final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/b0;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;

    .line 5
    .line 6
    iput p2, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/b0;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/b0;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;

    .line 2
    .line 3
    iget v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/b0;->b:I

    .line 4
    .line 5
    invoke-static {v0, v1, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->c0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;ILcom/google/android/material/appbar/AppBarLayout;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
