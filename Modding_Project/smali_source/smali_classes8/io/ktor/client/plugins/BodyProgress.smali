.class public final Lio/ktor/client/plugins/BodyProgress;
.super Ljava/lang/Object;
.source "BodyProgress.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/client/plugins/BodyProgress$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lio/ktor/client/plugins/BodyProgress$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lyr/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyr/a<",
            "Lio/ktor/client/plugins/BodyProgress;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/ktor/client/plugins/BodyProgress$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lio/ktor/client/plugins/BodyProgress$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lio/ktor/client/plugins/BodyProgress;->a:Lio/ktor/client/plugins/BodyProgress$a;

    .line 8
    .line 9
    new-instance v0, Lyr/a;

    .line 10
    .line 11
    const-string v1, "BodyProgress"

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lyr/a;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lio/ktor/client/plugins/BodyProgress;->b:Lyr/a;

    .line 17
    .line 18
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

.method public static final synthetic a()Lyr/a;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/client/plugins/BodyProgress;->b:Lyr/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic b(Lio/ktor/client/plugins/BodyProgress;Lio/ktor/client/HttpClient;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/ktor/client/plugins/BodyProgress;->c(Lio/ktor/client/HttpClient;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final c(Lio/ktor/client/HttpClient;)V
    .locals 4

    .line 1
    new-instance v0, Lds/f;

    .line 2
    .line 3
    const-string v1, "ObservableContent"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lds/f;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lio/ktor/client/HttpClient;->p()Lsr/d;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    sget-object v2, Lsr/d;->h:Lsr/d$a;

    .line 13
    .line 14
    invoke-virtual {v2}, Lsr/d$a;->b()Lds/f;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2, v0}, Lds/b;->j(Lds/f;Lds/f;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lio/ktor/client/HttpClient;->p()Lsr/d;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-instance v2, Lio/ktor/client/plugins/BodyProgress$handle$1;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-direct {v2, v3}, Lio/ktor/client/plugins/BodyProgress$handle$1;-><init>(Lrs/c;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0, v2}, Lds/b;->l(Lds/f;Lat/n;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lio/ktor/client/HttpClient;->o()Ltr/b;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    sget-object v0, Ltr/b;->h:Ltr/b$a;

    .line 39
    .line 40
    invoke-virtual {v0}, Ltr/b$a;->a()Lds/f;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-instance v1, Lio/ktor/client/plugins/BodyProgress$handle$2;

    .line 45
    .line 46
    invoke-direct {v1, v3}, Lio/ktor/client/plugins/BodyProgress$handle$2;-><init>(Lrs/c;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0, v1}, Lds/b;->l(Lds/f;Lat/n;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
