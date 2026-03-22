.class public final Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$c;
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$c;->e:Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;

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
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$c;->e:Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;

    .line 7
    .line 8
    const-wide/16 v0, 0x3

    .line 9
    .line 10
    invoke-static {p1, v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->I(Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;J)V

    .line 11
    .line 12
    .line 13
    sget-object p1, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->Companion:Lcom/startshorts/androidplayer/bean/library/LibraryCategory$Companion;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$c;->e:Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "requireContext(...)"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory$Companion;->createClassAll(Landroid/content/Context;)Lcom/startshorts/androidplayer/bean/library/LibraryCategory;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$c;->e:Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->C(Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;)Landroid/util/LongSparseArray;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$c;->e:Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->C(Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;)Landroid/util/LongSparseArray;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getId()J

    .line 46
    .line 47
    .line 48
    move-result-wide v1

    .line 49
    invoke-virtual {v0, v1, v2, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$c;->e:Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;

    .line 53
    .line 54
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->F(Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$c;->e:Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;

    .line 58
    .line 59
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->G(Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$c;->e:Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;

    .line 63
    .line 64
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->H(Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method
