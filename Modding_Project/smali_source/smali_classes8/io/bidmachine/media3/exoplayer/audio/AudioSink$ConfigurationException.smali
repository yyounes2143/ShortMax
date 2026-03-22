.class public final Lio/bidmachine/media3/exoplayer/audio/AudioSink$ConfigurationException;
.super Ljava/lang/Exception;
.source "AudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/audio/AudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConfigurationException"
.end annotation


# instance fields
.field public final a:Lio/bidmachine/media3/common/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/bidmachine/media3/common/a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 4
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioSink$ConfigurationException;->a:Lio/bidmachine/media3/common/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lio/bidmachine/media3/common/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 2
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioSink$ConfigurationException;->a:Lio/bidmachine/media3/common/a;

    return-void
.end method
