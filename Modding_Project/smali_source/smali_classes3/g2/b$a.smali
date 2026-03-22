.class Lg2/b$a;
.super Ljava/lang/Object;
.source "DiskCacheConfig.java"

# interfaces
.implements Lk2/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg2/b;-><init>(Lg2/b$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk2/k<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lg2/b;


# direct methods
.method constructor <init>(Lg2/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg2/b$a;->a:Lg2/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lg2/b$a;->a:Lg2/b;

    .line 2
    .line 3
    invoke-static {v0}, Lg2/b;->a(Lg2/b;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lk2/h;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lg2/b$a;->a:Lg2/b;

    .line 11
    .line 12
    invoke-static {v0}, Lg2/b;->a(Lg2/b;)Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg2/b$a;->a()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
