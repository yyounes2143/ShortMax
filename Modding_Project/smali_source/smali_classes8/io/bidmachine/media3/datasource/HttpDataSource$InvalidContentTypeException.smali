.class public final Lio/bidmachine/media3/datasource/HttpDataSource$InvalidContentTypeException;
.super Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;
.source "HttpDataSource.java"


# instance fields
.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Len/g;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Invalid content type: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/16 v1, 0x7d3

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-direct {p0, v0, p2, v1, v2}, Lio/bidmachine/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Len/g;II)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lio/bidmachine/media3/datasource/HttpDataSource$InvalidContentTypeException;->d:Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method
