.class public final Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$a$a;
.super Lyd/d;
.source "ShortsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$a;->k(ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;

.field final synthetic f:I

.field final synthetic g:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$a$a;->e:Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;

    .line 2
    .line 3
    iput p2, p0, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$a$a;->f:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$a$a;->g:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    const/4 p2, 0x0

    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    invoke-direct {p0, v0, v1, p1, p2}, Lyd/d;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "v"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$a$a;->e:Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;->P()Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$d;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget v0, p0, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$a$a;->f:I

    .line 16
    .line 17
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$a$a;->g:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 18
    .line 19
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$d;->o(ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
