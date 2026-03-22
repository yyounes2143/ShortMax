.class public final Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$c$a;
.super Lyd/d;
.source "LibraryHomeGridAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$c;->h(ILcom/startshorts/androidplayer/bean/shorts/BaseShorts;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter;

.field final synthetic f:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$c$a;->e:Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$c$a;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    const/4 p2, 0x0

    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    invoke-direct {p0, v0, v1, p1, p2}, Lyd/d;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 10
    .line 11
    .line 12
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
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$c$a;->e:Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter;->q()Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$c$a;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 16
    .line 17
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;->getRankingId()Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    const-string v1, "ranking_list_zi"

    .line 30
    .line 31
    invoke-interface {p1, v1, v0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method
