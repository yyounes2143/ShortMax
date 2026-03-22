.class public final synthetic Lxi/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lxi/d;->a:Lkotlin/jvm/internal/Ref$IntRef;

    .line 5
    .line 6
    iput-boolean p2, p0, Lxi/d;->b:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lxi/d;->a:Lkotlin/jvm/internal/Ref$IntRef;

    .line 2
    .line 3
    iget-boolean v1, p0, Lxi/d;->b:Z

    .line 4
    .line 5
    check-cast p1, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->X(Lkotlin/jvm/internal/Ref$IntRef;ZLcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
