.class public interface abstract Leq/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static synthetic b(Leq/c;Ltp/f;Lio/bidmachine/rendering/model/AnimationEventType;ZLjava/lang/Runnable;Ljava/lang/Runnable;ILjava/lang/Object;)V
    .locals 6

    .line 1
    if-nez p7, :cond_3

    .line 2
    .line 3
    and-int/lit8 p7, p6, 0x4

    .line 4
    .line 5
    if-eqz p7, :cond_0

    .line 6
    .line 7
    const/4 p3, 0x0

    .line 8
    :cond_0
    move v3, p3

    .line 9
    and-int/lit8 p3, p6, 0x8

    .line 10
    .line 11
    const/4 p7, 0x0

    .line 12
    if-eqz p3, :cond_1

    .line 13
    .line 14
    move-object v4, p7

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    move-object v4, p4

    .line 17
    :goto_0
    and-int/lit8 p3, p6, 0x10

    .line 18
    .line 19
    if-eqz p3, :cond_2

    .line 20
    .line 21
    move-object v5, p7

    .line 22
    goto :goto_1

    .line 23
    :cond_2
    move-object v5, p5

    .line 24
    :goto_1
    move-object v0, p0

    .line 25
    move-object v1, p1

    .line 26
    move-object v2, p2

    .line 27
    invoke-interface/range {v0 .. v5}, Leq/c;->f(Ltp/f;Lio/bidmachine/rendering/model/AnimationEventType;ZLjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 32
    .line 33
    const-string p1, "Super calls with default arguments not supported in this target, function: prepareAndAnimate"

    .line 34
    .line 35
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Ltp/f;)V
    .param p1    # Ltp/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract a(I)Z
.end method

.method public abstract c(Ltp/g;)V
    .param p1    # Ltp/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract d(Ltp/g;Lio/bidmachine/rendering/model/AnimationEventType;ZLjava/lang/Runnable;Ljava/lang/Runnable;)V
    .param p1    # Ltp/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/rendering/model/AnimationEventType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract e(Ltp/f;Lio/bidmachine/rendering/model/AnimationEventType;ZLjava/lang/Runnable;Ljava/lang/Runnable;)V
    .param p1    # Ltp/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/rendering/model/AnimationEventType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract f(Ltp/f;Lio/bidmachine/rendering/model/AnimationEventType;ZLjava/lang/Runnable;Ljava/lang/Runnable;)V
    .param p1    # Ltp/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/rendering/model/AnimationEventType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract g(Ltp/g;Lio/bidmachine/rendering/model/AnimationEventType;)V
    .param p1    # Ltp/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/rendering/model/AnimationEventType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract h(Ltp/f;ZLio/bidmachine/rendering/model/AnimationEventType;)V
    .param p1    # Ltp/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/rendering/model/AnimationEventType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
