.class public final Lzm/k;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzm/k$b;
    }
.end annotation


# static fields
.field public static final e:Lzm/k;

.field private static final f:Ljava/lang/String;

.field private static final g:Ljava/lang/String;

.field private static final h:Ljava/lang/String;

.field private static final i:Ljava/lang/String;


# instance fields
.field public final a:I

.field public final b:I
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation
.end field

.field public final c:I
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation
.end field

.field public final d:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lzm/k$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lzm/k$b;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lzm/k$b;->e()Lzm/k;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lzm/k;->e:Lzm/k;

    .line 12
    .line 13
    invoke-static {v1}, Lcn/m0;->C0(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lzm/k;->f:Ljava/lang/String;

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-static {v0}, Lcn/m0;->C0(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lzm/k;->g:Ljava/lang/String;

    .line 25
    .line 26
    const/4 v0, 0x2

    .line 27
    invoke-static {v0}, Lcn/m0;->C0(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lzm/k;->h:Ljava/lang/String;

    .line 32
    .line 33
    const/4 v0, 0x3

    .line 34
    invoke-static {v0}, Lcn/m0;->C0(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lzm/k;->i:Ljava/lang/String;

    .line 39
    .line 40
    return-void
.end method

.method private constructor <init>(Lzm/k$b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lzm/k$b;->a(Lzm/k$b;)I

    move-result v0

    iput v0, p0, Lzm/k;->a:I

    .line 4
    invoke-static {p1}, Lzm/k$b;->b(Lzm/k$b;)I

    move-result v0

    iput v0, p0, Lzm/k;->b:I

    .line 5
    invoke-static {p1}, Lzm/k$b;->c(Lzm/k$b;)I

    move-result v0

    iput v0, p0, Lzm/k;->c:I

    .line 6
    invoke-static {p1}, Lzm/k$b;->d(Lzm/k$b;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lzm/k;->d:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lzm/k$b;Lzm/k$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lzm/k;-><init>(Lzm/k$b;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lzm/k;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lzm/k;

    .line 12
    .line 13
    iget v1, p0, Lzm/k;->a:I

    .line 14
    .line 15
    iget v3, p1, Lzm/k;->a:I

    .line 16
    .line 17
    if-ne v1, v3, :cond_2

    .line 18
    .line 19
    iget v1, p0, Lzm/k;->b:I

    .line 20
    .line 21
    iget v3, p1, Lzm/k;->b:I

    .line 22
    .line 23
    if-ne v1, v3, :cond_2

    .line 24
    .line 25
    iget v1, p0, Lzm/k;->c:I

    .line 26
    .line 27
    iget v3, p1, Lzm/k;->c:I

    .line 28
    .line 29
    if-ne v1, v3, :cond_2

    .line 30
    .line 31
    iget-object v1, p0, Lzm/k;->d:Ljava/lang/String;

    .line 32
    .line 33
    iget-object p1, p1, Lzm/k;->d:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    move v0, v2

    .line 43
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    const/16 v0, 0x20f

    .line 2
    .line 3
    iget v1, p0, Lzm/k;->a:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    mul-int/lit8 v0, v0, 0x1f

    .line 7
    .line 8
    iget v1, p0, Lzm/k;->b:I

    .line 9
    .line 10
    add-int/2addr v0, v1

    .line 11
    mul-int/lit8 v0, v0, 0x1f

    .line 12
    .line 13
    iget v1, p0, Lzm/k;->c:I

    .line 14
    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-object v1, p0, Lzm/k;->d:Ljava/lang/String;

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    :goto_0
    add-int/2addr v0, v1

    .line 29
    return v0
.end method
