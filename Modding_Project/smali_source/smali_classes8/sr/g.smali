.class public final Lsr/g;
.super Ljava/lang/Object;
.source "RequestBody.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRequestBody.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RequestBody.kt\nio/ktor/client/request/RequestBodyKt\n+ 2 TypeInfoJvm.kt\nio/ktor/util/reflect/TypeInfoJvmKt\n*L\n1#1,37:1\n17#2,3:38\n17#2,3:41\n*S KotlinDebug\n*F\n+ 1 RequestBody.kt\nio/ktor/client/request/RequestBodyKt\n*L\n19#1:38,3\n27#1:41,3\n*E\n"
    }
.end annotation


# static fields
.field private static final a:Lyr/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyr/a<",
            "Les/a;",
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
    new-instance v0, Lyr/a;

    .line 2
    .line 3
    const-string v1, "BodyTypeAttributeKey"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lyr/a;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lsr/g;->a:Lyr/a;

    .line 9
    .line 10
    return-void
.end method

.method public static final a()Lyr/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lyr/a<",
            "Les/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lsr/g;->a:Lyr/a;

    .line 2
    .line 3
    return-object v0
.end method
