.class public final Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity$d;
.super Lyd/d;
.source "SearchActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->s1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity$d;->e:Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;

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
    .locals 1

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity$d;->e:Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->e1(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;)Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget-object v0, Lcom/startshorts/androidplayer/viewmodel/search/a$b;->a:Lcom/startshorts/androidplayer/viewmodel/search/a$b;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel;->B(Lcom/startshorts/androidplayer/viewmodel/search/a;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
