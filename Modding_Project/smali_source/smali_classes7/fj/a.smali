.class public Lfj/a;
.super Ljava/lang/Object;
.source "BannerUtils.java"


# static fields
.field private static a:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static a(F)I
    .locals 1

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 10
    .line 11
    mul-float/2addr p0, v0

    .line 12
    const/high16 v0, 0x3f000000    # 0.5f

    .line 13
    .line 14
    add-float/2addr p0, v0

    .line 15
    float-to-int p0, p0

    .line 16
    return p0
.end method

.method public static b(I)I
    .locals 1

    .line 1
    const/16 v0, 0x1f4

    .line 2
    .line 3
    rem-int p0, v0, p0

    .line 4
    .line 5
    sub-int/2addr v0, p0

    .line 6
    return v0
.end method

.method public static c(II)I
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    add-int/2addr p0, p1

    .line 6
    rem-int/2addr p0, p1

    .line 7
    return p0
.end method

.method public static d()Z
    .locals 1

    .line 1
    sget-boolean v0, Lfj/a;->a:Z

    .line 2
    .line 3
    return v0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lfj/a;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "BVP"

    .line 8
    .line 9
    invoke-static {v0, p0}, Lfj/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lfj/a;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
