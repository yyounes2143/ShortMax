.class public final Lio/ktor/client/plugins/HttpTimeout;
.super Ljava/lang/Object;
.source "HttpTimeout.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/client/plugins/HttpTimeout$a;,
        Lio/ktor/client/plugins/HttpTimeout$Plugin;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final d:Lio/ktor/client/plugins/HttpTimeout$Plugin;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final e:Lyr/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyr/a<",
            "Lio/ktor/client/plugins/HttpTimeout;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final b:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final c:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/ktor/client/plugins/HttpTimeout$Plugin;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lio/ktor/client/plugins/HttpTimeout$Plugin;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lio/ktor/client/plugins/HttpTimeout;->d:Lio/ktor/client/plugins/HttpTimeout$Plugin;

    .line 8
    .line 9
    new-instance v0, Lyr/a;

    .line 10
    .line 11
    const-string v1, "TimeoutPlugin"

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lyr/a;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lio/ktor/client/plugins/HttpTimeout;->e:Lyr/a;

    .line 17
    .line 18
    return-void
.end method

.method private constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/ktor/client/plugins/HttpTimeout;->a:Ljava/lang/Long;

    .line 4
    iput-object p2, p0, Lio/ktor/client/plugins/HttpTimeout;->b:Ljava/lang/Long;

    .line 5
    iput-object p3, p0, Lio/ktor/client/plugins/HttpTimeout;->c:Ljava/lang/Long;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/client/plugins/HttpTimeout;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method

.method public static final synthetic a(Lio/ktor/client/plugins/HttpTimeout;)Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/ktor/client/plugins/HttpTimeout;->b:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic b()Lyr/a;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/client/plugins/HttpTimeout;->e:Lyr/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic c(Lio/ktor/client/plugins/HttpTimeout;)Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/ktor/client/plugins/HttpTimeout;->a:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic d(Lio/ktor/client/plugins/HttpTimeout;)Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/ktor/client/plugins/HttpTimeout;->c:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e(Lio/ktor/client/plugins/HttpTimeout;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/ktor/client/plugins/HttpTimeout;->f()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/ktor/client/plugins/HttpTimeout;->a:Ljava/lang/Long;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/ktor/client/plugins/HttpTimeout;->b:Ljava/lang/Long;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lio/ktor/client/plugins/HttpTimeout;->c:Ljava/lang/Long;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
.end method
