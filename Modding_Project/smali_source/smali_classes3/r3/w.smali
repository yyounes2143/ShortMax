.class public interface abstract Lr3/w;
.super Ljava/lang/Object;
.source "MemoryCache.kt"

# interfaces
.implements Ln2/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr3/w$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln2/b;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation
.end method

.method public abstract b(Lk2/i;)I
    .param p1    # Lk2/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk2/i<",
            "TK;>;)I"
        }
    .end annotation
.end method

.method public abstract contains(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation
.end method

.method public abstract d(Ljava/lang/Object;Lo2/a;)Lo2/a;
    .param p2    # Lo2/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lo2/a<",
            "TV;>;)",
            "Lo2/a<",
            "TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract get(Ljava/lang/Object;)Lo2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lo2/a<",
            "TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
