.class public final Lcom/facebook/soloader/y$d;
.super Ljava/lang/Object;
.source "UnpackingSoSource.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "d"
.end annotation


# instance fields
.field private final a:Lcom/facebook/soloader/y$c;

.field private final b:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lcom/facebook/soloader/y$c;Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/facebook/soloader/y$d;->a:Lcom/facebook/soloader/y$c;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/facebook/soloader/y$d;->b:Ljava/io/InputStream;

    .line 7
    .line 8
    return-void
.end method

.method static synthetic a(Lcom/facebook/soloader/y$d;)Ljava/io/InputStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/soloader/y$d;->b:Ljava/io/InputStream;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/soloader/y$d;->b:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/soloader/y$d;->b:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d()Lcom/facebook/soloader/y$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/soloader/y$d;->a:Lcom/facebook/soloader/y$c;

    .line 2
    .line 3
    return-object v0
.end method
