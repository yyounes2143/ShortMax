.class public interface abstract Lcom/pandora/ttlicense2/utils/NetWorkUtils$NetworkInfoListener;
.super Ljava/lang/Object;
.source "NetWorkUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pandora/ttlicense2/utils/NetWorkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NetworkInfoListener"
.end annotation


# virtual methods
.method public abstract onNetworkConnectionChanged(Landroid/net/NetworkInfo;)V
    .param p1    # Landroid/net/NetworkInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method
