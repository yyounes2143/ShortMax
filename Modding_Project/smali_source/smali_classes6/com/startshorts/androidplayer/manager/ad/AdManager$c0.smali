.class public final Lcom/startshorts/androidplayer/manager/ad/AdManager$c0;
.super Ljava/lang/Object;
.source "AdManager.kt"

# interfaces
.implements Lca/f$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/ad/AdManager;->m0(Ljava/lang/ref/WeakReference;JLjava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lca/h;",
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

.field final synthetic c:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

.field final synthetic f:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic g:Lcom/startshorts/androidplayer/manager/ad/AdManager$a;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/startshorts/androidplayer/manager/ad/AdManager$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lca/h;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lca/d;",
            ">;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lcom/startshorts/androidplayer/manager/ad/AdManager$a;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$c0;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$c0;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$c0;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$c0;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$c0;->e:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$c0;->f:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$c0;->g:Lcom/startshorts/androidplayer/manager/ad/AdManager$a;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public a(Lca/h;)V
    .locals 11

    .line 1
    const-string v0, "ecpmValue"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$c0;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 7
    .line 8
    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$c0;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 11
    .line 12
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 13
    .line 14
    move-object v5, v0

    .line 15
    check-cast v5, Lca/d;

    .line 16
    .line 17
    if-eqz v5, :cond_0

    .line 18
    .line 19
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$c0;->d:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v6, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$c0;->e:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 22
    .line 23
    sget-object v1, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 24
    .line 25
    const/4 v7, 0x1

    .line 26
    const/4 v8, 0x0

    .line 27
    const/4 v2, 0x0

    .line 28
    move-object v4, p1

    .line 29
    invoke-static/range {v1 .. v8}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->X(Lcom/startshorts/androidplayer/manager/ad/AdManager;Ljava/lang/String;Ljava/lang/String;Lca/h;Lca/d;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$c0;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 33
    .line 34
    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$c0;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 39
    .line 40
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 41
    .line 42
    move-object v6, v0

    .line 43
    check-cast v6, Lca/d;

    .line 44
    .line 45
    if-eqz v6, :cond_1

    .line 46
    .line 47
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$c0;->d:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$c0;->f:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 50
    .line 51
    iget-object v8, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$c0;->g:Lcom/startshorts/androidplayer/manager/ad/AdManager$a;

    .line 52
    .line 53
    sget-object v1, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 54
    .line 55
    invoke-static {v1, v3, v6}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->q(Lcom/startshorts/androidplayer/manager/ad/AdManager;Ljava/lang/String;Lca/d;)V

    .line 56
    .line 57
    .line 58
    iget-boolean v5, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 59
    .line 60
    const/16 v9, 0x21

    .line 61
    .line 62
    const/4 v10, 0x0

    .line 63
    const/4 v2, 0x0

    .line 64
    const/4 v7, 0x0

    .line 65
    move-object v4, p1

    .line 66
    invoke-static/range {v1 .. v10}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->R(Lcom/startshorts/androidplayer/manager/ad/AdManager;Ljava/lang/String;Ljava/lang/String;Lca/h;ZLca/d;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/manager/ad/AdManager$a;ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    return-void
.end method
