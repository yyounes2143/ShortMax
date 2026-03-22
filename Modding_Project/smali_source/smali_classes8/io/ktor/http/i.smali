.class public final Lio/ktor/http/i;
.super Ljava/lang/Object;
.source "URLBuilderJvm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final a(Lio/ktor/http/h$a;)Ljava/lang/String;
    .locals 1
    .param p0    # Lio/ktor/http/h$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "http://localhost"

    .line 7
    .line 8
    return-object p0
.end method
