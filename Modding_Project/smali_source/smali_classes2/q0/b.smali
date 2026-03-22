.class public final Lq0/b;
.super Ljava/lang/Object;
.source "NoneTransition.kt"

# interfaces
.implements Lq0/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq0/b$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lq0/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lm0/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq0/d;Lm0/g;)V
    .locals 0
    .param p1    # Lq0/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lm0/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq0/b;->a:Lq0/d;

    .line 5
    .line 6
    iput-object p2, p0, Lq0/b;->b:Lm0/g;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lq0/b;->b:Lm0/g;

    .line 2
    .line 3
    instance-of v1, v0, Lm0/m;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lq0/b;->a:Lq0/d;

    .line 8
    .line 9
    check-cast v0, Lm0/m;

    .line 10
    .line 11
    invoke-virtual {v0}, Lm0/m;->a()Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v1, v0}, Lo0/a;->b(Landroid/graphics/drawable/Drawable;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    instance-of v1, v0, Lm0/d;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lq0/b;->a:Lq0/d;

    .line 24
    .line 25
    invoke-virtual {v0}, Lm0/g;->a()Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v1, v0}, Lo0/a;->d(Landroid/graphics/drawable/Drawable;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method
