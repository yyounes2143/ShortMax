.class public final Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog$initAdapter$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "TagDrawerDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->X()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog$initAdapter$1;->a:Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog$initAdapter$1;->a:Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;->T(Lcom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog;)Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "null cannot be cast to non-null type com.startshorts.androidplayer.adapter.tag.TagDrawerAdapter"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Lcom/startshorts/androidplayer/adapter/tag/TagDrawerAdapter;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;->getItemViewType(I)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const/4 v0, 0x1

    .line 19
    if-eq p1, v0, :cond_0

    .line 20
    .line 21
    const v1, 0xf423f

    .line 22
    .line 23
    .line 24
    if-eq p1, v1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x3

    .line 28
    :goto_0
    return v0
.end method
