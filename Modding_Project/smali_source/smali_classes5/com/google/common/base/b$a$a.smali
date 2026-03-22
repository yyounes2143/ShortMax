.class Lcom/google/common/base/b$a$a;
.super Lcom/google/common/base/b$b;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/b$a;->b(Lcom/google/common/base/b;Ljava/lang/CharSequence;)Lcom/google/common/base/b$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic h:Lcom/google/common/base/b$a;


# direct methods
.method constructor <init>(Lcom/google/common/base/b$a;Lcom/google/common/base/b;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/base/b$a$a;->h:Lcom/google/common/base/b$a;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Lcom/google/common/base/b$b;-><init>(Lcom/google/common/base/b;Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method e(I)I
    .locals 0

    .line 1
    add-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    return p1
.end method

.method f(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/base/b$a$a;->h:Lcom/google/common/base/b$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/common/base/b$a;->a:Lh7/b;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/common/base/b$b;->c:Ljava/lang/CharSequence;

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Lh7/b;->c(Ljava/lang/CharSequence;I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method
