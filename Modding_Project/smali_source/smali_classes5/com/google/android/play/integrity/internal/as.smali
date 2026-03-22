.class public abstract Lcom/google/android/play/integrity/internal/as;
.super Lcom/google/android/play/integrity/internal/ao;
.source "com.google.android.play:integrity@@1.4.0"

# interfaces
.implements Ljava/util/Set;


# instance fields
.field private transient b:Lcom/google/android/play/integrity/internal/ar;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/play/integrity/internal/ao;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static n()Lcom/google/android/play/integrity/internal/as;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/play/integrity/internal/au;->f:Lcom/google/android/play/integrity/internal/au;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/google/android/play/integrity/internal/as;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    move-object v1, p1

    .line 11
    check-cast v1, Lcom/google/android/play/integrity/internal/as;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/google/android/play/integrity/internal/as;->q()Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    return v2

    .line 24
    :cond_2
    :goto_0
    if-ne p1, p0, :cond_3

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_3
    instance-of v1, p1, Ljava/util/Set;

    .line 28
    .line 29
    if-eqz v1, :cond_4

    .line 30
    .line 31
    check-cast p1, Ljava/util/Set;

    .line 32
    .line 33
    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-ne v1, v3, :cond_4

    .line 42
    .line 43
    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    .line 44
    .line 45
    .line 46
    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    if-nez p1, :cond_5

    .line 48
    .line 49
    :catch_0
    :cond_4
    move v0, v2

    .line 50
    nop

    .line 51
    :cond_5
    :goto_1
    return v0
.end method

.method public abstract h()Lcom/google/android/play/integrity/internal/p;
.end method

.method public hashCode()I
    .locals 4

    .line 1
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-eqz v3, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    move v3, v1

    .line 25
    :goto_1
    add-int/2addr v2, v3

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return v2
.end method

.method public final i()Lcom/google/android/play/integrity/internal/ar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/play/integrity/internal/as;->b:Lcom/google/android/play/integrity/internal/ar;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/play/integrity/internal/as;->j()Lcom/google/android/play/integrity/internal/ar;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/android/play/integrity/internal/as;->b:Lcom/google/android/play/integrity/internal/ar;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/play/integrity/internal/as;->h()Lcom/google/android/play/integrity/internal/p;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method j()Lcom/google/android/play/integrity/internal/ar;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    throw v0
.end method

.method q()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    throw v0
.end method
