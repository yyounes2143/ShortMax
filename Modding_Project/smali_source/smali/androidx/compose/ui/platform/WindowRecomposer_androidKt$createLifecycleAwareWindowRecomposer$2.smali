.class public final Landroidx/compose/ui/platform/WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2;
.super Ljava/lang/Object;
.source "WindowRecomposer.android.kt"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/platform/WindowRecomposer_androidKt;->createLifecycleAwareWindowRecomposer(Landroid/view/View;Lkotlin/coroutines/CoroutineContext;Landroidx/lifecycle/Lifecycle;)Landroidx/compose/runtime/Recomposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/platform/WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $pausableClock:Landroidx/compose/runtime/PausableMonotonicFrameClock;

.field final synthetic $recomposer:Landroidx/compose/runtime/Recomposer;

.field final synthetic $runRecomposeScope:Lgt/g0;

.field final synthetic $systemDurationScaleSettingConsumer:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/compose/ui/platform/MotionDurationScaleImpl;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_createLifecycleAwareWindowRecomposer:Landroid/view/View;


# direct methods
.method constructor <init>(Lgt/g0;Landroidx/compose/runtime/PausableMonotonicFrameClock;Landroidx/compose/runtime/Recomposer;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Landroidx/compose/runtime/PausableMonotonicFrameClock;",
            "Landroidx/compose/runtime/Recomposer;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/compose/ui/platform/MotionDurationScaleImpl;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/platform/WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2;->$runRecomposeScope:Lgt/g0;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/ui/platform/WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2;->$pausableClock:Landroidx/compose/runtime/PausableMonotonicFrameClock;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/ui/platform/WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2;->$recomposer:Landroidx/compose/runtime/Recomposer;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/ui/platform/WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2;->$systemDurationScaleSettingConsumer:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/compose/ui/platform/WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2;->$this_createLifecycleAwareWindowRecomposer:Landroid/view/View;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 10
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/Lifecycle$Event;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "event"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Landroidx/compose/ui/platform/WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    aget p2, v0, p2

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    if-eq p2, v0, :cond_3

    .line 21
    .line 22
    const/4 p1, 0x2

    .line 23
    if-eq p2, p1, :cond_2

    .line 24
    .line 25
    const/4 p1, 0x3

    .line 26
    if-eq p2, p1, :cond_1

    .line 27
    .line 28
    const/4 p1, 0x4

    .line 29
    if-eq p2, p1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object p1, p0, Landroidx/compose/ui/platform/WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2;->$recomposer:Landroidx/compose/runtime/Recomposer;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/compose/runtime/Recomposer;->cancel()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object p1, p0, Landroidx/compose/ui/platform/WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2;->$pausableClock:Landroidx/compose/runtime/PausableMonotonicFrameClock;

    .line 39
    .line 40
    if-eqz p1, :cond_4

    .line 41
    .line 42
    invoke-virtual {p1}, Landroidx/compose/runtime/PausableMonotonicFrameClock;->pause()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    iget-object p1, p0, Landroidx/compose/ui/platform/WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2;->$pausableClock:Landroidx/compose/runtime/PausableMonotonicFrameClock;

    .line 47
    .line 48
    if-eqz p1, :cond_4

    .line 49
    .line 50
    invoke-virtual {p1}, Landroidx/compose/runtime/PausableMonotonicFrameClock;->resume()V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    iget-object v0, p0, Landroidx/compose/ui/platform/WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2;->$runRecomposeScope:Lgt/g0;

    .line 55
    .line 56
    sget-object v2, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    .line 57
    .line 58
    new-instance p2, Landroidx/compose/ui/platform/WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1;

    .line 59
    .line 60
    iget-object v4, p0, Landroidx/compose/ui/platform/WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2;->$systemDurationScaleSettingConsumer:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 61
    .line 62
    iget-object v5, p0, Landroidx/compose/ui/platform/WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2;->$recomposer:Landroidx/compose/runtime/Recomposer;

    .line 63
    .line 64
    iget-object v8, p0, Landroidx/compose/ui/platform/WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2;->$this_createLifecycleAwareWindowRecomposer:Landroid/view/View;

    .line 65
    .line 66
    const/4 v9, 0x0

    .line 67
    move-object v3, p2

    .line 68
    move-object v6, p1

    .line 69
    move-object v7, p0

    .line 70
    invoke-direct/range {v3 .. v9}, Landroidx/compose/ui/platform/WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/runtime/Recomposer;Landroidx/lifecycle/LifecycleOwner;Landroidx/compose/ui/platform/WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2;Landroid/view/View;Lrs/c;)V

    .line 71
    .line 72
    .line 73
    const/4 v4, 0x1

    .line 74
    const/4 v5, 0x0

    .line 75
    const/4 v1, 0x0

    .line 76
    invoke-static/range {v0 .. v5}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 77
    .line 78
    .line 79
    :cond_4
    :goto_0
    return-void
.end method
