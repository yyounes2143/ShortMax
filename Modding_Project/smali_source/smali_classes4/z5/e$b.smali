.class final Lz5/e$b;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"

# interfaces
.implements Lz5/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz5/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lz5/e;


# direct methods
.method private constructor <init>(Lz5/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lz5/e$b;->a:Lz5/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lz5/e;Lz5/e$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lz5/e$b;-><init>(Lz5/e;)V

    return-void
.end method


# virtual methods
.method public a(IILt5/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lz5/e$b;->a:Lz5/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lz5/e;->k(IILt5/l;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public endMasterElement(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lz5/e$b;->a:Lz5/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lz5/e;->n(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public floatElement(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lz5/e$b;->a:Lz5/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lz5/e;->q(ID)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getElementType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lz5/e$b;->a:Lz5/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lz5/e;->t(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public integerElement(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lz5/e$b;->a:Lz5/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lz5/e;->w(IJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public isLevel1Element(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lz5/e$b;->a:Lz5/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lz5/e;->y(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public startMasterElement(IJJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lz5/e$b;->a:Lz5/e;

    .line 2
    .line 3
    move v1, p1

    .line 4
    move-wide v2, p2

    .line 5
    move-wide v4, p4

    .line 6
    invoke-virtual/range {v0 .. v5}, Lz5/e;->F(IJJ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public stringElement(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lz5/e$b;->a:Lz5/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lz5/e;->G(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
