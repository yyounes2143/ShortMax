.class public final Lm0/i;
.super Ljava/lang/Object;
.source "Disposable.kt"

# interfaces
.implements Lm0/c;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lgt/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgt/k0<",
            "Lm0/g;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgt/k0;)V
    .locals 0
    .param p1    # Lgt/k0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/k0<",
            "+",
            "Lm0/g;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm0/i;->a:Lgt/k0;

    .line 5
    .line 6
    return-void
.end method
