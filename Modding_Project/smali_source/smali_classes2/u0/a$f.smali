.class final Lu0/a$f;
.super Ljava/lang/Object;
.source "BaseKeyframeAnimation.java"

# interfaces
.implements Lu0/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lu0/a$d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Le1/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le1/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private b:F


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Le1/a<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, -0x40800000    # -1.0f

    .line 5
    .line 6
    iput v0, p0, Lu0/a$f;->b:F

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Le1/a;

    .line 14
    .line 15
    iput-object p1, p0, Lu0/a$f;->a:Le1/a;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public a()Le1/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le1/a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu0/a$f;->a:Le1/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()F
    .locals 1

    .line 1
    iget-object v0, p0, Lu0/a$f;->a:Le1/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Le1/a;->f()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public c(F)Z
    .locals 1

    .line 1
    iget v0, p0, Lu0/a$f;->b:F

    .line 2
    .line 3
    cmpl-float v0, v0, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    iput p1, p0, Lu0/a$f;->b:F

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return p1
.end method

.method public d(F)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lu0/a$f;->a:Le1/a;

    .line 2
    .line 3
    invoke-virtual {p1}, Le1/a;->i()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    xor-int/lit8 p1, p1, 0x1

    .line 8
    .line 9
    return p1
.end method

.method public e()F
    .locals 1

    .line 1
    iget-object v0, p0, Lu0/a$f;->a:Le1/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Le1/a;->c()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
