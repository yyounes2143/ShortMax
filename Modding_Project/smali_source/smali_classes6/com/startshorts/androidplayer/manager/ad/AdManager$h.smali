.class public final Lcom/startshorts/androidplayer/manager/ad/AdManager$h;
.super Ljava/lang/Object;
.source "AdManager.kt"

# interfaces
.implements Lca/f$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/ad/AdManager;->e0(Landroid/app/Activity;Landroid/view/ViewGroup;JJLjava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lgt/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic c:Lcom/startshorts/androidplayer/manager/ad/AdManager$a;

.field final synthetic d:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lca/h;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic e:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/startshorts/androidplayer/manager/ad/AdManager$a;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lcom/startshorts/androidplayer/manager/ad/AdManager$a;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lca/h;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$h;->a:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$h;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$h;->c:Lcom/startshorts/androidplayer/manager/ad/AdManager$a;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$h;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$h;->e:Lkotlin/jvm/functions/Function0;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public a(Lca/d;Ljava/lang/Object;)V
    .locals 11

    .line 1
    const-string p2, "adInfo"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v1, "showAppOpenAd -> onDismiss -> scene("

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$h;->a:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const/16 v1, 0x29

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "AdManager"

    .line 34
    .line 35
    invoke-virtual {p2, v1, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object p2, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$h;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 42
    .line 43
    sget-object p2, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$h;->a:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v6, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$h;->c:Lcom/startshorts/androidplayer/manager/ad/AdManager$a;

    .line 48
    .line 49
    const/16 v7, 0x8

    .line 50
    .line 51
    const/4 v8, 0x0

    .line 52
    const/4 v3, 0x1

    .line 53
    const/4 v5, 0x0

    .line 54
    move-object v1, p2

    .line 55
    move-object v4, p1

    .line 56
    invoke-static/range {v1 .. v8}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->T(Lcom/startshorts/androidplayer/manager/ad/AdManager;Ljava/lang/String;ZLca/d;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/manager/ad/AdManager$a;ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$h;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 60
    .line 61
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 62
    .line 63
    move-object v4, v0

    .line 64
    check-cast v4, Lca/h;

    .line 65
    .line 66
    if-eqz v4, :cond_0

    .line 67
    .line 68
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$h;->a:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v8, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$h;->c:Lcom/startshorts/androidplayer/manager/ad/AdManager$a;

    .line 71
    .line 72
    const/16 v9, 0x21

    .line 73
    .line 74
    const/4 v10, 0x0

    .line 75
    const/4 v2, 0x0

    .line 76
    const/4 v5, 0x1

    .line 77
    const/4 v7, 0x0

    .line 78
    move-object v1, p2

    .line 79
    move-object v6, p1

    .line 80
    invoke-static/range {v1 .. v10}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->R(Lcom/startshorts/androidplayer/manager/ad/AdManager;Ljava/lang/String;Ljava/lang/String;Lca/h;ZLca/d;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/manager/ad/AdManager$a;ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$h;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 84
    .line 85
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 86
    .line 87
    if-nez v0, :cond_1

    .line 88
    .line 89
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$h;->a:Ljava/lang/String;

    .line 90
    .line 91
    invoke-static {p2, v0, p1}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->p(Lcom/startshorts/androidplayer/manager/ad/AdManager;Ljava/lang/String;Lca/d;)Lkotlinx/coroutines/r;

    .line 92
    .line 93
    .line 94
    :cond_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$h;->e:Lkotlin/jvm/functions/Function0;

    .line 95
    .line 96
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    return-void
.end method
