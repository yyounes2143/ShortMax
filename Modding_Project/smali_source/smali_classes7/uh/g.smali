.class public final synthetic Luh/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;

.field public final synthetic b:Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Luh/g;->a:Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;

    .line 5
    .line 6
    iput-object p2, p0, Luh/g;->b:Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Luh/g;->a:Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Luh/g;->b:Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;

    .line 4
    .line 5
    check-cast p1, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;

    .line 6
    .line 7
    check-cast p2, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    invoke-static {v0, v1, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->b0(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;I)Lkotlin/Unit;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
