.class final Lto/e$b;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"

# interfaces
.implements Lto/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lto/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lto/e;


# direct methods
.method private constructor <init>(Lto/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lto/e$b;->a:Lto/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lto/e;Lto/e$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lto/e$b;-><init>(Lto/e;)V

    return-void
.end method


# virtual methods
.method public a(IILao/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lto/e$b;->a:Lto/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lto/e;->m(IILao/q;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public endMasterElement(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lto/e$b;->a:Lto/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lto/e;->p(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public floatElement(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lto/e$b;->a:Lto/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lto/e;->s(ID)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getElementType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lto/e$b;->a:Lto/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lto/e;->v(I)I

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
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lto/e$b;->a:Lto/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lto/e;->y(IJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public isLevel1Element(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lto/e$b;->a:Lto/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lto/e;->A(I)Z

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
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lto/e$b;->a:Lto/e;

    .line 2
    .line 3
    move v1, p1

    .line 4
    move-wide v2, p2

    .line 5
    move-wide v4, p4

    .line 6
    invoke-virtual/range {v0 .. v5}, Lto/e;->H(IJJ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public stringElement(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lto/e$b;->a:Lto/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lto/e;->I(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
