.class public final Lio/ktor/client/plugins/HttpRedirect;
.super Ljava/lang/Object;
.source "HttpRedirect.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/client/plugins/HttpRedirect$a;,
        Lio/ktor/client/plugins/HttpRedirect$Plugin;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final c:Lio/ktor/client/plugins/HttpRedirect$Plugin;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final d:Lyr/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyr/a<",
            "Lio/ktor/client/plugins/HttpRedirect;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final e:Lvr/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvr/a<",
            "Ltr/c;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Z

.field private final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/ktor/client/plugins/HttpRedirect$Plugin;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lio/ktor/client/plugins/HttpRedirect$Plugin;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lio/ktor/client/plugins/HttpRedirect;->c:Lio/ktor/client/plugins/HttpRedirect$Plugin;

    .line 8
    .line 9
    new-instance v0, Lyr/a;

    .line 10
    .line 11
    const-string v1, "HttpRedirect"

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lyr/a;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lio/ktor/client/plugins/HttpRedirect;->d:Lyr/a;

    .line 17
    .line 18
    new-instance v0, Lvr/a;

    .line 19
    .line 20
    invoke-direct {v0}, Lvr/a;-><init>()V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lio/ktor/client/plugins/HttpRedirect;->e:Lvr/a;

    .line 24
    .line 25
    return-void
.end method

.method private constructor <init>(ZZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lio/ktor/client/plugins/HttpRedirect;->a:Z

    .line 4
    iput-boolean p2, p0, Lio/ktor/client/plugins/HttpRedirect;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/ktor/client/plugins/HttpRedirect;-><init>(ZZ)V

    return-void
.end method

.method public static final synthetic a(Lio/ktor/client/plugins/HttpRedirect;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/ktor/client/plugins/HttpRedirect;->b:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic b(Lio/ktor/client/plugins/HttpRedirect;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/ktor/client/plugins/HttpRedirect;->a:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic c()Lvr/a;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/client/plugins/HttpRedirect;->e:Lvr/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic d()Lyr/a;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/client/plugins/HttpRedirect;->d:Lyr/a;

    .line 2
    .line 3
    return-object v0
.end method
