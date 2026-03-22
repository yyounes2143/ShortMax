.class public final Lio/ktor/websocket/FrameTooBigException;
.super Ljava/lang/Exception;
.source "FrameTooBigException.kt"

# interfaces
.implements Lgt/w;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Exception;",
        "Lgt/w<",
        "Lio/ktor/websocket/FrameTooBigException;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lio/ktor/websocket/FrameTooBigException;->a:J

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic b()Ljava/lang/Throwable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/ktor/websocket/FrameTooBigException;->d()Lio/ktor/websocket/FrameTooBigException;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public d()Lio/ktor/websocket/FrameTooBigException;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lio/ktor/websocket/FrameTooBigException;

    .line 2
    .line 3
    iget-wide v1, p0, Lio/ktor/websocket/FrameTooBigException;->a:J

    .line 4
    .line 5
    invoke-direct {v0, v1, v2}, Lio/ktor/websocket/FrameTooBigException;-><init>(J)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p0}, Lio/ktor/util/internal/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Frame is too big: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-wide v1, p0, Lio/ktor/websocket/FrameTooBigException;->a:J

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method
