.class public final Lcom/startshorts/androidplayer/manager/ad/AdManager$e0;
.super Ljava/lang/Object;
.source "AdManager.kt"

# interfaces
.implements Lca/f$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/ad/AdManager;->n0(Ljava/lang/ref/WeakReference;Landroid/view/ViewGroup;ILjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lca/f$f;)V
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

.field final synthetic b:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lca/d;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lca/d;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$e0;->a:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$e0;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$e0;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Lca/d;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v1, "showNativeAd failed -> "

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const-string v0, "AdManager"

    .line 22
    .line 23
    invoke-virtual {p1, v0, p2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sget-object p1, Lcom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser;->a:Lcom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser;

    .line 27
    .line 28
    sget-object p2, Lcom/startshorts/androidplayer/bean/ad/AdScene;->NATIVE:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser;->i(Lcom/startshorts/androidplayer/bean/ad/AdScene;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public b(Lca/d;)Z
    .locals 1

    .line 1
    const-string v0, "adInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$e0;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 7
    .line 8
    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    return p1
.end method

.method public c(Lca/d;)V
    .locals 7

    .line 1
    const-string v0, "adInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$e0;->a:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$e0;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 14
    .line 15
    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 16
    .line 17
    sget-object v0, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$e0;->c:Ljava/lang/String;

    .line 20
    .line 21
    const/4 v5, 0x4

    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v4, 0x0

    .line 24
    move-object v1, v0

    .line 25
    move-object v3, p1

    .line 26
    invoke-static/range {v1 .. v6}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->V(Lcom/startshorts/androidplayer/manager/ad/AdManager;Ljava/lang/String;Lca/d;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    sget-object v1, Lcom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser;->a:Lcom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser;

    .line 30
    .line 31
    sget-object v2, Lcom/startshorts/androidplayer/bean/ad/AdScene;->NATIVE:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser;->i(Lcom/startshorts/androidplayer/bean/ad/AdScene;)V

    .line 34
    .line 35
    .line 36
    sget-object v1, Lcom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager;->a:Lcom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager;

    .line 37
    .line 38
    invoke-virtual {p1}, Lca/d;->c()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager;->k(Ljava/lang/String;)Lkotlinx/coroutines/r;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a0(Lcom/startshorts/androidplayer/bean/ad/AdScene;)Lkotlinx/coroutines/r;

    .line 46
    .line 47
    .line 48
    return-void
.end method
