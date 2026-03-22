.class public final synthetic Lvh/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;

.field public final synthetic b:Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lvh/c;->a:Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;

    .line 5
    .line 6
    iput-object p2, p0, Lvh/c;->b:Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;

    .line 7
    .line 8
    iput p3, p0, Lvh/c;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lvh/c;->a:Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Lvh/c;->b:Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;

    .line 4
    .line 5
    iget v2, p0, Lvh/c;->c:I

    .line 6
    .line 7
    check-cast p1, Landroid/view/View;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, p1}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;->L(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;ILandroid/view/View;)Lkotlin/Unit;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
