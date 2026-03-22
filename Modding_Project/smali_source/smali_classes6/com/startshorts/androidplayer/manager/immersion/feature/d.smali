.class public final Lcom/startshorts/androidplayer/manager/immersion/feature/d;
.super Ljava/lang/Object;
.source "CatonToasterFeature.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/immersion/feature/d$a;,
        Lcom/startshorts/androidplayer/manager/immersion/feature/d$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final b:Lcom/startshorts/androidplayer/manager/immersion/feature/d$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/immersion/feature/d$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/immersion/feature/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/manager/immersion/feature/d;->b:Lcom/startshorts/androidplayer/manager/immersion/feature/d$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/manager/immersion/feature/d;->d()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final d()Lkotlin/Unit;
    .locals 5

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    const-string v1, "CatonToasterFeature"

    .line 4
    .line 5
    const-string v2, "caton toast"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 11
    .line 12
    sget v1, Lcom/startshorts/androidplayer/R$string;->immersion_activity_resolution_loading_tip:I

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    invoke-static {v0, v1, v4, v2, v3}, Lfk/u;->j(Lfk/u;IIILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    return-object v0
.end method


# virtual methods
.method public a(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)V
    .locals 9
    .param p1    # Lcom/startshorts/androidplayer/manager/immersion/feature/k;
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
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->b()Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lcom/startshorts/androidplayer/manager/immersion/feature/d$b;->$EnumSwitchMapping$0:[I

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
    packed-switch v0, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :pswitch_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/d;->a:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    sget-object v0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;->CATON_TOASTER:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;->b(Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    sget-object p1, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->l:Lcom/startshorts/androidplayer/manager/immersion/feature/n$a;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/n$a;->a()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/d;->a:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    sget-object v0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;->DOWNGRADE_RESOLUTION_WHEN_CATON:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;->b(Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/d;->c(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iput-object v1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/d;->a:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;

    .line 54
    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    sget-object v2, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;->CATON_TOASTER:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

    .line 58
    .line 59
    new-instance v6, Lhf/h;

    .line 60
    .line 61
    invoke-direct {v6}, Lhf/h;-><init>()V

    .line 62
    .line 63
    .line 64
    const/4 v7, 0x4

    .line 65
    const/4 v8, 0x0

    .line 66
    const-wide/16 v3, 0x1388

    .line 67
    .line 68
    const/4 v5, 0x0

    .line 69
    invoke-static/range {v1 .. v8}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;->e(Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;JLkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    :goto_0
    return-void

    .line 73
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public c(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/manager/immersion/feature/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$a;->c(Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature;Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public release()V
    .locals 0

    .line 1
    return-void
.end method

.method public type()Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$FeatureType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$FeatureType;->CATON_TOASTER:Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$FeatureType;

    .line 2
    .line 3
    return-object v0
.end method
