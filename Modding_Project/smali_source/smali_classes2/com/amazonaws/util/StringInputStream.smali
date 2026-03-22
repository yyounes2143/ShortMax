.class public Lcom/amazonaws/util/StringInputStream;
.super Ljava/io/ByteArrayInputStream;
.source "StringInputStream.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/amazonaws/util/StringInputStream;->a:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method
