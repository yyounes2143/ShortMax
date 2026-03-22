.class public final Lcom/startshorts/androidplayer/manager/ad/AdManager$k;
.super Ljava/lang/Object;
.source "AdManager.kt"

# interfaces
.implements Lca/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/ad/AdManager;->i0(Ljava/lang/ref/WeakReference;Landroid/view/ViewGroup;JLjava/lang/String;Lcom/hades/aar/admanager/core/AdSize;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$k;->a:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$k;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lca/d;)V
    .locals 9

    .line 1
    const-string v0, "adInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->d0(Z)V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 13
    .line 14
    new-instance v8, Landroid/os/Bundle;

    .line 15
    .line 16
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$k;->b:Ljava/lang/String;

    .line 20
    .line 21
    const/16 v6, 0x8

    .line 22
    .line 23
    const/4 v7, 0x0

    .line 24
    const/4 v5, 0x0

    .line 25
    move-object v2, p1

    .line 26
    move-object v4, v8

    .line 27
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->z(Lcom/startshorts/androidplayer/manager/ad/AdManager;Lca/d;Ljava/lang/String;Landroid/os/Bundle;Lca/h;ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 31
    .line 32
    const/4 v7, 0x4

    .line 33
    const/4 p1, 0x0

    .line 34
    const-string v3, "ad_clicks"

    .line 35
    .line 36
    const-wide/16 v5, 0x0

    .line 37
    .line 38
    move-object v2, v0

    .line 39
    move-object v8, p1

    .line 40
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$k;->a:Lkotlin/jvm/functions/Function0;

    .line 44
    .line 45
    if-eqz p1, :cond_0

    .line 46
    .line 47
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    :cond_0
    return-void
.end method
