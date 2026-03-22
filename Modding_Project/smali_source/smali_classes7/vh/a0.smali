.class public final synthetic Lvh/a0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/startshorts/androidplayer/bean/download/DownloadingDramaInfo;

.field public final synthetic b:Lcom/startshorts/androidplayer/ui/activity/download/adapter/DramaDownloadingAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/bean/download/DownloadingDramaInfo;Lcom/startshorts/androidplayer/ui/activity/download/adapter/DramaDownloadingAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lvh/a0;->a:Lcom/startshorts/androidplayer/bean/download/DownloadingDramaInfo;

    .line 5
    .line 6
    iput-object p2, p0, Lvh/a0;->b:Lcom/startshorts/androidplayer/ui/activity/download/adapter/DramaDownloadingAdapter;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lvh/a0;->a:Lcom/startshorts/androidplayer/bean/download/DownloadingDramaInfo;

    .line 2
    .line 3
    iget-object v1, p0, Lvh/a0;->b:Lcom/startshorts/androidplayer/ui/activity/download/adapter/DramaDownloadingAdapter;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DramaDownloadingAdapter;->P(Lcom/startshorts/androidplayer/bean/download/DownloadingDramaInfo;Lcom/startshorts/androidplayer/ui/activity/download/adapter/DramaDownloadingAdapter;Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
