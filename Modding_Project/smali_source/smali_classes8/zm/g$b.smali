.class public final Lzm/g$b;
.super Ljava/lang/Object;
.source "ColorInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzm/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lzm/g$b;->a:I

    .line 4
    iput v0, p0, Lzm/g$b;->b:I

    .line 5
    iput v0, p0, Lzm/g$b;->c:I

    .line 6
    iput v0, p0, Lzm/g$b;->e:I

    .line 7
    iput v0, p0, Lzm/g$b;->f:I

    return-void
.end method

.method private constructor <init>(Lzm/g;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iget v0, p1, Lzm/g;->a:I

    iput v0, p0, Lzm/g$b;->a:I

    .line 10
    iget v0, p1, Lzm/g;->b:I

    iput v0, p0, Lzm/g$b;->b:I

    .line 11
    iget v0, p1, Lzm/g;->c:I

    iput v0, p0, Lzm/g$b;->c:I

    .line 12
    iget-object v0, p1, Lzm/g;->d:[B

    iput-object v0, p0, Lzm/g$b;->d:[B

    .line 13
    iget v0, p1, Lzm/g;->e:I

    iput v0, p0, Lzm/g$b;->e:I

    .line 14
    iget p1, p1, Lzm/g;->f:I

    iput p1, p0, Lzm/g$b;->f:I

    return-void
.end method

.method synthetic constructor <init>(Lzm/g;Lzm/g$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lzm/g$b;-><init>(Lzm/g;)V

    return-void
.end method


# virtual methods
.method public a()Lzm/g;
    .locals 9

    .line 1
    new-instance v8, Lzm/g;

    .line 2
    .line 3
    iget v1, p0, Lzm/g$b;->a:I

    .line 4
    .line 5
    iget v2, p0, Lzm/g$b;->b:I

    .line 6
    .line 7
    iget v3, p0, Lzm/g$b;->c:I

    .line 8
    .line 9
    iget-object v4, p0, Lzm/g$b;->d:[B

    .line 10
    .line 11
    iget v5, p0, Lzm/g$b;->e:I

    .line 12
    .line 13
    iget v6, p0, Lzm/g$b;->f:I

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    move-object v0, v8

    .line 17
    invoke-direct/range {v0 .. v7}, Lzm/g;-><init>(III[BIILzm/g$a;)V

    .line 18
    .line 19
    .line 20
    return-object v8
.end method

.method public b(I)Lzm/g$b;
    .locals 0

    .line 1
    iput p1, p0, Lzm/g$b;->f:I

    .line 2
    .line 3
    return-object p0
.end method

.method public c(I)Lzm/g$b;
    .locals 0

    .line 1
    iput p1, p0, Lzm/g$b;->b:I

    .line 2
    .line 3
    return-object p0
.end method

.method public d(I)Lzm/g$b;
    .locals 0

    .line 1
    iput p1, p0, Lzm/g$b;->a:I

    .line 2
    .line 3
    return-object p0
.end method

.method public e(I)Lzm/g$b;
    .locals 0

    .line 1
    iput p1, p0, Lzm/g$b;->c:I

    .line 2
    .line 3
    return-object p0
.end method

.method public f([B)Lzm/g$b;
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lzm/g$b;->d:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public g(I)Lzm/g$b;
    .locals 0

    .line 1
    iput p1, p0, Lzm/g$b;->e:I

    .line 2
    .line 3
    return-object p0
.end method
