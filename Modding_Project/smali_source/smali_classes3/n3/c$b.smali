.class Ln3/c$b;
.super Ljava/lang/Object;
.source "AnimatedFrameCache.java"

# interfaces
.implements Lf2/a;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Lf2/a;

.field private final b:I


# direct methods
.method public constructor <init>(Lf2/a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ln3/c$b;->a:Lf2/a;

    .line 5
    .line 6
    iput p2, p0, Ln3/c$b;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Ln3/c$b;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    check-cast p1, Ln3/c$b;

    .line 11
    .line 12
    iget v1, p0, Ln3/c$b;->b:I

    .line 13
    .line 14
    iget v3, p1, Ln3/c$b;->b:I

    .line 15
    .line 16
    if-ne v1, v3, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Ln3/c$b;->a:Lf2/a;

    .line 19
    .line 20
    iget-object p1, p1, Ln3/c$b;->a:Lf2/a;

    .line 21
    .line 22
    invoke-interface {v1, p1}, Lf2/a;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v0, v2

    .line 30
    :goto_0
    return v0

    .line 31
    :cond_2
    return v2
.end method

.method public getUriString()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/c$b;->a:Lf2/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lf2/a;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit16 v0, v0, 0x3f5

    .line 8
    .line 9
    iget v1, p0, Ln3/c$b;->b:I

    .line 10
    .line 11
    add-int/2addr v0, v1

    .line 12
    return v0
.end method

.method public isResourceIdForDebugging()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lk2/f;->b(Ljava/lang/Object;)Lk2/f$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "imageCacheKey"

    .line 6
    .line 7
    iget-object v2, p0, Ln3/c$b;->a:Lf2/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "frameIndex"

    .line 14
    .line 15
    iget v2, p0, Ln3/c$b;->b:I

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->a(Ljava/lang/String;I)Lk2/f$a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lk2/f$a;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
