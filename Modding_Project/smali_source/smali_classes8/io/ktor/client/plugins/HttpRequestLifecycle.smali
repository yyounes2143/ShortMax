.class public final Lio/ktor/client/plugins/HttpRequestLifecycle;
.super Ljava/lang/Object;
.source "HttpRequestLifecycle.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/client/plugins/HttpRequestLifecycle$Plugin;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lio/ktor/client/plugins/HttpRequestLifecycle$Plugin;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lyr/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyr/a<",
            "Lio/ktor/client/plugins/HttpRequestLifecycle;",
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
    new-instance v0, Lio/ktor/client/plugins/HttpRequestLifecycle$Plugin;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lio/ktor/client/plugins/HttpRequestLifecycle$Plugin;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lio/ktor/client/plugins/HttpRequestLifecycle;->a:Lio/ktor/client/plugins/HttpRequestLifecycle$Plugin;

    .line 8
    .line 9
    new-instance v0, Lyr/a;

    .line 10
    .line 11
    const-string v1, "RequestLifecycle"

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lyr/a;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lio/ktor/client/plugins/HttpRequestLifecycle;->b:Lyr/a;

    .line 17
    .line 18
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/ktor/client/plugins/HttpRequestLifecycle;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lyr/a;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/client/plugins/HttpRequestLifecycle;->b:Lyr/a;

    .line 2
    .line 3
    return-object v0
.end method
