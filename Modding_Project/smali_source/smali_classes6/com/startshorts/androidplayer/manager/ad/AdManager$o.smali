.class public final Lcom/startshorts/androidplayer/manager/ad/AdManager$o;
.super Ljava/lang/Object;
.source "AdManager.kt"

# interfaces
.implements Lca/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/ad/AdManager;->j0(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;IILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;JJLkotlin/jvm/functions/Function1;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$o;->a:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$o;->b:Ljava/lang/String;

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
    .locals 10

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
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$o;->a:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v9, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$o;->b:Ljava/lang/String;

    .line 22
    .line 23
    const/16 v6, 0x8

    .line 24
    .line 25
    const/4 v7, 0x0

    .line 26
    const/4 v5, 0x0

    .line 27
    move-object v2, p1

    .line 28
    move-object v4, v8

    .line 29
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->z(Lcom/startshorts/androidplayer/manager/ad/AdManager;Lca/d;Ljava/lang/String;Landroid/os/Bundle;Lca/h;ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_0

    .line 37
    .line 38
    const-string p1, "from"

    .line 39
    .line 40
    invoke-virtual {v8, p1, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 44
    .line 45
    const/4 v7, 0x4

    .line 46
    const/4 p1, 0x0

    .line 47
    const-string v3, "ad_clicks"

    .line 48
    .line 49
    const-wide/16 v5, 0x0

    .line 50
    .line 51
    move-object v2, v0

    .line 52
    move-object v4, v8

    .line 53
    move-object v8, p1

    .line 54
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method
