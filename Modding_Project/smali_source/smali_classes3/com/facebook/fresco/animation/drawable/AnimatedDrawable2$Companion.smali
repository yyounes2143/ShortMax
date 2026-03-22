.class public final Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2$Companion;
.super Ljava/lang/Object;
.source "AnimatedDrawable2.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$createSchedulerForBackendAndDelayMethod(Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2$Companion;Lcom/facebook/fresco/animation/backend/AnimationBackend;)Lcom/facebook/fresco/animation/frame/FrameScheduler;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2$Companion;->createSchedulerForBackendAndDelayMethod(Lcom/facebook/fresco/animation/backend/AnimationBackend;)Lcom/facebook/fresco/animation/frame/FrameScheduler;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final createSchedulerForBackendAndDelayMethod(Lcom/facebook/fresco/animation/backend/AnimationBackend;)Lcom/facebook/fresco/animation/frame/FrameScheduler;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    new-instance v0, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Lcom/facebook/fresco/animation/frame/DropFramesFrameScheduler;-><init>(Lcom/facebook/fresco/animation/backend/AnimationInformation;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
