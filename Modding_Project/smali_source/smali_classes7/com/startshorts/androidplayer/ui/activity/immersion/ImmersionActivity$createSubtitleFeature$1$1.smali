.class public final Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$createSubtitleFeature$1$1;
.super Ljava/lang/Object;
.source "ImmersionActivity.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/manager/player/feature/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->s5()Lcom/startshorts/androidplayer/manager/player/feature/f;
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$createSubtitleFeature$1$1;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(IIZZ)V
    .locals 6

    .line 1
    if-eqz p3, :cond_1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p3, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$createSubtitleFeature$1$1;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 7
    .line 8
    invoke-static {p3}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v3, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$createSubtitleFeature$1$1$onSubtitleLoad$1;

    .line 13
    .line 14
    iget-object p3, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$createSubtitleFeature$1$1;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 15
    .line 16
    const/4 p4, 0x0

    .line 17
    invoke-direct {v3, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$createSubtitleFeature$1$1$onSubtitleLoad$1;-><init>(IILcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lrs/c;)V

    .line 18
    .line 19
    .line 20
    const/4 v4, 0x3

    .line 21
    const/4 v5, 0x0

    .line 22
    const/4 v1, 0x0

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-static/range {v0 .. v5}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "content"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$createSubtitleFeature$1$1;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->x2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$createSubtitleFeature$1$1;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->T1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;->g0(ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
