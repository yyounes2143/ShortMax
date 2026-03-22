.class Lcom/google/common/base/b$a;
.super Ljava/lang/Object;
.source "Splitter.java"

# interfaces
.implements Lcom/google/common/base/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/b;->e(Lh7/b;)Lcom/google/common/base/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lh7/b;


# direct methods
.method constructor <init>(Lh7/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/common/base/b$a;->a:Lh7/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/common/base/b;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/base/b$a;->b(Lcom/google/common/base/b;Ljava/lang/CharSequence;)Lcom/google/common/base/b$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b(Lcom/google/common/base/b;Ljava/lang/CharSequence;)Lcom/google/common/base/b$b;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/base/b$a$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/base/b$a$a;-><init>(Lcom/google/common/base/b$a;Lcom/google/common/base/b;Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
