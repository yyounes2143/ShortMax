.class Lop/a$b$a;
.super Ljava/lang/Object;
.source "ImageHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lop/a$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lop/a$b;


# direct methods
.method constructor <init>(Lop/a$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lop/a$b$a;->a:Lop/a$b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lop/a$b$a;->a:Lop/a$b;

    .line 2
    .line 3
    invoke-static {v0}, Lop/a$b;->a(Lop/a$b;)Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/ImageView;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lop/a$b$a;->a:Lop/a$b;

    .line 16
    .line 17
    invoke-static {v1}, Lop/a$b;->c(Lop/a$b;)Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lop/a$b$a;->a:Lop/a$b;

    .line 24
    .line 25
    invoke-static {v1}, Lop/a$b;->d(Lop/a$b;)Lop/a$c;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v2, p0, Lop/a$b$a;->a:Lop/a$b;

    .line 30
    .line 31
    invoke-static {v2}, Lop/a$b;->c(Lop/a$b;)Landroid/graphics/drawable/Drawable;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-interface {v1, v0, v2}, Lop/a$c;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lop/a$b$a;->a:Lop/a$b;

    .line 40
    .line 41
    invoke-static {v0}, Lop/a$b;->d(Lop/a$b;)Lop/a$c;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v1, "Target ImageView or Bitmap is invalid"

    .line 46
    .line 47
    invoke-interface {v0, v1}, Lop/a$c;->onError(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void
.end method
