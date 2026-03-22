.class public Lcom/ss/texturerender/Ref;
.super Ljava/lang/Object;
.source "Ref.java"

# interfaces
.implements Lcom/ss/texturerender/IRef;


# instance fields
.field private mCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/ss/texturerender/Ref;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/ss/texturerender/Ref;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public addRef()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/Ref;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public decRef()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/Ref;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public refCnt()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/Ref;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
