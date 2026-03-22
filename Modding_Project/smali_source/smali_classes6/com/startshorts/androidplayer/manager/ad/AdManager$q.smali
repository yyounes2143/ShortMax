.class public final Lcom/startshorts/androidplayer/manager/ad/AdManager$q;
.super Ljava/lang/Object;
.source "AdManager.kt"

# interfaces
.implements Lca/f$e;


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
.field final synthetic a:Lcom/startshorts/androidplayer/manager/ad/AdManager$a;

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

.field final synthetic d:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

.field final synthetic e:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/manager/ad/AdManager$a;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/manager/ad/AdManager$a;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lca/d;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$q;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager$a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$q;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$q;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$q;->d:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$q;->e:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public a(Lca/d;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$q;->e:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    :cond_0
    sget-object p1, Lcom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser;->a:Lcom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser;

    .line 11
    .line 12
    sget-object p2, Lcom/startshorts/androidplayer/bean/ad/AdScene;->NATIVE:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser;->i(Lcom/startshorts/androidplayer/bean/ad/AdScene;)V

    .line 15
    .line 16
    .line 17
    sget-object p1, Lcom/startshorts/androidplayer/manager/configure/ad/c;->a:Lcom/startshorts/androidplayer/manager/configure/ad/c;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/configure/ad/c;->h()Lcom/startshorts/androidplayer/manager/configure/ad/c$a;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object p2, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$q;->c:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/configure/ad/c$a;->c(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
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
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$q;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 7
    .line 8
    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 9
    .line 10
    sget-object p1, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->O()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    xor-int/lit8 p1, p1, 0x1

    .line 17
    .line 18
    return p1
.end method

.method public c(Lca/d;)V
    .locals 3

    .line 1
    const-string v0, "adInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$q;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager$a;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/ad/AdManager$a;->c()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$q;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 12
    .line 13
    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 14
    .line 15
    sget-object v0, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$q;->c:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$q;->d:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 20
    .line 21
    invoke-static {v0, v1, p1, v2}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->n(Lcom/startshorts/androidplayer/manager/ad/AdManager;Ljava/lang/String;Lca/d;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 22
    .line 23
    .line 24
    sget-object v1, Lcom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser;->a:Lcom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser;

    .line 25
    .line 26
    sget-object v2, Lcom/startshorts/androidplayer/bean/ad/AdScene;->NATIVE:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser;->i(Lcom/startshorts/androidplayer/bean/ad/AdScene;)V

    .line 29
    .line 30
    .line 31
    sget-object v1, Lcom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager;->a:Lcom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager;

    .line 32
    .line 33
    invoke-virtual {p1}, Lca/d;->c()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager;->k(Ljava/lang/String;)Lkotlinx/coroutines/r;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a0(Lcom/startshorts/androidplayer/bean/ad/AdScene;)Lkotlinx/coroutines/r;

    .line 41
    .line 42
    .line 43
    sget-object p1, Lcom/startshorts/androidplayer/manager/configure/ad/b;->d:Lcom/startshorts/androidplayer/manager/configure/ad/b$a;

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/configure/ad/b$a;->e()Lcom/startshorts/androidplayer/manager/configure/ad/b;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-eqz p1, :cond_0

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/configure/ad/b;->l()V

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
.end method
