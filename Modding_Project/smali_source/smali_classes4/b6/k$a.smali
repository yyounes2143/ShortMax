.class final Lb6/k$a;
.super Ljava/lang/Object;
.source "Mp4Extractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb6/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final a:Lb6/o;

.field public final b:Lb6/r;

.field public final c:Lt5/b0;

.field public final d:Lt5/c0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public e:I


# direct methods
.method public constructor <init>(Lb6/o;Lb6/r;Lt5/b0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lb6/k$a;->a:Lb6/o;

    .line 5
    .line 6
    iput-object p2, p0, Lb6/k$a;->b:Lb6/r;

    .line 7
    .line 8
    iput-object p3, p0, Lb6/k$a;->c:Lt5/b0;

    .line 9
    .line 10
    iget-object p1, p1, Lb6/o;->f:Lcom/google/android/exoplayer2/v0;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/google/android/exoplayer2/v0;->l:Ljava/lang/String;

    .line 13
    .line 14
    const-string p2, "audio/true-hd"

    .line 15
    .line 16
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    new-instance p1, Lt5/c0;

    .line 23
    .line 24
    invoke-direct {p1}, Lt5/c0;-><init>()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    :goto_0
    iput-object p1, p0, Lb6/k$a;->d:Lt5/c0;

    .line 30
    .line 31
    return-void
.end method
