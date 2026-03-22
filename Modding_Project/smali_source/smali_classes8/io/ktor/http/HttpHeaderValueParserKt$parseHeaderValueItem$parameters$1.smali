.class final Lio/ktor/http/HttpHeaderValueParserKt$parseHeaderValueItem$parameters$1;
.super Lkotlin/jvm/internal/Lambda;
.source "HttpHeaderValueParser.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/http/HttpHeaderValueParserKt;->d(Ljava/lang/String;ILms/i;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/ArrayList<",
        "Lwr/d;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final d:Lio/ktor/http/HttpHeaderValueParserKt$parseHeaderValueItem$parameters$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/ktor/http/HttpHeaderValueParserKt$parseHeaderValueItem$parameters$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/ktor/http/HttpHeaderValueParserKt$parseHeaderValueItem$parameters$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/ktor/http/HttpHeaderValueParserKt$parseHeaderValueItem$parameters$1;->d:Lio/ktor/http/HttpHeaderValueParserKt$parseHeaderValueItem$parameters$1;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lwr/d;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/ktor/http/HttpHeaderValueParserKt$parseHeaderValueItem$parameters$1;->b()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
