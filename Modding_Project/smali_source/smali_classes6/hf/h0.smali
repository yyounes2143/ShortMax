.class public final synthetic Lhf/h0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/startshorts/androidplayer/manager/immersion/feature/w;


# direct methods
.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Lcom/startshorts/androidplayer/manager/immersion/feature/w;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lhf/h0;->a:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 5
    .line 6
    iput-object p2, p0, Lhf/h0;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lhf/h0;->c:Lcom/startshorts/androidplayer/manager/immersion/feature/w;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lhf/h0;->a:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    iget-object v1, p0, Lhf/h0;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lhf/h0;->c:Lcom/startshorts/androidplayer/manager/immersion/feature/w;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/startshorts/androidplayer/manager/immersion/feature/w;->b(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Lcom/startshorts/androidplayer/manager/immersion/feature/w;)Lkotlin/Unit;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
