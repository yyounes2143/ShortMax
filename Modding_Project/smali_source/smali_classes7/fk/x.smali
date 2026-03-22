.class public final Lfk/x;
.super Ljava/lang/Object;
.source "PageUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:I

.field private b:I

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lfk/x;->a:I

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput p1, p0, Lfk/x;->b:I

    .line 8
    .line 9
    const/4 p1, -0x1

    .line 10
    iput p1, p0, Lfk/x;->c:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(IZ)Z
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lfk/x;->d:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    iget v0, p0, Lfk/x;->c:I

    .line 11
    .line 12
    iget-boolean v2, p0, Lfk/x;->d:Z

    .line 13
    .line 14
    invoke-virtual {p0, p1, v0, v2, p2}, Lfk/x;->e(IIZZ)Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-nez p2, :cond_1

    .line 19
    .line 20
    return v1

    .line 21
    :cond_1
    const/4 p2, 0x1

    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    if-eq p1, p2, :cond_2

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    iput-boolean v1, p0, Lfk/x;->d:Z

    .line 28
    .line 29
    :goto_0
    iput p1, p0, Lfk/x;->c:I

    .line 30
    .line 31
    return p2
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lfk/x;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Lfk/x;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfk/x;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public final e(IIZZ)Z
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return v1

    .line 6
    :cond_0
    const/4 v0, 0x2

    .line 7
    if-ne p1, v0, :cond_1

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    return v1

    .line 12
    :cond_1
    if-ne p2, v0, :cond_2

    .line 13
    .line 14
    if-ne p1, v0, :cond_2

    .line 15
    .line 16
    return v1

    .line 17
    :cond_2
    const/4 p3, 0x1

    .line 18
    if-eqz p2, :cond_3

    .line 19
    .line 20
    if-ne p2, p3, :cond_4

    .line 21
    .line 22
    :cond_3
    if-eqz p1, :cond_7

    .line 23
    .line 24
    if-ne p1, p3, :cond_4

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_4
    if-eqz p2, :cond_5

    .line 28
    .line 29
    if-ne p2, p3, :cond_6

    .line 30
    .line 31
    :cond_5
    if-ne p1, v0, :cond_6

    .line 32
    .line 33
    return v1

    .line 34
    :cond_6
    return p3

    .line 35
    :cond_7
    :goto_0
    return p4
.end method

.method public final f()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lfk/x;->c:I

    .line 3
    .line 4
    return-void
.end method

.method public final g(Ljava/util/List;I)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;I)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move p1, v0

    .line 10
    :goto_0
    iget v1, p0, Lfk/x;->a:I

    .line 11
    .line 12
    if-ge p1, v1, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    :cond_1
    iput-boolean v0, p0, Lfk/x;->d:Z

    .line 16
    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    iput p2, p0, Lfk/x;->b:I

    .line 20
    .line 21
    :cond_2
    return-void
.end method

.method public final h(ZI)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lfk/x;->d:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iput p2, p0, Lfk/x;->b:I

    .line 6
    .line 7
    :cond_0
    return-void
.end method
