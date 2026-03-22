.class public final Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$e;
.super Lyd/d;
.source "LibraryActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->s0(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;

.field final synthetic f:Lcom/startshorts/androidplayer/bean/library/LibraryCategory;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;Lcom/startshorts/androidplayer/bean/library/LibraryCategory;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$e;->e:Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$e;->f:Lcom/startshorts/androidplayer/bean/library/LibraryCategory;

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
    .locals 4

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$e;->e:Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->e0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$e;->f:Lcom/startshorts/androidplayer/bean/library/LibraryCategory;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getId()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    cmp-long p1, v0, v2

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$e;->e:Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$e;->f:Lcom/startshorts/androidplayer/bean/library/LibraryCategory;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getId()J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    invoke-static {p1, v0, v1}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->l0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;J)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$e;->e:Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->j0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$e;->e:Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    const/4 v1, 0x1

    .line 42
    invoke-static {p1, v0, v1}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->i0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;II)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$e;->e:Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;

    .line 46
    .line 47
    const-string v0, "library_top"

    .line 48
    .line 49
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->h0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method
