.class public final Lcom/facebook/internal/a0;
.super Ljava/lang/Object;
.source "ImageRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/a0$a;,
        Lcom/facebook/internal/a0$b;,
        Lcom/facebook/internal/a0$c;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final f:Lcom/facebook/internal/a0$c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Landroid/net/Uri;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lcom/facebook/internal/a0$b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final d:Z

.field private final e:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/internal/a0$c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/facebook/internal/a0$c;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/facebook/internal/a0;->f:Lcom/facebook/internal/a0$c;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/facebook/internal/a0$b;ZLjava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/facebook/internal/a0;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/facebook/internal/a0;->b:Landroid/net/Uri;

    .line 5
    iput-object p3, p0, Lcom/facebook/internal/a0;->c:Lcom/facebook/internal/a0$b;

    .line 6
    iput-boolean p4, p0, Lcom/facebook/internal/a0;->d:Z

    .line 7
    iput-object p5, p0, Lcom/facebook/internal/a0;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/facebook/internal/a0$b;ZLjava/lang/Object;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/facebook/internal/a0;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/facebook/internal/a0$b;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/internal/a0$b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/internal/a0;->c:Lcom/facebook/internal/a0$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/internal/a0;->e:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Landroid/net/Uri;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/internal/a0;->b:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/internal/a0;->d:Z

    .line 2
    .line 3
    return v0
.end method
