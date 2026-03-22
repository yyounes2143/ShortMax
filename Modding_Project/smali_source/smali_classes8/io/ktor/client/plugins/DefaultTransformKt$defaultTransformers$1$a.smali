.class public final Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$1$a;
.super Lxr/b$a;
.source "DefaultTransform.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lio/ktor/http/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:J

.field final synthetic c:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lio/ktor/http/a;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$1$a;->c:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {p0}, Lxr/b$a;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    sget-object p1, Lio/ktor/http/a$a;->a:Lio/ktor/http/a$a;

    .line 9
    .line 10
    invoke-virtual {p1}, Lio/ktor/http/a$a;->a()Lio/ktor/http/a;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :cond_0
    iput-object p1, p0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$1$a;->a:Lio/ktor/http/a;

    .line 15
    .line 16
    check-cast p2, [B

    .line 17
    .line 18
    array-length p1, p2

    .line 19
    int-to-long p1, p1

    .line 20
    iput-wide p1, p0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$1$a;->b:J

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Long;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-wide v0, p0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$1$a;->b:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public b()Lio/ktor/http/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$1$a;->a:Lio/ktor/http/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()[B
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$1$a;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [B

    .line 4
    .line 5
    return-object v0
.end method
