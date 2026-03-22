.class public interface abstract Lcom/bytedance/vcloud/strategy/IPreloadTaskCallbackListener;
.super Ljava/lang/Object;
.source "IPreloadTaskCallbackListener.java"


# static fields
.field public static final PreloadTaskAdded:I = 0x1

.field public static final PreloadTaskAllUrlFailed:I = 0x6

.field public static final PreloadTaskCancel:I = 0x5

.field public static final PreloadTaskFail:I = 0x4

.field public static final PreloadTaskStart:I = 0x2

.field public static final PreloadTaskSuccess:I = 0x3


# virtual methods
.method public abstract preloadItemInfo(ILjava/lang/String;Ljava/lang/String;)V
.end method
