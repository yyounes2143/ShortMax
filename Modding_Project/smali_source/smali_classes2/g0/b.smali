.class public final Lg0/b;
.super Ljava/lang/Object;
.source "BitmapFetcher.kt"

# interfaces
.implements Lg0/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg0/b$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lm0/j;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lm0/j;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
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
    iput-object p1, p0, Lg0/b;->a:Landroid/graphics/Bitmap;

    .line 5
    .line 6
    iput-object p2, p0, Lg0/b;->b:Lm0/j;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lrs/c;)Ljava/lang/Object;
    .locals 3
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
    new-instance p1, Lg0/g;

    .line 2
    .line 3
    iget-object v0, p0, Lg0/b;->a:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    iget-object v1, p0, Lg0/b;->b:Lm0/j;

    .line 6
    .line 7
    invoke-virtual {v1}, Lm0/j;->g()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 16
    .line 17
    invoke-direct {v2, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    sget-object v1, Lcoil/decode/DataSource;->MEMORY:Lcoil/decode/DataSource;

    .line 22
    .line 23
    invoke-direct {p1, v2, v0, v1}, Lg0/g;-><init>(Landroid/graphics/drawable/Drawable;ZLcoil/decode/DataSource;)V

    .line 24
    .line 25
    .line 26
    return-object p1
.end method
