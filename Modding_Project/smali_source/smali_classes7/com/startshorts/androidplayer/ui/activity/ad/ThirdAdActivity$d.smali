.class public final Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity$d;
.super Lyd/d;
.source "ThirdAdActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity;->M()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity$d;->e:Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity;

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
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity$d;->e:Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity;

    .line 7
    .line 8
    const-string v0, "reload ThirdAdActivity webview"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity$d;->e:Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity;->J(Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity;)Lcom/startshorts/androidplayer/databinding/ActivityThirdAdBinding;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ActivityThirdAdBinding;->e:Landroid/webkit/WebView;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    .line 22
    .line 23
    .line 24
    return-void
.end method
