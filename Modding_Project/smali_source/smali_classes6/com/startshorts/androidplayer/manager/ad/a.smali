.class public final synthetic Lcom/startshorts/androidplayer/manager/ad/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/ad/a;->a:Landroid/app/Activity;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/ad/a;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/startshorts/androidplayer/manager/ad/a;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/startshorts/androidplayer/manager/ad/a;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/startshorts/androidplayer/manager/ad/a;->e:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/ad/a;->a:Landroid/app/Activity;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/ad/a;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/ad/a;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/ad/a;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 8
    .line 9
    iget-boolean v4, p0, Lcom/startshorts/androidplayer/manager/ad/a;->e:Z

    .line 10
    .line 11
    check-cast p1, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2;->i(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;ZZ)Lkotlin/Unit;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method
