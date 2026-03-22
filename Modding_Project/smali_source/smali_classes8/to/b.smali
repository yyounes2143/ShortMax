.class public interface abstract Lto/b;
.super Ljava/lang/Object;
.source "EbmlProcessor.java"


# virtual methods
.method public abstract a(IILao/q;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract endMasterElement(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation
.end method

.method public abstract floatElement(ID)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation
.end method

.method public abstract getElementType(I)I
.end method

.method public abstract integerElement(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation
.end method

.method public abstract isLevel1Element(I)Z
.end method

.method public abstract startMasterElement(IJJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation
.end method

.method public abstract stringElement(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation
.end method
