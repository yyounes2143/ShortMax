.class public final Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$i;
.super Ljava/lang/Object;
.source "ImmersionActivity.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/manager/immersion/feature/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->k5()Lcom/startshorts/androidplayer/manager/immersion/feature/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$i;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

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
    .locals 2

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
    iget-object p4, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$i;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 12
    .line 13
    invoke-static {p4}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->S1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$i;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->a3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p4}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isTrailer()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {p4}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayIsRelease()Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 40
    .line 41
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    if-nez p2, :cond_3

    .line 49
    .line 50
    if-eqz p3, :cond_3

    .line 51
    .line 52
    :goto_0
    return-void

    .line 53
    :cond_3
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$i;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 54
    .line 55
    invoke-static {p2, p1, p4}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->d4(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public b()V
    .locals 0

    .line 1
    return-void
.end method
