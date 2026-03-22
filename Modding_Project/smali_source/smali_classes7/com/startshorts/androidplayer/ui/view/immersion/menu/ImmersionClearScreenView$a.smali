.class public final Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionClearScreenView$a;
.super Lyd/d;
.source "ImmersionClearScreenView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionClearScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionClearScreenView;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionClearScreenView;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionClearScreenView$a;->e:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionClearScreenView;

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
    .locals 8

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionClearScreenView$a;->e:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionClearScreenView;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionClearScreenView;->b(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionClearScreenView;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    xor-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionClearScreenView;->c(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionClearScreenView;Z)V

    .line 15
    .line 16
    .line 17
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 18
    .line 19
    new-instance v3, Landroid/os/Bundle;

    .line 20
    .line 21
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionClearScreenView$a;->e:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionClearScreenView;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionClearScreenView;->b(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionClearScreenView;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    const-string p1, "clear"

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string p1, "cancel"

    .line 36
    .line 37
    :goto_0
    const-string v0, "status"

    .line 38
    .line 39
    invoke-virtual {v3, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 43
    .line 44
    const/4 v6, 0x4

    .line 45
    const/4 v7, 0x0

    .line 46
    const-string v2, "clear_screen"

    .line 47
    .line 48
    const-wide/16 v4, 0x0

    .line 49
    .line 50
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionClearScreenView$a;->e:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionClearScreenView;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionClearScreenView;->d()V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionClearScreenView$a;->e:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionClearScreenView;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionClearScreenView;->getMListener()Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionClearScreenView$b;

    .line 61
    .line 62
    .line 63
    return-void
.end method
