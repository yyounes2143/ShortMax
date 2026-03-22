.class public final Len/g$b;
.super Ljava/lang/Object;
.source "DataSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Len/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:J

.field private c:I

.field private d:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:J

.field private g:J

.field private h:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private i:I

.field private j:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Len/g$b;->c:I

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Len/g$b;->e:Ljava/util/Map;

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Len/g$b;->g:J

    return-void
.end method

.method private constructor <init>(Len/g;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iget-object v0, p1, Len/g;->a:Landroid/net/Uri;

    iput-object v0, p0, Len/g$b;->a:Landroid/net/Uri;

    .line 8
    iget-wide v0, p1, Len/g;->b:J

    iput-wide v0, p0, Len/g$b;->b:J

    .line 9
    iget v0, p1, Len/g;->c:I

    iput v0, p0, Len/g$b;->c:I

    .line 10
    iget-object v0, p1, Len/g;->d:[B

    iput-object v0, p0, Len/g$b;->d:[B

    .line 11
    iget-object v0, p1, Len/g;->e:Ljava/util/Map;

    iput-object v0, p0, Len/g$b;->e:Ljava/util/Map;

    .line 12
    iget-wide v0, p1, Len/g;->g:J

    iput-wide v0, p0, Len/g$b;->f:J

    .line 13
    iget-wide v0, p1, Len/g;->h:J

    iput-wide v0, p0, Len/g$b;->g:J

    .line 14
    iget-object v0, p1, Len/g;->i:Ljava/lang/String;

    iput-object v0, p0, Len/g$b;->h:Ljava/lang/String;

    .line 15
    iget v0, p1, Len/g;->j:I

    iput v0, p0, Len/g$b;->i:I

    .line 16
    iget-object p1, p1, Len/g;->k:Ljava/lang/Object;

    iput-object p1, p0, Len/g$b;->j:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Len/g;Len/g$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Len/g$b;-><init>(Len/g;)V

    return-void
.end method


# virtual methods
.method public a()Len/g;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Len/g$b;->a:Landroid/net/Uri;

    .line 4
    .line 5
    const-string v2, "The uri must be set."

    .line 6
    .line 7
    invoke-static {v1, v2}, Lcn/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    new-instance v1, Len/g;

    .line 11
    .line 12
    iget-object v4, v0, Len/g$b;->a:Landroid/net/Uri;

    .line 13
    .line 14
    iget-wide v5, v0, Len/g$b;->b:J

    .line 15
    .line 16
    iget v7, v0, Len/g$b;->c:I

    .line 17
    .line 18
    iget-object v8, v0, Len/g$b;->d:[B

    .line 19
    .line 20
    iget-object v9, v0, Len/g$b;->e:Ljava/util/Map;

    .line 21
    .line 22
    iget-wide v10, v0, Len/g$b;->f:J

    .line 23
    .line 24
    iget-wide v12, v0, Len/g$b;->g:J

    .line 25
    .line 26
    iget-object v14, v0, Len/g$b;->h:Ljava/lang/String;

    .line 27
    .line 28
    iget v15, v0, Len/g$b;->i:I

    .line 29
    .line 30
    iget-object v2, v0, Len/g$b;->j:Ljava/lang/Object;

    .line 31
    .line 32
    const/16 v17, 0x0

    .line 33
    .line 34
    move-object v3, v1

    .line 35
    move-object/from16 v16, v2

    .line 36
    .line 37
    invoke-direct/range {v3 .. v17}, Len/g;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;Len/g$a;)V

    .line 38
    .line 39
    .line 40
    return-object v1
.end method

.method public b(I)Len/g$b;
    .locals 0

    .line 1
    iput p1, p0, Len/g$b;->i:I

    .line 2
    .line 3
    return-object p0
.end method

.method public c([B)Len/g$b;
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Len/g$b;->d:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public d(I)Len/g$b;
    .locals 0

    .line 1
    iput p1, p0, Len/g$b;->c:I

    .line 2
    .line 3
    return-object p0
.end method

.method public e(Ljava/util/Map;)Len/g$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Len/g$b;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Len/g$b;->e:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public f(Ljava/lang/String;)Len/g$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Len/g$b;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public g(J)Len/g$b;
    .locals 0

    .line 1
    iput-wide p1, p0, Len/g$b;->g:J

    .line 2
    .line 3
    return-object p0
.end method

.method public h(J)Len/g$b;
    .locals 0

    .line 1
    iput-wide p1, p0, Len/g$b;->f:J

    .line 2
    .line 3
    return-object p0
.end method

.method public i(Landroid/net/Uri;)Len/g$b;
    .locals 0

    .line 1
    iput-object p1, p0, Len/g$b;->a:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method public j(Ljava/lang/String;)Len/g$b;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Len/g$b;->a:Landroid/net/Uri;

    .line 6
    .line 7
    return-object p0
.end method
