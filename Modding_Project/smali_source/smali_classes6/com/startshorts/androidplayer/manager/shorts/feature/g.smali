.class public final Lcom/startshorts/androidplayer/manager/shorts/feature/g;
.super Ljava/lang/Object;
.source "ProgressAdjustTipFeature.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/shorts/feature/g$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private a:Lek/d;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/startshorts/androidplayer/manager/shorts/feature/i;)V
    .locals 3
    .param p1    # Lcom/startshorts/androidplayer/manager/shorts/feature/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/shorts/feature/i;->b()Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$MessageType;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lcom/startshorts/androidplayer/manager/shorts/feature/g$a;->$EnumSwitchMapping$0:[I

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    aget v0, v1, v0

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    if-ne v0, v1, :cond_4

    .line 20
    .line 21
    sget-object v0, Lud/b;->a:Lud/b;

    .line 22
    .line 23
    invoke-virtual {v0}, Lud/b;->M1()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/shorts/feature/i;->a()Ljava/util/HashMap;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const/4 v1, 0x0

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    const-string v2, "activity"

    .line 38
    .line 39
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move-object p1, v1

    .line 45
    :goto_0
    instance-of v2, p1, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 46
    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    move-object v1, p1

    .line 50
    check-cast v1, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 51
    .line 52
    :cond_2
    if-nez v1, :cond_3

    .line 53
    .line 54
    return-void

    .line 55
    :cond_3
    const/4 p1, 0x0

    .line 56
    invoke-virtual {v0, p1}, Lud/b;->Z4(Z)V

    .line 57
    .line 58
    .line 59
    new-instance p1, Lek/d;

    .line 60
    .line 61
    invoke-direct {p1, v1}, Lek/d;-><init>(Landroid/content/Context;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/g;->a:Lek/d;

    .line 68
    .line 69
    :cond_4
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/g;->a:Lek/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/g;->a:Lek/d;

    .line 10
    .line 11
    return-void
.end method

.method public type()Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$FeatureType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$FeatureType;->PROGRESS_ADJUST_TIP:Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$FeatureType;

    .line 2
    .line 3
    return-object v0
.end method
