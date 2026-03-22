.class public Lcom/facebook/common/memory/DecodeBufferHelper;
.super Ljava/lang/Object;
.source "DecodeBufferHelper.java"

# interfaces
.implements Landroidx/core/util/Pools$Pool;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/core/util/Pools$Pool<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/facebook/common/memory/DecodeBufferHelper;

.field private static b:I

.field private static final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/common/memory/DecodeBufferHelper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/facebook/common/memory/DecodeBufferHelper;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/facebook/common/memory/DecodeBufferHelper;->a:Lcom/facebook/common/memory/DecodeBufferHelper;

    .line 7
    .line 8
    const/16 v0, 0x4000

    .line 9
    .line 10
    sput v0, Lcom/facebook/common/memory/DecodeBufferHelper;->b:I

    .line 11
    .line 12
    new-instance v0, Lcom/facebook/common/memory/DecodeBufferHelper$a;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/facebook/common/memory/DecodeBufferHelper$a;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/facebook/common/memory/DecodeBufferHelper;->c:Ljava/lang/ThreadLocal;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic a()I
    .locals 1

    .line 1
    sget v0, Lcom/facebook/common/memory/DecodeBufferHelper;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public static c()I
    .locals 1

    .line 1
    sget v0, Lcom/facebook/common/memory/DecodeBufferHelper;->b:I

    .line 2
    .line 3
    return v0
.end method


# virtual methods
.method public bridge synthetic acquire()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/common/memory/DecodeBufferHelper;->b()Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public b()Ljava/nio/ByteBuffer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/common/memory/DecodeBufferHelper;->c:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    return-object v0
.end method

.method public d(Ljava/nio/ByteBuffer;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method

.method public bridge synthetic release(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/facebook/common/memory/DecodeBufferHelper;->d(Ljava/nio/ByteBuffer;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
