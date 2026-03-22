.class public interface abstract Lio/bidmachine/media3/exoplayer/mediacodec/h$b;
.super Ljava/lang/Object;
.source "MediaCodecAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/mediacodec/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# static fields
.field public static final a:Lio/bidmachine/media3/exoplayer/mediacodec/h$b;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/bidmachine/media3/exoplayer/mediacodec/g;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/mediacodec/g;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/bidmachine/media3/exoplayer/mediacodec/h$b;->a:Lio/bidmachine/media3/exoplayer/mediacodec/h$b;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Landroid/content/Context;)Lio/bidmachine/media3/exoplayer/mediacodec/h$b;
    .locals 1

    .line 1
    new-instance v0, Lio/bidmachine/media3/exoplayer/mediacodec/g;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/bidmachine/media3/exoplayer/mediacodec/g;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract b(Lio/bidmachine/media3/exoplayer/mediacodec/h$a;)Lio/bidmachine/media3/exoplayer/mediacodec/h;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
