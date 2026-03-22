.class public final Lio/ktor/client/plugins/b;
.super Ljava/lang/Object;
.source "HttpPlainText.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final a:Ldu/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "io.ktor.client.plugins.HttpPlainText"

    .line 2
    .line 3
    invoke-static {v0}, Lcs/a;->a(Ljava/lang/String;)Ldu/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lio/ktor/client/plugins/b;->a:Ldu/a;

    .line 8
    .line 9
    return-void
.end method

.method public static final synthetic a()Ldu/a;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/client/plugins/b;->a:Ldu/a;

    .line 2
    .line 3
    return-object v0
.end method
