.class Lo2/a$a;
.super Ljava/lang/Object;
.source "CloseableReference.java"

# interfaces
.implements Lo2/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo2/h<",
        "Ljava/io/Closeable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Ljava/io/Closeable;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-static {p1, v0}, Lk2/b;->a(Ljava/io/Closeable;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    .line 4
    .line 5
    :catch_0
    return-void
.end method

.method public bridge synthetic release(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/io/Closeable;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lo2/a$a;->a(Ljava/io/Closeable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
