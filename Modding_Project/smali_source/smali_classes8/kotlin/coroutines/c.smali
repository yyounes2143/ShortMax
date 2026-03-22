.class public interface abstract Lkotlin/coroutines/c;
.super Ljava/lang/Object;
.source "ContinuationInterceptor.kt"

# interfaces
.implements Lkotlin/coroutines/CoroutineContext$Element;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/coroutines/c$a;,
        Lkotlin/coroutines/c$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final F8:Lkotlin/coroutines/c$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lkotlin/coroutines/c$b;->a:Lkotlin/coroutines/c$b;

    .line 2
    .line 3
    sput-object v0, Lkotlin/coroutines/c;->F8:Lkotlin/coroutines/c$b;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public abstract interceptContinuation(Lrs/c;)Lrs/c;
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrs/c<",
            "-TT;>;)",
            "Lrs/c<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract releaseInterceptedContinuation(Lrs/c;)V
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "*>;)V"
        }
    .end annotation
.end method
