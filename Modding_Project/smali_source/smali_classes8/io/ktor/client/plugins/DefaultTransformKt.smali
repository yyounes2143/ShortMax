.class public final Lio/ktor/client/plugins/DefaultTransformKt;
.super Ljava/lang/Object;
.source "DefaultTransform.kt"


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
    const-string v0, "io.ktor.client.plugins.defaultTransformers"

    .line 2
    .line 3
    invoke-static {v0}, Lcs/a;->a(Ljava/lang/String;)Ldu/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lio/ktor/client/plugins/DefaultTransformKt;->a:Ldu/a;

    .line 8
    .line 9
    return-void
.end method

.method public static final synthetic a()Ldu/a;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/client/plugins/DefaultTransformKt;->a:Ldu/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final b(Lio/ktor/client/HttpClient;)V
    .locals 4
    .param p0    # Lio/ktor/client/HttpClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lio/ktor/client/HttpClient;->p()Lsr/d;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lsr/d;->h:Lsr/d$a;

    .line 11
    .line 12
    invoke-virtual {v1}, Lsr/d$a;->b()Lds/f;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v2, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$1;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-direct {v2, v3}, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$1;-><init>(Lrs/c;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Lds/b;->l(Lds/f;Lat/n;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lio/ktor/client/HttpClient;->q()Ltr/e;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sget-object v1, Ltr/e;->h:Ltr/e$a;

    .line 30
    .line 31
    invoke-virtual {v1}, Ltr/e$a;->a()Lds/f;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    new-instance v2, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;

    .line 36
    .line 37
    invoke-direct {v2, v3}, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;-><init>(Lrs/c;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Lds/b;->l(Lds/f;Lat/n;)V

    .line 41
    .line 42
    .line 43
    invoke-static {p0}, Lio/ktor/client/plugins/DefaultTransformersJvmKt;->b(Lio/ktor/client/HttpClient;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
