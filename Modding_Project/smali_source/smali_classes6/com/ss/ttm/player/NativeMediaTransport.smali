.class public Lcom/ss/ttm/player/NativeMediaTransport;
.super Lcom/ss/ttm/player/MediaTransport;
.source "NativeMediaTransport.java"


# annotations
.annotation build Lcom/ss/ttm/player/JNINamespace;
    value = "PLAYER"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/ttm/player/MediaTransport;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static isNativeMediaTransport(Lcom/ss/ttm/player/MediaTransport;)Z
    .locals 0
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    instance-of p0, p0, Lcom/ss/ttm/player/NativeMediaTransport;

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method protected sendPacket(Lcom/ss/ttm/player/MediaTransport$MediaPacket;)V
    .locals 1

    .line 1
    new-instance p1, Landroid/util/AndroidRuntimeException;

    .line 2
    .line 3
    const-string v0, "Should not be here"

    .line 4
    .line 5
    invoke-direct {p1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method
