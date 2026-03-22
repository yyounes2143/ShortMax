.class public final Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$s0;
.super Ljava/lang/Object;
.source "ImmersionActivity.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->Y9(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$s0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$s0;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$s0;->c:Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/Boolean;)V
    .locals 2

    .line 1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$s0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->a2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lve/g;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lve/g;->f()V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$s0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->h2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$s0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 27
    .line 28
    const/4 p2, 0x1

    .line 29
    invoke-static {p1, p2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->G3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Z)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$s0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->S1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$s0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$s0;->b:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v0, p1, p2, v1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->z4(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$s0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 49
    .line 50
    const-string p2, "UnlockEpisodeMethodDialog"

    .line 51
    .line 52
    invoke-static {p1, p2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->t3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$s0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 56
    .line 57
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$s0;->b:Ljava/lang/String;

    .line 58
    .line 59
    const/4 v0, 0x2

    .line 60
    const/4 v1, 0x0

    .line 61
    invoke-static {p1, p2, v1, v0, v1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->Ia(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$s0;->c:Lkotlin/jvm/functions/Function0;

    .line 65
    .line 66
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    return-void
.end method
