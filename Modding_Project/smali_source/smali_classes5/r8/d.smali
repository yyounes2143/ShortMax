.class public final Lr8/d;
.super Ljava/lang/Object;
.source "JsonDataEncoderBuilder.java"

# interfaces
.implements Lq8/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr8/d$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq8/b<",
        "Lr8/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final e:Lp8/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp8/c<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lp8/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp8/e<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Lp8/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp8/e<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Lr8/d$b;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lp8/c<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lp8/e<",
            "*>;>;"
        }
    .end annotation
.end field

.field private c:Lp8/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp8/c<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lr8/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lr8/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lr8/d;->e:Lp8/c;

    .line 7
    .line 8
    new-instance v0, Lr8/b;

    .line 9
    .line 10
    invoke-direct {v0}, Lr8/b;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lr8/d;->f:Lp8/e;

    .line 14
    .line 15
    new-instance v0, Lr8/c;

    .line 16
    .line 17
    invoke-direct {v0}, Lr8/c;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lr8/d;->g:Lp8/e;

    .line 21
    .line 22
    new-instance v0, Lr8/d$b;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-direct {v0, v1}, Lr8/d$b;-><init>(Lr8/d$a;)V

    .line 26
    .line 27
    .line 28
    sput-object v0, Lr8/d;->h:Lr8/d$b;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lr8/d;->a:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lr8/d;->b:Ljava/util/Map;

    .line 17
    .line 18
    sget-object v0, Lr8/d;->e:Lp8/c;

    .line 19
    .line 20
    iput-object v0, p0, Lr8/d;->c:Lp8/c;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lr8/d;->d:Z

    .line 24
    .line 25
    const-class v0, Ljava/lang/String;

    .line 26
    .line 27
    sget-object v1, Lr8/d;->f:Lp8/e;

    .line 28
    .line 29
    invoke-virtual {p0, v0, v1}, Lr8/d;->p(Ljava/lang/Class;Lp8/e;)Lr8/d;

    .line 30
    .line 31
    .line 32
    const-class v0, Ljava/lang/Boolean;

    .line 33
    .line 34
    sget-object v1, Lr8/d;->g:Lp8/e;

    .line 35
    .line 36
    invoke-virtual {p0, v0, v1}, Lr8/d;->p(Ljava/lang/Class;Lp8/e;)Lr8/d;

    .line 37
    .line 38
    .line 39
    const-class v0, Ljava/util/Date;

    .line 40
    .line 41
    sget-object v1, Lr8/d;->h:Lr8/d$b;

    .line 42
    .line 43
    invoke-virtual {p0, v0, v1}, Lr8/d;->p(Ljava/lang/Class;Lp8/e;)Lr8/d;

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public static synthetic b(Ljava/lang/Boolean;Lp8/f;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lr8/d;->n(Ljava/lang/Boolean;Lp8/f;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Ljava/lang/Object;Lp8/d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lr8/d;->l(Ljava/lang/Object;Lp8/d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Ljava/lang/String;Lp8/f;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lr8/d;->m(Ljava/lang/String;Lp8/f;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic e(Lr8/d;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lr8/d;->a:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lr8/d;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lr8/d;->b:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lr8/d;)Lp8/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lr8/d;->c:Lp8/c;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h(Lr8/d;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lr8/d;->d:Z

    .line 2
    .line 3
    return p0
.end method

.method private static synthetic l(Ljava/lang/Object;Lp8/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/google/firebase/encoders/EncodingException;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "Couldn\'t find encoder for type "

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-direct {p1, p0}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method private static synthetic m(Ljava/lang/String;Lp8/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0}, Lp8/f;->a(Ljava/lang/String;)Lp8/f;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic n(Ljava/lang/Boolean;Lp8/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-interface {p1, p0}, Lp8/f;->g(Z)Lp8/f;

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Class;Lp8/c;)Lq8/b;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lp8/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lr8/d;->o(Ljava/lang/Class;Lp8/c;)Lr8/d;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public i()Lp8/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lr8/d$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lr8/d$a;-><init>(Lr8/d;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public j(Lq8/a;)Lr8/d;
    .locals 0
    .param p1    # Lq8/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-interface {p1, p0}, Lq8/a;->a(Lq8/b;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public k(Z)Lr8/d;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lr8/d;->d:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public o(Ljava/lang/Class;Lp8/c;)Lr8/d;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lp8/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lp8/c<",
            "-TT;>;)",
            "Lr8/d;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lr8/d;->a:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lr8/d;->b:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public p(Ljava/lang/Class;Lp8/e;)Lr8/d;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lp8/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lp8/e<",
            "-TT;>;)",
            "Lr8/d;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lr8/d;->b:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lr8/d;->a:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    return-object p0
.end method
