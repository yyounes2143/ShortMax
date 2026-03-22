.class public Lcom/ss/ttm/player/BufferProcessCallback$ProcessBufferResult;
.super Ljava/lang/Object;
.source "BufferProcessCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttm/player/BufferProcessCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessBufferResult"
.end annotation


# static fields
.field public static final EAGAIN:I = -0xb

.field public static final EOF:I


# instance fields
.field public buffer:Ljava/nio/ByteBuffer;

.field public ret:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
