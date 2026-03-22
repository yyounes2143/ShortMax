.class public final synthetic Lcom/startshorts/androidplayer/ui/fragment/immersion/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;

.field public final synthetic b:Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/j;->a:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/j;->b:Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/j;->a:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/j;->b:Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$g;->b(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
