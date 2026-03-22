.class public final Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$a;
.super Lyd/d;
.source "LibraryLabelFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->K(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;

.field final synthetic f:Lcom/startshorts/androidplayer/bean/library/LibraryCategory;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;Lcom/startshorts/androidplayer/bean/library/LibraryCategory;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$a;->e:Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$a;->f:Lcom/startshorts/androidplayer/bean/library/LibraryCategory;

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
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$a;->e:Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$a;->f:Lcom/startshorts/androidplayer/bean/library/LibraryCategory;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getId()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    invoke-static {p1, v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->I(Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;J)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$a;->e:Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->G(Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
