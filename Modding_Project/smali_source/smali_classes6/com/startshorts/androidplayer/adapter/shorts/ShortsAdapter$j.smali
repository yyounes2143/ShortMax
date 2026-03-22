.class public final Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$j;
.super Ljava/lang/Object;
.source "ShortsAdapter.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;->W(ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;

.field final synthetic b:I

.field final synthetic c:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$j;->a:Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;

    .line 2
    .line 3
    iput p2, p0, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$j;->b:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$j;->c:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "shortsLabel"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$j;->a:Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;->P()Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$d;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget v1, p0, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$j;->b:I

    .line 16
    .line 17
    iget-object v2, p0, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$j;->c:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, p1}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$d;->u(ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
