.class public Lfn/g;
.super Lfn/e;
.source "VideoDecoderOutputBuffer.java"


# instance fields
.field public e:I

.field public f:I

.field public g:[Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public h:[I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public i:I

.field private final j:Lfn/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfn/e$a<",
            "Lfn/g;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lfn/g;->j:Lfn/e$a;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Lfn/e$a;->a(Lfn/e;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
