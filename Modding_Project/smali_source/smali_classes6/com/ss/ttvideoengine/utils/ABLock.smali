.class public abstract Lcom/ss/ttvideoengine/utils/ABLock;
.super Ljava/lang/Object;
.source "ABLock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/utils/ABLock$OptimizedLock;,
        Lcom/ss/ttvideoengine/utils/ABLock$VoidLock;,
        Lcom/ss/ttvideoengine/utils/ABLock$NormalLock;
    }
.end annotation


# static fields
.field public static LOCK_IMPL_NORMAL:I = 0x0

.field public static LOCK_IMPL_READ_WRITE:I = 0x2

.field public static LOCK_IMPL_VOID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ABLock"

.field public static TYPE_READ:I = 0x1

.field public static TYPE_VOID:I = 0x0

.field public static TYPE_WRITE:I = 0x2


# instance fields
.field private final mImplType:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/ss/ttvideoengine/utils/ABLock;->mImplType:I

    .line 5
    .line 6
    return-void
.end method

.method public static create(I)Lcom/ss/ttvideoengine/utils/ABLock;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "create ABLock type: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "ABLock"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->LOCK_IMPL_NORMAL:I

    .line 24
    .line 25
    if-ne p0, v0, :cond_0

    .line 26
    .line 27
    new-instance v0, Lcom/ss/ttvideoengine/utils/ABLock$NormalLock;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/ss/ttvideoengine/utils/ABLock$NormalLock;-><init>(I)V

    .line 30
    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_0
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->LOCK_IMPL_VOID:I

    .line 34
    .line 35
    if-ne p0, v1, :cond_1

    .line 36
    .line 37
    new-instance v0, Lcom/ss/ttvideoengine/utils/ABLock$VoidLock;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/ss/ttvideoengine/utils/ABLock$VoidLock;-><init>(I)V

    .line 40
    .line 41
    .line 42
    return-object v0

    .line 43
    :cond_1
    sget v1, Lcom/ss/ttvideoengine/utils/ABLock;->LOCK_IMPL_READ_WRITE:I

    .line 44
    .line 45
    if-ne p0, v1, :cond_2

    .line 46
    .line 47
    new-instance v0, Lcom/ss/ttvideoengine/utils/ABLock$OptimizedLock;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Lcom/ss/ttvideoengine/utils/ABLock$OptimizedLock;-><init>(I)V

    .line 50
    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_2
    new-instance p0, Lcom/ss/ttvideoengine/utils/ABLock$NormalLock;

    .line 54
    .line 55
    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/utils/ABLock$NormalLock;-><init>(I)V

    .line 56
    .line 57
    .line 58
    return-object p0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/utils/ABLock;->mImplType:I

    .line 2
    .line 3
    return v0
.end method

.method public lock()V
    .locals 1

    .line 1
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_VOID:I

    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/utils/ABLock;->lock(I)V

    return-void
.end method

.method public abstract lock(I)V
.end method

.method public abstract tryLock(I)Z
.end method

.method public abstract tryLock(IJLjava/util/concurrent/TimeUnit;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public unlock()V
    .locals 1

    .line 1
    sget v0, Lcom/ss/ttvideoengine/utils/ABLock;->TYPE_VOID:I

    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/utils/ABLock;->unlock(I)V

    return-void
.end method

.method public abstract unlock(I)V
.end method
