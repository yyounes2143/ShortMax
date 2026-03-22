.class final Lcom/google/android/play/integrity/internal/au;
.super Lcom/google/android/play/integrity/internal/as;
.source "com.google.android.play:integrity@@1.4.0"


# static fields
.field private static final e:[Ljava/lang/Object;

.field static final f:Lcom/google/android/play/integrity/internal/au;


# instance fields
.field final transient c:[Ljava/lang/Object;

.field final transient d:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v4, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    sput-object v4, Lcom/google/android/play/integrity/internal/au;->e:[Ljava/lang/Object;

    .line 5
    .line 6
    new-instance v0, Lcom/google/android/play/integrity/internal/au;

    .line 7
    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    move-object v1, v0

    .line 12
    move-object v2, v4

    .line 13
    invoke-direct/range {v1 .. v6}, Lcom/google/android/play/integrity/internal/au;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/google/android/play/integrity/internal/au;->f:Lcom/google/android/play/integrity/internal/au;

    .line 17
    .line 18
    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/play/integrity/internal/as;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/play/integrity/internal/au;->c:[Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/play/integrity/internal/au;->d:[Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/play/integrity/internal/au;->d:[Ljava/lang/Object;

    .line 4
    .line 5
    array-length p1, p1

    .line 6
    :cond_0
    const/4 p1, 0x0

    .line 7
    return p1
.end method

.method final d([Ljava/lang/Object;I)I
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/google/android/play/integrity/internal/au;->c:[Ljava/lang/Object;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p2, v0, p1, v0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    .line 6
    .line 7
    return v0
.end method

.method final e()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method final f()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method final g()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/play/integrity/internal/au;->c:[Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Lcom/google/android/play/integrity/internal/p;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/play/integrity/internal/as;->i()Lcom/google/android/play/integrity/internal/ar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/play/integrity/internal/ar;->i(I)Lcom/google/android/play/integrity/internal/q;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/play/integrity/internal/as;->i()Lcom/google/android/play/integrity/internal/ar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/play/integrity/internal/ar;->i(I)Lcom/google/android/play/integrity/internal/q;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method final j()Lcom/google/android/play/integrity/internal/ar;
    .locals 1

    .line 1
    sget v0, Lcom/google/android/play/integrity/internal/ar;->c:I

    .line 2
    .line 3
    sget-object v0, Lcom/google/android/play/integrity/internal/at;->e:Lcom/google/android/play/integrity/internal/ar;

    .line 4
    .line 5
    return-object v0
.end method

.method final q()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final size()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
