.class public Lcom/ss/ttm/player/NativeABRStrategy;
.super Lcom/ss/ttm/player/ABRStrategy;
.source "NativeABRStrategy.java"


# annotations
.annotation build Lcom/ss/ttm/player/JNINamespace;
    value = "PLAYER"
.end annotation


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/ttm/player/ABRStrategy;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/ss/ttm/player/NativeObject;->setWeakNativeObj(J)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static isNativeABRStrategy(Lcom/ss/ttm/player/ABRStrategy;)Z
    .locals 0
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    instance-of p0, p0, Lcom/ss/ttm/player/NativeABRStrategy;

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method protected probeBitrate(I)I
    .locals 1

    .line 1
    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string v0, "Should not be here"

    invoke-direct {p1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected probeBitrate(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string v0, "Should not be here"

    invoke-direct {p1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
