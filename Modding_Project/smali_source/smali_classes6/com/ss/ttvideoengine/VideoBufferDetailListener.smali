.class public interface abstract Lcom/ss/ttvideoengine/VideoBufferDetailListener;
.super Ljava/lang/Object;
.source "VideoBufferDetailListener.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final AFTER_FIRST_FRAME:I = 0x1

.field public static final BEFORE_FIRST_FRAME:I = 0x0

.field public static final BUFFERING_TYPE_DECODER:I = 0x1

.field public static final BUFFERING_TYPE_NET:I = 0x0

.field public static final BUFFER_START_ACTION_CHANG_RESOLUTION:I = 0x2

.field public static final BUFFER_START_ACTION_NONE:I = 0x0

.field public static final BUFFER_START_ACTION_SEEK:I = 0x1


# virtual methods
.method public abstract onBufferEnd(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onBufferStart(III)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
