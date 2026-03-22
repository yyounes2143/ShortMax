.class public interface abstract Lcom/google/android/exoplayer2/source/r;
.super Ljava/lang/Object;
.source "ProgressiveMediaExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/r$a;
    }
.end annotation


# virtual methods
.method public abstract a()J
.end method

.method public abstract b()V
.end method

.method public abstract c(La7/f;Landroid/net/Uri;Ljava/util/Map;JJLt5/m;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La7/f;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;JJ",
            "Lt5/m;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract d(Lt5/y;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract seek(JJ)V
.end method
