.class public final Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2DebugDrawListener;
.super Ljava/lang/Object;
.source "AnimatedDrawable2DebugDrawListener.kt"

# interfaces
.implements Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2$DrawListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2DebugDrawListener$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2DebugDrawListener$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private drawCalls:I

.field private duplicateFrames:I

.field private lastFrameNumber:I

.field private skippedFrames:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2DebugDrawListener$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2DebugDrawListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2DebugDrawListener;->Companion:Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2DebugDrawListener$Companion;

    .line 8
    .line 9
    const-class v0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2DebugDrawListener;

    .line 10
    .line 11
    sput-object v0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2DebugDrawListener;->TAG:Ljava/lang/Class;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2DebugDrawListener;->lastFrameNumber:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public onDraw(Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;Lcom/facebook/fresco/animation/frame/FrameScheduler;IZZJJJJJJJ)V
    .locals 13
    .param p1    # Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/fresco/animation/frame/FrameScheduler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object v0, p0

    move/from16 v1, p3

    const-string v2, "animatedDrawable"

    move-object v3, p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "frameScheduler"

    move-object v4, p2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->getAnimationBackend()Lcom/facebook/fresco/animation/backend/AnimationBackend;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getFrameCount()I

    move-result v2

    sub-long v5, p8, p10

    .line 2
    iget v3, v0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2DebugDrawListener;->drawCalls:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2DebugDrawListener;->drawCalls:I

    .line 3
    iget v3, v0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2DebugDrawListener;->lastFrameNumber:I

    add-int/lit8 v7, v3, 0x1

    rem-int/2addr v7, v2

    if-eq v7, v1, :cond_2

    if-ne v3, v1, :cond_0

    .line 4
    iget v2, v0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2DebugDrawListener;->duplicateFrames:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2DebugDrawListener;->duplicateFrames:I

    goto :goto_0

    :cond_0
    sub-int v3, v1, v7

    .line 5
    rem-int/2addr v3, v2

    if-gez v3, :cond_1

    add-int/2addr v3, v2

    .line 6
    :cond_1
    iget v2, v0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2DebugDrawListener;->skippedFrames:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2DebugDrawListener;->skippedFrames:I

    .line 7
    :cond_2
    :goto_0
    iput v1, v0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2DebugDrawListener;->lastFrameNumber:I

    .line 8
    sget-object v2, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2DebugDrawListener;->TAG:Ljava/lang/Class;

    .line 9
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 10
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 11
    invoke-interface {p2}, Lcom/facebook/fresco/animation/frame/FrameScheduler;->getLoopDurationMs()J

    move-result-wide v8

    rem-long v8, p8, v8

    .line 12
    invoke-interface/range {p2 .. p3}, Lcom/facebook/fresco/animation/frame/FrameScheduler;->getTargetRenderTimeMs(I)J

    move-result-wide v10

    sub-long/2addr v8, v10

    .line 13
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sub-long v8, p14, p12

    .line 14
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 15
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 16
    iget v6, v0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2DebugDrawListener;->duplicateFrames:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 17
    iget v8, v0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2DebugDrawListener;->skippedFrames:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 18
    iget v9, v0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2DebugDrawListener;->drawCalls:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 19
    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 20
    invoke-static/range {p16 .. p17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 21
    invoke-static/range {p18 .. p19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object p1, v3

    move-object p2, v7

    move-object/from16 p3, v1

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    filled-new-array/range {p1 .. p11}, [Ljava/lang/Object;

    move-result-object v1

    .line 22
    const-string v3, "draw: frame: %2d, drawn: %b, delay: %3d ms, rendering: %3d ms, prev: %3d ms ago, duplicates: %3d, skipped: %3d, draw calls: %4d, anim time: %6d ms, next start: %6d ms, next scheduled: %6d ms"

    invoke-static {v2, v3, v1}, Ll2/a;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method
