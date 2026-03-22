.class public final Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$c;
.super Ljava/lang/Object;
.source "ShortsFragment.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/manager/immersion/feature/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->T1()Lcom/startshorts/androidplayer/manager/immersion/feature/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$c;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ZZLcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;)V
    .locals 1

    .line 1
    const-string v0, "from"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "state"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p4, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$c;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 12
    .line 13
    invoke-static {p4}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->w0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 14
    .line 15
    .line 16
    move-result-object p4

    .line 17
    if-nez p4, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-virtual {p4}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->isAd()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    if-eqz p3, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    invoke-virtual {p4}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isTrailer()Z

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    if-eqz p3, :cond_3

    .line 35
    .line 36
    invoke-virtual {p4}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->isRelease()Ljava/lang/Boolean;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 41
    .line 42
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p3

    .line 46
    if-eqz p3, :cond_3

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    if-eqz p2, :cond_4

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_4
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$c;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 53
    .line 54
    invoke-static {p2}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->c1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)Z

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-nez p2, :cond_5

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_5
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$c;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 62
    .line 63
    invoke-static {p2}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->Z0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)Z

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    if-nez p2, :cond_6

    .line 68
    .line 69
    :goto_0
    return-void

    .line 70
    :cond_6
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$c;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 71
    .line 72
    invoke-static {p2, p1, p4}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->x1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public b()V
    .locals 0

    .line 1
    return-void
.end method
