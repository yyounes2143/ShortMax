.class public final Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$initProcessLifecycleOwner$1;
.super Ljava/lang/Object;
.source "AppLifecycleInitializer.kt"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$initProcessLifecycleOwner$1;->a:Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lud/a;->a:Lud/a;

    .line 7
    .line 8
    invoke-virtual {p1}, Lud/a;->t()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p1, v0}, Lud/a;->y0(Z)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance v1, Lcom/startshorts/androidplayer/bean/eventbus/AppStateEvent;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Lcom/startshorts/androidplayer/bean/eventbus/AppStateEvent;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v1}, Lau/c;->l(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$initProcessLifecycleOwner$1;->a:Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;->i(Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;)Lkotlinx/coroutines/r;

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 4

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lud/a;->a:Lud/a;

    .line 7
    .line 8
    invoke-virtual {p1}, Lud/a;->t()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1, v0}, Lud/a;->y0(Z)V

    .line 17
    .line 18
    .line 19
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->a:Lcom/startshorts/androidplayer/manager/push/util/PushUtil;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->I()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-object v1, p0, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$initProcessLifecycleOwner$1;->a:Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;

    .line 26
    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v3, "onBackground -> screenOn("

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const/16 v3, 0x29

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/startup/BaseInitializer;->b(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    xor-int/lit8 v0, v0, 0x1

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lud/a;->m0(Z)V

    .line 55
    .line 56
    .line 57
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    new-instance v0, Lcom/startshorts/androidplayer/bean/eventbus/AppStateEvent;

    .line 62
    .line 63
    const/4 v1, 0x2

    .line 64
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/bean/eventbus/AppStateEvent;-><init>(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Lau/c;->l(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$initProcessLifecycleOwner$1;->a:Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;

    .line 71
    .line 72
    invoke-static {p1}, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;->h(Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;)Lkotlinx/coroutines/r;

    .line 73
    .line 74
    .line 75
    return-void
.end method
