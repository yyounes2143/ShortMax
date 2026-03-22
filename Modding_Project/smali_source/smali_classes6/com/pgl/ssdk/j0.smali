.class public Lcom/pgl/ssdk/j0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_1

    .line 6
    .line 7
    invoke-static {}, Landroidx/webkit/internal/e;->a()Landroid/content/pm/PackageInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    const-string v0, "!error!"

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_1
    const-string v0, "!version_error!"

    .line 24
    .line 25
    return-object v0
.end method
