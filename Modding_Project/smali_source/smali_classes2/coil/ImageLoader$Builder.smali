.class public final Lcoil/ImageLoader$Builder;
.super Ljava/lang/Object;
.source "ImageLoader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Lm0/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private c:Lms/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lms/i<",
            "+",
            "Lcoil/memory/MemoryCache;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Lms/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lms/i<",
            "+",
            "Le0/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Lms/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lms/i<",
            "+",
            "Lokhttp3/Call$Factory;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:La0/c$d;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:La0/b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private h:Lr0/n;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcoil/ImageLoader$Builder;->a:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {}, Lr0/h;->b()Lm0/a;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcoil/ImageLoader$Builder;->b:Lm0/a;

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lcoil/ImageLoader$Builder;->c:Lms/i;

    .line 18
    .line 19
    iput-object p1, p0, Lcoil/ImageLoader$Builder;->d:Lms/i;

    .line 20
    .line 21
    iput-object p1, p0, Lcoil/ImageLoader$Builder;->e:Lms/i;

    .line 22
    .line 23
    iput-object p1, p0, Lcoil/ImageLoader$Builder;->f:La0/c$d;

    .line 24
    .line 25
    iput-object p1, p0, Lcoil/ImageLoader$Builder;->g:La0/b;

    .line 26
    .line 27
    new-instance p1, Lr0/n;

    .line 28
    .line 29
    const/16 v6, 0x1f

    .line 30
    .line 31
    const/4 v7, 0x0

    .line 32
    const/4 v1, 0x0

    .line 33
    const/4 v2, 0x0

    .line 34
    const/4 v3, 0x0

    .line 35
    const/4 v4, 0x0

    .line 36
    const/4 v5, 0x0

    .line 37
    move-object v0, p1

    .line 38
    invoke-direct/range {v0 .. v7}, Lr0/n;-><init>(ZZZILcoil/decode/ExifOrientationPolicy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lcoil/ImageLoader$Builder;->h:Lr0/n;

    .line 42
    .line 43
    return-void
.end method

.method public static final synthetic a(Lcoil/ImageLoader$Builder;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil/ImageLoader$Builder;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final b()Lcoil/ImageLoader;
    .locals 11
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v10, Lcoil/RealImageLoader;

    .line 2
    .line 3
    iget-object v1, p0, Lcoil/ImageLoader$Builder;->a:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcoil/ImageLoader$Builder;->b:Lm0/a;

    .line 6
    .line 7
    iget-object v0, p0, Lcoil/ImageLoader$Builder;->c:Lms/i;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcoil/ImageLoader$Builder$build$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcoil/ImageLoader$Builder$build$1;-><init>(Lcoil/ImageLoader$Builder;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_0
    move-object v3, v0

    .line 21
    iget-object v0, p0, Lcoil/ImageLoader$Builder;->d:Lms/i;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    new-instance v0, Lcoil/ImageLoader$Builder$build$2;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcoil/ImageLoader$Builder$build$2;-><init>(Lcoil/ImageLoader$Builder;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :cond_1
    move-object v4, v0

    .line 35
    iget-object v0, p0, Lcoil/ImageLoader$Builder;->e:Lms/i;

    .line 36
    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    sget-object v0, Lcoil/ImageLoader$Builder$build$3;->d:Lcoil/ImageLoader$Builder$build$3;

    .line 40
    .line 41
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :cond_2
    move-object v5, v0

    .line 46
    iget-object v0, p0, Lcoil/ImageLoader$Builder;->f:La0/c$d;

    .line 47
    .line 48
    if-nez v0, :cond_3

    .line 49
    .line 50
    sget-object v0, La0/c$d;->b:La0/c$d;

    .line 51
    .line 52
    :cond_3
    move-object v6, v0

    .line 53
    iget-object v0, p0, Lcoil/ImageLoader$Builder;->g:La0/b;

    .line 54
    .line 55
    if-nez v0, :cond_4

    .line 56
    .line 57
    new-instance v0, La0/b;

    .line 58
    .line 59
    invoke-direct {v0}, La0/b;-><init>()V

    .line 60
    .line 61
    .line 62
    :cond_4
    move-object v7, v0

    .line 63
    iget-object v8, p0, Lcoil/ImageLoader$Builder;->h:Lr0/n;

    .line 64
    .line 65
    const/4 v9, 0x0

    .line 66
    move-object v0, v10

    .line 67
    invoke-direct/range {v0 .. v9}, Lcoil/RealImageLoader;-><init>(Landroid/content/Context;Lm0/a;Lms/i;Lms/i;Lms/i;La0/c$d;La0/b;Lr0/n;Lr0/q;)V

    .line 68
    .line 69
    .line 70
    return-object v10
.end method
