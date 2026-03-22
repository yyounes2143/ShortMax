.class public final Lzm/w$b;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzm/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzm/w$b$a;
    }
.end annotation


# static fields
.field public static final b:Lzm/w$b;

.field private static final c:Ljava/lang/String;


# instance fields
.field private final a:Lzm/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lzm/w$b$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lzm/w$b$a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lzm/w$b$a;->e()Lzm/w$b;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lzm/w$b;->b:Lzm/w$b;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {v0}, Lcn/m0;->C0(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lzm/w$b;->c:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method private constructor <init>(Lzm/n;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lzm/w$b;->a:Lzm/n;

    return-void
.end method

.method synthetic constructor <init>(Lzm/n;Lzm/w$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lzm/w$b;-><init>(Lzm/n;)V

    return-void
.end method

.method static synthetic a(Lzm/w$b;)Lzm/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/w$b;->a:Lzm/n;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public b(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lzm/w$b;->a:Lzm/n;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lzm/n;->a(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Lzm/w$b;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_1
    check-cast p1, Lzm/w$b;

    .line 12
    .line 13
    iget-object v0, p0, Lzm/w$b;->a:Lzm/n;

    .line 14
    .line 15
    iget-object p1, p1, Lzm/w$b;->a:Lzm/n;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lzm/n;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lzm/w$b;->a:Lzm/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Lzm/n;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
