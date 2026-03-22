.class final Lkotlinx/coroutines/channels/BufferedChannel$b;
.super Ljava/lang/Object;
.source "BufferedChannel.kt"

# interfaces
.implements Lgt/y1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/channels/BufferedChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final synthetic a:Lkotlinx/coroutines/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/e<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lgt/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgt/i<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# virtual methods
.method public final a()Lgt/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgt/i<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel$b;->b:Lgt/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public g(Lmt/x;I)V
    .locals 1
    .param p1    # Lmt/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmt/x<",
            "*>;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel$b;->a:Lkotlinx/coroutines/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lkotlinx/coroutines/e;->g(Lmt/x;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
