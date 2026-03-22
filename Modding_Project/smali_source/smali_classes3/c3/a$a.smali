.class Lc3/a$a;
.super Ljava/lang/Object;
.source "ArrayDrawable.java"

# interfaces
.implements Lc3/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc3/a;->a(I)Lc3/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lc3/a;


# direct methods
.method constructor <init>(Lc3/a;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc3/a$a;->b:Lc3/a;

    .line 2
    .line 3
    iput p2, p0, Lc3/a$a;->a:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lc3/a$a;->b:Lc3/a;

    .line 2
    .line 3
    iget v1, p0, Lc3/a$a;->a:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lc3/a;->b(I)Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public k(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lc3/a$a;->b:Lc3/a;

    .line 2
    .line 3
    iget v1, p0, Lc3/a$a;->a:I

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Lc3/a;->e(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
