.class public final Lio/ktor/http/f;
.super Ljava/lang/Object;
.source "Parameters.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nParameters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Parameters.kt\nio/ktor/http/ParametersKt\n+ 2 Parameters.kt\nio/ktor/http/Parameters$Companion\n*L\n1#1,116:1\n24#2:117\n24#2:118\n*S KotlinDebug\n*F\n+ 1 Parameters.kt\nio/ktor/http/ParametersKt\n*L\n74#1:117\n96#1:118\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(I)Lwr/q;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lwr/r;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lwr/r;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic b(IILjava/lang/Object;)Lwr/q;
    .locals 0

    .line 1
    and-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/16 p0, 0x8

    .line 6
    .line 7
    :cond_0
    invoke-static {p0}, Lio/ktor/http/f;->a(I)Lwr/q;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
