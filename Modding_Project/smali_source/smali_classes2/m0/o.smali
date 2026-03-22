.class public final Lm0/o;
.super Ljava/lang/Object;
.source "Disposable.kt"

# interfaces
.implements Lm0/c;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile b:Lgt/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgt/k0<",
            "+",
            "Lm0/g;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lgt/k0;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lgt/k0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
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
    iput-object p1, p0, Lm0/o;->a:Landroid/view/View;

    .line 5
    .line 6
    iput-object p2, p0, Lm0/o;->b:Lgt/k0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lgt/k0;)V
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
    iput-object p1, p0, Lm0/o;->b:Lgt/k0;

    .line 2
    .line 3
    return-void
.end method
