.class public abstract Lcom/ss/ttm/player/MaskInfo;
.super Lcom/ss/ttm/player/NativeObject;
.source "MaskInfo.java"


# annotations
.annotation build Lcom/ss/ttm/player/JNINamespace;
    value = "PLAYER"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/ttm/player/NativeObject;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected abstract onMaskInfoCallback(IILjava/lang/String;)V
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation
.end method
