.class public final Lcom/facebook/internal/b;
.super Ljava/lang/Object;
.source "AttributionIdentifiers.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/b$a;,
        Lcom/facebook/internal/b$b;,
        Lcom/facebook/internal/b$c;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final f:Lcom/facebook/internal/b$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final g:Ljava/lang/String;

.field public static h:Lcom/facebook/internal/b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private b:J

.field private c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/internal/b$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/facebook/internal/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/facebook/internal/b;->f:Lcom/facebook/internal/b$a;

    .line 8
    .line 9
    const-class v0, Lcom/facebook/internal/b;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/facebook/internal/b;->g:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic a(Lcom/facebook/internal/b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/internal/b;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic b()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/internal/b;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic c(Lcom/facebook/internal/b;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/internal/b;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic d(Lcom/facebook/internal/b;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/internal/b;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic e(Lcom/facebook/internal/b;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/internal/b;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic f(Lcom/facebook/internal/b;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/facebook/internal/b;->b:J

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic g(Lcom/facebook/internal/b;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/facebook/internal/b;->e:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final k(Landroid/content/Context;)Lcom/facebook/internal/b;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/internal/b;->f:Lcom/facebook/internal/b$a;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/facebook/internal/b$a;->e(Landroid/content/Context;)Lcom/facebook/internal/b;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method


# virtual methods
.method public final h()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/v;->G()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/facebook/v;->k()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/facebook/internal/b;->a:Ljava/lang/String;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/internal/b;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/internal/b;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/internal/b;->e:Z

    .line 2
    .line 3
    return v0
.end method
