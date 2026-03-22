.class public final synthetic Lnj/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;


# direct methods
.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;ZLcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnj/h;->a:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;

    .line 5
    .line 6
    iput-boolean p2, p0, Lnj/h;->b:Z

    .line 7
    .line 8
    iput-object p3, p0, Lnj/h;->c:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lnj/h;->a:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;

    .line 2
    .line 3
    iget-boolean v1, p0, Lnj/h;->b:Z

    .line 4
    .line 5
    iget-object v2, p0, Lnj/h;->c:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;->w(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;ZLcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
