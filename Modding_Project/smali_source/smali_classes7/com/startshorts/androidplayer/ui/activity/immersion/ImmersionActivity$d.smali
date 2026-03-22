.class public final Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$d;
.super Ljava/lang/Object;
.source "ImmersionActivity.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->f5()Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

.field final synthetic b:Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$d;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$d;->b:Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic c(Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$d;->f(Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature;Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;Lkotlin/jvm/functions/Function0;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$d;->e(Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature;Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;Lkotlin/jvm/functions/Function0;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final e(Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature;Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;Lkotlin/jvm/functions/Function0;)Z
    .locals 1

    .line 1
    const-string v0, "onSelfDialogDismiss"

    .line 2
    .line 3
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lyh/i2;

    .line 7
    .line 8
    invoke-direct {v0, p3, p1, p4}, Lyh/i2;-><init>(Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lkotlin/jvm/functions/Function0;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature;->q(Landroid/app/Activity;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;Lkotlin/jvm/functions/Function0;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method private static final f(Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;->POST:Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->x3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method


# virtual methods
.method public a(Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;)V
    .locals 1

    .line 1
    const-string v0, "displayPosition"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;->POST:Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$d;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->x3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public b(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;)V
    .locals 9

    .line 1
    const-string v0, "episode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "displayPosition"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$d;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$d;->b:Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature;

    .line 14
    .line 15
    new-instance v4, Lyh/h2;

    .line 16
    .line 17
    invoke-direct {v4, v0, v1, p1, p2}, Lyh/h2;-><init>(Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature;Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;)V

    .line 18
    .line 19
    .line 20
    const/16 v7, 0x12

    .line 21
    .line 22
    const/4 v8, 0x0

    .line 23
    const-string v2, "AdMediaVideoDialog"

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v5, 0x1

    .line 27
    const/4 v6, 0x0

    .line 28
    invoke-static/range {v1 .. v8}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->t9(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Ljava/lang/String;Ljava/util/HashMap;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
