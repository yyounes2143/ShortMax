.class final Lcom/explorestack/protobuf/a2$b;
.super Ljava/lang/Object;
.source "TextFormatEscaper.java"

# interfaces
.implements Lcom/explorestack/protobuf/a2$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/protobuf/a2;->c([B)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/a2$b;->a:[B

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public byteAt(I)B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/a2$b;->a:[B

    .line 2
    .line 3
    aget-byte p1, v0, p1

    .line 4
    .line 5
    return p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/a2$b;->a:[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method
