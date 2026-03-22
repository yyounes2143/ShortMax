.class public final Lp6/f;
.super Ljava/lang/Object;
.source "CueGroup.java"

# interfaces
.implements Lcom/google/android/exoplayer2/g;


# static fields
.field public static final c:Lp6/f;

.field public static final d:Lcom/google/android/exoplayer2/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/g$a<",
            "Lp6/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lp6/b;",
            ">;"
        }
    .end annotation
.end field

.field public final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lp6/f;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->A()Lcom/google/common/collect/ImmutableList;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3}, Lp6/f;-><init>(Ljava/util/List;J)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lp6/f;->c:Lp6/f;

    .line 13
    .line 14
    new-instance v0, Lp6/e;

    .line 15
    .line 16
    invoke-direct {v0}, Lp6/e;-><init>()V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lp6/f;->d:Lcom/google/android/exoplayer2/g$a;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/util/List;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lp6/b;",
            ">;J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->u(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lp6/f;->a:Lcom/google/common/collect/ImmutableList;

    .line 9
    .line 10
    iput-wide p2, p0, Lp6/f;->b:J

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lp6/f;
    .locals 0

    .line 1
    invoke-static {p0}, Lp6/f;->c(Landroid/os/Bundle;)Lp6/f;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static b(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lp6/b;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList<",
            "Lp6/b;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->r()Lcom/google/common/collect/ImmutableList$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-ge v1, v2, :cond_1

    .line 11
    .line 12
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lp6/b;

    .line 17
    .line 18
    iget-object v2, v2, Lp6/b;->d:Landroid/graphics/Bitmap;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lp6/b;

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$a;->h(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    .line 30
    .line 31
    .line 32
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$a;->k()Lcom/google/common/collect/ImmutableList;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method

.method private static final c(Landroid/os/Bundle;)Lp6/f;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lp6/f;->d(I)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->A()Lcom/google/common/collect/ImmutableList;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget-object v1, Lp6/b;->s:Lcom/google/android/exoplayer2/g$a;

    .line 18
    .line 19
    invoke-static {v1, v0}, Lb7/c;->b(Lcom/google/android/exoplayer2/g$a;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :goto_0
    const/4 v1, 0x1

    .line 24
    invoke-static {v1}, Lp6/f;->d(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 29
    .line 30
    .line 31
    move-result-wide v1

    .line 32
    new-instance p0, Lp6/f;

    .line 33
    .line 34
    invoke-direct {p0, v0, v1, v2}, Lp6/f;-><init>(Ljava/util/List;J)V

    .line 35
    .line 36
    .line 37
    return-object p0
.end method

.method private static d(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0x24

    .line 2
    .line 3
    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v1}, Lp6/f;->d(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lp6/f;->a:Lcom/google/common/collect/ImmutableList;

    .line 12
    .line 13
    invoke-static {v2}, Lp6/f;->b(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {v2}, Lb7/c;->d(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-static {v1}, Lp6/f;->d(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-wide v2, p0, Lp6/f;->b:J

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method
