.class public final Lg0/f;
.super Ljava/lang/Object;
.source "DrawableFetcher.kt"

# interfaces
.implements Lg0/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg0/f$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lm0/j;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lm0/j;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lm0/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lg0/f;->a:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    iput-object p2, p0, Lg0/f;->b:Lm0/j;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lrs/c;)Ljava/lang/Object;
    .locals 7
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lg0/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object p1, p0, Lg0/f;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-static {p1}, Lr0/i;->u(Landroid/graphics/drawable/Drawable;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    new-instance v0, Lg0/g;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    sget-object v1, Lr0/k;->a:Lr0/k;

    .line 12
    .line 13
    iget-object v2, p0, Lg0/f;->a:Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    iget-object v3, p0, Lg0/f;->b:Lm0/j;

    .line 16
    .line 17
    invoke-virtual {v3}, Lm0/j;->f()Landroid/graphics/Bitmap$Config;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    iget-object v4, p0, Lg0/f;->b:Lm0/j;

    .line 22
    .line 23
    invoke-virtual {v4}, Lm0/j;->n()Ln0/g;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    iget-object v5, p0, Lg0/f;->b:Lm0/j;

    .line 28
    .line 29
    invoke-virtual {v5}, Lm0/j;->m()Lcoil/size/Scale;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    iget-object v6, p0, Lg0/f;->b:Lm0/j;

    .line 34
    .line 35
    invoke-virtual {v6}, Lm0/j;->c()Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    invoke-virtual/range {v1 .. v6}, Lr0/k;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;Ln0/g;Lcoil/size/Scale;Z)Landroid/graphics/Bitmap;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-object v2, p0, Lg0/f;->b:Lm0/j;

    .line 44
    .line 45
    invoke-virtual {v2}, Lm0/j;->g()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 54
    .line 55
    invoke-direct {v3, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    iget-object v3, p0, Lg0/f;->a:Landroid/graphics/drawable/Drawable;

    .line 60
    .line 61
    :goto_0
    sget-object v1, Lcoil/decode/DataSource;->MEMORY:Lcoil/decode/DataSource;

    .line 62
    .line 63
    invoke-direct {v0, v3, p1, v1}, Lg0/g;-><init>(Landroid/graphics/drawable/Drawable;ZLcoil/decode/DataSource;)V

    .line 64
    .line 65
    .line 66
    return-object v0
.end method
