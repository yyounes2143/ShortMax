.class public final Lio/ktor/client/plugins/DefaultTransformersJvmKt$platformResponseDefaultTransformers$1$a;
.super Ljava/io/InputStream;
.source "DefaultTransformersJvm.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/DefaultTransformersJvmKt$platformResponseDefaultTransformers$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Ljava/io/InputStream;

.field final synthetic b:Lds/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lds/c<",
            "Ltr/d;",
            "Lio/ktor/client/call/HttpClientCall;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/io/InputStream;Lds/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lds/c<",
            "Ltr/d;",
            "Lio/ktor/client/call/HttpClientCall;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/ktor/client/plugins/DefaultTransformersJvmKt$platformResponseDefaultTransformers$1$a;->a:Ljava/io/InputStream;

    .line 2
    .line 3
    iput-object p2, p0, Lio/ktor/client/plugins/DefaultTransformersJvmKt$platformResponseDefaultTransformers$1$a;->b:Lds/c;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/ktor/client/plugins/DefaultTransformersJvmKt$platformResponseDefaultTransformers$1$a;->a:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public close()V
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/ktor/client/plugins/DefaultTransformersJvmKt$platformResponseDefaultTransformers$1$a;->a:Ljava/io/InputStream;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lio/ktor/client/plugins/DefaultTransformersJvmKt$platformResponseDefaultTransformers$1$a;->b:Lds/c;

    .line 10
    .line 11
    invoke-virtual {v0}, Lds/c;->b()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lio/ktor/client/call/HttpClientCall;

    .line 16
    .line 17
    invoke-virtual {v0}, Lio/ktor/client/call/HttpClientCall;->e()Ltr/c;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lio/ktor/client/statement/HttpResponseKt;->d(Ltr/c;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public read()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/ktor/client/plugins/DefaultTransformersJvmKt$platformResponseDefaultTransformers$1$a;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/ktor/client/plugins/DefaultTransformersJvmKt$platformResponseDefaultTransformers$1$a;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1
.end method
