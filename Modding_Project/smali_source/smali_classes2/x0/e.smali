.class public interface abstract Lx0/e;
.super Ljava/lang/Object;
.source "KeyPathElement.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# virtual methods
.method public abstract b(Lx0/d;ILjava/util/List;Lx0/d;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx0/d;",
            "I",
            "Ljava/util/List<",
            "Lx0/d;",
            ">;",
            "Lx0/d;",
            ")V"
        }
    .end annotation
.end method

.method public abstract e(Ljava/lang/Object;Le1/c;)V
    .param p2    # Le1/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Le1/c<",
            "TT;>;)V"
        }
    .end annotation
.end method
