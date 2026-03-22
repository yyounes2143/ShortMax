.class public final Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$d;
.super Lyd/d;
.source "LibraryLabelFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$d;->e:Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    invoke-direct {p0, v1, v2, p1, v0}, Lyd/d;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$d;->e:Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->dismiss()V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$d;->e:Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->B(Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;)Lat/n;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$d;->e:Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->E(Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$d;->e:Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;

    .line 30
    .line 31
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->D(Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$d;->e:Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;

    .line 40
    .line 41
    invoke-static {v2}, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->C(Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;)Landroid/util/LongSparseArray;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-interface {p1, v0, v1, v2}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void
.end method
