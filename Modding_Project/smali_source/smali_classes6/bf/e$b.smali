.class public final Lbf/e$b;
.super Lbf/e$a;
.source "ReviewManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbf/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "immersion"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lbf/e$a;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public h()Z
    .locals 2

    .line 1
    invoke-static {}, Lbf/e;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    div-int/lit16 v0, v0, 0x3e8

    .line 6
    .line 7
    div-int/lit8 v0, v0, 0x3c

    .line 8
    .line 9
    const/16 v1, 0x14

    .line 10
    .line 11
    if-lt v0, v1, :cond_0

    .line 12
    .line 13
    sget-object v0, Lbf/e;->a:Lbf/e;

    .line 14
    .line 15
    invoke-static {v0}, Lbf/e;->c(Lbf/e;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0
.end method

.method public i()V
    .locals 1

    .line 1
    invoke-static {}, Lbf/e;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit16 v0, v0, 0xc8

    .line 6
    .line 7
    invoke-static {v0}, Lbf/e;->f(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
