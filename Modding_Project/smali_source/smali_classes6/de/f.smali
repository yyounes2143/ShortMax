.class public final synthetic Lde/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lde/f;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lde/f;->b:Landroid/app/Activity;

    .line 7
    .line 8
    iput-object p3, p0, Lde/f;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lde/f;->d:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 11
    .line 12
    iput-object p5, p0, Lde/f;->e:Lkotlin/jvm/functions/Function1;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lde/f;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lde/f;->b:Landroid/app/Activity;

    .line 4
    .line 5
    iget-object v2, p0, Lde/f;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lde/f;->d:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 8
    .line 9
    iget-object v4, p0, Lde/f;->e:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->c(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method
