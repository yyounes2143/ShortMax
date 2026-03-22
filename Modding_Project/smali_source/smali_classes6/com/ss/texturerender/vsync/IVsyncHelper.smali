.class public interface abstract Lcom/ss/texturerender/vsync/IVsyncHelper;
.super Ljava/lang/Object;
.source "IVsyncHelper.java"


# static fields
.field public static final MSG_ADD_OBSERVER:I = 0x1d

.field public static final MSG_REMOVE_OBSERVER:I = 0x1e

.field public static final MSG_VSYNC_COMING:I = 0x1c


# virtual methods
.method public abstract addObserver(Lcom/ss/texturerender/vsync/IVsyncCallback;)V
.end method

.method public abstract isWorking()Z
.end method

.method public abstract removeObserver(Lcom/ss/texturerender/vsync/IVsyncCallback;)V
.end method

.method public abstract setEnable(Z)V
.end method

.method public abstract update()V
.end method
