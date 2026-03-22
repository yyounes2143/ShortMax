.class public final Lbn/b;
.super Ljava/lang/Object;
.source "CueGroup.java"


# static fields
.field public static final c:Lbn/b;

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;


# instance fields
.field public final a:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lbn/a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lbn/b;

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
    invoke-direct {v0, v1, v2, v3}, Lbn/b;-><init>(Ljava/util/List;J)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lbn/b;->c:Lbn/b;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-static {v0}, Lcn/m0;->C0(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lbn/b;->d:Ljava/lang/String;

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-static {v0}, Lcn/m0;->C0(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lbn/b;->e:Ljava/lang/String;

    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/util/List;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbn/a;",
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
    iput-object p1, p0, Lbn/b;->a:Lcom/google/common/collect/ImmutableList;

    .line 9
    .line 10
    iput-wide p2, p0, Lbn/b;->b:J

    .line 11
    .line 12
    return-void
.end method
