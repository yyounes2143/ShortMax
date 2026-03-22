.class public interface abstract Lgt/d0;
.super Ljava/lang/Object;
.source "CoroutineExceptionHandler.kt"

# interfaces
.implements Lkotlin/coroutines/CoroutineContext$Element;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgt/d0$a;,
        Lgt/d0$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final D8:Lgt/d0$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lgt/d0$b;->a:Lgt/d0$b;

    .line 2
    .line 3
    sput-object v0, Lgt/d0;->D8:Lgt/d0$b;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public abstract handleException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
