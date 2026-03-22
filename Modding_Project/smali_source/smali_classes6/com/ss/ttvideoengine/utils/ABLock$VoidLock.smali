.class public Lcom/ss/ttvideoengine/utils/ABLock$VoidLock;
.super Lcom/ss/ttvideoengine/utils/ABLock;
.source "ABLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/utils/ABLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VoidLock"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/utils/ABLock;-><init>(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public lock(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public tryLock(I)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    return p1
.end method

.method public tryLock(IJLjava/util/concurrent/TimeUnit;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 2
    const/4 p1, 0x1

    return p1
.end method

.method public unlock(I)V
    .locals 0

    .line 1
    return-void
.end method
