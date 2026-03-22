.class public final Ldn/g$k;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldn/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "k"
.end annotation


# instance fields
.field public final a:Ldn/g$b;

.field public final b:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ldn/g$a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ldn/g$d;

.field public final d:Ldn/g$f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:Ldn/g$j;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldn/g$b;Ljava/util/List;Ldn/g$d;Ldn/g$f;Ldn/g$j;)V
    .locals 0
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ldn/g$f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ldn/g$j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldn/g$b;",
            "Ljava/util/List<",
            "Ldn/g$a;",
            ">;",
            "Ldn/g$d;",
            "Ldn/g$f;",
            "Ldn/g$j;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ldn/g$k;->a:Ldn/g$b;

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->u(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->A()Lcom/google/common/collect/ImmutableList;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :goto_0
    iput-object p1, p0, Ldn/g$k;->b:Lcom/google/common/collect/ImmutableList;

    .line 18
    .line 19
    iput-object p3, p0, Ldn/g$k;->c:Ldn/g$d;

    .line 20
    .line 21
    iput-object p4, p0, Ldn/g$k;->d:Ldn/g$f;

    .line 22
    .line 23
    iput-object p5, p0, Ldn/g$k;->e:Ldn/g$j;

    .line 24
    .line 25
    return-void
.end method
