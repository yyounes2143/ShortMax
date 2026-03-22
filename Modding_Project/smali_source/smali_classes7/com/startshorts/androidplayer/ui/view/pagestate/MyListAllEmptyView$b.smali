.class public final Lcom/startshorts/androidplayer/ui/view/pagestate/MyListAllEmptyView$b;
.super Lyd/d;
.source "MyListAllEmptyView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/view/pagestate/MyListAllEmptyView;->u(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/pagestate/MyListAllEmptyView$b;->e:Landroid/content/Context;

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
    .locals 9

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v8, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;

    .line 11
    .line 12
    sget-object v2, Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;->DISCOVER:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 13
    .line 14
    const/16 v6, 0xe

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x0

    .line 20
    move-object v1, v8

    .line 21
    invoke-direct/range {v1 .. v7}, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;-><init>(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v8}, Lau/c;->l(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/pagestate/MyListAllEmptyView$b;->e:Landroid/content/Context;

    .line 28
    .line 29
    instance-of v0, v0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    instance-of v0, p1, Landroid/app/Activity;

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    check-cast p1, Landroid/app/Activity;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 p1, 0x0

    .line 45
    :goto_0
    if-eqz p1, :cond_1

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void
.end method
