.class final Lcom/google/android/play/integrity/internal/aq;
.super Lcom/google/android/play/integrity/internal/ar;
.source "com.google.android.play:integrity@@1.4.0"


# instance fields
.field final transient d:I

.field final transient e:I

.field final synthetic f:Lcom/google/android/play/integrity/internal/ar;


# direct methods
.method constructor <init>(Lcom/google/android/play/integrity/internal/ar;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/play/integrity/internal/aq;->f:Lcom/google/android/play/integrity/internal/ar;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/play/integrity/internal/ar;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/play/integrity/internal/aq;->d:I

    .line 7
    .line 8
    iput p3, p0, Lcom/google/android/play/integrity/internal/aq;->e:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method final e()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/integrity/internal/aq;->f:Lcom/google/android/play/integrity/internal/ar;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/play/integrity/internal/ao;->f()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/google/android/play/integrity/internal/aq;->d:I

    .line 8
    .line 9
    add-int/2addr v0, v1

    .line 10
    iget v1, p0, Lcom/google/android/play/integrity/internal/aq;->e:I

    .line 11
    .line 12
    add-int/2addr v0, v1

    .line 13
    return v0
.end method

.method final f()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/integrity/internal/aq;->f:Lcom/google/android/play/integrity/internal/ar;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/play/integrity/internal/ao;->f()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/google/android/play/integrity/internal/aq;->d:I

    .line 8
    .line 9
    add-int/2addr v0, v1

    .line 10
    return v0
.end method

.method final g()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/play/integrity/internal/aq;->f:Lcom/google/android/play/integrity/internal/ar;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/play/integrity/internal/ao;->g()[Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/play/integrity/internal/aq;->e:I

    .line 2
    .line 3
    const-string v1, "index"

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lcom/google/android/play/integrity/internal/l;->a(IILjava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/play/integrity/internal/aq;->f:Lcom/google/android/play/integrity/internal/ar;

    .line 9
    .line 10
    iget v1, p0, Lcom/google/android/play/integrity/internal/aq;->d:I

    .line 11
    .line 12
    add-int/2addr p1, v1

    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final h(II)Lcom/google/android/play/integrity/internal/ar;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/play/integrity/internal/aq;->e:I

    .line 2
    .line 3
    invoke-static {p1, p2, v0}, Lcom/google/android/play/integrity/internal/l;->c(III)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/google/android/play/integrity/internal/aq;->d:I

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/play/integrity/internal/aq;->f:Lcom/google/android/play/integrity/internal/ar;

    .line 9
    .line 10
    add-int/2addr p1, v0

    .line 11
    add-int/2addr p2, v0

    .line 12
    invoke-virtual {v1, p1, p2}, Lcom/google/android/play/integrity/internal/ar;->h(II)Lcom/google/android/play/integrity/internal/ar;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/play/integrity/internal/aq;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/play/integrity/internal/ar;->h(II)Lcom/google/android/play/integrity/internal/ar;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
