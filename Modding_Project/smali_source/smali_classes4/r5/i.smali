.class public Lr5/i;
.super Lr5/f;
.source "VideoDecoderOutputBuffer.java"


# instance fields
.field public d:I

.field public e:I

.field public f:[Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public g:[I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public h:I

.field private final i:Lr5/f$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr5/f$a<",
            "Lr5/i;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lr5/i;->i:Lr5/f$a;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Lr5/f$a;->a(Lr5/f;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
