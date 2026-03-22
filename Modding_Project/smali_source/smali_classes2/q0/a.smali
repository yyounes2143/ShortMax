.class public final Lq0/a;
.super Ljava/lang/Object;
.source "CrossfadeTransition.kt"

# interfaces
.implements Lq0/c;


# annotations
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

.field private final c:I

.field private final d:Z


# virtual methods
.method public a()V
    .locals 8

    .line 1
    new-instance v7, Lcoil/drawable/CrossfadeDrawable;

    .line 2
    .line 3
    iget-object v0, p0, Lq0/a;->a:Lq0/d;

    .line 4
    .line 5
    invoke-interface {v0}, Lq0/d;->a()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v0, p0, Lq0/a;->b:Lm0/g;

    .line 10
    .line 11
    invoke-virtual {v0}, Lm0/g;->a()Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v0, p0, Lq0/a;->b:Lm0/g;

    .line 16
    .line 17
    invoke-virtual {v0}, Lm0/g;->b()Lm0/f;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lm0/f;->J()Lcoil/size/Scale;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget v4, p0, Lq0/a;->c:I

    .line 26
    .line 27
    iget-object v0, p0, Lq0/a;->b:Lm0/g;

    .line 28
    .line 29
    instance-of v5, v0, Lm0/m;

    .line 30
    .line 31
    if-eqz v5, :cond_1

    .line 32
    .line 33
    check-cast v0, Lm0/m;

    .line 34
    .line 35
    invoke-virtual {v0}, Lm0/m;->d()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    const/4 v0, 0x0

    .line 43
    :goto_0
    move v5, v0

    .line 44
    goto :goto_2

    .line 45
    :cond_1
    :goto_1
    const/4 v0, 0x1

    .line 46
    goto :goto_0

    .line 47
    :goto_2
    iget-boolean v6, p0, Lq0/a;->d:Z

    .line 48
    .line 49
    move-object v0, v7

    .line 50
    invoke-direct/range {v0 .. v6}, Lcoil/drawable/CrossfadeDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/size/Scale;IZZ)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lq0/a;->b:Lm0/g;

    .line 54
    .line 55
    instance-of v1, v0, Lm0/m;

    .line 56
    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    iget-object v0, p0, Lq0/a;->a:Lq0/d;

    .line 60
    .line 61
    invoke-interface {v0, v7}, Lo0/a;->b(Landroid/graphics/drawable/Drawable;)V

    .line 62
    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_2
    instance-of v0, v0, Lm0/d;

    .line 66
    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    iget-object v0, p0, Lq0/a;->a:Lq0/d;

    .line 70
    .line 71
    invoke-interface {v0, v7}, Lo0/a;->d(Landroid/graphics/drawable/Drawable;)V

    .line 72
    .line 73
    .line 74
    :cond_3
    :goto_3
    return-void
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lq0/a;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lq0/a;->d:Z

    .line 2
    .line 3
    return v0
.end method
