.class public final Lki/a$e;
.super Lyd/d;
.source "RFMGuideDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lki/a;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

.field final synthetic f:Lki/a;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Lki/a;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lki/a$e;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 2
    .line 3
    iput-object p2, p0, Lki/a$e;->f:Lki/a;

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
    .locals 8

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 7
    .line 8
    const/4 v6, 0x6

    .line 9
    const/4 v7, 0x0

    .line 10
    const-string v2, "rfm_pop_click"

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const-wide/16 v4, 0x0

    .line 14
    .line 15
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    sget-object p1, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer;->p:Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$a;

    .line 19
    .line 20
    iget-object v0, p0, Lki/a$e;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "getContext(...)"

    .line 27
    .line 28
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sget-object v1, Lcom/startshorts/androidplayer/ui/fragment/a;->a:Lcom/startshorts/androidplayer/ui/fragment/a;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/ui/fragment/a;->n()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    new-instance v2, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;

    .line 38
    .line 39
    const-string v3, "action"

    .line 40
    .line 41
    const-string v4, "discover_not"

    .line 42
    .line 43
    invoke-direct {v2, v3, v4}, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 v3, 0x1

    .line 47
    new-array v3, v3, [Lcom/startshorts/androidplayer/bean/bundle/IFragmentBundle;

    .line 48
    .line 49
    const/4 v4, 0x0

    .line 50
    aput-object v2, v3, v4

    .line 51
    .line 52
    invoke-virtual {p1, v0, v1, v3}, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$a;->b(Landroid/content/Context;Ljava/lang/String;[Lcom/startshorts/androidplayer/bean/bundle/IFragmentBundle;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lki/a$e;->f:Lki/a;

    .line 56
    .line 57
    invoke-virtual {p1}, Lfi/a;->dismiss()V

    .line 58
    .line 59
    .line 60
    return-void
.end method
